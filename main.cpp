
// (c) 2016 Isaac Shelton
// Generates LLVM IR from Brainfrack code
// bfc <filename.bf>

#include <string>
#include <fstream>
#include <stdlib.h>
#include <iostream>

using namespace std;

std::string filename_name(std::string filename){
    if (filename.find_last_of("\\/") == std::string::npos) { return filename; }
    else return filename.substr(filename.find_last_of("\\/") + 1, filename.length() - filename.find_last_of("\\/"));
}

void compile_token(std::ifstream& bf, std::ofstream& ir, char& token){
    switch(token){
    case '+':
        ir << "call void @bf_i(i8* %cp, i32* %cip)" << "\n";
        break;
    case '-':
        ir << "call void @bf_d(i8* %cp, i32* %cip)" << "\n";
        break;
    case '>':
        ir << "call void @bf_ii(i32* %cip)" << "\n";
        break;
    case '<':
        ir << "call void @bf_di(i32* %cip)" << "\n";
        break;
    case '.':
        ir << "call void @bf_put(i8* %cp, i32* %cip)" << "\n";
        break;
    case ',':
        ir << "call void @bf_get(i8* %cp, i32* %cip)" << "\n";
        break;
    }
}

int main(int argc, char** argv) {
    std::ifstream bf;
    std::ofstream ir;
    std::string filename;

    if(argc != 2) {
        std::cerr << "bfc <filename>" << std::endl;
        return 1;
    }

    filename = argv[1];
    bf.open(filename.c_str());
    if(!bf.is_open()){
        std::cerr << "Failed to open file" << std::endl;
        return 1;
    }

    ir.open((filename + ".ll").c_str());
    if(!ir.is_open()){
        std::cerr << "Failed to open output file" << std::endl;
        return 1;
    }

    ir << "declare i8* @calloc(i32, i32)\n";
    ir << "declare void @free(i8*)\n";
    ir << "declare i32 @putchar(i32)\n";
    ir << "declare i32 @getchar()\n";
    ir << "declare i8* @puts(i8*)\n";

    ir << "define void @bf_ii(i32* %cip) {\n";
    ir << "%cv = load i32, i32* %cip\n";
    ir << "%nv = add i32 1, %cv\n";
    ir << "store i32 %nv, i32* %cip\n";
    ir << "ret void\n";
    ir << "}\n";

    ir << "define void @bf_di(i32* %cip) {\n";
    ir << "%cv = load i32, i32* %cip\n";
    ir << "%nv = add i32 -1, %cv\n";
    ir << "store i32 %nv, i32* %cip\n";
    ir << "ret void\n";
    ir << "}\n";

    ir << "define void @bf_i(i8* %c, i32* %cip) {\n";
    ir << "%ci = load i32, i32* %cip\n";
    ir << "%cp = getelementptr i8, i8* %c, i32 %ci\n";
    ir << "%cv = load i8, i8* %cp\n";
    ir << "%nv = add i8 %cv, 1\n";
    ir << "store i8 %nv, i8* %cp\n";
    ir << "ret void\n";
    ir << "}\n";

    ir << "define void @bf_d(i8* %c, i32* %cip) {\n";
    ir << "%ci = load i32, i32* %cip\n";
    ir << "%cp = getelementptr i8, i8* %c, i32 %ci\n";
    ir << "%cv = load i8, i8* %cp\n";
    ir << "%nv = add i8 %cv, -1\n";
    ir << "store i8 %nv, i8* %cp\n";
    ir << "ret void\n";
    ir << "}\n";

    ir << "define void @bf_put(i8* %c, i32* %cip) {\n";
    ir << "%ci = load i32, i32* %cip\n";
    ir << "%cp = getelementptr i8, i8* %c, i32 %ci\n";
    ir << "%cv = load i8, i8* %cp\n";
    ir << "%cb = sext i8 %cv to i32\n";
    ir << "call i32 @putchar(i32 %cb)\n";
    ir << "ret void\n";
    ir << "}\n";

    ir << "define void @bf_get(i8* %c, i32* %cip) {\n";
    ir << "%ci = load i32, i32* %cip\n";
    ir << "%cp = getelementptr i8, i8* %c, i32 %ci\n";
    ir << "%ii = call i32 @getchar()\n";
    ir << "%ib = trunc i32 %ii to i8\n";
    ir << "store i8 %ib, i8* %cp\n";
    ir << "ret void\n";
    ir << "}\n";

    ir << "define i32 @main() {\n";
    ir << "%cp = call i8* @calloc(i32 1024, i32 1)\n";
    ir << "%cip = alloca i32\n";
    ir << "store i32 97, i32* %cip\n";

    char token;
    while(bf.get(token)){
        compile_token(bf, ir, token);
    }

    ir << "call void @free(i8* %cp)\n";
    ir << "ret i32 0\n";
    ir << "}\n";

    ir.close();
    bf.close();

    int opt = system( ("opt -S -O3 " + filename + ".ll -o " + filename + ".opt.ll").c_str() );
    if(opt != 0) return 1;

    int ll = system( ("llc " + filename + ".opt.ll").c_str() );
    if(ll != 0) return 1;

    int gcc = system( ("g++ C:\\MinGW64\\lib\\gcc\\x86_64-w64-mingw32\\5.3.0\\libstdc++.a " + filename + ".opt.s -o " + filename + ".exe").c_str() );
    if(gcc != 0) return 1;

    std::cout << "Successfully Created '" + filename_name(filename) + ".exe'" << std::endl;
    return 0;
}
