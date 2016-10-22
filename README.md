# Basic BrainFrack Compiler
## Compiles BF code into an executable using LLVM

The compiler is written in c++. It emits LLVM-IR which is then optimized and turned into a native executable.
source - file.bf
llvm-ir - file.bf.ll
optimized - file.bf.opt.ll
executable - file.bf.exe

bfc &lt;filename&gt;
