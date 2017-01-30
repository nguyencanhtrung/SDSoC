; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease/_sds/vhls/correlation_accel_v3/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@lnReturnA = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@p_str5 = private unnamed_addr constant [30 x i8] c"ACCUMULATION_LOOP_FIRST_INDEX\00", align 1
@p_str6 = private unnamed_addr constant [28 x i8] c"LAST_ACCUM_LOOP_FIRST_INDEX\00", align 1
@p_str8 = private unnamed_addr constant [33 x i8] c"ACCUMULATION_LOOP_FLOATING_INDEX\00", align 1
@p_str9 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1
@p_str10 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1
@p_str11 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [21 x i8] c"correlation_accel_v3\00"
@str16 = internal constant [13 x i8] c"sum_weight.V\00"
@str17 = internal constant [1 x i8] zeroinitializer
@str18 = internal constant [8 x i8] c"ap_fifo\00"
@str19 = internal constant [1 x i8] zeroinitializer
@str20 = internal constant [13 x i8] c"sum_return.V\00"
@str21 = internal constant [1 x i8] zeroinitializer
@str22 = internal constant [8 x i8] c"ap_fifo\00"
@str23 = internal constant [1 x i8] zeroinitializer
@str24 = internal constant [26 x i8] c"sum_weight_returnSquare.V\00"
@str25 = internal constant [1 x i8] zeroinitializer
@str26 = internal constant [8 x i8] c"ap_fifo\00"
@str27 = internal constant [1 x i8] zeroinitializer
@str28 = internal constant [20 x i8] c"sum_weight_return.V\00"
@str29 = internal constant [1 x i8] zeroinitializer
@str30 = internal constant [8 x i8] c"ap_fifo\00"
@str31 = internal constant [1 x i8] zeroinitializer
@str32 = internal constant [29 x i8] c"sum_weight_returnA_returnB.V\00"
@str33 = internal constant [1 x i8] zeroinitializer
@str34 = internal constant [8 x i8] c"ap_fifo\00"
@str35 = internal constant [1 x i8] zeroinitializer
@str36 = internal constant [14 x i8] c"sum_returnA.V\00"
@str37 = internal constant [1 x i8] zeroinitializer
@str38 = internal constant [8 x i8] c"ap_fifo\00"
@str39 = internal constant [1 x i8] zeroinitializer
@str40 = internal constant [27 x i8] c"sum_weight_returnSquareA.V\00"
@str41 = internal constant [1 x i8] zeroinitializer
@str42 = internal constant [8 x i8] c"ap_fifo\00"
@str43 = internal constant [1 x i8] zeroinitializer
@str44 = internal constant [21 x i8] c"sum_weight_returnA.V\00"
@str45 = internal constant [1 x i8] zeroinitializer
@str46 = internal constant [8 x i8] c"ap_fifo\00"
@str47 = internal constant [1 x i8] zeroinitializer
@str55 = internal constant [8 x i8] c"ap_fifo\00"
@str57 = internal constant [8 x i8] c"ap_fifo\00"
@str59 = internal constant [28 x i8] c"number_of_indices14.channel\00"
@str60 = internal constant [1 x i8] zeroinitializer
@str61 = internal constant [8 x i8] c"ap_fifo\00"
@str62 = internal constant [25 x i8] c"number_of_days15.channel\00"
@str63 = internal constant [1 x i8] zeroinitializer
@str64 = internal constant [8 x i8] c"ap_fifo\00"
@str67 = internal constant [8 x i8] c"ap_fifo\00"
@str68 = internal constant [8 x i8] c"ap_fifo\00"
@str71 = internal constant [8 x i8] c"ap_fifo\00"
@str72 = internal constant [8 x i8] c"ap_fifo\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
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

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

declare float @llvm.log.f32(float) nounwind readonly

declare float @llvm.sqrt.f32(float) nounwind readonly

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @correlation_accel_v3(i32 %number_of_days, i32 %number_of_indices, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices)
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days)
  %number_of_days15_channel = alloca i32, align 4
  %number_of_indices14_channel = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_indices_data_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_keep_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_strb_V), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_user_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_last_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_id_V), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_dest_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_correlation_data_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_keep_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_strb_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_user_V), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_last_V), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_id_V), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_dest_V), !map !73
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %sum_weight_V = alloca float, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @str16, i32 1, [1 x i8]* @str17, [1 x i8]* @str17, i32 2, i32 2, float* %sum_weight_V, float* %sum_weight_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_V, [8 x i8]* @str18, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str19, [1 x i8]* @str19, [8 x i8]* @str18)
  %sum_return_V = alloca float, align 4
  %empty_5 = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @str20, i32 1, [1 x i8]* @str21, [1 x i8]* @str21, i32 2, i32 2, float* %sum_return_V, float* %sum_return_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_V, [8 x i8]* @str22, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str23, [1 x i8]* @str23, [8 x i8]* @str22)
  %sum_weight_returnSquare_V = alloca float, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecChannel([26 x i8]* @str24, i32 1, [1 x i8]* @str25, [1 x i8]* @str25, i32 2, i32 2, float* %sum_weight_returnSquare_V, float* %sum_weight_returnSquare_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_V, [8 x i8]* @str26, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str27, [1 x i8]* @str27, [8 x i8]* @str26)
  %sum_weight_return_V = alloca float, align 4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @str28, i32 1, [1 x i8]* @str29, [1 x i8]* @str29, i32 2, i32 2, float* %sum_weight_return_V, float* %sum_weight_return_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_V, [8 x i8]* @str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str31, [1 x i8]* @str31, [8 x i8]* @str30)
  %sum_weight_returnA_returnB_V = alloca float, align 4
  %empty_8 = call i32 (...)* @_ssdm_op_SpecChannel([29 x i8]* @str32, i32 1, [1 x i8]* @str33, [1 x i8]* @str33, i32 2, i32 2, float* %sum_weight_returnA_returnB_V, float* %sum_weight_returnA_returnB_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_V, [8 x i8]* @str34, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str35, [1 x i8]* @str35, [8 x i8]* @str34)
  %sum_returnA_V = alloca float, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecChannel([14 x i8]* @str36, i32 1, [1 x i8]* @str37, [1 x i8]* @str37, i32 2, i32 2, float* %sum_returnA_V, float* %sum_returnA_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_V, [8 x i8]* @str38, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str39, [1 x i8]* @str39, [8 x i8]* @str38)
  %sum_weight_returnSquareA_V = alloca float, align 4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecChannel([27 x i8]* @str40, i32 1, [1 x i8]* @str41, [1 x i8]* @str41, i32 2, i32 2, float* %sum_weight_returnSquareA_V, float* %sum_weight_returnSquareA_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_V, [8 x i8]* @str42, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str43, [1 x i8]* @str43, [8 x i8]* @str42)
  %sum_weight_returnA_V = alloca float, align 4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecChannel([21 x i8]* @str44, i32 1, [1 x i8]* @str45, [1 x i8]* @str45, i32 2, i32 2, float* %sum_weight_returnA_V, float* %sum_weight_returnA_V)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_V, [8 x i8]* @str46, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str47, [1 x i8]* @str47, [8 x i8]* @str46)
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @correlation_accel_v3_frontEnd(i32 %number_of_days_read, i32 %number_of_indices_read, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, float* %sum_weight_V, float* %sum_return_V, float* %sum_weight_returnSquare_V, float* %sum_weight_return_V, float* %sum_weight_returnA_returnB_V, float* %sum_returnA_V, float* %sum_weight_returnSquareA_V, float* %sum_weight_returnA_V, i32* %number_of_indices14_channel, i32* %number_of_days15_channel)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecChannel([28 x i8]* @str59, i32 1, [1 x i8]* @str60, [1 x i8]* @str60, i32 1, i32 0, i32* %number_of_indices14_channel, i32* %number_of_indices14_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_indices14_channel, [8 x i8]* @str61, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str61, [8 x i8]* @str61, [8 x i8]* @str61)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecChannel([25 x i8]* @str62, i32 1, [1 x i8]* @str63, [1 x i8]* @str63, i32 1, i32 0, i32* %number_of_days15_channel, i32* %number_of_days15_channel)
  call void (...)* @_ssdm_op_SpecInterface(i32* %number_of_days15_channel, [8 x i8]* @str64, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str64, [8 x i8]* @str64, [8 x i8]* @str64)
  call fastcc void @correlation_accel_v3_backEnd(i32* %number_of_days15_channel, i32* %number_of_indices14_channel, float* %sum_weight_V, float* %sum_return_V, float* %sum_weight_returnSquare_V, float* %sum_weight_return_V, float* %sum_weight_returnA_returnB_V, float* %sum_returnA_V, float* %sum_weight_returnSquareA_V, float* %sum_weight_returnA_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V)
  ret void
}

define internal fastcc void @correlation_accel_v3_frontEnd(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, float* %sum_weight_out_V, float* %sum_return_out_V, float* %sum_weight_returnSquare_out_V, float* %sum_weight_return_out_V, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out_V, float* %sum_weight_returnSquareA_out_V, float* %sum_weight_returnA_out_V, i32* %NUMBER_OF_INDICES_out, i32* %NUMBER_OF_DAYS_out) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i1* %in_indices_dest_V, i1* %in_indices_id_V, i1* %in_indices_last_V, i1* %in_indices_user_V, i4* %in_indices_strb_V, i4* %in_indices_keep_V, i32* %in_indices_data_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str68, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str68, [8 x i8]* @str68, [8 x i8]* @str68)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str67, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str67, [8 x i8]* @str67, [8 x i8]* @str67)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %NUMBER_OF_INDICES)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %NUMBER_OF_DAYS)
  %tmp1_keep_V_i = alloca i4, align 1
  %tmp1_strb_V_i = alloca i4, align 1
  %tmp1_user_V_i = alloca i1, align 1
  %tmp1_last_V_i = alloca i1, align 1
  %tmp1_id_V_i = alloca i1, align 1
  %tmp1_dest_V_i = alloca i1, align 1
  %acc_return = alloca [6 x float], align 16
  %acc_weight_returnSquare = alloca [6 x float], align 16
  %acc_weight_return = alloca [6 x float], align 16
  %acc_weight_returnA_returnB = alloca [6 x float], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS_out, [8 x i8]* @str57, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str57, [8 x i8]* @str57, [8 x i8]* @str57)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_DAYS_out, i32 %NUMBER_OF_DAYS_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES_out, [8 x i8]* @str55, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str55, [8 x i8]* @str55, [8 x i8]* @str55)
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %NUMBER_OF_INDICES_out, i32 %NUMBER_OF_INDICES_read)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_out_V, [8 x i8]* @str46, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str47, [1 x i8]* @str47, [8 x i8]* @str46)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_out_V, [8 x i8]* @str42, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str43, [1 x i8]* @str43, [8 x i8]* @str42)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_out_V, [8 x i8]* @str38, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str39, [1 x i8]* @str39, [8 x i8]* @str38)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_out, [8 x i8]* @str34, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str35, [1 x i8]* @str35, [8 x i8]* @str34)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_out_V, [8 x i8]* @str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str31, [1 x i8]* @str31, [8 x i8]* @str30)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_out_V, [8 x i8]* @str26, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str27, [1 x i8]* @str27, [8 x i8]* @str26)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_out_V, [8 x i8]* @str22, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str23, [1 x i8]* @str23, [8 x i8]* @str22)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_out_V, [8 x i8]* @str18, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str19, [1 x i8]* @str19, [8 x i8]* @str18)
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %tmp_i_i = phi float [ 1.000000e+00, %entry ], [ %tmp_i_i_14, %1 ]
  %i_i_i = phi i8 [ 2, %entry ], [ %i, %1 ]
  %exitcond_i_i = icmp eq i8 %i_i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250)
  br i1 %exitcond_i_i, label %.preheader.i.i, label %1

; <label>:1                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str10) nounwind
  %tmp_i_i_14 = fmul float %tmp_i_i, 0x3FEE147AE0000000
  %tmp_70_i_i = zext i8 %i_i_i to i64
  %weight_rom_addr = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_70_i_i
  store float %tmp_i_i_14, float* %weight_rom_addr, align 4
  %i = add i8 %i_i_i, 1
  br label %0

.preheader.i.i:                                   ; preds = %0, %2
  %i1_i_i = phi i31 [ %i_1, %2 ], [ 2, %0 ]
  %i1_i_cast_i = zext i31 %i1_i_i to i32
  %tmp_69_i_i = icmp slt i32 %i1_i_cast_i, %NUMBER_OF_DAYS_read
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0)
  br i1 %tmp_69_i_i, label %2, label %weight_rom_init.exit.i

; <label>:2                                       ; preds = %.preheader.i.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str11) nounwind
  %tmp_71_i_i = zext i31 %i1_i_i to i64
  %weight_rom_addr_1 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_71_i_i
  %weight_rom_load = load float* %weight_rom_addr_1, align 4
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %tmp_72_i_i = fadd float %weight_rom_load_1, %weight_rom_load
  store float %tmp_72_i_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %i_1 = add i31 %i1_i_i, 1
  br label %.preheader.i.i

weight_rom_init.exit.i:                           ; preds = %.preheader.i.i
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %acc_return_addr = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 0
  store float 0.000000e+00, float* %acc_return_addr, align 16
  %acc_weight_returnSquare_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 0
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr, align 16
  %acc_weight_return_addr = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 0
  store float 0.000000e+00, float* %acc_weight_return_addr, align 16
  %acc_return_addr_1 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 1
  store float 0.000000e+00, float* %acc_return_addr_1, align 4
  %acc_weight_returnSquare_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 1
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_1, align 4
  %acc_weight_return_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 1
  store float 0.000000e+00, float* %acc_weight_return_addr_1, align 4
  %acc_return_addr_2 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 2
  store float 0.000000e+00, float* %acc_return_addr_2, align 8
  %acc_weight_returnSquare_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 2
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_2, align 8
  %acc_weight_return_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 2
  store float 0.000000e+00, float* %acc_weight_return_addr_2, align 8
  %acc_return_addr_3 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 3
  store float 0.000000e+00, float* %acc_return_addr_3, align 4
  %acc_weight_returnSquare_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 3
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_3, align 4
  %acc_weight_return_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 3
  store float 0.000000e+00, float* %acc_weight_return_addr_3, align 4
  %acc_return_addr_4 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 4
  store float 0.000000e+00, float* %acc_return_addr_4, align 16
  %acc_weight_returnSquare_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_4, align 16
  %acc_weight_return_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 4
  store float 0.000000e+00, float* %acc_weight_return_addr_4, align 16
  %acc_return_addr_5 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 5
  store float 0.000000e+00, float* %acc_return_addr_5, align 4
  %acc_weight_returnSquare_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 5
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_5, align 4
  %acc_weight_return_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 5
  store float 0.000000e+00, float* %acc_weight_return_addr_5, align 4
  %in_indices_data_V_read = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %tmp_i = bitcast i32 %in_indices_data_V_read to float
  %tmp1_keep_V = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %tmp1_keep_V, i4* %tmp1_keep_V_i, align 4
  %tmp1_strb_V = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %tmp1_strb_V, i4* %tmp1_strb_V_i, align 1
  %tmp1_user_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %tmp1_user_V, i1* %tmp1_user_V_i, align 2
  %tmp1_last_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %tmp1_last_V, i1* %tmp1_last_V_i, align 1
  %tmp1_id_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %tmp1_id_V, i1* %tmp1_id_V_i, align 4
  %tmp1_dest_V = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %tmp1_dest_V, i1* %tmp1_dest_V_i, align 1
  %tmp_1_i = add nsw i32 %NUMBER_OF_DAYS_read, -1
  br label %3

; <label>:3                                       ; preds = %4, %weight_rom_init.exit.i
  %tmp_4_i = phi float [ undef, %weight_rom_init.exit.i ], [ %tmp_14_i, %4 ]
  %tmp_5_i = phi float [ %tmp_i, %weight_rom_init.exit.i ], [ %tmp_5_i_tmp_4_i, %4 ]
  %i1_i = phi i32 [ 1, %weight_rom_init.exit.i ], [ %i_3, %4 ]
  %tmp_6_i = icmp sgt i32 %i1_i, %tmp_1_i
  br i1 %tmp_6_i, label %.preheader104.i, label %4

; <label>:4                                       ; preds = %3
  %tmp = trunc i32 %i1_i to i31
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @p_str5) nounwind
  %tmp_71_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([30 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_7_i = icmp eq i32 %i1_i, 1
  %in_indices_data_V_read_1 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %in_indices_keep_V_read = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %in_indices_keep_V_read, i4* %tmp1_keep_V_i, align 4
  %in_indices_strb_V_read = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %in_indices_strb_V_read, i4* %tmp1_strb_V_i, align 1
  %in_indices_user_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %in_indices_user_V_read, i1* %tmp1_user_V_i, align 2
  %in_indices_last_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %in_indices_last_V_read, i1* %tmp1_last_V_i, align 1
  %in_indices_id_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %in_indices_id_V_read, i1* %tmp1_id_V_i, align 4
  %in_indices_dest_V_read = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %in_indices_dest_V_read, i1* %tmp1_dest_V_i, align 1
  %tmp_5_i_tmp_4_i = select i1 %tmp_7_i, float %tmp_5_i, float %tmp_4_i
  %tmp_14_i = bitcast i32 %in_indices_data_V_read_1 to float
  %tmp_15_i = fdiv float %tmp_5_i_tmp_4_i, %tmp_14_i
  %lnReturn = call float @llvm.log.f32(float %tmp_15_i)
  %tmp_16_i = zext i32 %i1_i to i64
  %weight_rom_addr_2 = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_16_i
  %weight = load float* %weight_rom_addr_2, align 4
  %channel = urem i32 %i1_i, 6
  %tmp_17_i = zext i32 %channel to i64
  %acc_return_addr_7 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_17_i
  %acc_return_load_1 = load float* %acc_return_addr_7, align 4
  %tmp_18_i = fadd float %acc_return_load_1, %lnReturn
  store float %tmp_18_i, float* %acc_return_addr_7, align 4
  %tmp_19_i = fmul float %lnReturn, %lnReturn
  %tmp_20_i = fmul float %tmp_19_i, %weight
  %acc_weight_returnSquare_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_17_i
  %acc_weight_returnSquare_load_1 = load float* %acc_weight_returnSquare_addr_7, align 4
  %tmp_21_i = fadd float %acc_weight_returnSquare_load_1, %tmp_20_i
  store float %tmp_21_i, float* %acc_weight_returnSquare_addr_7, align 4
  %tmp_22_i = fmul float %lnReturn, %weight
  %acc_weight_return_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_17_i
  %acc_weight_return_load_1 = load float* %acc_weight_return_addr_7, align 4
  %tmp_23_i = fadd float %acc_weight_return_load_1, %tmp_22_i
  store float %tmp_23_i, float* %acc_weight_return_addr_7, align 4
  %tmp_24_i = add i31 %tmp, -1
  %tmp_25_i = zext i31 %tmp_24_i to i64
  %lnReturnA_addr = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_25_i
  store float %lnReturn, float* %lnReturnA_addr, align 4
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([30 x i8]* @p_str5, i32 %tmp_71_i)
  %i_3 = add nsw i32 %i1_i, 1
  br label %3

.preheader104.i:                                  ; preds = %3, %5
  %tmp_9 = phi float [ %sum_weight_returnA, %5 ], [ 0.000000e+00, %3 ]
  %tmp_1 = phi float [ %sum_weight_returnSquareA, %5 ], [ 0.000000e+00, %3 ]
  %tmp_2 = phi float [ %sum_returnA, %5 ], [ 0.000000e+00, %3 ]
  %i2_i = phi i3 [ %i_2, %5 ], [ 0, %3 ]
  %exitcond2_i = icmp eq i3 %i2_i, -2
  %i_2 = add i3 %i2_i, 1
  br i1 %exitcond2_i, label %.preheader103.i.preheader, label %5

.preheader103.i.preheader:                        ; preds = %.preheader104.i
  %shift_reg_load1_i = alloca float, align 4
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5
  store float %tmp_4_i, float* %shift_reg_load1_i, align 4
  br label %.preheader103.i

; <label>:5                                       ; preds = %.preheader104.i
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @p_str6) nounwind
  %tmp_72_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([28 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_11_i = zext i3 %i2_i to i64
  %acc_return_addr_6 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_11_i
  %acc_return_load = load float* %acc_return_addr_6, align 4
  %sum_returnA = fadd float %tmp_2, %acc_return_load
  %acc_weight_returnSquare_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_11_i
  %acc_weight_returnSquare_load = load float* %acc_weight_returnSquare_addr_6, align 4
  %sum_weight_returnSquareA = fadd float %tmp_1, %acc_weight_returnSquare_load
  %acc_weight_return_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_11_i
  %acc_weight_return_load = load float* %acc_weight_return_addr_6, align 4
  %sum_weight_returnA = fadd float %tmp_9, %acc_weight_return_load
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([28 x i8]* @p_str6, i32 %tmp_72_i)
  br label %.preheader104.i

.preheader103.i:                                  ; preds = %9, %.preheader103.i.preheader
  %column_index_i = phi i31 [ %column_index, %9 ], [ 1, %.preheader103.i.preheader ]
  %column_index_cast_i = zext i31 %column_index_i to i32
  %tmp_26_i = icmp slt i32 %column_index_cast_i, %NUMBER_OF_INDICES_read
  br i1 %tmp_26_i, label %.preheader102.0.i, label %frontEnd.1.exit

.preheader102.0.i:                                ; preds = %.preheader103.i
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0)
  store float 0.000000e+00, float* %acc_return_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr, align 16
  store float 0.000000e+00, float* %acc_weight_return_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16
  store float 0.000000e+00, float* %acc_return_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_return_addr_1, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4
  store float 0.000000e+00, float* %acc_return_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_return_addr_2, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8
  store float 0.000000e+00, float* %acc_return_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_return_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4
  store float 0.000000e+00, float* %acc_return_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_return_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16
  store float 0.000000e+00, float* %acc_return_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_return_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4
  %in_indices_data_V_read_2 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %tmp_28_i = bitcast i32 %in_indices_data_V_read_2 to float
  %tmp1_keep_V_1 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %tmp1_keep_V_1, i4* %tmp1_keep_V_i, align 4
  %tmp1_strb_V_1 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %tmp1_strb_V_1, i4* %tmp1_strb_V_i, align 1
  %tmp1_user_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %tmp1_user_V_1, i1* %tmp1_user_V_i, align 2
  %tmp1_last_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %tmp1_last_V_1, i1* %tmp1_last_V_i, align 1
  %tmp1_id_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %tmp1_id_V_1, i1* %tmp1_id_V_i, align 4
  %tmp1_dest_V_1 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %tmp1_dest_V_1, i1* %tmp1_dest_V_i, align 1
  br label %6

; <label>:6                                       ; preds = %7, %.preheader102.0.i
  %tmp_30_i = phi float [ %tmp_28_i, %.preheader102.0.i ], [ %tmp_30_i_shift_reg_load_i, %7 ]
  %i4_i = phi i32 [ 1, %.preheader102.0.i ], [ %i_5, %7 ]
  %tmp_31_i = icmp sgt i32 %i4_i, %tmp_1_i
  br i1 %tmp_31_i, label %.preheader.i, label %7

; <label>:7                                       ; preds = %6
  %shift_reg_load = load float* %shift_reg_load1_i, align 4
  %tmp_4 = trunc i32 %i4_i to i31
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @p_str8) nounwind
  %tmp_79_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([33 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_32_i = icmp eq i32 %i4_i, 1
  %in_indices_data_V_read_3 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %in_indices_data_V)
  %in_indices_keep_V_read_2 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_keep_V)
  store volatile i4 %in_indices_keep_V_read_2, i4* %tmp1_keep_V_i, align 4
  %in_indices_strb_V_read_2 = call i4 @_ssdm_op_Read.axis.volatile.i4P(i4* %in_indices_strb_V)
  store volatile i4 %in_indices_strb_V_read_2, i4* %tmp1_strb_V_i, align 1
  %in_indices_user_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_user_V)
  store volatile i1 %in_indices_user_V_read_2, i1* %tmp1_user_V_i, align 2
  %in_indices_last_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_last_V)
  store volatile i1 %in_indices_last_V_read_2, i1* %tmp1_last_V_i, align 1
  %in_indices_id_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_id_V)
  store volatile i1 %in_indices_id_V_read_2, i1* %tmp1_id_V_i, align 4
  %in_indices_dest_V_read_2 = call i1 @_ssdm_op_Read.axis.volatile.i1P(i1* %in_indices_dest_V)
  store volatile i1 %in_indices_dest_V_read_2, i1* %tmp1_dest_V_i, align 1
  %tmp_30_i_shift_reg_load_i = select i1 %tmp_32_i, float %tmp_30_i, float %shift_reg_load
  %tmp_54_i = bitcast i32 %in_indices_data_V_read_3 to float
  %tmp_55_i = fdiv float %tmp_30_i_shift_reg_load_i, %tmp_54_i
  %lnReturn_1 = call float @llvm.log.f32(float %tmp_55_i)
  %tmp_56_i = zext i32 %i4_i to i64
  %weight_rom_addr_3 = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_56_i
  %weight_1 = load float* %weight_rom_addr_3, align 4
  %channel_1 = urem i32 %i4_i, 6
  %tmp_57_i = zext i32 %channel_1 to i64
  %acc_return_addr_9 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_57_i
  %acc_return_load_3 = load float* %acc_return_addr_9, align 4
  %tmp_58_i = fadd float %acc_return_load_3, %lnReturn_1
  store float %tmp_58_i, float* %acc_return_addr_9, align 4
  %tmp_59_i = fmul float %lnReturn_1, %lnReturn_1
  %tmp_60_i = fmul float %tmp_59_i, %weight_1
  %acc_weight_returnSquare_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_57_i
  %acc_weight_returnSquare_load_3 = load float* %acc_weight_returnSquare_addr_9, align 4
  %tmp_61_i = fadd float %acc_weight_returnSquare_load_3, %tmp_60_i
  store float %tmp_61_i, float* %acc_weight_returnSquare_addr_9, align 4
  %tmp_62_i = fmul float %lnReturn_1, %weight_1
  %acc_weight_return_addr_9 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_57_i
  %acc_weight_return_load_3 = load float* %acc_weight_return_addr_9, align 4
  %tmp_63_i = fadd float %acc_weight_return_load_3, %tmp_62_i
  store float %tmp_63_i, float* %acc_weight_return_addr_9, align 4
  %tmp_64_i = add i31 %tmp_4, -1
  %tmp_65_i = zext i31 %tmp_64_i to i64
  %lnReturnA_addr_1 = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_65_i
  %lnReturnA_load = load float* %lnReturnA_addr_1, align 4
  %tmp_66_i = fmul float %lnReturnA_load, %lnReturn_1
  %tmp_67_i = fmul float %tmp_66_i, %weight_1
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_57_i
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4
  %tmp_68_i = fadd float %acc_weight_returnA_returnB_loa, %tmp_67_i
  store float %tmp_68_i, float* %acc_weight_returnA_returnB_add_6, align 4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([33 x i8]* @p_str8, i32 %tmp_79_i)
  %i_5 = add nsw i32 %i4_i, 1
  store float %tmp_54_i, float* %shift_reg_load1_i, align 4
  br label %6

.preheader.i:                                     ; preds = %6, %8
  %tmp_8 = phi float [ %sum_weight_returnA_returnB, %8 ], [ 0.000000e+00, %6 ]
  %tmp_7 = phi float [ %sum_weight_return, %8 ], [ 0.000000e+00, %6 ]
  %tmp_5 = phi float [ %sum_weight_returnSquare, %8 ], [ 0.000000e+00, %6 ]
  %tmp_3 = phi float [ %sum_return, %8 ], [ 0.000000e+00, %6 ]
  %i8_i = phi i3 [ %i_4, %8 ], [ 0, %6 ]
  %exitcond_i = icmp eq i3 %i8_i, -2
  %i_4 = add i3 %i8_i, 1
  br i1 %exitcond_i, label %9, label %8

; <label>:8                                       ; preds = %.preheader.i
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str9) nounwind
  %tmp_81_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_i_22 = zext i3 %i8_i to i64
  %acc_return_addr_8 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_i_22
  %acc_return_load_2 = load float* %acc_return_addr_8, align 4
  %sum_return = fadd float %tmp_3, %acc_return_load_2
  %acc_weight_returnSquare_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_i_22
  %acc_weight_returnSquare_load_2 = load float* %acc_weight_returnSquare_addr_8, align 4
  %sum_weight_returnSquare = fadd float %tmp_5, %acc_weight_returnSquare_load_2
  %acc_weight_return_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_i_22
  %acc_weight_return_load_2 = load float* %acc_weight_return_addr_8, align 4
  %sum_weight_return = fadd float %tmp_7, %acc_weight_return_load_2
  %acc_weight_returnA_returnB_add_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_i_22
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add_7, align 4
  %sum_weight_returnA_returnB = fadd float %tmp_8, %acc_weight_returnA_returnB_loa_1
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str9, i32 %tmp_81_i)
  br label %.preheader.i

; <label>:9                                       ; preds = %.preheader.i
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_out_V, float %sum_weight)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_return_out_V, float %tmp_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_out_V, float %tmp_5)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_return_out_V, float %tmp_7)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_out, float %tmp_8)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_returnA_out_V, float %tmp_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_out_V, float %tmp_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %sum_weight_returnA_out_V, float %tmp_9)
  %column_index = add i31 %column_index_i, 1
  br label %.preheader103.i

frontEnd.1.exit:                                  ; preds = %.preheader103.i
  ret void
}

define internal fastcc void @correlation_accel_v3_backEnd(i32* %NUMBER_OF_DAYS, i32* %NUMBER_OF_INDICES, float* %sum_weight_in_V, float* %sum_return_in_V, float* %sum_weight_returnSquare_in_V, float* %sum_weight_return_in_V, float* %sum_weight_returnA_returnB_in_s, float* %sum_returnA_in_V, float* %sum_weight_returnSquareA_in_V, float* %sum_weight_returnA_in_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i1* %out_correlation_dest_V, i1* %out_correlation_id_V, i1* %out_correlation_last_V, i1* %out_correlation_user_V, i4* %out_correlation_strb_V, i4* %out_correlation_keep_V, i32* %out_correlation_data_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_INDICES, [8 x i8]* @str72, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str72, [8 x i8]* @str72, [8 x i8]* @str72)
  call void (...)* @_ssdm_op_SpecInterface(i32* %NUMBER_OF_DAYS, [8 x i8]* @str71, i32 0, i32 0, i32 0, i32 0, [8 x i8]* @str71, [8 x i8]* @str71, [8 x i8]* @str71)
  %NUMBER_OF_INDICES_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_INDICES)
  %NUMBER_OF_DAYS_read = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %NUMBER_OF_DAYS)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_in_V, [8 x i8]* @str46, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str47, [1 x i8]* @str47, [8 x i8]* @str46)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquareA_in_V, [8 x i8]* @str42, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str43, [1 x i8]* @str43, [8 x i8]* @str42)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_returnA_in_V, [8 x i8]* @str38, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str39, [1 x i8]* @str39, [8 x i8]* @str38)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnA_returnB_in_s, [8 x i8]* @str34, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str35, [1 x i8]* @str35, [8 x i8]* @str34)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_return_in_V, [8 x i8]* @str30, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str31, [1 x i8]* @str31, [8 x i8]* @str30)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_returnSquare_in_V, [8 x i8]* @str26, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str27, [1 x i8]* @str27, [8 x i8]* @str26)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_return_in_V, [8 x i8]* @str22, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str23, [1 x i8]* @str23, [8 x i8]* @str22)
  call void (...)* @_ssdm_op_SpecInterface(float* %sum_weight_in_V, [8 x i8]* @str18, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @str19, [1 x i8]* @str19, [8 x i8]* @str18)
  %tmp_i = add nsw i32 %NUMBER_OF_DAYS_read, -1
  %tmp_i_24 = sitofp i32 %tmp_i to float
  %tmp_1_i = add nsw i32 %NUMBER_OF_INDICES_read, -1
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %column_index_i = phi i31 [ 1, %entry ], [ %column_index, %1 ]
  %column_index_cast_i = zext i31 %column_index_i to i32
  %tmp_2_i = icmp slt i32 %column_index_cast_i, %NUMBER_OF_INDICES_read
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0)
  br i1 %tmp_2_i, label %1, label %backEnd.1.exit

; <label>:1                                       ; preds = %0
  %tmp = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_in_V)
  %tmp_10 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_return_in_V)
  %tmp_11 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquare_in_V)
  %tmp_12 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_return_in_V)
  %tmp_13 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_returnB_in_s)
  %tmp_14 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_returnA_in_V)
  %tmp_15 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnSquareA_in_V)
  %tmp_16 = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %sum_weight_returnA_in_V)
  %meanReturnA = fdiv float %tmp_14, %tmp_i_24
  %meanReturnB = fdiv float %tmp_10, %tmp_i_24
  %tmp_11_i = fmul float %meanReturnA, 2.000000e+00
  %tmp_12_i = fmul float %tmp_11_i, %tmp_16
  %tmp_13_i = fsub float %tmp_15, %tmp_12_i
  %tmp_14_i = fdiv float %tmp_13_i, %tmp
  %tmp_15_i = fmul float %meanReturnA, %meanReturnA
  %tmp_16_i = fadd float %tmp_14_i, %tmp_15_i
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_16_i)
  %tmp_17_i = fmul float %meanReturnB, 2.000000e+00
  %tmp_18_i = fmul float %tmp_17_i, %tmp_12
  %tmp_19_i = fsub float %tmp_11, %tmp_18_i
  %tmp_20_i = fdiv float %tmp_19_i, %tmp
  %tmp_21_i = fmul float %meanReturnB, %meanReturnB
  %tmp_22_i = fadd float %tmp_20_i, %tmp_21_i
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_22_i)
  %tmp_23_i = fmul float %meanReturnA, %tmp_12
  %tmp_24_i = fsub float %tmp_13, %tmp_23_i
  %tmp_25_i = fmul float %meanReturnB, %tmp_16
  %tmp_26_i = fsub float %tmp_24_i, %tmp_25_i
  %tmp_27_i = fdiv float %tmp_26_i, %tmp
  %tmp_28_i = fmul float %meanReturnA, %meanReturnB
  %covariance = fadd float %tmp_27_i, %tmp_28_i
  %tmp_29_i = fmul float %volatilityA, %volatilityB
  %corr_temp = fdiv float %covariance, %tmp_29_i
  %val_assign = bitcast float %corr_temp to i32
  call void @_ssdm_op_Write.axis.volatile.i32P(i32* %out_correlation_data_V, i32 %val_assign)
  call void @_ssdm_op_Write.axis.volatile.i4P(i4* %out_correlation_keep_V, i4 -1)
  call void @_ssdm_op_Write.axis.volatile.i4P(i4* %out_correlation_strb_V, i4 1)
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_user_V, i1 false)
  %tmp_32_i = icmp eq i32 %column_index_cast_i, %tmp_1_i
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_last_V, i1 %tmp_32_i)
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_id_V, i1 false)
  call void @_ssdm_op_Write.axis.volatile.i1P(i1* %out_correlation_dest_V, i1 false)
  %column_index = add i31 %column_index_i, 1
  br label %0

backEnd.1.exit:                                   ; preds = %0
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak void @_ssdm_op_Write.axis.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0)
  ret float %empty
}

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i4 @_ssdm_op_Read.axis.volatile.i4P(i4*) {
entry:
  %empty = load i4* %0
  ret i4 %empty
}

define weak i1 @_ssdm_op_Read.axis.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1)
  ret void
}

declare i32 @_autotb_FifoRead_i32(i32*)

declare float @_autotb_FifoRead_float(float*)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare float @_autotb_FifoWrite_float(float*, float)

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"number_of_days", metadata !11, metadata !"int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"number_of_indices", metadata !11, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"in_indices.data.V", metadata !21, metadata !"uint32", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 2519999, i32 1}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 3, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"in_indices.keep.V", metadata !21, metadata !"uint4", i32 0, i32 3}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 3, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"in_indices.strb.V", metadata !21, metadata !"uint4", i32 0, i32 3}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"in_indices.user.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 0, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"in_indices.last.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"in_indices.id.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"in_indices.dest.V", metadata !21, metadata !"uint1", i32 0, i32 0}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"out_correlation.data.V", metadata !51, metadata !"uint32", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 49994999, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 3, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"out_correlation.keep.V", metadata !51, metadata !"uint4", i32 0, i32 3}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 3, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"out_correlation.strb.V", metadata !51, metadata !"uint4", i32 0, i32 3}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"out_correlation.user.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"out_correlation.last.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"out_correlation.id.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"out_correlation.dest.V", metadata !51, metadata !"uint1", i32 0, i32 0}
