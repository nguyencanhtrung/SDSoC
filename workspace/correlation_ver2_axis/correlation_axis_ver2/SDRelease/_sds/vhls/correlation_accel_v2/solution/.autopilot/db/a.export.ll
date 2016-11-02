; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver2/SDRelease/_sds/vhls/correlation_accel_v2/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@lnReturnA = internal unnamed_addr global [252 x float] zeroinitializer, align 16
@p_str5 = private unnamed_addr constant [30 x i8] c"ACCUMULATION_LOOP_FIRST_INDEX\00", align 1
@p_str6 = private unnamed_addr constant [28 x i8] c"LAST_ACCUM_LOOP_FIRST_INDEX\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str9 = private unnamed_addr constant [33 x i8] c"ACCUMULATION_LOOP_FLOATING_INDEX\00", align 1
@p_str11 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1
@p_str12 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [21 x i8] c"correlation_accel_v2\00"

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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define void @correlation_accel_v2(i32 %number_of_days, i32 %number_of_indices, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices)
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days)
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
  %tmp1_keep_V = alloca i4, align 1
  %tmp1_strb_V = alloca i4, align 1
  %tmp1_user_V = alloca i1, align 1
  %tmp1_last_V = alloca i1, align 1
  %tmp1_id_V = alloca i1, align 1
  %tmp1_dest_V = alloca i1, align 1
  %acc_return = alloca [6 x float], align 16
  %acc_weight_returnSquare = alloca [6 x float], align 16
  %acc_weight_return = alloca [6 x float], align 16
  %acc_weight_returnA_returnB = alloca [6 x float], align 16
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4
  br label %1

; <label>:1                                       ; preds = %2, %0
  %tmp_i = phi float [ 1.000000e+00, %0 ], [ %tmp_i_3, %2 ]
  %i_i = phi i8 [ 2, %0 ], [ %i_3, %2 ]
  %exitcond_i = icmp eq i8 %i_i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250)
  br i1 %exitcond_i, label %.preheader.i, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str11) nounwind
  %tmp_i_3 = fmul float %tmp_i, 0x3FEE147AE0000000
  %tmp_79_i = zext i8 %i_i to i64
  %weight_rom_addr_2 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_79_i
  store float %tmp_i_3, float* %weight_rom_addr_2, align 4
  %i_3 = add i8 %i_i, 1
  br label %1

.preheader.i:                                     ; preds = %1, %3
  %i1_i = phi i31 [ %i_4, %3 ], [ 2, %1 ]
  %i1_i_cast = zext i31 %i1_i to i32
  %tmp_78_i = icmp slt i32 %i1_i_cast, %number_of_days_read
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0)
  br i1 %tmp_78_i, label %3, label %weight_rom_init.exit

; <label>:3                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str12) nounwind
  %tmp_80_i = zext i31 %i1_i to i64
  %weight_rom_addr_3 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_80_i
  %weight_rom_load = load float* %weight_rom_addr_3, align 4
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %tmp_81_i = fadd float %weight_rom_load_1, %weight_rom_load
  store float %tmp_81_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %i_4 = add i31 %i1_i, 1
  br label %.preheader.i

weight_rom_init.exit:                             ; preds = %.preheader.i
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16
  %acc_return_addr = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 0
  store float 0.000000e+00, float* %acc_return_addr, align 16
  %acc_weight_returnSquare_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 0
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr, align 16
  %acc_weight_return_addr = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 0
  store float 0.000000e+00, float* %acc_weight_return_addr, align 16
  %acc_return_addr_3 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 1
  store float 0.000000e+00, float* %acc_return_addr_3, align 4
  %acc_weight_returnSquare_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 1
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_3, align 4
  %acc_weight_return_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 1
  store float 0.000000e+00, float* %acc_weight_return_addr_3, align 4
  %acc_return_addr_4 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 2
  store float 0.000000e+00, float* %acc_return_addr_4, align 8
  %acc_weight_returnSquare_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 2
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_4, align 8
  %acc_weight_return_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 2
  store float 0.000000e+00, float* %acc_weight_return_addr_4, align 8
  %acc_return_addr_6 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 3
  store float 0.000000e+00, float* %acc_return_addr_6, align 4
  %acc_weight_returnSquare_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 3
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_6, align 4
  %acc_weight_return_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 3
  store float 0.000000e+00, float* %acc_weight_return_addr_6, align 4
  %acc_return_addr_7 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 4
  store float 0.000000e+00, float* %acc_return_addr_7, align 16
  %acc_weight_returnSquare_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_7, align 16
  %acc_weight_return_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 4
  store float 0.000000e+00, float* %acc_weight_return_addr_7, align 16
  %acc_return_addr_8 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 5
  store float 0.000000e+00, float* %acc_return_addr_8, align 4
  %acc_weight_returnSquare_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 5
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_8, align 4
  %acc_weight_return_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 5
  store float 0.000000e+00, float* %acc_weight_return_addr_8, align 4
  %empty_5 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V)
  %in_indices_data_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 0
  %tmp1_keep_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 1
  %tmp1_strb_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 2
  %tmp1_user_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 3
  %tmp1_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 4
  %tmp1_id_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 5
  %tmp1_dest_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 6
  %tmp = bitcast i32 %in_indices_data_V_val to float
  store volatile i4 %tmp1_keep_V_1, i4* %tmp1_keep_V, align 4
  store volatile i4 %tmp1_strb_V_1, i4* %tmp1_strb_V, align 1
  store volatile i1 %tmp1_user_V_1, i1* %tmp1_user_V, align 2
  store volatile i1 %tmp1_last_V_1, i1* %tmp1_last_V, align 1
  store volatile i1 %tmp1_id_V_1, i1* %tmp1_id_V, align 4
  store volatile i1 %tmp1_dest_V_1, i1* %tmp1_dest_V, align 1
  %tmp_1 = add nsw i32 %number_of_days_read, -1
  br label %4

; <label>:4                                       ; preds = %5, %weight_rom_init.exit
  %tmp_4 = phi float [ %tmp, %weight_rom_init.exit ], [ %tmp_4_tmp_5, %5 ]
  %tmp_5 = phi float [ undef, %weight_rom_init.exit ], [ %tmp_16, %5 ]
  %i1 = phi i32 [ 1, %weight_rom_init.exit ], [ %i_1, %5 ]
  %tmp_6 = icmp sgt i32 %i1, %tmp_1
  br i1 %tmp_6, label %.preheader148, label %5

; <label>:5                                       ; preds = %4
  %tmp_32 = trunc i32 %i1 to i31
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @p_str5) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([30 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_7 = icmp eq i32 %i1, 1
  %empty_6 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V)
  %in_indices_data_V_val7 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 0
  %in_indices_keep_V_val8 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 1
  %in_indices_strb_V_val9 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 2
  %in_indices_user_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 3
  %in_indices_last_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 4
  %in_indices_id_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 5
  %in_indices_dest_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 6
  store volatile i4 %in_indices_keep_V_val8, i4* %tmp1_keep_V, align 4
  store volatile i4 %in_indices_strb_V_val9, i4* %tmp1_strb_V, align 1
  store volatile i1 %in_indices_user_V_val, i1* %tmp1_user_V, align 2
  store volatile i1 %in_indices_last_V_val, i1* %tmp1_last_V, align 1
  store volatile i1 %in_indices_id_V_val, i1* %tmp1_id_V, align 4
  store volatile i1 %in_indices_dest_V_val, i1* %tmp1_dest_V, align 1
  %tmp_4_tmp_5 = select i1 %tmp_7, float %tmp_4, float %tmp_5
  %tmp_16 = bitcast i32 %in_indices_data_V_val7 to float
  %tmp_18 = fdiv float %tmp_4_tmp_5, %tmp_16
  %lnReturn = call float @llvm.log.f32(float %tmp_18)
  %tmp_19 = zext i32 %i1 to i64
  %weight_rom_addr = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_19
  %weight = load float* %weight_rom_addr, align 4
  %channel = urem i32 %i1, 6
  %tmp_20 = zext i32 %channel to i64
  %acc_return_addr_2 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_20
  %acc_return_load_1 = load float* %acc_return_addr_2, align 4
  %tmp_21 = fadd float %acc_return_load_1, %lnReturn
  store float %tmp_21, float* %acc_return_addr_2, align 4
  %tmp_22 = fmul float %lnReturn, %lnReturn
  %tmp_23 = fmul float %tmp_22, %weight
  %acc_weight_returnSquare_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_20
  %acc_weight_returnSquare_load_1 = load float* %acc_weight_returnSquare_addr_2, align 4
  %tmp_24 = fadd float %acc_weight_returnSquare_load_1, %tmp_23
  store float %tmp_24, float* %acc_weight_returnSquare_addr_2, align 4
  %tmp_25 = fmul float %lnReturn, %weight
  %acc_weight_return_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_20
  %acc_weight_return_load_1 = load float* %acc_weight_return_addr_2, align 4
  %tmp_26 = fadd float %acc_weight_return_load_1, %tmp_25
  store float %tmp_26, float* %acc_weight_return_addr_2, align 4
  %tmp_27 = add i31 %tmp_32, -1
  %tmp_28 = zext i31 %tmp_27 to i64
  %lnReturnA_addr = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_28
  store float %lnReturn, float* %lnReturnA_addr, align 4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([30 x i8]* @p_str5, i32 %tmp_2)
  %i_1 = add nsw i32 %i1, 1
  br label %4

.preheader148:                                    ; preds = %4, %6
  %sum_returnA = phi float [ %sum_returnA_1, %6 ], [ 0.000000e+00, %4 ]
  %sum_weight_returnSquareA = phi float [ %sum_weight_returnSquareA_1, %6 ], [ 0.000000e+00, %4 ]
  %sum_weight_returnA = phi float [ %sum_weight_returnA_1, %6 ], [ 0.000000e+00, %4 ]
  %i2 = phi i3 [ %i, %6 ], [ 0, %4 ]
  %exitcond2 = icmp eq i3 %i2, -2
  %i = add i3 %i2, 1
  br i1 %exitcond2, label %.preheader147.preheader, label %6

.preheader147.preheader:                          ; preds = %.preheader148
  %tmp_17 = alloca float, align 4
  %tmp_3 = sitofp i32 %tmp_1 to float
  %meanReturnA = fdiv float %sum_returnA, %tmp_3
  %tmp_s = fmul float %meanReturnA, 2.000000e+00
  %tmp_8 = fmul float %tmp_s, %sum_weight_returnA
  %tmp_9 = fsub float %sum_weight_returnSquareA, %tmp_8
  %tmp_10 = fdiv float %tmp_9, %sum_weight
  %tmp_11 = fmul float %meanReturnA, %meanReturnA
  %tmp_12 = fadd float %tmp_10, %tmp_11
  %tmp_13 = add nsw i32 %number_of_indices_read, -1
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5
  store float %tmp_5, float* %tmp_17, align 4
  br label %.preheader147

; <label>:6                                       ; preds = %.preheader148
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6)
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @p_str6) nounwind
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([28 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_15 = zext i3 %i2 to i64
  %acc_return_addr_1 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_15
  %acc_return_load = load float* %acc_return_addr_1, align 4
  %sum_returnA_1 = fadd float %sum_returnA, %acc_return_load
  %acc_weight_returnSquare_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_15
  %acc_weight_returnSquare_load = load float* %acc_weight_returnSquare_addr_1, align 4
  %sum_weight_returnSquareA_1 = fadd float %sum_weight_returnSquareA, %acc_weight_returnSquare_load
  %acc_weight_return_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_15
  %acc_weight_return_load = load float* %acc_weight_return_addr_1, align 4
  %sum_weight_returnA_1 = fadd float %sum_weight_returnA, %acc_weight_return_load
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([28 x i8]* @p_str6, i32 %tmp_14)
  br label %.preheader148

.preheader147:                                    ; preds = %.preheader.0, %.preheader147.preheader
  %column_index = phi i31 [ %column_index_1, %.preheader.0 ], [ 1, %.preheader147.preheader ]
  %column_index_cast = zext i31 %column_index to i32
  %tmp_29 = icmp slt i32 %column_index_cast, %number_of_indices_read
  br i1 %tmp_29, label %7, label %10

; <label>:7                                       ; preds = %.preheader147
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0)
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  store float 0.000000e+00, float* %acc_return_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr, align 16
  store float 0.000000e+00, float* %acc_weight_return_addr, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16
  store float 0.000000e+00, float* %acc_return_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_return_addr_3, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4
  store float 0.000000e+00, float* %acc_return_addr_4, align 8
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_4, align 8
  store float 0.000000e+00, float* %acc_weight_return_addr_4, align 8
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8
  store float 0.000000e+00, float* %acc_return_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_return_addr_6, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4
  store float 0.000000e+00, float* %acc_return_addr_7, align 16
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_7, align 16
  store float 0.000000e+00, float* %acc_weight_return_addr_7, align 16
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16
  store float 0.000000e+00, float* %acc_return_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_return_addr_8, align 4
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4
  %empty_11 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V)
  %in_indices_data_V_val1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 0
  %tmp1_keep_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 1
  %tmp1_strb_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 2
  %tmp1_user_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 3
  %tmp1_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 4
  %tmp1_id_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 5
  %tmp1_dest_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 6
  %tmp_31 = bitcast i32 %in_indices_data_V_val1 to float
  store volatile i4 %tmp1_keep_V_2, i4* %tmp1_keep_V, align 4
  store volatile i4 %tmp1_strb_V_2, i4* %tmp1_strb_V, align 1
  store volatile i1 %tmp1_user_V_2, i1* %tmp1_user_V, align 2
  store volatile i1 %tmp1_last_V_2, i1* %tmp1_last_V, align 1
  store volatile i1 %tmp1_id_V_2, i1* %tmp1_id_V, align 4
  store volatile i1 %tmp1_dest_V_2, i1* %tmp1_dest_V, align 1
  br label %8

; <label>:8                                       ; preds = %9, %7
  %tmp_33 = phi float [ %tmp_31, %7 ], [ %tmp_34_tmp_s, %9 ]
  %i4 = phi i32 [ 1, %7 ], [ %i_2, %9 ]
  %tmp_34 = icmp sgt i32 %i4, %tmp_1
  br i1 %tmp_34, label %.preheader.0, label %9

; <label>:9                                       ; preds = %8
  %tmp_17_load = load float* %tmp_17, align 4
  %tmp_66 = trunc i32 %i4 to i31
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @p_str9) nounwind
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([33 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_39 = icmp eq i32 %i4, 1
  %empty_12 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V)
  %in_indices_data_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 0
  %in_indices_keep_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 1
  %in_indices_strb_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 2
  %in_indices_user_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 3
  %in_indices_last_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 4
  %in_indices_id_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 5
  %in_indices_dest_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 6
  store volatile i4 %in_indices_keep_V_val, i4* %tmp1_keep_V, align 4
  store volatile i4 %in_indices_strb_V_val, i4* %tmp1_strb_V, align 1
  store volatile i1 %in_indices_user_V_val2, i1* %tmp1_user_V, align 2
  store volatile i1 %in_indices_last_V_val2, i1* %tmp1_last_V, align 1
  store volatile i1 %in_indices_id_V_val2, i1* %tmp1_id_V, align 4
  store volatile i1 %in_indices_dest_V_val2, i1* %tmp1_dest_V, align 1
  %tmp_34_tmp_s = select i1 %tmp_39, float %tmp_33, float %tmp_17_load
  %tmp_51 = bitcast i32 %in_indices_data_V_val2 to float
  %tmp_52 = fdiv float %tmp_34_tmp_s, %tmp_51
  %lnReturn_1 = call float @llvm.log.f32(float %tmp_52)
  %tmp_53 = zext i32 %i4 to i64
  %weight_rom_addr_1 = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_53
  %weight_1 = load float* %weight_rom_addr_1, align 4
  %channel_1 = urem i32 %i4, 6
  %tmp_54 = zext i32 %channel_1 to i64
  %acc_return_addr_5 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_54
  %acc_return_load_3 = load float* %acc_return_addr_5, align 4
  %tmp_55 = fadd float %acc_return_load_3, %lnReturn_1
  store float %tmp_55, float* %acc_return_addr_5, align 4
  %tmp_56 = fmul float %lnReturn_1, %lnReturn_1
  %tmp_57 = fmul float %tmp_56, %weight_1
  %acc_weight_returnSquare_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_54
  %acc_weight_returnSquare_load_3 = load float* %acc_weight_returnSquare_addr_5, align 4
  %tmp_58 = fadd float %acc_weight_returnSquare_load_3, %tmp_57
  store float %tmp_58, float* %acc_weight_returnSquare_addr_5, align 4
  %tmp_59 = fmul float %lnReturn_1, %weight_1
  %acc_weight_return_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_54
  %acc_weight_return_load_3 = load float* %acc_weight_return_addr_5, align 4
  %tmp_60 = fadd float %acc_weight_return_load_3, %tmp_59
  store float %tmp_60, float* %acc_weight_return_addr_5, align 4
  %tmp_61 = add i31 %tmp_66, -1
  %tmp_62 = zext i31 %tmp_61 to i64
  %lnReturnA_addr_1 = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_62
  %lnReturnA_load = load float* %lnReturnA_addr_1, align 4
  %tmp_63 = fmul float %lnReturnA_load, %lnReturn_1
  %tmp_64 = fmul float %tmp_63, %weight_1
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_54
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4
  %tmp_65 = fadd float %acc_weight_returnA_returnB_loa, %tmp_64
  store float %tmp_65, float* %acc_weight_returnA_returnB_add_6, align 4
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([33 x i8]* @p_str9, i32 %tmp_50)
  %i_2 = add nsw i32 %i4, 1
  store float %tmp_51, float* %tmp_17, align 4
  br label %8

.preheader.0:                                     ; preds = %8
  %acc_return_load_2 = load float* %acc_return_addr, align 16
  %sum_return_1 = fadd float %acc_return_load_2, 0.000000e+00
  %acc_weight_returnSquare_load_2 = load float* %acc_weight_returnSquare_addr, align 16
  %sum_weight_returnSquare_1 = fadd float %acc_weight_returnSquare_load_2, 0.000000e+00
  %acc_weight_return_load_2 = load float* %acc_weight_return_addr, align 16
  %sum_weight_return_1 = fadd float %acc_weight_return_load_2, 0.000000e+00
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add, align 16
  %sum_weight_returnA_returnB_1 = fadd float %acc_weight_returnA_returnB_loa_1, 0.000000e+00
  %acc_return_load_4 = load float* %acc_return_addr_3, align 4
  %sum_return_1_1 = fadd float %sum_return_1, %acc_return_load_4
  %acc_weight_returnSquare_load_4 = load float* %acc_weight_returnSquare_addr_3, align 4
  %sum_weight_returnSquare_1_1 = fadd float %sum_weight_returnSquare_1, %acc_weight_returnSquare_load_4
  %acc_weight_return_load_4 = load float* %acc_weight_return_addr_3, align 4
  %sum_weight_return_1_1 = fadd float %sum_weight_return_1, %acc_weight_return_load_4
  %acc_weight_returnA_returnB_loa_2 = load float* %acc_weight_returnA_returnB_add_1, align 4
  %sum_weight_returnA_returnB_1_1 = fadd float %sum_weight_returnA_returnB_1, %acc_weight_returnA_returnB_loa_2
  %acc_return_load_5 = load float* %acc_return_addr_4, align 8
  %sum_return_1_2 = fadd float %sum_return_1_1, %acc_return_load_5
  %acc_weight_returnSquare_load_5 = load float* %acc_weight_returnSquare_addr_4, align 8
  %sum_weight_returnSquare_1_2 = fadd float %sum_weight_returnSquare_1_1, %acc_weight_returnSquare_load_5
  %acc_weight_return_load_5 = load float* %acc_weight_return_addr_4, align 8
  %sum_weight_return_1_2 = fadd float %sum_weight_return_1_1, %acc_weight_return_load_5
  %acc_weight_returnA_returnB_loa_3 = load float* %acc_weight_returnA_returnB_add_2, align 8
  %sum_weight_returnA_returnB_1_2 = fadd float %sum_weight_returnA_returnB_1_1, %acc_weight_returnA_returnB_loa_3
  %acc_return_load_6 = load float* %acc_return_addr_6, align 4
  %sum_return_1_3 = fadd float %sum_return_1_2, %acc_return_load_6
  %acc_weight_returnSquare_load_6 = load float* %acc_weight_returnSquare_addr_6, align 4
  %sum_weight_returnSquare_1_3 = fadd float %sum_weight_returnSquare_1_2, %acc_weight_returnSquare_load_6
  %acc_weight_return_load_6 = load float* %acc_weight_return_addr_6, align 4
  %sum_weight_return_1_3 = fadd float %sum_weight_return_1_2, %acc_weight_return_load_6
  %acc_weight_returnA_returnB_loa_4 = load float* %acc_weight_returnA_returnB_add_3, align 4
  %sum_weight_returnA_returnB_1_3 = fadd float %sum_weight_returnA_returnB_1_2, %acc_weight_returnA_returnB_loa_4
  %acc_return_load_7 = load float* %acc_return_addr_7, align 16
  %sum_return_1_4 = fadd float %sum_return_1_3, %acc_return_load_7
  %acc_weight_returnSquare_load_7 = load float* %acc_weight_returnSquare_addr_7, align 16
  %sum_weight_returnSquare_1_4 = fadd float %sum_weight_returnSquare_1_3, %acc_weight_returnSquare_load_7
  %acc_weight_return_load_7 = load float* %acc_weight_return_addr_7, align 16
  %sum_weight_return_1_4 = fadd float %sum_weight_return_1_3, %acc_weight_return_load_7
  %acc_weight_returnA_returnB_loa_5 = load float* %acc_weight_returnA_returnB_add_4, align 16
  %sum_weight_returnA_returnB_1_4 = fadd float %sum_weight_returnA_returnB_1_3, %acc_weight_returnA_returnB_loa_5
  %acc_return_load_8 = load float* %acc_return_addr_8, align 4
  %sum_return_1_5 = fadd float %sum_return_1_4, %acc_return_load_8
  %acc_weight_returnSquare_load_8 = load float* %acc_weight_returnSquare_addr_8, align 4
  %sum_weight_returnSquare_1_5 = fadd float %sum_weight_returnSquare_1_4, %acc_weight_returnSquare_load_8
  %acc_weight_return_load_8 = load float* %acc_weight_return_addr_8, align 4
  %sum_weight_return_1_5 = fadd float %sum_weight_return_1_4, %acc_weight_return_load_8
  %acc_weight_returnA_returnB_loa_6 = load float* %acc_weight_returnA_returnB_add_5, align 4
  %sum_weight_returnA_returnB_1_5 = fadd float %sum_weight_returnA_returnB_1_4, %acc_weight_returnA_returnB_loa_6
  %meanReturnB = fdiv float %sum_return_1_5, %tmp_3
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_12)
  %tmp_35 = fmul float %meanReturnB, 2.000000e+00
  %tmp_36 = fmul float %tmp_35, %sum_weight_return_1_5
  %tmp_37 = fsub float %sum_weight_returnSquare_1_5, %tmp_36
  %tmp_38 = fdiv float %tmp_37, %sum_weight
  %tmp_40 = fmul float %meanReturnB, %meanReturnB
  %tmp_41 = fadd float %tmp_38, %tmp_40
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_41)
  %tmp_42 = fmul float %meanReturnA, %sum_weight_return_1_5
  %tmp_43 = fsub float %sum_weight_returnA_returnB_1_5, %tmp_42
  %tmp_44 = fmul float %meanReturnB, %sum_weight_returnA
  %tmp_45 = fsub float %tmp_43, %tmp_44
  %tmp_46 = fdiv float %tmp_45, %sum_weight
  %tmp_47 = fmul float %meanReturnA, %meanReturnB
  %covariance = fadd float %tmp_46, %tmp_47
  %tmp_48 = fmul float %volatilityA, %volatilityB
  %corr_temp = fdiv float %covariance, %tmp_48
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %val_assign = bitcast float %corr_temp to i32
  %tmp_49 = icmp eq i32 %column_index_cast, %tmp_13
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, i32 %val_assign, i4 -1, i4 1, i1 false, i1 %tmp_49, i1 false, i1 false)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_30)
  %column_index_1 = add i31 %column_index, 1
  br label %.preheader147

; <label>:10                                      ; preds = %.preheader147
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0
  %empty_15 = load i4* %1
  %empty_16 = load i4* %2
  %empty_17 = load i1* %3
  %empty_18 = load i1* %4
  %empty_19 = load i1* %5
  %empty_20 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_15, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_16, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_17, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_18, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_19, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_20, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*, i32, i4, i4, i1, i1, i1, i1) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

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
