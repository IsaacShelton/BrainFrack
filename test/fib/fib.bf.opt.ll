; ModuleID = 'fib.bf.ll'
source_filename = "fib.bf.ll"

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
c1.preheader.preheader:
  %csp = tail call i8* @calloc(i32 30000, i32 1)
  %cp.i3 = getelementptr i8, i8* %csp, i64 1
  store i8 10, i8* %cp.i3, align 1
  %cp.i391 = getelementptr i8, i8* %csp, i64 2
  store i8 1, i8* %cp.i391, align 1
  %cp.i385 = getelementptr i8, i8* %csp, i64 3
  store i8 1, i8* %cp.i385, align 1
  br label %b1.preheader

b1.preheader:                                     ; preds = %e4, %c1.preheader.preheader
  %cv1580 = phi i8 [ %cv0, %e4 ], [ 1, %c1.preheader.preheader ]
  %cip.0636 = phi i32 [ %nv.i23, %e4 ], [ 3, %c1.preheader.preheader ]
  %0 = sext i32 %cip.0636 to i64
  %cp1579 = getelementptr i8, i8* %csp, i64 %0
  br label %b1

b1:                                               ; preds = %b1.preheader, %e3
  %cv1584 = phi i8 [ %cv1, %e3 ], [ %cv1580, %b1.preheader ]
  %cp1583 = phi i8* [ %cp1, %e3 ], [ %cp1579, %b1.preheader ]
  %cip.1582 = phi i32 [ %nv.i241, %e3 ], [ %cip.0636, %b1.preheader ]
  %nv.i367 = add i8 %cv1584, 5
  store i8 %nv.i367, i8* %cp1583, align 1
  %1 = sext i32 %cip.1582 to i64
  %cp2 = getelementptr i8, i8* %csp, i64 %1
  %cv2567 = load i8, i8* %cp2, align 1
  %z2568 = icmp eq i8 %cv2567, 0
  %nv.i363 = add i32 %cip.1582, 1
  %2 = sext i32 %nv.i363 to i64
  %cp.i317 = getelementptr i8, i8* %csp, i64 %2
  %cv.i318569 = load i8, i8* %cp.i317, align 1
  br i1 %z2568, label %e2, label %b2.lr.ph

b2.lr.ph:                                         ; preds = %b1
  %3 = shl i8 %cv2567, 3
  %4 = add i8 %cv.i318569, %3
  store i8 %4, i8* %cp.i317, align 1
  store i8 0, i8* %cp2, align 1
  br label %e2

e2:                                               ; preds = %b2.lr.ph, %b1
  %cv.i318.lcssa = phi i8 [ %4, %b2.lr.ph ], [ %cv.i318569, %b1 ]
  %cb.i319 = sext i8 %cv.i318.lcssa to i32
  %5 = tail call i32 @putchar(i32 %cb.i319) #0
  %cv.i312 = load i8, i8* %cp2, align 1
  %nv.i293 = add i8 %cv.i312, 6
  store i8 %nv.i293, i8* %cp2, align 1
  %z3574 = icmp eq i8 %nv.i293, 0
  br i1 %z3574, label %e3, label %b3.lr.ph

b3.lr.ph:                                         ; preds = %e2
  %cp.i285.promoted = load i8, i8* %cp.i317, align 1
  %6 = shl i8 %nv.i293, 3
  %7 = sub i8 %cp.i285.promoted, %6
  store i8 %7, i8* %cp.i317, align 1
  store i8 0, i8* %cp2, align 1
  br label %e3

e3:                                               ; preds = %b3.lr.ph, %e2
  store i8 1, i8* %cp2, align 1
  %nv.i241 = add i32 %cip.1582, -3
  %8 = sext i32 %nv.i241 to i64
  %cp1 = getelementptr i8, i8* %csp, i64 %8
  %cv1 = load i8, i8* %cp1, align 1
  %z1 = icmp eq i8 %cv1, 0
  br i1 %z1, label %e1, label %b1

e1:                                               ; preds = %e3
  %nv.i239 = add i32 %cip.1582, -2
  %9 = sext i32 %nv.i239 to i64
  %cp.i231 = getelementptr i8, i8* %csp, i64 %9
  %cv.i232 = load i8, i8* %cp.i231, align 1
  %cb.i233 = sext i8 %cv.i232 to i32
  %10 = tail call i32 @putchar(i32 %cb.i233) #0
  %11 = sext i32 %cip.1582 to i64
  %cp4626 = getelementptr i8, i8* %csp, i64 %11
  %cv4627 = load i8, i8* %cp4626, align 1
  %z4628 = icmp eq i8 %cv4627, 0
  br i1 %z4628, label %e4, label %e5.preheader

e5.preheader:                                     ; preds = %e1
  br label %e5

e5:                                               ; preds = %e5.preheader, %e8
  %cp4630 = phi i8* [ %cp4.pre-phi, %e8 ], [ %cp4626, %e5.preheader ]
  %nv.i239.sink629 = phi i32 [ %nv.i207, %e8 ], [ %nv.i239, %e5.preheader ]
  store i8 0, i8* %cp4630, align 1
  %nv.i221 = add i32 %nv.i239.sink629, 1
  %12 = sext i32 %nv.i221 to i64
  %cp6 = getelementptr i8, i8* %csp, i64 %12
  %cv6588 = load i8, i8* %cp6, align 1
  %z6589 = icmp eq i8 %cv6588, 0
  %.pre = add i32 %nv.i239.sink629, 2
  br i1 %z6589, label %e6, label %b6.lr.ph

b6.lr.ph:                                         ; preds = %e5
  %13 = sext i32 %.pre to i64
  %cp.i215 = getelementptr i8, i8* %csp, i64 %13
  %cp.i215.promoted = load i8, i8* %cp.i215, align 1
  %14 = add i8 %cv6588, %cp.i215.promoted
  store i8 %14, i8* %cp.i215, align 1
  store i8 0, i8* %cp6, align 1
  br label %e6

e6:                                               ; preds = %e5, %b6.lr.ph
  %nv.i207 = add i32 %nv.i239.sink629, 3
  %15 = sext i32 %nv.i207 to i64
  %cp7 = getelementptr i8, i8* %csp, i64 %15
  %cv7592 = load i8, i8* %cp7, align 1
  %z7593 = icmp eq i8 %cv7592, 0
  %.phi.trans.insert = sext i32 %.pre to i64
  %cp8.phi.trans.insert = getelementptr i8, i8* %csp, i64 %.phi.trans.insert
  %cv8621.pre = load i8, i8* %cp8.phi.trans.insert, align 1
  br i1 %z7593, label %c8.preheader, label %b7.lr.ph

b7.lr.ph:                                         ; preds = %e6
  %16 = add i8 %cv7592, %cv8621.pre
  store i8 %cv7592, i8* %cp6, align 1
  store i8 %16, i8* %cp8.phi.trans.insert, align 1
  store i8 0, i8* %cp7, align 1
  br label %c8.preheader

c8.preheader:                                     ; preds = %e6, %b7.lr.ph
  %cv8621 = phi i8 [ %16, %b7.lr.ph ], [ %cv8621.pre, %e6 ]
  %cp8 = getelementptr i8, i8* %csp, i64 %.phi.trans.insert
  %z8622 = icmp eq i8 %cv8621, 0
  br i1 %z8622, label %c8.preheader.e8_crit_edge, label %b8

c8.preheader.e8_crit_edge:                        ; preds = %c8.preheader
  %.pre682 = add i32 %nv.i239.sink629, 5
  %.pre683 = sext i32 %.pre682 to i64
  %.pre685 = getelementptr i8, i8* %csp, i64 %.pre683
  br label %e8

b8:                                               ; preds = %c8.preheader
  %nv.i71 = add i32 %nv.i239.sink629, 4
  %17 = sext i32 %nv.i71 to i64
  %cp.i67 = getelementptr i8, i8* %csp, i64 %17
  %nv.i65 = add i32 %nv.i239.sink629, 5
  %18 = sext i32 %nv.i65 to i64
  %cp.i61 = getelementptr i8, i8* %csp, i64 %18
  store i8 1, i8* %cp7, align 1
  %nv.i177 = add i8 %cv8621, -1
  store i8 %nv.i177, i8* %cp8, align 1
  %z9620 = icmp eq i8 %nv.i177, 0
  br i1 %z9620, label %e8, label %b9

b9:                                               ; preds = %b8
  store i8 2, i8* %cp7, align 1
  %cv.i164 = load i8, i8* %cp8, align 1
  %nv.i165 = add i8 %cv.i164, -1
  store i8 %nv.i165, i8* %cp8, align 1
  %z10618 = icmp eq i8 %nv.i165, 0
  br i1 %z10618, label %e8, label %b10

b10:                                              ; preds = %b9
  store i8 3, i8* %cp7, align 1
  %cv.i152 = load i8, i8* %cp8, align 1
  %nv.i153 = add i8 %cv.i152, -1
  store i8 %nv.i153, i8* %cp8, align 1
  %z11616 = icmp eq i8 %nv.i153, 0
  br i1 %z11616, label %e8, label %b11

b11:                                              ; preds = %b10
  store i8 4, i8* %cp7, align 1
  %cv.i140 = load i8, i8* %cp8, align 1
  %nv.i141 = add i8 %cv.i140, -1
  store i8 %nv.i141, i8* %cp8, align 1
  %z12614 = icmp eq i8 %nv.i141, 0
  br i1 %z12614, label %e8, label %b12

b12:                                              ; preds = %b11
  store i8 5, i8* %cp7, align 1
  %cv.i128 = load i8, i8* %cp8, align 1
  %nv.i129 = add i8 %cv.i128, -1
  store i8 %nv.i129, i8* %cp8, align 1
  %z13612 = icmp eq i8 %nv.i129, 0
  br i1 %z13612, label %e8, label %b13

b13:                                              ; preds = %b12
  store i8 6, i8* %cp7, align 1
  %cv.i116 = load i8, i8* %cp8, align 1
  %nv.i117 = add i8 %cv.i116, -1
  store i8 %nv.i117, i8* %cp8, align 1
  %z14610 = icmp eq i8 %nv.i117, 0
  br i1 %z14610, label %e8, label %b14

b14:                                              ; preds = %b13
  store i8 7, i8* %cp7, align 1
  %cv.i104 = load i8, i8* %cp8, align 1
  %nv.i105 = add i8 %cv.i104, -1
  store i8 %nv.i105, i8* %cp8, align 1
  %z15608 = icmp eq i8 %nv.i105, 0
  br i1 %z15608, label %e8, label %b15

b15:                                              ; preds = %b14
  store i8 8, i8* %cp7, align 1
  %cv.i92 = load i8, i8* %cp8, align 1
  %nv.i93 = add i8 %cv.i92, -1
  store i8 %nv.i93, i8* %cp8, align 1
  %z16606 = icmp eq i8 %nv.i93, 0
  br i1 %z16606, label %e8, label %b16

b16:                                              ; preds = %b15
  store i8 9, i8* %cp7, align 1
  %cv.i80 = load i8, i8* %cp8, align 1
  %nv.i81 = add i8 %cv.i80, -1
  store i8 %nv.i81, i8* %cp8, align 1
  %z17604 = icmp eq i8 %nv.i81, 0
  br i1 %z17604, label %e8, label %e18

e18:                                              ; preds = %b16
  store i8 0, i8* %cp7, align 1
  %cv.i68 = load i8, i8* %cp.i67, align 1
  %nv.i69 = add i8 %cv.i68, 1
  store i8 %nv.i69, i8* %cp.i67, align 1
  %cv.i62 = load i8, i8* %cp.i61, align 1
  %nv.i63 = add i8 %cv.i62, 1
  store i8 %nv.i63, i8* %cp.i61, align 1
  %cv.i52 = load i8, i8* %cp8, align 1
  %nv.i53 = add i8 %cv.i52, -1
  store i8 %nv.i53, i8* %cp8, align 1
  %z19602 = icmp eq i8 %nv.i53, 0
  br i1 %z19602, label %e8, label %b19.preheader

b19.preheader:                                    ; preds = %e18
  %cp8.promoted = load i8, i8* %cp8, align 1
  br label %b19

b19:                                              ; preds = %b19.preheader, %b19
  %nv.i41686 = phi i8 [ %nv.i41, %b19 ], [ %cp8.promoted, %b19.preheader ]
  %cv.i46 = phi i8 [ %nv.i47, %b19 ], [ 0, %b19.preheader ]
  %nv.i47 = add i8 %cv.i46, 1
  %nv.i41 = add i8 %nv.i41686, -1
  %z19 = icmp eq i8 %nv.i41, 0
  br i1 %z19, label %e8.loopexit, label %b19

e8.loopexit:                                      ; preds = %b19
  store i8 %nv.i47, i8* %cp7, align 1
  store i8 %nv.i41, i8* %cp8, align 1
  br label %e8

e8:                                               ; preds = %e8.loopexit, %b9, %b8, %b10, %b11, %b12, %b13, %b14, %b15, %b16, %e18, %c8.preheader.e8_crit_edge
  %cp4.pre-phi = phi i8* [ %.pre685, %c8.preheader.e8_crit_edge ], [ %cp.i61, %e18 ], [ %cp.i61, %b16 ], [ %cp.i61, %b15 ], [ %cp.i61, %b14 ], [ %cp.i61, %b13 ], [ %cp.i61, %b12 ], [ %cp.i61, %b11 ], [ %cp.i61, %b10 ], [ %cp.i61, %b8 ], [ %cp.i61, %b9 ], [ %cp.i61, %e8.loopexit ]
  store i8 1, i8* %cp8, align 1
  %cv4 = load i8, i8* %cp4.pre-phi, align 1
  %z4 = icmp eq i8 %cv4, 0
  br i1 %z4, label %e4.loopexit, label %e5

e4.loopexit:                                      ; preds = %e8
  br label %e4

e4:                                               ; preds = %e4.loopexit, %e1
  %nv.i239.sink.lcssa = phi i32 [ %nv.i239, %e1 ], [ %nv.i207, %e4.loopexit ]
  %nv.i23 = add i32 %nv.i239.sink.lcssa, -1
  %19 = sext i32 %nv.i23 to i64
  %cp0 = getelementptr i8, i8* %csp, i64 %19
  %cv0 = load i8, i8* %cp0, align 1
  %z0 = icmp eq i8 %cv0, 0
  br i1 %z0, label %e0, label %b1.preheader

e0:                                               ; preds = %e4
  %20 = tail call i32 @putchar(i32 0) #0
  %cv.i8 = load i8, i8* %cp0, align 1
  %cb.i9 = sext i8 %cv.i8 to i32
  %21 = tail call i32 @putchar(i32 %cb.i9) #0
  %cv.i1 = load i8, i8* %cp0, align 1
  %cb.i = sext i8 %cv.i1 to i32
  %22 = tail call i32 @putchar(i32 %cb.i) #0
  tail call void @free(i8* nonnull %csp)
  ret i32 0
}

attributes #0 = { nounwind }
attributes #1 = { norecurse nounwind }
