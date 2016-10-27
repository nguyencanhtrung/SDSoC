; ModuleID = '/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/madd/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@str = internal constant [5 x i8] c"madd\00"
@str1 = internal constant [14 x i8] c"L_hls_label_0\00"

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define void @madd([1024 x float]* %A, [1024 x float]* %B, [1024 x float]* %C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %A) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %B) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %C) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %A, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %A, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %B, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %B, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %C, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %C, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader.preheader
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %.preheader.preheader ]
  %i = phi i6 [ 0, %0 ], [ %i_mid2, %.preheader.preheader ]
  %j = phi i6 [ 0, %0 ], [ %j_1, %.preheader.preheader ]
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -1024
  %indvar_flatten_next = add i11 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %1, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @str1)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) nounwind
  %exitcond4 = icmp eq i6 %j, -32
  %j_mid2 = select i1 %exitcond4, i6 0, i6 %j
  %i_s = add i6 %i, 1
  %i_mid2 = select i1 %exitcond4, i6 %i_s, i6 %i
  %tmp_5 = trunc i6 %i_mid2 to i5
  %tmp = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_5, i5 0)
  %j_cast1 = zext i6 %j_mid2 to i10
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str3) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_2 = add i10 %j_cast1, %tmp
  %tmp_3 = zext i10 %tmp_2 to i64
  %A_addr = getelementptr [1024 x float]* %A, i64 0, i64 %tmp_3
  %A_load = load float* %A_addr, align 4
  %B_addr = getelementptr [1024 x float]* %B, i64 0, i64 %tmp_3
  %B_load = load float* %B_addr, align 4
  %tmp_4 = fadd float %A_load, %B_load
  %C_addr = getelementptr [1024 x float]* %C, i64 0, i64 %tmp_3
  store float %tmp_4, float* %C_addr, align 4
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_1) nounwind
  %j_1 = add i6 %j_mid2, 1
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
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
  %empty_3 = zext i5 %1 to i10
  %empty_4 = shl i10 %empty, 5
  %empty_5 = or i10 %empty_4, %empty_3
  ret i10 %empty_5
}

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1023, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"C", metadata !4, metadata !"float", i32 0, i32 31}
