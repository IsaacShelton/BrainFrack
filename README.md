# Basic BrainFrack Compiler
## Compiles BF code into an executable using LLVM

The compiler is written in c++. It emits LLVM-IR which is then optimized and turned into a native executable.
<br>source - file.bf
<br>llvm-ir - file.bf.ll
<br>optimized - file.bf.opt.ll
<br>executable - file.bf.exe
<br><br>
bfc &lt;filename&gt;
