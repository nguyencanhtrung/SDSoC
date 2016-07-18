; ModuleID = 'C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls/sharpen_filter/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sharpen_filter_str = internal unnamed_addr constant [15 x i8] c"sharpen_filter\00"
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define i32 @sharpen_filter(i8* %input_r, i8* %output_r) nounwind uwtable {
  %buff_C_2_1 = alloca i8
  %buff_C_0_1 = alloca i8
  %buff_C_1_0 = alloca i8
  %buff_C_1_1 = alloca i8
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output_r) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @sharpen_filter_str) nounwind
  %buff_A_0 = alloca [1920 x i8], align 16
  %buff_A_1 = alloca [1920 x i8], align 16
  %buff_A_2 = alloca [1920 x i8], align 16
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %input_r, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %output_r, [8 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %.preheader

.preheader:                                       ; preds = %0, %._crit_edge4
  %indvar_flatten = phi i21 [ 0, %0 ], [ %indvar_flatten_next, %._crit_edge4 ]
  %row = phi i11 [ 0, %0 ], [ %row_mid2, %._crit_edge4 ]
  %col_assign = phi i11 [ 0, %0 ], [ %col, %._crit_edge4 ]
  %buff_C_1_0_load = load i8* %buff_C_1_0
  %buff_C_1_1_load_1 = load i8* %buff_C_1_1
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -20551
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  store i8 %buff_C_1_1_load_1, i8* %buff_C_1_0
  br i1 %exitcond_flatten, label %3, label %.preheader.preheader

linebuffer_shift_up.exit:                         ; preds = %.preheader.preheader
  %tmp_3 = zext i11 %col_assign_mid2 to i64
  %buff_A_1_addr = getelementptr [1920 x i8]* %buff_A_1, i64 0, i64 %tmp_3
  %buff_A_1_load = load i8* %buff_A_1_addr, align 1
  %buff_A_2_addr = getelementptr [1920 x i8]* %buff_A_2, i64 0, i64 %tmp_3
  store i8 %buff_A_1_load, i8* %buff_A_2_addr, align 1
  %buff_A_0_addr = getelementptr [1920 x i8]* %buff_A_0, i64 0, i64 %tmp_3
  %return_value = load i8* %buff_A_0_addr, align 1
  store i8 %return_value, i8* %buff_A_1_addr, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %linebuffer_shift_up.exit, %.preheader.preheader
  %buff_C_1_2_1 = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %.preheader.preheader ]
  %tmp_7 = and i1 %tmp_2, %tmp
  br i1 %tmp_7, label %1, label %._crit_edge2_ifconv

; <label>:1                                       ; preds = %._crit_edge
  %y = call i8 @_ssdm_op_Read.ap_fifo.i8P(i8* %input_r) nounwind
  %tmp_9 = zext i11 %col_assign_mid2 to i64
  %buff_A_0_addr_1 = getelementptr [1920 x i8]* %buff_A_0, i64 0, i64 %tmp_9
  store i8 %y, i8* %buff_A_0_addr_1, align 1
  br label %._crit_edge2_ifconv

._crit_edge2_ifconv:                              ; preds = %1, %._crit_edge
  %buff_C_2_2 = phi i8 [ %y, %1 ], [ 0, %._crit_edge ]
  %buff_C_2_1_load = load i8* %buff_C_2_1
  %buff_C_0_1_load = load i8* %buff_C_0_1
  %buff_C_1_1_load = load i8* %buff_C_1_1
  %tmp_6 = zext i11 %col_assign_mid2 to i64
  %buff_A_2_addr_1 = getelementptr [1920 x i8]* %buff_A_2, i64 0, i64 %tmp_6
  %return_value_1 = load i8* %buff_A_2_addr_1, align 1
  %buff_C_1_2 = select i1 %tmp_2, i8 %buff_C_1_2_1, i8 %buff_C_1_1_load
  %buff_C_0_2_1 = select i1 %tmp_2, i8 %return_value_1, i8 %buff_C_0_1_load
  %buff_C_2_2_1 = select i1 %tmp_2, i8 %buff_C_2_2, i8 %buff_C_2_1_load
  %tmp_6_0_1_i_cast = zext i8 %buff_C_0_1_load to i9
  %tmp_6_1_i_cast = zext i8 %buff_C_1_0_load to i9
  %sum_i = add i9 %tmp_6_1_i_cast, %tmp_6_0_1_i_cast
  %sum_i_cast = zext i9 %sum_i to i12
  %tmp_6_1_1_i_cast2 = zext i8 %buff_C_1_1_load to i11
  %p_shl_i = call i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8 %buff_C_1_1_load, i2 0)
  %p_shl_i_cast = zext i10 %p_shl_i to i11
  %tmp_7_1_1_i = add i11 %p_shl_i_cast, %tmp_6_1_1_i_cast2
  %tmp_7_1_1_i_cast = zext i11 %tmp_7_1_1_i to i12
  %x_weight_2_1_1_i = sub i12 %tmp_7_1_1_i_cast, %sum_i_cast
  %tmp_6_1_2_i_cast = zext i8 %buff_C_1_2 to i12
  %x_weight_2_1_2_i = sub i12 %x_weight_2_1_1_i, %tmp_6_1_2_i_cast
  %tmp_6_2_1_i_cast = zext i8 %buff_C_2_1_load to i12
  %x_weight_2_2_1_i = sub i12 %x_weight_2_1_2_i, %tmp_6_2_1_i_cast
  %tmp_i = icmp sgt i12 %x_weight_2_2_1_i, 0
  %tmp_8 = trunc i12 %x_weight_2_2_1_i to i8
  %tmp_2_i = sub i8 0, %tmp_8
  %edge_val = select i1 %tmp_i, i8 %tmp_8, i8 %tmp_2_i
  %tmp_5 = icmp ne i11 %col_assign_mid2, 0
  %or_cond = and i1 %tmp_1, %tmp_5
  store i8 %buff_C_1_2, i8* %buff_C_1_1
  store i8 %buff_C_0_2_1, i8* %buff_C_0_1
  store i8 %buff_C_2_2_1, i8* %buff_C_2_1
  br i1 %or_cond, label %2, label %._crit_edge4

; <label>:2                                       ; preds = %._crit_edge2_ifconv
  call void @_ssdm_op_Write.ap_fifo.i8P(i8* %output_r, i8 %edge_val) nounwind
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %2, %._crit_edge2_ifconv
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_4) nounwind
  %col = add i11 %col_assign_mid2, 1
  br label %.preheader

.preheader.preheader:                             ; preds = %.preheader
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2076601, i64 2076601, i64 2076601) nounwind
  %exitcond4 = icmp eq i11 %col_assign, -127
  %col_assign_mid2 = select i1 %exitcond4, i11 0, i11 %col_assign
  %row_s = add i11 %row, 1
  %row_mid2 = select i1 %exitcond4, i11 %row_s, i11 %row
  %tmp = icmp ult i11 %row_mid2, -968
  %tmp_1 = icmp ne i11 %row_mid2, 0
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_2 = icmp ult i11 %col_assign_mid2, -128
  br i1 %tmp_2, label %linebuffer_shift_up.exit, label %._crit_edge

; <label>:3                                       ; preds = %.preheader
  ret i32 0
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i10 @_ssdm_op_BitConcatenate.i10.i8.i2(i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %0 to i10
  %empty_5 = zext i2 %1 to i10
  %empty_6 = shl i10 %empty, 2
  %empty_7 = or i10 %empty_6, %empty_5
  ret i10 %empty_7
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i8 @_autotb_FifoRead_i8(i8*)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"input", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 2073599, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 7, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"output", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
