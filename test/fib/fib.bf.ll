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
call void @bf_ii(i32* %cip)
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
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c0
c0:
%ci0 = load i32, i32* %cip
%cp0 = getelementptr i8, i8* %csp, i32 %ci0
%cv0 = load i8, i8* %cp0
%z0 = icmp eq i8 %cv0, 0
br i1 %z0, label %e0, label %b0
b0:
br label %c1
c1:
%ci1 = load i32, i32* %cip
%cp1 = getelementptr i8, i8* %csp, i32 %ci1
%cv1 = load i8, i8* %cp1
%z1 = icmp eq i8 %cv1, 0
br i1 %z1, label %e1, label %b1
b1:
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
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c2
e2:
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c3
c3:
%ci3 = load i32, i32* %cip
%cp3 = getelementptr i8, i8* %csp, i32 %ci3
%cv3 = load i8, i8* %cp3
%z3 = icmp eq i8 %cv3, 0
br i1 %z3, label %e3, label %b3
b3:
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c3
e3:
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c1
e1:
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c4
c4:
%ci4 = load i32, i32* %cip
%cp4 = getelementptr i8, i8* %csp, i32 %ci4
%cv4 = load i8, i8* %cp4
%z4 = icmp eq i8 %cv4, 0
br i1 %z4, label %e4, label %b4
b4:
br label %c5
c5:
%ci5 = load i32, i32* %cip
%cp5 = getelementptr i8, i8* %csp, i32 %ci5
%cv5 = load i8, i8* %cp5
%z5 = icmp eq i8 %cv5, 0
br i1 %z5, label %e5, label %b5
b5:
call void @bf_d(i8* %csp, i32* %cip)
br label %c5
e5:
call void @bf_di(i32* %cip)
br label %c6
c6:
%ci6 = load i32, i32* %cip
%cp6 = getelementptr i8, i8* %csp, i32 %ci6
%cv6 = load i8, i8* %cp6
%z6 = icmp eq i8 %cv6, 0
br i1 %z6, label %e6, label %b6
b6:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c6
e6:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c7
c7:
%ci7 = load i32, i32* %cip
%cp7 = getelementptr i8, i8* %csp, i32 %ci7
%cv7 = load i8, i8* %cp7
%z7 = icmp eq i8 %cv7, 0
br i1 %z7, label %e7, label %b7
b7:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c7
e7:
call void @bf_di(i32* %cip)
br label %c8
c8:
%ci8 = load i32, i32* %cip
%cp8 = getelementptr i8, i8* %csp, i32 %ci8
%cv8 = load i8, i8* %cp8
%z8 = icmp eq i8 %cv8, 0
br i1 %z8, label %e8, label %b8
b8:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c9
c9:
%ci9 = load i32, i32* %cip
%cp9 = getelementptr i8, i8* %csp, i32 %ci9
%cv9 = load i8, i8* %cp9
%z9 = icmp eq i8 %cv9, 0
br i1 %z9, label %e9, label %b9
b9:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c10
c10:
%ci10 = load i32, i32* %cip
%cp10 = getelementptr i8, i8* %csp, i32 %ci10
%cv10 = load i8, i8* %cp10
%z10 = icmp eq i8 %cv10, 0
br i1 %z10, label %e10, label %b10
b10:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c11
c11:
%ci11 = load i32, i32* %cip
%cp11 = getelementptr i8, i8* %csp, i32 %ci11
%cv11 = load i8, i8* %cp11
%z11 = icmp eq i8 %cv11, 0
br i1 %z11, label %e11, label %b11
b11:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c12
c12:
%ci12 = load i32, i32* %cip
%cp12 = getelementptr i8, i8* %csp, i32 %ci12
%cv12 = load i8, i8* %cp12
%z12 = icmp eq i8 %cv12, 0
br i1 %z12, label %e12, label %b12
b12:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c13
c13:
%ci13 = load i32, i32* %cip
%cp13 = getelementptr i8, i8* %csp, i32 %ci13
%cv13 = load i8, i8* %cp13
%z13 = icmp eq i8 %cv13, 0
br i1 %z13, label %e13, label %b13
b13:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c14
c14:
%ci14 = load i32, i32* %cip
%cp14 = getelementptr i8, i8* %csp, i32 %ci14
%cv14 = load i8, i8* %cp14
%z14 = icmp eq i8 %cv14, 0
br i1 %z14, label %e14, label %b14
b14:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c15
c15:
%ci15 = load i32, i32* %cip
%cp15 = getelementptr i8, i8* %csp, i32 %ci15
%cv15 = load i8, i8* %cp15
%z15 = icmp eq i8 %cv15, 0
br i1 %z15, label %e15, label %b15
b15:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c16
c16:
%ci16 = load i32, i32* %cip
%cp16 = getelementptr i8, i8* %csp, i32 %ci16
%cv16 = load i8, i8* %cp16
%z16 = icmp eq i8 %cv16, 0
br i1 %z16, label %e16, label %b16
b16:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c17
c17:
%ci17 = load i32, i32* %cip
%cp17 = getelementptr i8, i8* %csp, i32 %ci17
%cv17 = load i8, i8* %cp17
%z17 = icmp eq i8 %cv17, 0
br i1 %z17, label %e17, label %b17
b17:
call void @bf_ii(i32* %cip)
br label %c18
c18:
%ci18 = load i32, i32* %cip
%cp18 = getelementptr i8, i8* %csp, i32 %ci18
%cv18 = load i8, i8* %cp18
%z18 = icmp eq i8 %cv18, 0
br i1 %z18, label %e18, label %b18
b18:
call void @bf_d(i8* %csp, i32* %cip)
br label %c18
e18:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c19
c19:
%ci19 = load i32, i32* %cip
%cp19 = getelementptr i8, i8* %csp, i32 %ci19
%cv19 = load i8, i8* %cp19
%z19 = icmp eq i8 %cv19, 0
br i1 %z19, label %e19, label %b19
b19:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c19
e19:
br label %c17
e17:
br label %c16
e16:
br label %c15
e15:
br label %c14
e14:
br label %c13
e13:
br label %c12
e12:
br label %c11
e11:
br label %c10
e10:
br label %c9
e9:
br label %c8
e8:
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c4
e4:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c0
e0:
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @free(i8* %csp)
ret i32 0
}
