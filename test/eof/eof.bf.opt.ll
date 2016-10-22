; ModuleID = 'eof.bf.ll'
source_filename = "eof.bf.ll"

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

define i32 @main() local_unnamed_addr {
e0:
  %ii.i = tail call i32 @getchar()
  %ib.i = trunc i32 %ii.i to i8
  %ii.i184 = tail call i32 @getchar()
  %ib.i185 = trunc i32 %ii.i184 to i8
  %0 = add i8 %ib.i185, 66
  %1 = add i8 %ib.i, 66
  %cb.i59 = sext i8 %1 to i32
  %2 = tail call i32 @putchar(i32 %cb.i59) #0
  %cb.i49 = sext i8 %0 to i32
  %3 = tail call i32 @putchar(i32 %cb.i49) #0
  %4 = tail call i32 @putchar(i32 10) #0
  %5 = tail call i32 @putchar(i32 %cb.i59) #0
  %6 = tail call i32 @putchar(i32 %cb.i49) #0
  %7 = tail call i32 @putchar(i32 10) #0
  ret i32 0
}

attributes #0 = { nounwind }
attributes #1 = { norecurse nounwind }
