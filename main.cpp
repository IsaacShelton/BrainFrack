
// (c) 2016 Isaac Shelton
// Generates LLVM IR from Brainfrack code
// bfc <filename.bf>

#include <string>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <iostream>

using namespace std;

std::string filename_name(std::string filename){
    if (filename.find_last_of("\\/") == std::string::npos) { return filename; }
    else return filename.substr(filename.find_last_of("\\/") + 1, filename.length() - filename.find_last_of("\\/"));
}

std::string to_str(unsigned int i){
    std::ostringstream convert; convert << i;
    return convert.str();
}

void compile_token(std::ifstream& bf, std::ofstream& ir, char& token, unsigned int& next_loop_index){
    switch(token){
    case '+':
        ir << "call void @bf_i(i8* %csp, i32* %cip)\n";
        break;
    case '-':
        ir << "call void @bf_d(i8* %csp, i32* %cip)\n";
        break;
    case '>':
        ir << "call void @bf_ii(i32* %cip)\n";
        break;
    case '<':
        ir << "call void @bf_di(i32* %cip)\n";
        break;
    case '.':
        ir << "call void @bf_put(i8* %csp, i32* %cip)\n";
        break;
    case ',':
        ir << "call void @bf_get(i8* %csp, i32* %cip)\n";
        break;
    case '[':
        {
            std::string loop_index = to_str(next_loop_index);
            next_loop_index++;

            ir << "br label %c" + loop_index + "\n";
            ir << "c" + loop_index + ":\n";
            ir << "%ci" + loop_index + " = load i32, i32* %cip\n";
            ir << "%cp" + loop_index +" = getelementptr i8, i8* %csp, i32 %ci" + loop_index + "\n";
            ir << "%cv" + loop_index + " = load i8, i8* %cp" + loop_index + "\n";
            ir << "%z" + loop_index + " = icmp eq i8 %cv" + loop_index + ", 0\n";
            ir << "br i1 %z" + loop_index + ", label %e" + loop_index + ", label %b" + loop_index + "\n";
            ir << "b" + loop_index + ":\n";

            while(bf.get(token) and token != ']'){
                compile_token(bf, ir, token, next_loop_index);
            }

            ir << "br label %c" + loop_index + "\n";
            ir << "e" + loop_index + ":\n";
        }
        break;
    case ']':
        std::cerr << "Mismatched braces" << std::endl;
        exit(1);
        break;
    }
}

int main(int argc, char** argv) {
    std::ifstream bf;
    std::ofstream ir;
    std::string filename;
    unsigned int next_loop_index = 0;

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
    ir << "%csp = call i8* @calloc(i32 30000, i32 1)\n";
    ir << "%cip = alloca i32\n";
    ir << "store i32 0, i32* %cip\n";

    char token;
    while(bf.get(token)){
        compile_token(bf, ir, token, next_loop_index);
    }

    ir << "call void @free(i8* %csp)\n";
    ir << "ret i32 0\n";
    ir << "}\n";

    ir.close();
    bf.close();

    int opt = system( ("opt -S -O3 " + filename + ".ll -o " + filename + ".opt.ll").c_str() );
    if(opt != 0) return 1;

    int ll = system( ("llc " + filename + ".opt.ll").c_str() );
    if(ll != 0) return 1;

    int gcc = system( ("gcc C:\\MinGW64\\lib\\gcc\\x86_64-w64-mingw32\\5.3.0\\libstdc++.a " + filename + ".opt.s -o " + filename + ".exe").c_str() );
    if(gcc != 0) return 1;

    std::cout << "Successfully Created '" + filename_name(filename) + ".exe'" << std::endl;
    return 0;
}
