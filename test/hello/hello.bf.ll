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
%csp = call i8* @calloc(i32 1024, i32 1)
%cip = alloca i32
store i32 0, i32* %cip
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
br label %b0
c0:
%ci = load i32, i32* %cip
%cp = getelementptr i8, i8* %csp, i32 %ci
%cv = load i8, i8* %cp
%z = icmp eq i8 %cv, 0
br i1 %z, label %e0, label %b0
b0:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
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
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
br label %c0
e0:
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_di(i32* %cip)
call void @bf_di(i32* %cip)
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
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_d(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_i(i8* %csp, i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @bf_ii(i32* %cip)
call void @bf_put(i8* %csp, i32* %cip)
call void @free(i8* %csp)
ret i32 0
}
