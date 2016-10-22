declare i8* @calloc(i32, i32)
declare void @free(i8*)
declare i32 @putchar(i32)
declare i32 @getchar()
declare i8* @puts(i8*)
define void @bf_ii(i32* %cip) {
%cv = load i32, i32* %cip
%nv = add i32 1, %cv
store i32 %nv, i32* %cip
ret void
}
define void @bf_di(i32* %cip) {
%cv = load i32, i32* %cip
%nv = add i32 -1, %cv
store i32 %nv, i32* %cip
ret void
}
define void @bf_i(i8* %c, i32* %cip) {
%ci = load i32, i32* %cip
%cp = getelementptr i8, i8* %c, i32 %ci
%cv = load i8, i8* %cp
%nv = add i8 %cv, 1
store i8 %nv, i8* %cp
ret void
}
define void @bf_d(i8* %c, i32* %cip) {
%ci = load i32, i32* %cip
%cp = getelementptr i8, i8* %c, i32 %ci
%cv = load i8, i8* %cp
%nv = add i8 %cv, -1
store i8 %nv, i8* %cp
ret void
}
define void @bf_put(i8* %c, i32* %cip) {
%ci = load i32, i32* %cip
%cp = getelementptr i8, i8* %c, i32 %ci
%cv = load i8, i8* %cp
%cb = sext i8 %cv to i32
call i32 @putchar(i32 %cb)
ret void
}
define void @bf_get(i8* %c, i32* %cip) {
%ci = load i32, i32* %cip
%cp = getelementptr i8, i8* %c, i32 %ci
%ii = call i32 @getchar()
%ib = trunc i32 %ii to i8
store i8 %ib, i8* %cp
ret void
}
define i32 @main() {
%csp = call i8* @calloc(i32 30000, i32 1)
%cip = alloca i32
store i32 0, i32* %cip
br label %c0
c0:
%ci0 = load i32, i32* %cip
%cp0 = getelementptr i8, i8* %csp, i32 %ci0
%cv0 = load i8, i8* %cp0
%z0 = icmp eq i8 %cv0, 0
br i1 %z0, label %e0, label %b0
b0:
br label %c0
e0:
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c1
c1:
%ci1 = load i32, i32* %cip
%cp1 = getelementptr i8, i8* %csp, i32 %ci1
%cv1 = load i8, i8* %cp1
%z1 = icmp eq i8 %cv1, 0
br i1 %z1, label %e1, label %b1
b1:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c2
c2:
%ci2 = load i32, i32* %cip
%cp2 = getelementptr i8, i8* %csp, i32 %ci2
%cv2 = load i8, i8* %cp2
%z2 = icmp eq i8 %cv2, 0
br i1 %z2, label %e2, label %b2
b2:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c2
e2:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c1
e1:
br label %c3
c3:
%ci3 = load i32, i32* %cip
%cp3 = getelementptr i8, i8* %csp, i32 %ci3
%cv3 = load i8, i8* %cp3
%z3 = icmp eq i8 %cv3, 0
br i1 %z3, label %e3, label %b3
b3:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c3
e3:
call void @bf_ii(i32* %cip)
br label %c4
c4:
%ci4 = load i32, i32* %cip
%cp4 = getelementptr i8, i8* %csp, i32 %ci4
%cv4 = load i8, i8* %cp4
%z4 = icmp eq i8 %cv4, 0
br i1 %z4, label %e4, label %b4
b4:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c4
e4:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c5
c5:
%ci5 = load i32, i32* %cip
%cp5 = getelementptr i8, i8* %csp, i32 %ci5
%cv5 = load i8, i8* %cp5
%z5 = icmp eq i8 %cv5, 0
br i1 %z5, label %e5, label %b5
b5:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
br label %c6
c6:
%ci6 = load i32, i32* %cip
%cp6 = getelementptr i8, i8* %csp, i32 %ci6
%cv6 = load i8, i8* %cp6
%z6 = icmp eq i8 %cv6, 0
br i1 %z6, label %e6, label %b6
b6:
call void @bf_d(i8* %csp, i32* %cip)
br label %c6
e6:
br label %c5
e5:
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @free(i8* %csp)
ret i32 0
}
