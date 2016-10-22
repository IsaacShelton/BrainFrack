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
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c0
c0:
%ci0 = load i32, i32* %cip
%cp0 = getelementptr i8, i8* %csp, i32 %ci0
%cv0 = load i8, i8* %cp0
%z0 = icmp eq i8 %cv0, 0
br i1 %z0, label %e0, label %b0
b0:
call void @bf_ii(i32* %cip)
call void @bf_get(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
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
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c1
e1:
call void @bf_ii(i32* %cip)
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
br label %c3
c3:
%ci3 = load i32, i32* %cip
%cp3 = getelementptr i8, i8* %csp, i32 %ci3
%cv3 = load i8, i8* %cp3
%z3 = icmp eq i8 %cv3, 0
br i1 %z3, label %e3, label %b3
b3:
call void @bf_d(i8* %csp, i32* %cip)
br label %c4
c4:
%ci4 = load i32, i32* %cip
%cp4 = getelementptr i8, i8* %csp, i32 %ci4
%cv4 = load i8, i8* %cp4
%z4 = icmp eq i8 %cv4, 0
br i1 %z4, label %e4, label %b4
b4:
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
br label %c4
e4:
br label %c3
e3:
call void @bf_ii(i32* %cip)
br label %c5
c5:
%ci5 = load i32, i32* %cip
%cp5 = getelementptr i8, i8* %csp, i32 %ci5
%cv5 = load i8, i8* %cp5
%z5 = icmp eq i8 %cv5, 0
br i1 %z5, label %e5, label %b5
b5:
call void @bf_di(i32* %cip)
br label %c5
e5:
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c2
e2:
call void @bf_di(i32* %cip)
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
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
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
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c7
e7:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c8
c8:
%ci8 = load i32, i32* %cip
%cp8 = getelementptr i8, i8* %csp, i32 %ci8
%cv8 = load i8, i8* %cp8
%z8 = icmp eq i8 %cv8, 0
br i1 %z8, label %e8, label %b8
b8:
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
br label %c8
e8:
call void @bf_di(i32* %cip)
br label %c9
c9:
%ci9 = load i32, i32* %cip
%cp9 = getelementptr i8, i8* %csp, i32 %ci9
%cv9 = load i8, i8* %cp9
%z9 = icmp eq i8 %cv9, 0
br i1 %z9, label %e9, label %b9
b9:
call void @bf_ii(i32* %cip)
br label %c9
e9:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c10
c10:
%ci10 = load i32, i32* %cip
%cp10 = getelementptr i8, i8* %csp, i32 %ci10
%cv10 = load i8, i8* %cp10
%z10 = icmp eq i8 %cv10, 0
br i1 %z10, label %e10, label %b10
b10:
br label %c11
c11:
%ci11 = load i32, i32* %cip
%cp11 = getelementptr i8, i8* %csp, i32 %ci11
%cv11 = load i8, i8* %cp11
%z11 = icmp eq i8 %cv11, 0
br i1 %z11, label %e11, label %b11
b11:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c11
e11:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c12
c12:
%ci12 = load i32, i32* %cip
%cp12 = getelementptr i8, i8* %csp, i32 %ci12
%cv12 = load i8, i8* %cp12
%z12 = icmp eq i8 %cv12, 0
br i1 %z12, label %e12, label %b12
b12:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c12
e12:
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c10
e10:
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c13
c13:
%ci13 = load i32, i32* %cip
%cp13 = getelementptr i8, i8* %csp, i32 %ci13
%cv13 = load i8, i8* %cp13
%z13 = icmp eq i8 %cv13, 0
br i1 %z13, label %e13, label %b13
b13:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c14
c14:
%ci14 = load i32, i32* %cip
%cp14 = getelementptr i8, i8* %csp, i32 %ci14
%cv14 = load i8, i8* %cp14
%z14 = icmp eq i8 %cv14, 0
br i1 %z14, label %e14, label %b14
b14:
call void @bf_ii(i32* %cip)
br label %c14
e14:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c15
c15:
%ci15 = load i32, i32* %cip
%cp15 = getelementptr i8, i8* %csp, i32 %ci15
%cv15 = load i8, i8* %cp15
%z15 = icmp eq i8 %cv15, 0
br i1 %z15, label %e15, label %b15
b15:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c16
c16:
%ci16 = load i32, i32* %cip
%cp16 = getelementptr i8, i8* %csp, i32 %ci16
%cv16 = load i8, i8* %cp16
%z16 = icmp eq i8 %cv16, 0
br i1 %z16, label %e16, label %b16
b16:
call void @bf_ii(i32* %cip)
br label %c16
e16:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
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
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c18
c18:
%ci18 = load i32, i32* %cip
%cp18 = getelementptr i8, i8* %csp, i32 %ci18
%cv18 = load i8, i8* %cp18
%z18 = icmp eq i8 %cv18, 0
br i1 %z18, label %e18, label %b18
b18:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c18
e18:
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c19
c19:
%ci19 = load i32, i32* %cip
%cp19 = getelementptr i8, i8* %csp, i32 %ci19
%cv19 = load i8, i8* %cp19
%z19 = icmp eq i8 %cv19, 0
br i1 %z19, label %e19, label %b19
b19:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c20
c20:
%ci20 = load i32, i32* %cip
%cp20 = getelementptr i8, i8* %csp, i32 %ci20
%cv20 = load i8, i8* %cp20
%z20 = icmp eq i8 %cv20, 0
br i1 %z20, label %e20, label %b20
b20:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c21
c21:
%ci21 = load i32, i32* %cip
%cp21 = getelementptr i8, i8* %csp, i32 %ci21
%cv21 = load i8, i8* %cp21
%z21 = icmp eq i8 %cv21, 0
br i1 %z21, label %e21, label %b21
b21:
call void @bf_ii(i32* %cip)
br label %c21
e21:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c22
c22:
%ci22 = load i32, i32* %cip
%cp22 = getelementptr i8, i8* %csp, i32 %ci22
%cv22 = load i8, i8* %cp22
%z22 = icmp eq i8 %cv22, 0
br i1 %z22, label %e22, label %b22
b22:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c23
c23:
%ci23 = load i32, i32* %cip
%cp23 = getelementptr i8, i8* %csp, i32 %ci23
%cv23 = load i8, i8* %cp23
%z23 = icmp eq i8 %cv23, 0
br i1 %z23, label %e23, label %b23
b23:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c23
e23:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c24
c24:
%ci24 = load i32, i32* %cip
%cp24 = getelementptr i8, i8* %csp, i32 %ci24
%cv24 = load i8, i8* %cp24
%z24 = icmp eq i8 %cv24, 0
br i1 %z24, label %e24, label %b24
b24:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c25
c25:
%ci25 = load i32, i32* %cip
%cp25 = getelementptr i8, i8* %csp, i32 %ci25
%cv25 = load i8, i8* %cp25
%z25 = icmp eq i8 %cv25, 0
br i1 %z25, label %e25, label %b25
b25:
call void @bf_ii(i32* %cip)
br label %c25
e25:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c26
c26:
%ci26 = load i32, i32* %cip
%cp26 = getelementptr i8, i8* %csp, i32 %ci26
%cv26 = load i8, i8* %cp26
%z26 = icmp eq i8 %cv26, 0
br i1 %z26, label %e26, label %b26
b26:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c27
c27:
%ci27 = load i32, i32* %cip
%cp27 = getelementptr i8, i8* %csp, i32 %ci27
%cv27 = load i8, i8* %cp27
%z27 = icmp eq i8 %cv27, 0
br i1 %z27, label %e27, label %b27
b27:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c27
e27:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c28
c28:
%ci28 = load i32, i32* %cip
%cp28 = getelementptr i8, i8* %csp, i32 %ci28
%cv28 = load i8, i8* %cp28
%z28 = icmp eq i8 %cv28, 0
br i1 %z28, label %e28, label %b28
b28:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c29
c29:
%ci29 = load i32, i32* %cip
%cp29 = getelementptr i8, i8* %csp, i32 %ci29
%cv29 = load i8, i8* %cp29
%z29 = icmp eq i8 %cv29, 0
br i1 %z29, label %e29, label %b29
b29:
call void @bf_ii(i32* %cip)
br label %c29
e29:
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c30
c30:
%ci30 = load i32, i32* %cip
%cp30 = getelementptr i8, i8* %csp, i32 %ci30
%cv30 = load i8, i8* %cp30
%z30 = icmp eq i8 %cv30, 0
br i1 %z30, label %e30, label %b30
b30:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c31
c31:
%ci31 = load i32, i32* %cip
%cp31 = getelementptr i8, i8* %csp, i32 %ci31
%cv31 = load i8, i8* %cp31
%z31 = icmp eq i8 %cv31, 0
br i1 %z31, label %e31, label %b31
b31:
call void @bf_ii(i32* %cip)
br label %c31
e31:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c32
c32:
%ci32 = load i32, i32* %cip
%cp32 = getelementptr i8, i8* %csp, i32 %ci32
%cv32 = load i8, i8* %cp32
%z32 = icmp eq i8 %cv32, 0
br i1 %z32, label %e32, label %b32
b32:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c33
c33:
%ci33 = load i32, i32* %cip
%cp33 = getelementptr i8, i8* %csp, i32 %ci33
%cv33 = load i8, i8* %cp33
%z33 = icmp eq i8 %cv33, 0
br i1 %z33, label %e33, label %b33
b33:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c34
c34:
%ci34 = load i32, i32* %cip
%cp34 = getelementptr i8, i8* %csp, i32 %ci34
%cv34 = load i8, i8* %cp34
%z34 = icmp eq i8 %cv34, 0
br i1 %z34, label %e34, label %b34
b34:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c35
c35:
%ci35 = load i32, i32* %cip
%cp35 = getelementptr i8, i8* %csp, i32 %ci35
%cv35 = load i8, i8* %cp35
%z35 = icmp eq i8 %cv35, 0
br i1 %z35, label %e35, label %b35
b35:
call void @bf_ii(i32* %cip)
br label %c35
e35:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c36
c36:
%ci36 = load i32, i32* %cip
%cp36 = getelementptr i8, i8* %csp, i32 %ci36
%cv36 = load i8, i8* %cp36
%z36 = icmp eq i8 %cv36, 0
br i1 %z36, label %e36, label %b36
b36:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c37
c37:
%ci37 = load i32, i32* %cip
%cp37 = getelementptr i8, i8* %csp, i32 %ci37
%cv37 = load i8, i8* %cp37
%z37 = icmp eq i8 %cv37, 0
br i1 %z37, label %e37, label %b37
b37:
call void @bf_ii(i32* %cip)
br label %c37
e37:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c38
c38:
%ci38 = load i32, i32* %cip
%cp38 = getelementptr i8, i8* %csp, i32 %ci38
%cv38 = load i8, i8* %cp38
%z38 = icmp eq i8 %cv38, 0
br i1 %z38, label %e38, label %b38
b38:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c39
c39:
%ci39 = load i32, i32* %cip
%cp39 = getelementptr i8, i8* %csp, i32 %ci39
%cv39 = load i8, i8* %cp39
%z39 = icmp eq i8 %cv39, 0
br i1 %z39, label %e39, label %b39
b39:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c40
c40:
%ci40 = load i32, i32* %cip
%cp40 = getelementptr i8, i8* %csp, i32 %ci40
%cv40 = load i8, i8* %cp40
%z40 = icmp eq i8 %cv40, 0
br i1 %z40, label %e40, label %b40
b40:
call void @bf_ii(i32* %cip)
br label %c40
e40:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c41
c41:
%ci41 = load i32, i32* %cip
%cp41 = getelementptr i8, i8* %csp, i32 %ci41
%cv41 = load i8, i8* %cp41
%z41 = icmp eq i8 %cv41, 0
br i1 %z41, label %e41, label %b41
b41:
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c41
e41:
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
br label %c42
c42:
%ci42 = load i32, i32* %cip
%cp42 = getelementptr i8, i8* %csp, i32 %ci42
%cv42 = load i8, i8* %cp42
%z42 = icmp eq i8 %cv42, 0
br i1 %z42, label %e42, label %b42
b42:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c43
c43:
%ci43 = load i32, i32* %cip
%cp43 = getelementptr i8, i8* %csp, i32 %ci43
%cv43 = load i8, i8* %cp43
%z43 = icmp eq i8 %cv43, 0
br i1 %z43, label %e43, label %b43
b43:
call void @bf_ii(i32* %cip)
br label %c43
e43:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c44
c44:
%ci44 = load i32, i32* %cip
%cp44 = getelementptr i8, i8* %csp, i32 %ci44
%cv44 = load i8, i8* %cp44
%z44 = icmp eq i8 %cv44, 0
br i1 %z44, label %e44, label %b44
b44:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c45
c45:
%ci45 = load i32, i32* %cip
%cp45 = getelementptr i8, i8* %csp, i32 %ci45
%cv45 = load i8, i8* %cp45
%z45 = icmp eq i8 %cv45, 0
br i1 %z45, label %e45, label %b45
b45:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c46
c46:
%ci46 = load i32, i32* %cip
%cp46 = getelementptr i8, i8* %csp, i32 %ci46
%cv46 = load i8, i8* %cp46
%z46 = icmp eq i8 %cv46, 0
br i1 %z46, label %e46, label %b46
b46:
call void @bf_ii(i32* %cip)
br label %c46
e46:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c47
c47:
%ci47 = load i32, i32* %cip
%cp47 = getelementptr i8, i8* %csp, i32 %ci47
%cv47 = load i8, i8* %cp47
%z47 = icmp eq i8 %cv47, 0
br i1 %z47, label %e47, label %b47
b47:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c48
c48:
%ci48 = load i32, i32* %cip
%cp48 = getelementptr i8, i8* %csp, i32 %ci48
%cv48 = load i8, i8* %cp48
%z48 = icmp eq i8 %cv48, 0
br i1 %z48, label %e48, label %b48
b48:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c48
e48:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c49
c49:
%ci49 = load i32, i32* %cip
%cp49 = getelementptr i8, i8* %csp, i32 %ci49
%cv49 = load i8, i8* %cp49
%z49 = icmp eq i8 %cv49, 0
br i1 %z49, label %e49, label %b49
b49:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c49
e49:
br label %c47
e47:
br label %c45
e45:
br label %c44
e44:
br label %c42
e42:
br label %c39
e39:
br label %c38
e38:
br label %c36
e36:
br label %c34
e34:
br label %c33
e33:
br label %c32
e32:
br label %c30
e30:
br label %c28
e28:
br label %c26
e26:
br label %c24
e24:
br label %c22
e22:
br label %c20
e20:
br label %c19
e19:
br label %c17
e17:
br label %c15
e15:
br label %c13
e13:
br label %c6
e6:
call void @bf_ii(i32* %cip)
br label %c50
c50:
%ci50 = load i32, i32* %cip
%cp50 = getelementptr i8, i8* %csp, i32 %ci50
%cv50 = load i8, i8* %cp50
%z50 = icmp eq i8 %cv50, 0
br i1 %z50, label %e50, label %b50
b50:
call void @bf_ii(i32* %cip)
br label %c51
c51:
%ci51 = load i32, i32* %cip
%cp51 = getelementptr i8, i8* %csp, i32 %ci51
%cv51 = load i8, i8* %cp51
%z51 = icmp eq i8 %cv51, 0
br i1 %z51, label %e51, label %b51
b51:
br label %c52
c52:
%ci52 = load i32, i32* %cip
%cp52 = getelementptr i8, i8* %csp, i32 %ci52
%cv52 = load i8, i8* %cp52
%z52 = icmp eq i8 %cv52, 0
br i1 %z52, label %e52, label %b52
b52:
br label %c53
c53:
%ci53 = load i32, i32* %cip
%cp53 = getelementptr i8, i8* %csp, i32 %ci53
%cv53 = load i8, i8* %cp53
%z53 = icmp eq i8 %cv53, 0
br i1 %z53, label %e53, label %b53
b53:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c53
e53:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c54
c54:
%ci54 = load i32, i32* %cip
%cp54 = getelementptr i8, i8* %csp, i32 %ci54
%cv54 = load i8, i8* %cp54
%z54 = icmp eq i8 %cv54, 0
br i1 %z54, label %e54, label %b54
b54:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c54
e54:
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c52
e52:
call void @bf_di(i32* %cip)
br label %c51
e51:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
br label %c50
e50:
call void @bf_di(i32* %cip)
br label %c0
e0:
call void @bf_di(i32* %cip)
br label %c55
c55:
%ci55 = load i32, i32* %cip
%cp55 = getelementptr i8, i8* %csp, i32 %ci55
%cv55 = load i8, i8* %cp55
%z55 = icmp eq i8 %cv55, 0
br i1 %z55, label %e55, label %b55
b55:
call void @bf_d(i8* %csp, i32* %cip)
br label %c55
e55:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c56
c56:
%ci56 = load i32, i32* %cip
%cp56 = getelementptr i8, i8* %csp, i32 %ci56
%cv56 = load i8, i8* %cp56
%z56 = icmp eq i8 %cv56, 0
br i1 %z56, label %e56, label %b56
b56:
br label %c57
c57:
%ci57 = load i32, i32* %cip
%cp57 = getelementptr i8, i8* %csp, i32 %ci57
%cv57 = load i8, i8* %cp57
%z57 = icmp eq i8 %cv57, 0
br i1 %z57, label %e57, label %b57
b57:
call void @bf_ii(i32* %cip)
br label %c57
e57:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c58
c58:
%ci58 = load i32, i32* %cip
%cp58 = getelementptr i8, i8* %csp, i32 %ci58
%cv58 = load i8, i8* %cp58
%z58 = icmp eq i8 %cv58, 0
br i1 %z58, label %e58, label %b58
b58:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c58
e58:
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c59
c59:
%ci59 = load i32, i32* %cip
%cp59 = getelementptr i8, i8* %csp, i32 %ci59
%cv59 = load i8, i8* %cp59
%z59 = icmp eq i8 %cv59, 0
br i1 %z59, label %e59, label %b59
b59:
call void @bf_d(i8* %csp, i32* %cip)
br label %c60
c60:
%ci60 = load i32, i32* %cip
%cp60 = getelementptr i8, i8* %csp, i32 %ci60
%cv60 = load i8, i8* %cp60
%z60 = icmp eq i8 %cv60, 0
br i1 %z60, label %e60, label %b60
b60:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c60
e60:
br label %c59
e59:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c61
c61:
%ci61 = load i32, i32* %cip
%cp61 = getelementptr i8, i8* %csp, i32 %ci61
%cv61 = load i8, i8* %cp61
%z61 = icmp eq i8 %cv61, 0
br i1 %z61, label %e61, label %b61
b61:
call void @bf_d(i8* %csp, i32* %cip)
br label %c62
c62:
%ci62 = load i32, i32* %cip
%cp62 = getelementptr i8, i8* %csp, i32 %ci62
%cv62 = load i8, i8* %cp62
%z62 = icmp eq i8 %cv62, 0
br i1 %z62, label %e62, label %b62
b62:
call void @bf_d(i8* %csp, i32* %cip)
br label %c63
c63:
%ci63 = load i32, i32* %cip
%cp63 = getelementptr i8, i8* %csp, i32 %ci63
%cv63 = load i8, i8* %cp63
%z63 = icmp eq i8 %cv63, 0
br i1 %z63, label %e63, label %b63
b63:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c63
e63:
call void @bf_ii(i32* %cip)
br label %c62
e62:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c64
c64:
%ci64 = load i32, i32* %cip
%cp64 = getelementptr i8, i8* %csp, i32 %ci64
%cv64 = load i8, i8* %cp64
%z64 = icmp eq i8 %cv64, 0
br i1 %z64, label %e64, label %b64
b64:
call void @bf_put(i8* %csp, i32* %cip)
br label %c65
c65:
%ci65 = load i32, i32* %cip
%cp65 = getelementptr i8, i8* %csp, i32 %ci65
%cv65 = load i8, i8* %cp65
%z65 = icmp eq i8 %cv65, 0
br i1 %z65, label %e65, label %b65
b65:
call void @bf_ii(i32* %cip)
br label %c65
e65:
br label %c64
e64:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c66
c66:
%ci66 = load i32, i32* %cip
%cp66 = getelementptr i8, i8* %csp, i32 %ci66
%cv66 = load i8, i8* %cp66
%z66 = icmp eq i8 %cv66, 0
br i1 %z66, label %e66, label %b66
b66:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c66
e66:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c67
c67:
%ci67 = load i32, i32* %cip
%cp67 = getelementptr i8, i8* %csp, i32 %ci67
%cv67 = load i8, i8* %cp67
%z67 = icmp eq i8 %cv67, 0
br i1 %z67, label %e67, label %b67
b67:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
br label %c68
c68:
%ci68 = load i32, i32* %cip
%cp68 = getelementptr i8, i8* %csp, i32 %ci68
%cv68 = load i8, i8* %cp68
%z68 = icmp eq i8 %cv68, 0
br i1 %z68, label %e68, label %b68
b68:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c68
e68:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c67
e67:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c69
c69:
%ci69 = load i32, i32* %cip
%cp69 = getelementptr i8, i8* %csp, i32 %ci69
%cv69 = load i8, i8* %cp69
%z69 = icmp eq i8 %cv69, 0
br i1 %z69, label %e69, label %b69
b69:
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
br label %c70
c70:
%ci70 = load i32, i32* %cip
%cp70 = getelementptr i8, i8* %csp, i32 %ci70
%cv70 = load i8, i8* %cp70
%z70 = icmp eq i8 %cv70, 0
br i1 %z70, label %e70, label %b70
b70:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c70
e70:
br label %c69
e69:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c71
c71:
%ci71 = load i32, i32* %cip
%cp71 = getelementptr i8, i8* %csp, i32 %ci71
%cv71 = load i8, i8* %cp71
%z71 = icmp eq i8 %cv71, 0
br i1 %z71, label %e71, label %b71
b71:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c71
e71:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c61
e61:
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c72
c72:
%ci72 = load i32, i32* %cip
%cp72 = getelementptr i8, i8* %csp, i32 %ci72
%cv72 = load i8, i8* %cp72
%z72 = icmp eq i8 %cv72, 0
br i1 %z72, label %e72, label %b72
b72:
call void @bf_di(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c72
e72:
call void @bf_di(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_ii(i32* %cip)
br label %c73
c73:
%ci73 = load i32, i32* %cip
%cp73 = getelementptr i8, i8* %csp, i32 %ci73
%cv73 = load i8, i8* %cp73
%z73 = icmp eq i8 %cv73, 0
br i1 %z73, label %e73, label %b73
b73:
br label %c74
c74:
%ci74 = load i32, i32* %cip
%cp74 = getelementptr i8, i8* %csp, i32 %ci74
%cv74 = load i8, i8* %cp74
%z74 = icmp eq i8 %cv74, 0
br i1 %z74, label %e74, label %b74
b74:
call void @bf_d(i8* %csp, i32* %cip)
br label %c74
e74:
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
br label %c73
e73:
call void @bf_di(i32* %cip)
br label %c56
e56:
br label %c75
c75:
%ci75 = load i32, i32* %cip
%cp75 = getelementptr i8, i8* %csp, i32 %ci75
%cv75 = load i8, i8* %cp75
%z75 = icmp eq i8 %cv75, 0
br i1 %z75, label %e75, label %b75
b75:
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_get(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
br label %c75
e75:
call void @free(i8* %csp)
ret i32 0
}
