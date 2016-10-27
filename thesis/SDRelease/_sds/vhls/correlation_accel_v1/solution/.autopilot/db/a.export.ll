; ModuleID = '/home/trungnguyen/SDSoC/thesis/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str1804 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1806 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@p_str1807 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@p_str1808 = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1
@bramA = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@bramB = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@p_str1809 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1
@counter = internal unnamed_addr global i32 0, align 4
@p_str1811 = private unnamed_addr constant [18 x i8] c"ACCUMULATION_LOOP\00", align 1
@p_str1812 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1
@p_str1814 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1
@p_str1815 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [21 x i8] c"correlation_accel_v1\00"
@str1 = internal constant [72 x i8] c"memcpy.correlation_accel_v1(int, int, float*, float*)::bramA.in_indices\00"
@str2 = internal constant [1 x i8] zeroinitializer
@p_str4 = internal constant [17 x i8] c"burstread.region\00"
@str5 = internal constant [72 x i8] c"memcpy.correlation_accel_v1(int, int, float*, float*)::bramB.in_indices\00"
@str6 = internal constant [1 x i8] zeroinitializer
@p_str15 = internal constant [17 x i8] c"burstread.region\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define weak void @_ssdm_op_SpecBitsMap(...) {
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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define i32 @correlation_accel_v1(float* %gmem32, i32 %number_of_days, i32 %number_of_indices, i32 %in_indices, i32 %out_correlation) {
  %out_correlation_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %out_correlation)
  %in_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in_indices)
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices)
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days)
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_correlation_read, i32 2, i32 31)
  %tmp_59_cast = zext i30 %tmp_4 to i33
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %in_indices_read, i32 2, i32 31)
  %tmp_60_cast = zext i30 %tmp_5 to i33
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem32), !map !8
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %acc_returnA = alloca [6 x float], align 16
  %acc_returnB = alloca [6 x float], align 16
  %acc_weight_returnSquareA = alloca [6 x float], align 16
  %acc_weight_returnA = alloca [6 x float], align 16
  %acc_weight_returnSquareB = alloca [6 x float], align 16
  %acc_weight_returnB = alloca [6 x float], align 16
  %acc_weight_returnA_returnB = alloca [6 x float], align 16
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str1804) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem32, [6 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 2520000, [1 x i8]* @p_str1804, [7 x i8]* @p_str1806, [1 x i8]* @p_str1804)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1804, [1 x i8]* @p_str1804, [1 x i8]* @p_str1804) nounwind
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %tmp_i = phi float [ 1.000000e+00, %0 ], [ %tmp_i_5, %2 ]
  %i_i = phi i8 [ 2, %0 ], [ %i_2, %2 ]
  %exitcond_i = icmp eq i8 %i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250) nounwind
  br i1 %exitcond_i, label %.preheader.i, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1814) nounwind
  %tmp_i_5 = fmul float %tmp_i, 0x3FEE147AE0000000
  %tmp_56_i = zext i8 %i_i to i64
  %weight_rom_addr_1 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_56_i
  store float %tmp_i_5, float* %weight_rom_addr_1, align 4
  %i_2 = add i8 %i_i, 1
  br label %1

.preheader.i:                                     ; preds = %1, %3
  %i1_i = phi i31 [ %i_3, %3 ], [ 2, %1 ]
  %i1_i_cast = zext i31 %i1_i to i32
  %tmp_57_i = icmp slt i32 %i1_i_cast, %number_of_days_read
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0) nounwind
  br i1 %tmp_57_i, label %3, label %weight_rom_init.exit

; <label>:3                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str1815) nounwind
  %tmp_58_i = zext i31 %i1_i to i64
  %weight_rom_addr_2 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_58_i
  %weight_rom_load = load float* %weight_rom_addr_2, align 4
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %tmp_59_i = fadd float %weight_rom_load_1, %weight_rom_load
  store float %tmp_59_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %i_3 = add i31 %i1_i, 1
  br label %.preheader.i

weight_rom_init.exit:                             ; preds = %.preheader.i
  %tmp = add nsw i32 %number_of_indices_read, -1
  %tmp_1 = add nsw i32 %number_of_days_read, -1
  %tmp_2 = sitofp i32 %tmp_1 to float
  %tmp_6 = trunc i32 %number_of_days_read to i30
  %p_add_i32_shr = zext i30 %tmp_6 to i32
  %acc_returnA_addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0
  %acc_returnB_addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0
  %acc_weight_returnSquareA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0
  %acc_weight_returnA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0
  %acc_weight_returnSquareB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0
  %acc_weight_returnB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0
  %acc_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1
  %acc_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1
  %acc_weight_returnSquareA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1
  %acc_weight_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1
  %acc_weight_returnSquareB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1
  %acc_weight_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1
  %acc_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2
  %acc_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2
  %acc_weight_returnSquareA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2
  %acc_weight_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2
  %acc_weight_returnSquareB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2
  %acc_weight_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2
  %acc_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3
  %acc_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3
  %acc_weight_returnSquareA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3
  %acc_weight_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3
  %acc_weight_returnSquareB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3
  %acc_weight_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3
  %acc_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4
  %acc_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4
  %acc_weight_returnSquareA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4
  %acc_weight_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4
  %acc_weight_returnSquareB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4
  %acc_weight_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4
  %acc_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5
  %acc_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5
  %acc_weight_returnSquareA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5
  %acc_weight_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5
  %acc_weight_returnSquareB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5
  %acc_weight_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5
  br label %4

; <label>:4                                       ; preds = %12, %weight_rom_init.exit
  %row_index = phi i31 [ 0, %weight_rom_init.exit ], [ %row_index_1, %12 ]
  %phi_mul = phi i32 [ 0, %weight_rom_init.exit ], [ %next_mul, %12 ]
  %next_mul = add i32 %phi_mul, %number_of_days_read
  %row_index_cast = zext i31 %row_index to i32
  %tmp_3 = icmp slt i32 %row_index_cast, %tmp
  %row_index_1 = add i31 %row_index, 1
  br i1 %tmp_3, label %5, label %13

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1808) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1808) nounwind
  %tmp_11 = sext i32 %phi_mul to i33
  %tmp_53 = add i33 %tmp_60_cast, %tmp_11
  %tmp_59 = sext i33 %tmp_53 to i64
  %gmem32_addr = getelementptr float* %gmem32, i64 %tmp_59
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem32_addr, i32 %p_add_i32_shr)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %5
  %indvar = phi i30 [ 0, %5 ], [ %indvar_next, %burst.rd.body ]
  %exitcond2 = icmp eq i30 %indvar, %tmp_6
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1073741823, i64 0) nounwind
  %indvar_next = add i30 %indvar, 1
  br i1 %exitcond2, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str1)
  %gmem32_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem32_addr)
  %tmp_7 = zext i30 %indvar to i64
  %bramA_addr = getelementptr [252 x float]* @bramA, i64 0, i64 %tmp_7
  store float %gmem32_addr_read, float* %bramA_addr, align 4
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str4, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header, %11
  %column_index_0_in = phi i32 [ %column_index, %11 ], [ %row_index_cast, %burst.rd.header ]
  %column_index = add nsw i32 %column_index_0_in, 1
  %tmp_8 = icmp slt i32 %column_index, %number_of_indices_read
  br i1 %tmp_8, label %6, label %12

; <label>:6                                       ; preds = %burst.rd.end
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str1809) nounwind
  %tmp_56 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str1809) nounwind
  %tmp_9 = mul nsw i32 %column_index, %number_of_days_read
  %tmp_60 = sext i32 %tmp_9 to i33
  %tmp_61 = add i33 %tmp_60_cast, %tmp_60
  %tmp_62 = sext i33 %tmp_61 to i64
  %gmem32_addr_1 = getelementptr float* %gmem32, i64 %tmp_62
  %p_rd_req10 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem32_addr_1, i32 %p_add_i32_shr)
  br label %burst.rd.header6

burst.rd.header6:                                 ; preds = %burst.rd.body7, %6
  %indvar8 = phi i30 [ 0, %6 ], [ %indvar_next9, %burst.rd.body7 ]
  %exitcond3 = icmp eq i30 %indvar8, %tmp_6
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1073741823, i64 0) nounwind
  %indvar_next9 = add i30 %indvar8, 1
  br i1 %exitcond3, label %burst.rd.end5.0, label %burst.rd.body7

burst.rd.body7:                                   ; preds = %burst.rd.header6
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str15) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str6)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str5)
  %gmem32_addr_1_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem32_addr_1)
  %tmp_10 = zext i30 %indvar8 to i64
  %bramB_addr = getelementptr [252 x float]* @bramB, i64 0, i64 %tmp_10
  store float %gmem32_addr_1_read, float* %bramB_addr, align 4
  %burstread_rend16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str15, i32 %burstread_rbegin1) nounwind
  br label %burst.rd.header6

burst.rd.end5.0:                                  ; preds = %burst.rd.header6
  store float 0.000000e+00, float* %acc_returnA_addr, align 16
  store float 0.000000e+00, float* %acc_returnB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnB_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16
  store float 0.000000e+00, float* %acc_returnA_addr_6, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_7, align 8
  store float 0.000000e+00, float* %acc_returnB_addr_7, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_7, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_addr_7, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_7, align 8
  store float 0.000000e+00, float* %acc_weight_returnB_addr_7, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8
  store float 0.000000e+00, float* %acc_returnA_addr_3, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4
  store float 0.000000e+00, float* %acc_returnA_addr_4, align 16
  store float 0.000000e+00, float* %acc_returnB_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnB_addr_4, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16
  store float 0.000000e+00, float* %acc_returnA_addr_5, align 4
  store float 0.000000e+00, float* %acc_returnB_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnB_addr_5, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4
  br label %.preheader

.preheader:                                       ; preds = %7, %burst.rd.end5.0
  %i1 = phi i31 [ %i, %7 ], [ 0, %burst.rd.end5.0 ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_12 = icmp slt i32 %i1_cast, %tmp_1
  %i = add i31 %i1, 1
  br i1 %tmp_12, label %7, label %8

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str1811) nounwind
  %tmp_57 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str1811) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1804) nounwind
  %tmp_13 = zext i31 %i1 to i64
  %bramA_addr_1 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp_13
  %bramA_load = load float* %bramA_addr_1, align 4
  %tmp_14 = zext i31 %i to i64
  %bramA_addr_2 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp_14
  %bramA_load_1 = load float* %bramA_addr_2, align 4
  %tmp_15 = fdiv float %bramA_load, %bramA_load_1
  %lnReturnA = call float @llvm.log.f32(float %tmp_15)
  %bramB_addr_1 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp_13
  %bramB_load = load float* %bramB_addr_1, align 4
  %bramB_addr_2 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp_14
  %bramB_load_1 = load float* %bramB_addr_2, align 4
  %tmp_16 = fdiv float %bramB_load, %bramB_load_1
  %lnReturnB = call float @llvm.log.f32(float %tmp_16)
  %weight_rom_addr = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_14
  %weight = load float* %weight_rom_addr, align 4
  %tmp_17 = urem i31 %i1, 6
  %tmp_18 = zext i31 %tmp_17 to i64
  %acc_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_18
  %acc_returnA_load = load float* %acc_returnA_addr_1, align 4
  %tmp_19 = fadd float %acc_returnA_load, %lnReturnA
  store float %tmp_19, float* %acc_returnA_addr_1, align 4
  %acc_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_18
  %acc_returnB_load = load float* %acc_returnB_addr_1, align 4
  %tmp_20 = fadd float %acc_returnB_load, %lnReturnB
  store float %tmp_20, float* %acc_returnB_addr_1, align 4
  %tmp_21 = fmul float %lnReturnA, %lnReturnA
  %tmp_22 = fmul float %tmp_21, %weight
  %acc_weight_returnSquareA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_18
  %acc_weight_returnSquareA_load = load float* %acc_weight_returnSquareA_addr_1, align 4
  %tmp_23 = fadd float %acc_weight_returnSquareA_load, %tmp_22
  store float %tmp_23, float* %acc_weight_returnSquareA_addr_1, align 4
  %tmp_24 = fmul float %lnReturnB, %lnReturnB
  %tmp_25 = fmul float %tmp_24, %weight
  %acc_weight_returnSquareB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_18
  %acc_weight_returnSquareB_load = load float* %acc_weight_returnSquareB_addr_1, align 4
  %tmp_26 = fadd float %acc_weight_returnSquareB_load, %tmp_25
  store float %tmp_26, float* %acc_weight_returnSquareB_addr_1, align 4
  %tmp_27 = fmul float %lnReturnA, %weight
  %acc_weight_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_18
  %acc_weight_returnA_load = load float* %acc_weight_returnA_addr_1, align 4
  %tmp_28 = fadd float %acc_weight_returnA_load, %tmp_27
  store float %tmp_28, float* %acc_weight_returnA_addr_1, align 4
  %tmp_29 = fmul float %lnReturnB, %weight
  %acc_weight_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_18
  %acc_weight_returnB_load = load float* %acc_weight_returnB_addr_1, align 4
  %tmp_30 = fadd float %acc_weight_returnB_load, %tmp_29
  store float %tmp_30, float* %acc_weight_returnB_addr_1, align 4
  %tmp_31 = fmul float %lnReturnA, %lnReturnB
  %tmp_32 = fmul float %tmp_31, %weight
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_18
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4
  %tmp_33 = fadd float %acc_weight_returnA_returnB_loa, %tmp_32
  store float %tmp_33, float* %acc_weight_returnA_returnB_add_6, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str1811, i32 %tmp_57) nounwind
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  br label %9

; <label>:9                                       ; preds = %10, %8
  %sum_returnA = phi float [ 0.000000e+00, %8 ], [ %sum_returnA_1, %10 ]
  %sum_returnB = phi float [ 0.000000e+00, %8 ], [ %sum_returnB_1, %10 ]
  %sum_weight_returnSquareA = phi float [ 0.000000e+00, %8 ], [ %sum_weight_returnSquareA_1, %10 ]
  %sum_weight_returnA = phi float [ 0.000000e+00, %8 ], [ %sum_weight_returnA_1, %10 ]
  %sum_weight_returnSquareB = phi float [ 0.000000e+00, %8 ], [ %sum_weight_returnSquareB_1, %10 ]
  %sum_weight_returnB = phi float [ 0.000000e+00, %8 ], [ %sum_weight_returnB_1, %10 ]
  %sum_weight_returnA_returnB = phi float [ 0.000000e+00, %8 ], [ %sum_weight_returnA_returnB_1, %10 ]
  %i2 = phi i3 [ 0, %8 ], [ %i_1, %10 ]
  %exitcond = icmp eq i3 %i2, -2
  %i_1 = add i3 %i2, 1
  br i1 %exitcond, label %11, label %10

; <label>:10                                      ; preds = %9
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1812) nounwind
  %tmp_58 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1812) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str1804) nounwind
  %tmp_55 = zext i3 %i2 to i64
  %acc_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_55
  %acc_returnA_load_1 = load float* %acc_returnA_addr_2, align 4
  %sum_returnA_1 = fadd float %sum_returnA, %acc_returnA_load_1
  %acc_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_55
  %acc_returnB_load_1 = load float* %acc_returnB_addr_2, align 4
  %sum_returnB_1 = fadd float %sum_returnB, %acc_returnB_load_1
  %acc_weight_returnSquareA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_55
  %acc_weight_returnSquareA_load_1 = load float* %acc_weight_returnSquareA_addr_2, align 4
  %sum_weight_returnSquareA_1 = fadd float %sum_weight_returnSquareA, %acc_weight_returnSquareA_load_1
  %acc_weight_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_55
  %acc_weight_returnA_load_1 = load float* %acc_weight_returnA_addr_2, align 4
  %sum_weight_returnA_1 = fadd float %sum_weight_returnA, %acc_weight_returnA_load_1
  %acc_weight_returnSquareB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_55
  %acc_weight_returnSquareB_load_1 = load float* %acc_weight_returnSquareB_addr_2, align 4
  %sum_weight_returnSquareB_1 = fadd float %sum_weight_returnSquareB, %acc_weight_returnSquareB_load_1
  %acc_weight_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_55
  %acc_weight_returnB_load_1 = load float* %acc_weight_returnB_addr_2, align 4
  %sum_weight_returnB_1 = fadd float %sum_weight_returnB, %acc_weight_returnB_load_1
  %acc_weight_returnA_returnB_add_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_55
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add_7, align 4
  %sum_weight_returnA_returnB_1 = fadd float %sum_weight_returnA_returnB, %acc_weight_returnA_returnB_loa_1
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1812, i32 %tmp_58) nounwind
  br label %9

; <label>:11                                      ; preds = %9
  %meanReturn1 = fdiv float %sum_returnA, %tmp_2
  %meanReturn2 = fdiv float %sum_returnB, %tmp_2
  %tmp_34 = fmul float %meanReturn1, 2.000000e+00
  %tmp_35 = fmul float %tmp_34, %sum_weight_returnA
  %tmp_36 = fsub float %sum_weight_returnSquareA, %tmp_35
  %tmp_37 = fdiv float %tmp_36, %sum_weight
  %tmp_38 = fmul float %meanReturn1, %meanReturn1
  %tmp_39 = fadd float %tmp_37, %tmp_38
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_39)
  %tmp_40 = fmul float %meanReturn2, 2.000000e+00
  %tmp_41 = fmul float %tmp_40, %sum_weight_returnB
  %tmp_42 = fsub float %sum_weight_returnSquareB, %tmp_41
  %tmp_43 = fdiv float %tmp_42, %sum_weight
  %tmp_44 = fmul float %meanReturn2, %meanReturn2
  %tmp_45 = fadd float %tmp_43, %tmp_44
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_45)
  %tmp_46 = fmul float %meanReturn1, %sum_weight_returnB
  %tmp_47 = fsub float %sum_weight_returnA_returnB, %tmp_46
  %tmp_48 = fmul float %meanReturn2, %sum_weight_returnA
  %tmp_49 = fsub float %tmp_47, %tmp_48
  %tmp_50 = fdiv float %tmp_49, %sum_weight
  %tmp_51 = fmul float %meanReturn1, %meanReturn2
  %covariance = fadd float %tmp_50, %tmp_51
  %tmp_52 = fmul float %volatilityA, %volatilityB
  %corr_temp = fdiv float %covariance, %tmp_52
  %counter_load = load i32* @counter, align 4
  %tmp_53_cast = sext i32 %counter_load to i33
  %out_correlation4_sum = add i33 %tmp_59_cast, %tmp_53_cast
  %out_correlation4_sum_cast = sext i33 %out_correlation4_sum to i64
  %gmem32_addr_2 = getelementptr float* %gmem32, i64 %out_correlation4_sum_cast
  %gmem32_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem32_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem32_addr_2, float %corr_temp, i4 -1)
  %gmem32_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem32_addr_2)
  %tmp_54 = add nsw i32 %counter_load, 1
  store i32 %tmp_54, i32* @counter, align 4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1809, i32 %tmp_56) nounwind
  br label %burst.rd.end

; <label>:12                                      ; preds = %burst.rd.end
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str1808, i32 %tmp_s) nounwind
  br label %4

; <label>:13                                      ; preds = %4
  ret i32 0
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i30
  ret i30 %empty_14
}

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}
!axi4.master.portmap = !{!7}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !"gmem32", metadata !"in_indices", metadata !"READONLY", metadata !"out_correlation", metadata !"WRITEONLY"}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11, metadata !14}
!11 = metadata !{metadata !"in_indices", metadata !12, metadata !"float", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 2519999, i32 1}
!14 = metadata !{metadata !"out_correlation", metadata !15, metadata !"float", i32 0, i32 31}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 49994999, i32 1}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 31, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"number_of_days", metadata !21, metadata !"int", i32 0, i32 31}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"number_of_indices", metadata !21, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"return", metadata !31, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 1, i32 0}
