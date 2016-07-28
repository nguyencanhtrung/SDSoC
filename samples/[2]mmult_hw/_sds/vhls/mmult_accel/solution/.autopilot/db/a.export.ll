; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_hw/_sds/vhls/mmult_accel/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1
@str = internal constant [12 x i8] c"mmult_accel\00"

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define void @mmult_accel([1024 x float]* %in_A, [1024 x float]* %in_B, [1024 x float]* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %in_A) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %in_B) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %out_C) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %in_A, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %in_A, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %in_B, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %in_B, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %out_C, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %out_C, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader3, %0
  %row = phi i6 [ 0, %0 ], [ %row_1, %.preheader3 ]
  %exitcond2 = icmp eq i6 %row, -32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %row_1 = add i6 %row, 1
  br i1 %exitcond2, label %3, label %.preheader3.preheader

.preheader3.preheader:                            ; preds = %.loopexit
  %tmp_1 = trunc i6 %row to i5
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_1, i5 0)
  br label %.preheader3

.preheader3:                                      ; preds = %2, %.preheader3.preheader
  %col = phi i6 [ %col_1, %2 ], [ 0, %.preheader3.preheader ]
  %col_cast2 = zext i6 %col to i10
  %exitcond1 = icmp eq i6 %col, -32
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %col_1 = add i6 %col, 1
  br i1 %exitcond1, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader3, %1
  %result = phi float [ %result_1, %1 ], [ 0.000000e+00, %.preheader3 ]
  %k = phi i6 [ %k_1, %1 ], [ 0, %.preheader3 ]
  %k_cast1 = zext i6 %k to i10
  %exitcond = icmp eq i6 %k, -32
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %k_1 = add i6 %k, 1
  br i1 %exitcond, label %2, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_5 = add i10 %k_cast1, %tmp
  %tmp_6 = zext i10 %tmp_5 to i64
  %in_A_addr = getelementptr [1024 x float]* %in_A, i64 0, i64 %tmp_6
  %in_A_load = load float* %in_A_addr, align 4
  %tmp_4 = trunc i6 %k to i5
  %tmp_7 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_4, i5 0)
  %tmp_8 = add i10 %tmp_7, %col_cast2
  %tmp_9 = zext i10 %tmp_8 to i64
  %in_B_addr = getelementptr [1024 x float]* %in_B, i64 0, i64 %tmp_9
  %in_B_load = load float* %in_B_addr, align 4
  %tmp_s = fmul float %in_A_load, %in_B_load
  %result_1 = fadd float %result, %tmp_s
  br label %.preheader

; <label>:2                                       ; preds = %.preheader
  %tmp_2 = add i10 %col_cast2, %tmp
  %tmp_3 = zext i10 %tmp_2 to i64
  %out_C_addr = getelementptr [1024 x float]* %out_C, i64 0, i64 %tmp_3
  store float %result, float* %out_C_addr, align 4
  br label %.preheader3

; <label>:3                                       ; preds = %.loopexit
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_4 = zext i5 %1 to i10
  %empty_5 = shl i10 %empty, 5
  %empty_6 = or i10 %empty_5, %empty_4
  ret i10 %empty_6
}

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1023, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"in_B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out_C", metadata !4, metadata !"float", i32 0, i32 31}
