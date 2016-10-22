; ModuleID = 'hello.bf.ll'
source_filename = "hello.bf.ll"

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #0

declare i32 @getchar() local_unnamed_addr

; Function Attrs: norecurse nounwind
define void @bf_ii(i32* nocapture %cip) local_unnamed_addr #1 {
  %cv = load i32, i32* %cip, align 4
  %nv = add i32 %cv, 1
  store i32 %nv, i32* %cip, align 4
  ret void
}

; Function Attrs: norecurse nounwind
define void @bf_di(i32* nocapture %cip) local_unnamed_addr #1 {
  %cv = load i32, i32* %cip, align 4
  %nv = add i32 %cv, -1
  store i32 %nv, i32* %cip, align 4
  ret void
}

; Function Attrs: norecurse nounwind
define void @bf_i(i8* nocapture %c, i32* nocapture readonly %cip) local_unnamed_addr #1 {
  %ci = load i32, i32* %cip, align 4
  %1 = sext i32 %ci to i64
  %cp = getelementptr i8, i8* %c, i64 %1
  %cv = load i8, i8* %cp, align 1
  %nv = add i8 %cv, 1
  store i8 %nv, i8* %cp, align 1
  ret void
}

; Function Attrs: norecurse nounwind
define void @bf_d(i8* nocapture %c, i32* nocapture readonly %cip) local_unnamed_addr #1 {
  %ci = load i32, i32* %cip, align 4
  %1 = sext i32 %ci to i64
  %cp = getelementptr i8, i8* %c, i64 %1
  %cv = load i8, i8* %cp, align 1
  %nv = add i8 %cv, -1
  store i8 %nv, i8* %cp, align 1
  ret void
}

; Function Attrs: nounwind
define void @bf_put(i8* nocapture readonly %c, i32* nocapture readonly %cip) local_unnamed_addr #0 {
  %ci = load i32, i32* %cip, align 4
  %1 = sext i32 %ci to i64
  %cp = getelementptr i8, i8* %c, i64 %1
  %cv = load i8, i8* %cp, align 1
  %cb = sext i8 %cv to i32
  %2 = tail call i32 @putchar(i32 %cb)
  ret void
}

define void @bf_get(i8* nocapture %c, i32* nocapture readonly %cip) local_unnamed_addr {
  %ci = load i32, i32* %cip, align 4
  %1 = sext i32 %ci to i64
  %cp = getelementptr i8, i8* %c, i64 %1
  %ii = tail call i32 @getchar()
  %ib = trunc i32 %ii to i8
  store i8 %ib, i8* %cp, align 1
  ret void
}

; Function Attrs: nounwind
define i32 @main() local_unnamed_addr #0 {
e0:
  %0 = tail call i32 @putchar(i32 72) #0
  %1 = tail call i32 @putchar(i32 101) #0
  %2 = tail call i32 @putchar(i32 108) #0
  %3 = tail call i32 @putchar(i32 108) #0
  %4 = tail call i32 @putchar(i32 111) #0
  %5 = tail call i32 @putchar(i32 32) #0
  %6 = tail call i32 @putchar(i32 87) #0
  %7 = tail call i32 @putchar(i32 111) #0
  %8 = tail call i32 @putchar(i32 114) #0
  %9 = tail call i32 @putchar(i32 108) #0
  %10 = tail call i32 @putchar(i32 100) #0
  %11 = tail call i32 @putchar(i32 33) #0
  %12 = tail call i32 @putchar(i32 10) #0
  ret i32 0
}

attributes #0 = { nounwind }
attributes #1 = { norecurse nounwind }
