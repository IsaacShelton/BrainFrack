; ModuleID = 'obscure.bf.ll'
source_filename = "obscure.bf.ll"

; Function Attrs: nounwind
declare noalias i8* @calloc(i32, i32) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #0

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
b1.lr.ph:
  %csp = tail call i8* @calloc(i32 30000, i32 1)
  store i8 10, i8* %csp, align 1
  br label %e2

c4.c4_crit_edge.preheader:                        ; preds = %e2
  br label %c4.c4_crit_edge

e2:                                               ; preds = %b1.lr.ph
  %cp.i85 = getelementptr i8, i8* %csp, i64 1
  %cp.i91 = getelementptr i8, i8* %csp, i64 2
  %cp.i125 = getelementptr i8, i8* %csp, i64 3
  store i8 -76, i8* %cp.i85, align 1
  store i8 70, i8* %cp.i91, align 1
  store i8 10, i8* %cp.i125, align 1
  store i8 0, i8* %csp, align 1
  br i1 false, label %e4, label %c4.c4_crit_edge.preheader

c4.c4_crit_edge:                                  ; preds = %c4.c4_crit_edge.preheader, %c4.c4_crit_edge
  %nv.i43262 = phi i32 [ %nv.i43, %c4.c4_crit_edge ], [ 3, %c4.c4_crit_edge.preheader ]
  %.phi.trans.insert = sext i32 %nv.i43262 to i64
  %cp4.phi.trans.insert = getelementptr i8, i8* %csp, i64 %.phi.trans.insert
  %cv4.pre = load i8, i8* %cp4.phi.trans.insert, align 1
  %z4 = icmp eq i8 %cv4.pre, 0
  %nv.i43 = add i32 %nv.i43262, 2
  br i1 %z4, label %e4.loopexit, label %c4.c4_crit_edge

e4.loopexit:                                      ; preds = %c4.c4_crit_edge
  br label %e4

e4:                                               ; preds = %e4.loopexit, %e2
  %cip.3.lcssa = phi i32 [ 1, %e2 ], [ %nv.i43262, %e4.loopexit ]
  %nv.i35 = add i32 %cip.3.lcssa, -4
  %0 = sext i32 %nv.i35 to i64
  %cp5 = getelementptr i8, i8* %csp, i64 %0
  %cv5229 = load i8, i8* %cp5, align 1
  %z5230 = icmp eq i8 %cv5229, 0
  %nv.i33 = add i32 %cip.3.lcssa, -3
  %1 = sext i32 %nv.i33 to i64
  %cp.i11 = getelementptr i8, i8* %csp, i64 %1
  %cv.i12231 = load i8, i8* %cp.i11, align 1
  br i1 %z5230, label %e5, label %c5.e5_crit_edge

c5.e5_crit_edge:                                  ; preds = %e4
  %nv.i27 = add i8 %cv.i12231, 2
  store i8 0, i8* %cp5, align 1
  store i8 %nv.i27, i8* %cp.i11, align 1
  br label %e5

e5:                                               ; preds = %c5.e5_crit_edge, %e4
  %cv.i12.lcssa = phi i8 [ %nv.i27, %c5.e5_crit_edge ], [ %cv.i12231, %e4 ]
  %cb.i13 = sext i8 %cv.i12.lcssa to i32
  %2 = tail call i32 @putchar(i32 %cb.i13) #0
  %nv.i9 = add i32 %cip.3.lcssa, -2
  %3 = sext i32 %nv.i9 to i64
  %cp.i2 = getelementptr i8, i8* %csp, i64 %3
  %cv.i3 = load i8, i8* %cp.i2, align 1
  %cb.i = sext i8 %cv.i3 to i32
  %4 = tail call i32 @putchar(i32 %cb.i) #0
  tail call void @free(i8* nonnull %csp)
  ret i32 0
}

attributes #0 = { nounwind }
attributes #1 = { norecurse nounwind }
