; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str3 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=5 type=[252 x float]*]
@p_str4 = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@bramA = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=3 type=[252 x float]*]
@bramB = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=3 type=[252 x float]*]
@p_str5 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@p_str7 = private unnamed_addr constant [18 x i8] c"ACCUMULATION_LOOP\00", align 1 ; [#uses=3 type=[18 x i8]*]
@p_str8 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1 ; [#uses=3 type=[16 x i8]*]
@p_str9 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str10 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1 ; [#uses=1 type=[19 x i8]*]
@str = internal constant [21 x i8] c"correlation_accel_v1\00" ; [#uses=1 type=[21 x i8]*]
@str1 = internal constant [72 x i8] c"memcpy.correlation_accel_v1(int, int, float*, float*)::bramA.in_indices\00" ; [#uses=1 type=[72 x i8]*]
@str2 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str11 = internal constant [17 x i8] c"burstread.region\00" ; [#uses=2 type=[17 x i8]*]
@str12 = internal constant [72 x i8] c"memcpy.correlation_accel_v1(int, int, float*, float*)::bramB.in_indices\00" ; [#uses=1 type=[72 x i8]*]
@str13 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str15 = internal constant [17 x i8] c"burstread.region\00" ; [#uses=2 type=[17 x i8]*]

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=36]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=2]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define i32 @correlation_accel_v1(float* %gmem32, i32 %number_of_days, i32 %number_of_indices, i32 %in_indices, i32 %out_correlation) {
  %out_correlation_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %out_correlation) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %out_correlation_read}, i64 0, metadata !1), !dbg !14 ; [debug line = 30:8] [debug variable = out_correlation]
  %in_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in_indices) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %in_indices_read}, i64 0, metadata !15), !dbg !19 ; [debug line = 29:8] [debug variable = in_indices]
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices_read}, i64 0, metadata !20), !dbg !21 ; [debug line = 27:6] [debug variable = number_of_indices]
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days) ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days_read}, i64 0, metadata !22), !dbg !23 ; [debug line = 26:6] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days_read}, i64 0, metadata !24) nounwind, !dbg !30 ; [debug line = 201:7@50:2] [debug variable = NUMBER_OF_DAYS]
  %tmp_3 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %out_correlation_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_61_cast = zext i30 %tmp_3 to i33           ; [#uses=1 type=i33]
  %tmp_5 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %in_indices_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_62_cast = zext i30 %tmp_5 to i33           ; [#uses=2 type=i33]
  call void (...)* @_ssdm_op_SpecBitsMap(float* %gmem32), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days) nounwind, !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %acc_returnA = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnA}, metadata !56), !dbg !64 ; [debug line = 73:12] [debug variable = acc_returnA]
  %acc_returnB = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnB}, metadata !65), !dbg !66 ; [debug line = 74:12] [debug variable = acc_returnB]
  %acc_weight_returnSquareA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareA}, metadata !67), !dbg !68 ; [debug line = 75:12] [debug variable = acc_weight_returnSquareA]
  %acc_weight_returnA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA}, metadata !69), !dbg !70 ; [debug line = 76:12] [debug variable = acc_weight_returnA]
  %acc_weight_returnSquareB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareB}, metadata !71), !dbg !72 ; [debug line = 77:12] [debug variable = acc_weight_returnSquareB]
  %acc_weight_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnB}, metadata !73), !dbg !74 ; [debug line = 78:12] [debug variable = acc_weight_returnB]
  %acc_weight_returnA_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !75), !dbg !76 ; [debug line = 79:12] [debug variable = acc_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !22), !dbg !23 ; [debug line = 26:6] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !20), !dbg !21 ; [debug line = 27:6] [debug variable = number_of_indices]
  call void @llvm.dbg.value(metadata !{i32 %in_indices}, i64 0, metadata !15), !dbg !19 ; [debug line = 29:8] [debug variable = in_indices]
  call void @llvm.dbg.value(metadata !{i32 %out_correlation}, i64 0, metadata !1), !dbg !14 ; [debug line = 30:8] [debug variable = out_correlation]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !77 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %gmem32, [6 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 2520000, [1 x i8]* @p_str, [7 x i8]* @p_str2, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !78 ; [debug line = 41:1]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !79), !dbg !80 ; [debug line = 43:37] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !81), !dbg !82 ; [debug line = 44:43] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !24) nounwind, !dbg !30 ; [debug line = 201:7@50:2] [debug variable = NUMBER_OF_DAYS]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !83 ; [debug line = 204:2@50:2]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4, !dbg !85 ; [debug line = 205:2@50:2]
  br label %1, !dbg !86                           ; [debug line = 208:15@50:2]

; <label>:1                                       ; preds = %2, %0
  %tmp_i = phi float [ 1.000000e+00, %0 ], [ %tmp_i_5, %2 ] ; [#uses=1 type=float]
  %i_i = phi i8 [ 2, %0 ], [ %i_2, %2 ]           ; [#uses=3 type=i8]
  %exitcond_i = icmp eq i8 %i_i, -4, !dbg !86     ; [#uses=1 type=i1] [debug line = 208:15@50:2]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond_i, label %.preheader.i, label %2, !dbg !86 ; [debug line = 208:15@50:2]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str9) nounwind, !dbg !88 ; [debug line = 208:46@50:2]
  %tmp_i_5 = fmul float %tmp_i, 0x3FEE147AE0000000, !dbg !90 ; [#uses=2 type=float] [debug line = 209:3@50:2]
  %tmp_58_i = zext i8 %i_i to i64, !dbg !90       ; [#uses=1 type=i64] [debug line = 209:3@50:2]
  %weight_rom_addr_1 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_58_i, !dbg !90 ; [#uses=1 type=float*] [debug line = 209:3@50:2]
  store float %tmp_i_5, float* %weight_rom_addr_1, align 4, !dbg !90 ; [debug line = 209:3@50:2]
  %i_2 = add i8 %i_i, 1, !dbg !91                 ; [#uses=1 type=i8] [debug line = 208:40@50:2]
  call void @llvm.dbg.value(metadata !{i8 %i_2}, i64 0, metadata !92) nounwind, !dbg !91 ; [debug line = 208:40@50:2] [debug variable = i]
  br label %1, !dbg !91                           ; [debug line = 208:40@50:2]

.preheader.i:                                     ; preds = %3, %1
  %i1_i = phi i31 [ %i_3, %3 ], [ 2, %1 ]         ; [#uses=3 type=i31]
  %i1_i_cast = zext i31 %i1_i to i32, !dbg !93    ; [#uses=1 type=i32] [debug line = 213:15@50:2]
  %tmp_59_i = icmp slt i32 %i1_i_cast, %number_of_days_read, !dbg !93 ; [#uses=1 type=i1] [debug line = 213:15@50:2]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp_59_i, label %3, label %weight_rom_init.exit, !dbg !93 ; [debug line = 213:15@50:2]

; <label>:3                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str10) nounwind, !dbg !95 ; [debug line = 213:42@50:2]
  %tmp_60_i = zext i31 %i1_i to i64, !dbg !97     ; [#uses=1 type=i64] [debug line = 214:3@50:2]
  %weight_rom_addr_2 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_60_i, !dbg !97 ; [#uses=1 type=float*] [debug line = 214:3@50:2]
  %weight_rom_load = load float* %weight_rom_addr_2, align 4, !dbg !97 ; [#uses=1 type=float] [debug line = 214:3@50:2]
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !97 ; [#uses=1 type=float] [debug line = 214:3@50:2]
  %tmp_61_i = fadd float %weight_rom_load_1, %weight_rom_load, !dbg !97 ; [#uses=1 type=float] [debug line = 214:3@50:2]
  store float %tmp_61_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !97 ; [debug line = 214:3@50:2]
  %i_3 = add i31 %i1_i, 1, !dbg !98               ; [#uses=1 type=i31] [debug line = 213:37@50:2]
  call void @llvm.dbg.value(metadata !{i31 %i_3}, i64 0, metadata !99) nounwind, !dbg !98 ; [debug line = 213:37@50:2] [debug variable = i]
  br label %.preheader.i, !dbg !98                ; [debug line = 213:37@50:2]

weight_rom_init.exit:                             ; preds = %.preheader.i
  %tmp = add nsw i32 %number_of_indices_read, -1, !dbg !100 ; [#uses=1 type=i32] [debug line = 56:24]
  %tmp_1 = add nsw i32 %number_of_days_read, -1, !dbg !101 ; [#uses=2 type=i32] [debug line = 102:19]
  %tmp_2 = sitofp i32 %tmp_1 to float, !dbg !103  ; [#uses=2 type=float] [debug line = 149:65]
  %tmp_6 = trunc i32 %number_of_days_read to i30, !dbg !104 ; [#uses=3 type=i30] [debug line = 61:4]
  %p_add_i32_shr = zext i30 %tmp_6 to i32, !dbg !104 ; [#uses=2 type=i32] [debug line = 61:4]
  %acc_returnA_addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0, !dbg !105 ; [#uses=1 type=float*] [debug line = 88:2]
  %acc_returnB_addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0, !dbg !108 ; [#uses=1 type=float*] [debug line = 89:7]
  %acc_weight_returnSquareA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0, !dbg !109 ; [#uses=1 type=float*] [debug line = 90:7]
  %acc_weight_returnA_addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0, !dbg !110 ; [#uses=1 type=float*] [debug line = 91:7]
  %acc_weight_returnSquareB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0, !dbg !111 ; [#uses=1 type=float*] [debug line = 92:7]
  %acc_weight_returnB_addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0, !dbg !112 ; [#uses=1 type=float*] [debug line = 93:7]
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0, !dbg !113 ; [#uses=1 type=float*] [debug line = 94:7]
  %acc_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1, !dbg !105 ; [#uses=1 type=float*] [debug line = 88:2]
  %acc_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1, !dbg !108 ; [#uses=1 type=float*] [debug line = 89:7]
  %acc_weight_returnSquareA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1, !dbg !109 ; [#uses=1 type=float*] [debug line = 90:7]
  %acc_weight_returnA_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1, !dbg !110 ; [#uses=1 type=float*] [debug line = 91:7]
  %acc_weight_returnSquareB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1, !dbg !111 ; [#uses=1 type=float*] [debug line = 92:7]
  %acc_weight_returnB_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1, !dbg !112 ; [#uses=1 type=float*] [debug line = 93:7]
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1, !dbg !113 ; [#uses=1 type=float*] [debug line = 94:7]
  %acc_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2, !dbg !105 ; [#uses=1 type=float*] [debug line = 88:2]
  %acc_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2, !dbg !108 ; [#uses=1 type=float*] [debug line = 89:7]
  %acc_weight_returnSquareA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2, !dbg !109 ; [#uses=1 type=float*] [debug line = 90:7]
  %acc_weight_returnA_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2, !dbg !110 ; [#uses=1 type=float*] [debug line = 91:7]
  %acc_weight_returnSquareB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2, !dbg !111 ; [#uses=1 type=float*] [debug line = 92:7]
  %acc_weight_returnB_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2, !dbg !112 ; [#uses=1 type=float*] [debug line = 93:7]
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2, !dbg !113 ; [#uses=1 type=float*] [debug line = 94:7]
  %acc_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3, !dbg !105 ; [#uses=1 type=float*] [debug line = 88:2]
  %acc_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3, !dbg !108 ; [#uses=1 type=float*] [debug line = 89:7]
  %acc_weight_returnSquareA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3, !dbg !109 ; [#uses=1 type=float*] [debug line = 90:7]
  %acc_weight_returnA_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3, !dbg !110 ; [#uses=1 type=float*] [debug line = 91:7]
  %acc_weight_returnSquareB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3, !dbg !111 ; [#uses=1 type=float*] [debug line = 92:7]
  %acc_weight_returnB_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3, !dbg !112 ; [#uses=1 type=float*] [debug line = 93:7]
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3, !dbg !113 ; [#uses=1 type=float*] [debug line = 94:7]
  %acc_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4, !dbg !105 ; [#uses=1 type=float*] [debug line = 88:2]
  %acc_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4, !dbg !108 ; [#uses=1 type=float*] [debug line = 89:7]
  %acc_weight_returnSquareA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4, !dbg !109 ; [#uses=1 type=float*] [debug line = 90:7]
  %acc_weight_returnA_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4, !dbg !110 ; [#uses=1 type=float*] [debug line = 91:7]
  %acc_weight_returnSquareB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4, !dbg !111 ; [#uses=1 type=float*] [debug line = 92:7]
  %acc_weight_returnB_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4, !dbg !112 ; [#uses=1 type=float*] [debug line = 93:7]
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4, !dbg !113 ; [#uses=1 type=float*] [debug line = 94:7]
  %acc_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5, !dbg !105 ; [#uses=1 type=float*] [debug line = 88:2]
  %acc_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5, !dbg !108 ; [#uses=1 type=float*] [debug line = 89:7]
  %acc_weight_returnSquareA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5, !dbg !109 ; [#uses=1 type=float*] [debug line = 90:7]
  %acc_weight_returnA_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5, !dbg !110 ; [#uses=1 type=float*] [debug line = 91:7]
  %acc_weight_returnSquareB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5, !dbg !111 ; [#uses=1 type=float*] [debug line = 92:7]
  %acc_weight_returnB_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5, !dbg !112 ; [#uses=1 type=float*] [debug line = 93:7]
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5, !dbg !113 ; [#uses=1 type=float*] [debug line = 94:7]
  br label %4, !dbg !100                          ; [debug line = 56:24]

; <label>:4                                       ; preds = %13, %weight_rom_init.exit
  %indvars_iv2 = phi i32 [ %indvars_iv_next3, %13 ], [ -1, %weight_rom_init.exit ], !dbg !114 ; [#uses=2 type=i32] [debug line = 56:61]
  %indvars_iv = phi i32 [ %indvars_iv_next, %13 ], [ 1, %weight_rom_init.exit ] ; [#uses=3 type=i32]
  %row_index = phi i31 [ %row_index_1, %13 ], [ 0, %weight_rom_init.exit ] ; [#uses=2 type=i31]
  %counter = phi i32 [ %counter_2, %13 ], [ 0, %weight_rom_init.exit ] ; [#uses=2 type=i32]
  %phi_mul = phi i32 [ %next_mul, %13 ], [ 0, %weight_rom_init.exit ] ; [#uses=2 type=i32]
  %next_mul = add i32 %phi_mul, %number_of_days_read ; [#uses=1 type=i32]
  %row_index_cast = zext i31 %row_index to i32, !dbg !114 ; [#uses=2 type=i32] [debug line = 56:61]
  %tmp_4 = icmp slt i32 %row_index_cast, %tmp, !dbg !100 ; [#uses=1 type=i1] [debug line = 56:24]
  %row_index_1 = add i31 %row_index, 1, !dbg !114 ; [#uses=1 type=i31] [debug line = 56:61]
  br i1 %tmp_4, label %5, label %14, !dbg !100    ; [debug line = 56:24]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str4) nounwind, !dbg !115 ; [debug line = 56:74]
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str4) nounwind, !dbg !116 ; [#uses=1 type=i32] [debug line = 56:110]
  %tmp_9 = sext i32 %phi_mul to i33               ; [#uses=1 type=i33]
  %tmp_11 = add i33 %tmp_62_cast, %tmp_9          ; [#uses=1 type=i33]
  %tmp_55 = sext i33 %tmp_11 to i64               ; [#uses=1 type=i64]
  %gmem32_addr = getelementptr float* %gmem32, i64 %tmp_55 ; [#uses=2 type=float*]
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem32_addr, i32 %p_add_i32_shr), !dbg !104 ; [#uses=0 type=i1] [debug line = 61:4]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %5
  %indvar = phi i30 [ 0, %5 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i30]
  %exitcond4 = icmp eq i30 %indvar, %tmp_6        ; [#uses=1 type=i1]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1073741823, i64 0) nounwind ; [#uses=0 type=i32]
  %indvar_next = add i30 %indvar, 1               ; [#uses=1 type=i30]
  br i1 %exitcond4, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str11) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str1)
  %gmem32_addr_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem32_addr), !dbg !104 ; [#uses=1 type=float] [debug line = 61:4]
  %tmp_s = zext i30 %indvar to i64, !dbg !104     ; [#uses=1 type=i64] [debug line = 61:4]
  %bramA_addr = getelementptr [252 x float]* @bramA, i64 0, i64 %tmp_s, !dbg !104 ; [#uses=1 type=float*] [debug line = 61:4]
  store float %gmem32_addr_read, float* %bramA_addr, align 4, !dbg !104 ; [debug line = 61:4]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str11, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %tmp_61 = icmp slt i32 %indvars_iv, %number_of_indices_read, !dbg !114 ; [#uses=1 type=i1] [debug line = 56:61]
  %smax = select i1 %tmp_61, i32 %number_of_indices_read, i32 %indvars_iv, !dbg !114 ; [#uses=1 type=i32] [debug line = 56:61]
  %tmp_13 = add i32 %smax, %indvars_iv2, !dbg !117 ; [#uses=1 type=i32] [debug line = 167:6]
  %counter_2 = add i32 %counter, %tmp_13, !dbg !117 ; [#uses=1 type=i32] [debug line = 167:6]
  call void @llvm.dbg.value(metadata !{i32 %counter_2}, i64 0, metadata !118), !dbg !117 ; [debug line = 167:6] [debug variable = counter]
  br label %6, !dbg !119                          ; [debug line = 66:41]

; <label>:6                                       ; preds = %12, %burst.rd.end
  %column_index_0_in = phi i32 [ %row_index_cast, %burst.rd.end ], [ %column_index, %12 ] ; [#uses=1 type=i32]
  %counter_1 = phi i32 [ %counter, %burst.rd.end ], [ %tmp_56, %12 ] ; [#uses=2 type=i32]
  %column_index = add nsw i32 %column_index_0_in, 1, !dbg !119 ; [#uses=3 type=i32] [debug line = 66:41]
  call void @llvm.dbg.value(metadata !{i32 %column_index}, i64 0, metadata !120), !dbg !119 ; [debug line = 66:41] [debug variable = column_index]
  %tmp_8 = icmp slt i32 %column_index, %number_of_indices_read, !dbg !119 ; [#uses=1 type=i1] [debug line = 66:41]
  br i1 %tmp_8, label %7, label %13, !dbg !119    ; [debug line = 66:41]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str5) nounwind, !dbg !121 ; [debug line = 66:93]
  %tmp_58 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str5) nounwind, !dbg !122 ; [#uses=1 type=i32] [debug line = 66:129]
  %tmp_10 = mul nsw i32 %column_index, %number_of_days_read, !dbg !123 ; [#uses=1 type=i32] [debug line = 68:6]
  %tmp_62 = sext i32 %tmp_10 to i33               ; [#uses=1 type=i33]
  %tmp_63 = add i33 %tmp_62_cast, %tmp_62         ; [#uses=1 type=i33]
  %tmp_64 = sext i33 %tmp_63 to i64               ; [#uses=1 type=i64]
  %gmem32_addr_1 = getelementptr float* %gmem32, i64 %tmp_64 ; [#uses=2 type=float*]
  %p_rd_req12 = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %gmem32_addr_1, i32 %p_add_i32_shr), !dbg !123 ; [#uses=0 type=i1] [debug line = 68:6]
  br label %burst.rd.header8

burst.rd.header8:                                 ; preds = %burst.rd.body9, %7
  %indvar1 = phi i30 [ 0, %7 ], [ %indvar_next1, %burst.rd.body9 ] ; [#uses=3 type=i30]
  %exitcond2 = icmp eq i30 %indvar1, %tmp_6       ; [#uses=1 type=i1]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1073741823, i64 0) nounwind ; [#uses=0 type=i32]
  %indvar_next1 = add i30 %indvar1, 1             ; [#uses=1 type=i30]
  br i1 %exitcond2, label %burst.rd.end7.0, label %burst.rd.body9

burst.rd.body9:                                   ; preds = %burst.rd.header8
  %burstread_rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str15) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str13)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str12)
  %gmem32_addr_1_read = call float @_ssdm_op_Read.m_axi.floatP(float* %gmem32_addr_1), !dbg !123 ; [#uses=1 type=float] [debug line = 68:6]
  %tmp_12 = zext i30 %indvar1 to i64, !dbg !123   ; [#uses=1 type=i64] [debug line = 68:6]
  %bramB_addr = getelementptr [252 x float]* @bramB, i64 0, i64 %tmp_12, !dbg !123 ; [#uses=1 type=float*] [debug line = 68:6]
  store float %gmem32_addr_1_read, float* %bramB_addr, align 4, !dbg !123 ; [debug line = 68:6]
  %burstread_rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str15, i32 %burstread_rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header8

burst.rd.end7.0:                                  ; preds = %burst.rd.header8
  store float 0.000000e+00, float* %acc_returnA_addr, align 16, !dbg !105 ; [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnB_addr, align 16, !dbg !108 ; [debug line = 89:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr, align 16, !dbg !109 ; [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnA_addr, align 16, !dbg !110 ; [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr, align 16, !dbg !111 ; [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnB_addr, align 16, !dbg !112 ; [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16, !dbg !113 ; [debug line = 94:7]
  store float 0.000000e+00, float* %acc_returnA_addr_6, align 4, !dbg !105 ; [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnB_addr_6, align 4, !dbg !108 ; [debug line = 89:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_6, align 4, !dbg !109 ; [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_6, align 4, !dbg !110 ; [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_6, align 4, !dbg !111 ; [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_6, align 4, !dbg !112 ; [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4, !dbg !113 ; [debug line = 94:7]
  store float 0.000000e+00, float* %acc_returnA_addr_7, align 8, !dbg !105 ; [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnB_addr_7, align 8, !dbg !108 ; [debug line = 89:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_7, align 8, !dbg !109 ; [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_7, align 8, !dbg !110 ; [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_7, align 8, !dbg !111 ; [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_7, align 8, !dbg !112 ; [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8, !dbg !113 ; [debug line = 94:7]
  store float 0.000000e+00, float* %acc_returnA_addr_3, align 4, !dbg !105 ; [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnB_addr_3, align 4, !dbg !108 ; [debug line = 89:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_3, align 4, !dbg !109 ; [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_3, align 4, !dbg !110 ; [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_3, align 4, !dbg !111 ; [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_3, align 4, !dbg !112 ; [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4, !dbg !113 ; [debug line = 94:7]
  store float 0.000000e+00, float* %acc_returnA_addr_4, align 16, !dbg !105 ; [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnB_addr_4, align 16, !dbg !108 ; [debug line = 89:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_4, align 16, !dbg !109 ; [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_4, align 16, !dbg !110 ; [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_4, align 16, !dbg !111 ; [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_4, align 16, !dbg !112 ; [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16, !dbg !113 ; [debug line = 94:7]
  store float 0.000000e+00, float* %acc_returnA_addr_5, align 4, !dbg !105 ; [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnB_addr_5, align 4, !dbg !108 ; [debug line = 89:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA_addr_5, align 4, !dbg !109 ; [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnA_addr_5, align 4, !dbg !110 ; [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB_addr_5, align 4, !dbg !111 ; [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnB_addr_5, align 4, !dbg !112 ; [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4, !dbg !113 ; [debug line = 94:7]
  br label %.preheader, !dbg !101                 ; [debug line = 102:19]

.preheader:                                       ; preds = %8, %burst.rd.end7.0
  %i1 = phi i31 [ %i, %8 ], [ 0, %burst.rd.end7.0 ] ; [#uses=4 type=i31]
  %i1_cast = zext i31 %i1 to i32, !dbg !101       ; [#uses=1 type=i32] [debug line = 102:19]
  %tmp_14 = icmp slt i32 %i1_cast, %tmp_1, !dbg !101 ; [#uses=1 type=i1] [debug line = 102:19]
  %i = add i31 %i1, 1, !dbg !124                  ; [#uses=2 type=i31] [debug line = 105:20]
  br i1 %tmp_14, label %8, label %9, !dbg !101    ; [debug line = 102:19]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @p_str7) nounwind, !dbg !126 ; [debug line = 102:50]
  %tmp_59 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @p_str7) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 102:93]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !128 ; [debug line = 103:1]
  %tmp_15 = zext i31 %i1 to i64, !dbg !124        ; [#uses=2 type=i64] [debug line = 105:20]
  %bramA_addr_1 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp_15, !dbg !124 ; [#uses=1 type=float*] [debug line = 105:20]
  %bramA_load = load float* %bramA_addr_1, align 4, !dbg !124 ; [#uses=1 type=float] [debug line = 105:20]
  %tmp_16 = zext i31 %i to i64, !dbg !124         ; [#uses=3 type=i64] [debug line = 105:20]
  %bramA_addr_2 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp_16, !dbg !124 ; [#uses=1 type=float*] [debug line = 105:20]
  %bramA_load_1 = load float* %bramA_addr_2, align 4, !dbg !124 ; [#uses=1 type=float] [debug line = 105:20]
  %tmp_17 = fdiv float %bramA_load, %bramA_load_1, !dbg !124 ; [#uses=1 type=float] [debug line = 105:20]
  %lnReturnA = call float @llvm.log.f32(float %tmp_17), !dbg !124 ; [#uses=5 type=float] [debug line = 105:20]
  call void @llvm.dbg.value(metadata !{float %lnReturnA}, i64 0, metadata !129), !dbg !124 ; [debug line = 105:20] [debug variable = lnReturnA]
  %bramB_addr_1 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp_15, !dbg !130 ; [#uses=1 type=float*] [debug line = 106:25]
  %bramB_load = load float* %bramB_addr_1, align 4, !dbg !130 ; [#uses=1 type=float] [debug line = 106:25]
  %bramB_addr_2 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp_16, !dbg !130 ; [#uses=1 type=float*] [debug line = 106:25]
  %bramB_load_1 = load float* %bramB_addr_2, align 4, !dbg !130 ; [#uses=1 type=float] [debug line = 106:25]
  %tmp_18 = fdiv float %bramB_load, %bramB_load_1, !dbg !130 ; [#uses=1 type=float] [debug line = 106:25]
  %lnReturnB = call float @llvm.log.f32(float %tmp_18), !dbg !130 ; [#uses=5 type=float] [debug line = 106:25]
  call void @llvm.dbg.value(metadata !{float %lnReturnB}, i64 0, metadata !131), !dbg !130 ; [debug line = 106:25] [debug variable = lnReturnB]
  %weight_rom_addr = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_16, !dbg !132 ; [#uses=1 type=float*] [debug line = 107:37]
  %weight = load float* %weight_rom_addr, align 4, !dbg !132 ; [#uses=5 type=float] [debug line = 107:37]
  call void @llvm.dbg.value(metadata !{float %weight}, i64 0, metadata !133), !dbg !132 ; [debug line = 107:37] [debug variable = weight]
  %tmp_19 = urem i31 %i1, 6, !dbg !134            ; [#uses=1 type=i31] [debug line = 110:7]
  %tmp_20 = zext i31 %tmp_19 to i64, !dbg !134    ; [#uses=7 type=i64] [debug line = 110:7]
  %acc_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_20, !dbg !134 ; [#uses=2 type=float*] [debug line = 110:7]
  %acc_returnA_load = load float* %acc_returnA_addr_1, align 4, !dbg !134 ; [#uses=1 type=float] [debug line = 110:7]
  %tmp_21 = fadd float %acc_returnA_load, %lnReturnA, !dbg !134 ; [#uses=1 type=float] [debug line = 110:7]
  store float %tmp_21, float* %acc_returnA_addr_1, align 4, !dbg !134 ; [debug line = 110:7]
  %acc_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_20, !dbg !135 ; [#uses=2 type=float*] [debug line = 111:7]
  %acc_returnB_load = load float* %acc_returnB_addr_1, align 4, !dbg !135 ; [#uses=1 type=float] [debug line = 111:7]
  %tmp_22 = fadd float %acc_returnB_load, %lnReturnB, !dbg !135 ; [#uses=1 type=float] [debug line = 111:7]
  store float %tmp_22, float* %acc_returnB_addr_1, align 4, !dbg !135 ; [debug line = 111:7]
  %tmp_23 = fmul float %lnReturnA, %lnReturnA, !dbg !136 ; [#uses=1 type=float] [debug line = 114:7]
  %tmp_24 = fmul float %tmp_23, %weight, !dbg !136 ; [#uses=1 type=float] [debug line = 114:7]
  %acc_weight_returnSquareA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_20, !dbg !136 ; [#uses=2 type=float*] [debug line = 114:7]
  %acc_weight_returnSquareA_load = load float* %acc_weight_returnSquareA_addr_1, align 4, !dbg !136 ; [#uses=1 type=float] [debug line = 114:7]
  %tmp_25 = fadd float %acc_weight_returnSquareA_load, %tmp_24, !dbg !136 ; [#uses=1 type=float] [debug line = 114:7]
  store float %tmp_25, float* %acc_weight_returnSquareA_addr_1, align 4, !dbg !136 ; [debug line = 114:7]
  %tmp_26 = fmul float %lnReturnB, %lnReturnB, !dbg !137 ; [#uses=1 type=float] [debug line = 115:7]
  %tmp_27 = fmul float %tmp_26, %weight, !dbg !137 ; [#uses=1 type=float] [debug line = 115:7]
  %acc_weight_returnSquareB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_20, !dbg !137 ; [#uses=2 type=float*] [debug line = 115:7]
  %acc_weight_returnSquareB_load = load float* %acc_weight_returnSquareB_addr_1, align 4, !dbg !137 ; [#uses=1 type=float] [debug line = 115:7]
  %tmp_28 = fadd float %acc_weight_returnSquareB_load, %tmp_27, !dbg !137 ; [#uses=1 type=float] [debug line = 115:7]
  store float %tmp_28, float* %acc_weight_returnSquareB_addr_1, align 4, !dbg !137 ; [debug line = 115:7]
  %tmp_29 = fmul float %lnReturnA, %weight, !dbg !138 ; [#uses=1 type=float] [debug line = 118:7]
  %acc_weight_returnA_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_20, !dbg !138 ; [#uses=2 type=float*] [debug line = 118:7]
  %acc_weight_returnA_load = load float* %acc_weight_returnA_addr_1, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 118:7]
  %tmp_30 = fadd float %acc_weight_returnA_load, %tmp_29, !dbg !138 ; [#uses=1 type=float] [debug line = 118:7]
  store float %tmp_30, float* %acc_weight_returnA_addr_1, align 4, !dbg !138 ; [debug line = 118:7]
  %tmp_31 = fmul float %lnReturnB, %weight, !dbg !139 ; [#uses=1 type=float] [debug line = 119:7]
  %acc_weight_returnB_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_20, !dbg !139 ; [#uses=2 type=float*] [debug line = 119:7]
  %acc_weight_returnB_load = load float* %acc_weight_returnB_addr_1, align 4, !dbg !139 ; [#uses=1 type=float] [debug line = 119:7]
  %tmp_32 = fadd float %acc_weight_returnB_load, %tmp_31, !dbg !139 ; [#uses=1 type=float] [debug line = 119:7]
  store float %tmp_32, float* %acc_weight_returnB_addr_1, align 4, !dbg !139 ; [debug line = 119:7]
  %tmp_33 = fmul float %lnReturnA, %lnReturnB, !dbg !140 ; [#uses=1 type=float] [debug line = 122:7]
  %tmp_34 = fmul float %tmp_33, %weight, !dbg !140 ; [#uses=1 type=float] [debug line = 122:7]
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_20, !dbg !140 ; [#uses=2 type=float*] [debug line = 122:7]
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4, !dbg !140 ; [#uses=1 type=float] [debug line = 122:7]
  %tmp_35 = fadd float %acc_weight_returnA_returnB_loa, %tmp_34, !dbg !140 ; [#uses=1 type=float] [debug line = 122:7]
  store float %tmp_35, float* %acc_weight_returnA_returnB_add_6, align 4, !dbg !140 ; [debug line = 122:7]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @p_str7, i32 %tmp_59) nounwind, !dbg !141 ; [#uses=0 type=i32] [debug line = 124:6]
  call void @llvm.dbg.value(metadata !{i31 %i}, i64 0, metadata !142), !dbg !143 ; [debug line = 102:45] [debug variable = i]
  br label %.preheader, !dbg !143                 ; [debug line = 102:45]

; <label>:9                                       ; preds = %.preheader
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !144 ; [#uses=3 type=float] [debug line = 133:38]
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !145), !dbg !144 ; [debug line = 133:38] [debug variable = sum_weight]
  br label %10, !dbg !146                         ; [debug line = 135:19]

; <label>:10                                      ; preds = %11, %9
  %sum_returnA = phi float [ 0.000000e+00, %9 ], [ %sum_returnA_1, %11 ] ; [#uses=2 type=float]
  %sum_returnB = phi float [ 0.000000e+00, %9 ], [ %sum_returnB_1, %11 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareA = phi float [ 0.000000e+00, %9 ], [ %sum_weight_returnSquareA_1, %11 ] ; [#uses=2 type=float]
  %sum_weight_returnA = phi float [ 0.000000e+00, %9 ], [ %sum_weight_returnA_1, %11 ] ; [#uses=3 type=float]
  %sum_weight_returnSquareB = phi float [ 0.000000e+00, %9 ], [ %sum_weight_returnSquareB_1, %11 ] ; [#uses=2 type=float]
  %sum_weight_returnB = phi float [ 0.000000e+00, %9 ], [ %sum_weight_returnB_1, %11 ] ; [#uses=3 type=float]
  %sum_weight_returnA_returnB = phi float [ 0.000000e+00, %9 ], [ %sum_weight_returnA_returnB_1, %11 ] ; [#uses=2 type=float]
  %i2 = phi i3 [ 0, %9 ], [ %i_1, %11 ]           ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i2, -2, !dbg !146       ; [#uses=1 type=i1] [debug line = 135:19]
  %i_1 = add i3 %i2, 1, !dbg !148                 ; [#uses=1 type=i3] [debug line = 135:28]
  br i1 %exitcond, label %12, label %11, !dbg !146 ; [debug line = 135:19]

; <label>:11                                      ; preds = %10
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str8) nounwind, !dbg !149 ; [debug line = 135:33]
  %tmp_60 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str8) nounwind, !dbg !151 ; [#uses=1 type=i32] [debug line = 135:74]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !152 ; [debug line = 136:1]
  %tmp_57 = zext i3 %i2 to i64, !dbg !153         ; [#uses=7 type=i64] [debug line = 137:2]
  %acc_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp_57, !dbg !153 ; [#uses=1 type=float*] [debug line = 137:2]
  %acc_returnA_load_1 = load float* %acc_returnA_addr_2, align 4, !dbg !153 ; [#uses=1 type=float] [debug line = 137:2]
  %sum_returnA_1 = fadd float %sum_returnA, %acc_returnA_load_1, !dbg !153 ; [#uses=1 type=float] [debug line = 137:2]
  call void @llvm.dbg.value(metadata !{float %sum_returnA_1}, i64 0, metadata !154), !dbg !153 ; [debug line = 137:2] [debug variable = sum_returnA]
  %acc_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp_57, !dbg !155 ; [#uses=1 type=float*] [debug line = 138:7]
  %acc_returnB_load_1 = load float* %acc_returnB_addr_2, align 4, !dbg !155 ; [#uses=1 type=float] [debug line = 138:7]
  %sum_returnB_1 = fadd float %sum_returnB, %acc_returnB_load_1, !dbg !155 ; [#uses=1 type=float] [debug line = 138:7]
  call void @llvm.dbg.value(metadata !{float %sum_returnB_1}, i64 0, metadata !156), !dbg !155 ; [debug line = 138:7] [debug variable = sum_returnB]
  %acc_weight_returnSquareA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp_57, !dbg !157 ; [#uses=1 type=float*] [debug line = 139:7]
  %acc_weight_returnSquareA_load_1 = load float* %acc_weight_returnSquareA_addr_2, align 4, !dbg !157 ; [#uses=1 type=float] [debug line = 139:7]
  %sum_weight_returnSquareA_1 = fadd float %sum_weight_returnSquareA, %acc_weight_returnSquareA_load_1, !dbg !157 ; [#uses=1 type=float] [debug line = 139:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareA_1}, i64 0, metadata !158), !dbg !157 ; [debug line = 139:7] [debug variable = sum_weight_returnSquareA]
  %acc_weight_returnA_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp_57, !dbg !159 ; [#uses=1 type=float*] [debug line = 140:7]
  %acc_weight_returnA_load_1 = load float* %acc_weight_returnA_addr_2, align 4, !dbg !159 ; [#uses=1 type=float] [debug line = 140:7]
  %sum_weight_returnA_1 = fadd float %sum_weight_returnA, %acc_weight_returnA_load_1, !dbg !159 ; [#uses=1 type=float] [debug line = 140:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_1}, i64 0, metadata !160), !dbg !159 ; [debug line = 140:7] [debug variable = sum_weight_returnA]
  %acc_weight_returnSquareB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp_57, !dbg !161 ; [#uses=1 type=float*] [debug line = 141:7]
  %acc_weight_returnSquareB_load_1 = load float* %acc_weight_returnSquareB_addr_2, align 4, !dbg !161 ; [#uses=1 type=float] [debug line = 141:7]
  %sum_weight_returnSquareB_1 = fadd float %sum_weight_returnSquareB, %acc_weight_returnSquareB_load_1, !dbg !161 ; [#uses=1 type=float] [debug line = 141:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareB_1}, i64 0, metadata !162), !dbg !161 ; [debug line = 141:7] [debug variable = sum_weight_returnSquareB]
  %acc_weight_returnB_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp_57, !dbg !163 ; [#uses=1 type=float*] [debug line = 142:7]
  %acc_weight_returnB_load_1 = load float* %acc_weight_returnB_addr_2, align 4, !dbg !163 ; [#uses=1 type=float] [debug line = 142:7]
  %sum_weight_returnB_1 = fadd float %sum_weight_returnB, %acc_weight_returnB_load_1, !dbg !163 ; [#uses=1 type=float] [debug line = 142:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnB_1}, i64 0, metadata !164), !dbg !163 ; [debug line = 142:7] [debug variable = sum_weight_returnB]
  %acc_weight_returnA_returnB_add_7 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_57, !dbg !165 ; [#uses=1 type=float*] [debug line = 143:7]
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add_7, align 4, !dbg !165 ; [#uses=1 type=float] [debug line = 143:7]
  %sum_weight_returnA_returnB_1 = fadd float %sum_weight_returnA_returnB, %acc_weight_returnA_returnB_loa_1, !dbg !165 ; [#uses=1 type=float] [debug line = 143:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_returnB_1}, i64 0, metadata !166), !dbg !165 ; [debug line = 143:7] [debug variable = sum_weight_returnA_returnB]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str8, i32 %tmp_60) nounwind, !dbg !167 ; [#uses=0 type=i32] [debug line = 144:6]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !168), !dbg !148 ; [debug line = 135:28] [debug variable = i]
  br label %10, !dbg !148                         ; [debug line = 135:28]

; <label>:12                                      ; preds = %10
  %meanReturn1 = fdiv float %sum_returnA, %tmp_2, !dbg !103 ; [#uses=5 type=float] [debug line = 149:65]
  call void @llvm.dbg.value(metadata !{float %meanReturn1}, i64 0, metadata !169), !dbg !103 ; [debug line = 149:65] [debug variable = meanReturn1]
  %meanReturn2 = fdiv float %sum_returnB, %tmp_2, !dbg !170 ; [#uses=5 type=float] [debug line = 150:65]
  call void @llvm.dbg.value(metadata !{float %meanReturn2}, i64 0, metadata !171), !dbg !170 ; [debug line = 150:65] [debug variable = meanReturn2]
  %tmp_36 = fmul float %meanReturn1, 2.000000e+00, !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp_37 = fmul float %tmp_36, %sum_weight_returnA, !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp_38 = fsub float %sum_weight_returnSquareA, %tmp_37, !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp_39 = fdiv float %tmp_38, %sum_weight, !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp_40 = fmul float %meanReturn1, %meanReturn1, !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp_41 = fadd float %tmp_39, %tmp_40, !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_41), !dbg !172 ; [#uses=1 type=float] [debug line = 152:26]
  call void @llvm.dbg.value(metadata !{float %volatilityA}, i64 0, metadata !173), !dbg !172 ; [debug line = 152:26] [debug variable = volatilityA]
  %tmp_42 = fmul float %meanReturn2, 2.000000e+00, !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp_43 = fmul float %tmp_42, %sum_weight_returnB, !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp_44 = fsub float %sum_weight_returnSquareB, %tmp_43, !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp_45 = fdiv float %tmp_44, %sum_weight, !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp_46 = fmul float %meanReturn2, %meanReturn2, !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp_47 = fadd float %tmp_45, %tmp_46, !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_47), !dbg !174 ; [#uses=1 type=float] [debug line = 155:26]
  call void @llvm.dbg.value(metadata !{float %volatilityB}, i64 0, metadata !175), !dbg !174 ; [debug line = 155:26] [debug variable = volatilityB]
  %tmp_48 = fmul float %meanReturn1, %sum_weight_returnB, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp_49 = fsub float %sum_weight_returnA_returnB, %tmp_48, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp_50 = fmul float %meanReturn2, %sum_weight_returnA, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp_51 = fsub float %tmp_49, %tmp_50, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp_52 = fdiv float %tmp_51, %sum_weight, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp_53 = fmul float %meanReturn1, %meanReturn2, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  %covariance = fadd float %tmp_52, %tmp_53, !dbg !176 ; [#uses=1 type=float] [debug line = 161:38]
  call void @llvm.dbg.value(metadata !{float %covariance}, i64 0, metadata !177), !dbg !176 ; [debug line = 161:38] [debug variable = covariance]
  %tmp_54 = fmul float %volatilityA, %volatilityB, !dbg !178 ; [#uses=1 type=float] [debug line = 163:6]
  %corr_temp = fdiv float %covariance, %tmp_54, !dbg !178 ; [#uses=1 type=float] [debug line = 163:6]
  call void @llvm.dbg.value(metadata !{float %corr_temp}, i64 0, metadata !179), !dbg !178 ; [debug line = 163:6] [debug variable = corr_temp]
  %tmp_55_cast = sext i32 %counter_1 to i33       ; [#uses=1 type=i33]
  %out_correlation4_sum = add i33 %tmp_61_cast, %tmp_55_cast ; [#uses=1 type=i33]
  %out_correlation4_sum_cast = sext i33 %out_correlation4_sum to i64 ; [#uses=1 type=i64]
  %gmem32_addr_2 = getelementptr float* %gmem32, i64 %out_correlation4_sum_cast ; [#uses=3 type=float*]
  %gmem32_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %gmem32_addr_2, i32 1), !dbg !180 ; [#uses=0 type=i1] [debug line = 165:6]
  call void @_ssdm_op_Write.m_axi.floatP(float* %gmem32_addr_2, float %corr_temp, i4 -1), !dbg !180 ; [debug line = 165:6]
  %gmem32_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %gmem32_addr_2), !dbg !180 ; [#uses=0 type=i1] [debug line = 165:6]
  %tmp_56 = add nsw i32 %counter_1, 1, !dbg !117  ; [#uses=1 type=i32] [debug line = 167:6]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str5, i32 %tmp_58) nounwind, !dbg !181 ; [#uses=0 type=i32] [debug line = 168:5]
  br label %6, !dbg !182                          ; [debug line = 66:77]

; <label>:13                                      ; preds = %6
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str4, i32 %tmp_7) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 169:3]
  call void @llvm.dbg.value(metadata !{i31 %row_index_1}, i64 0, metadata !184), !dbg !114 ; [debug line = 56:61] [debug variable = row_index]
  %indvars_iv_next = add i32 %indvars_iv, 1, !dbg !114 ; [#uses=1 type=i32] [debug line = 56:61]
  %indvars_iv_next3 = add i32 %indvars_iv2, -1, !dbg !114 ; [#uses=1 type=i32] [debug line = 56:61]
  br label %4, !dbg !114                          ; [debug line = 56:61]

; <label>:14                                      ; preds = %4
  ret i32 0, !dbg !185                            ; [debug line = 170:2]
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_14 = trunc i32 %empty to i30             ; [#uses=1 type=i30]
  ret i30 %empty_14
}

; [#uses=2]
define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=2]
define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{}
!axi4.master.portmap = !{!0}

!0 = metadata !{metadata !"gmem32", metadata !"in_indices", metadata !"READONLY", metadata !"out_correlation", metadata !"WRITEONLY"}
!1 = metadata !{i32 786689, metadata !2, metadata !"out_correlation", null, i32 30, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"correlation_accel_v1", metadata !"correlation_accel_v1", metadata !"_Z20correlation_accel_v1iiPfS_", metadata !3, i32 25, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !9, i32 32} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls/src/correlation_accel_v1.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !6, metadata !6, metadata !7, metadata !7}
!6 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ]
!8 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1599840000, i64 32, i32 0, i32 0, metadata !8, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 49994999} ; [ DW_TAG_subrange_type ]
!14 = metadata !{i32 30, i32 8, metadata !2, null}
!15 = metadata !{i32 786689, metadata !2, metadata !"in_indices", null, i32 29, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640000, i64 32, i32 0, i32 0, metadata !8, metadata !17, i32 0, i32 0} ; [ DW_TAG_array_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 2519999}  ; [ DW_TAG_subrange_type ]
!19 = metadata !{i32 29, i32 8, metadata !2, null}
!20 = metadata !{i32 786689, metadata !2, metadata !"number_of_indices", metadata !3, i32 33554459, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 27, i32 6, metadata !2, null}
!22 = metadata !{i32 786689, metadata !2, metadata !"number_of_days", metadata !3, i32 16777242, metadata !6, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 26, i32 6, metadata !2, null}
!24 = metadata !{i32 786689, metadata !25, metadata !"NUMBER_OF_DAYS", metadata !3, i32 33554633, metadata !6, i32 0, metadata !28} ; [ DW_TAG_arg_variable ]
!25 = metadata !{i32 786478, i32 0, metadata !3, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", metadata !3, i32 199, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !9, i32 202} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !7, metadata !6}
!28 = metadata !{i32 50, i32 2, metadata !29, null}
!29 = metadata !{i32 786443, metadata !2, i32 32, i32 1, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 201, i32 7, metadata !25, metadata !28}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34, metadata !37}
!34 = metadata !{metadata !"in_indices", metadata !35, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 2519999, i32 1}
!37 = metadata !{metadata !"out_correlation", metadata !38, metadata !"float", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 49994999, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"number_of_days", metadata !44, metadata !"int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, i32 0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"number_of_indices", metadata !44, metadata !"int", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"return", metadata !54, metadata !"int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 1, i32 0}
!56 = metadata !{i32 786688, metadata !57, metadata !"acc_returnA", metadata !3, i32 73, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786443, metadata !58, i32 66, i32 92, metadata !3, i32 4} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !59, i32 66, i32 5, metadata !3, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !60, i32 56, i32 73, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !29, i32 56, i32 3, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!64 = metadata !{i32 73, i32 12, metadata !57, null}
!65 = metadata !{i32 786688, metadata !57, metadata !"acc_returnB", metadata !3, i32 74, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 74, i32 12, metadata !57, null}
!67 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnSquareA", metadata !3, i32 75, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 75, i32 12, metadata !57, null}
!69 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnA", metadata !3, i32 76, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 76, i32 12, metadata !57, null}
!71 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnSquareB", metadata !3, i32 77, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 77, i32 12, metadata !57, null}
!73 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnB", metadata !3, i32 78, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 78, i32 12, metadata !57, null}
!75 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnA_returnB", metadata !3, i32 79, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 79, i32 12, metadata !57, null}
!77 = metadata !{i32 34, i32 1, metadata !29, null}
!78 = metadata !{i32 41, i32 1, metadata !29, null}
!79 = metadata !{i32 786688, metadata !29, metadata !"NUMBER_OF_DAYS", metadata !3, i32 43, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 43, i32 37, metadata !29, null}
!81 = metadata !{i32 786688, metadata !29, metadata !"NUMBER_OF_INDICES", metadata !3, i32 44, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 44, i32 43, metadata !29, null}
!83 = metadata !{i32 204, i32 2, metadata !84, metadata !28}
!84 = metadata !{i32 786443, metadata !25, i32 202, i32 1, metadata !3, i32 11} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 205, i32 2, metadata !84, metadata !28}
!86 = metadata !{i32 208, i32 15, metadata !87, metadata !28}
!87 = metadata !{i32 786443, metadata !84, i32 208, i32 2, metadata !3, i32 12} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 208, i32 46, metadata !89, metadata !28}
!89 = metadata !{i32 786443, metadata !87, i32 208, i32 45, metadata !3, i32 13} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 209, i32 3, metadata !89, metadata !28}
!91 = metadata !{i32 208, i32 40, metadata !87, metadata !28}
!92 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !3, i32 208, metadata !6, i32 0, metadata !28} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 213, i32 15, metadata !94, metadata !28}
!94 = metadata !{i32 786443, metadata !84, i32 213, i32 2, metadata !3, i32 14} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 213, i32 42, metadata !96, metadata !28}
!96 = metadata !{i32 786443, metadata !94, i32 213, i32 41, metadata !3, i32 15} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 214, i32 3, metadata !96, metadata !28}
!98 = metadata !{i32 213, i32 37, metadata !94, metadata !28}
!99 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !3, i32 213, metadata !6, i32 0, metadata !28} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 56, i32 24, metadata !60, null}
!101 = metadata !{i32 102, i32 19, metadata !102, null}
!102 = metadata !{i32 786443, metadata !57, i32 102, i32 6, metadata !3, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 149, i32 65, metadata !57, null}
!104 = metadata !{i32 61, i32 4, metadata !59, null}
!105 = metadata !{i32 88, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !107, i32 86, i32 32, metadata !3, i32 6} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !57, i32 86, i32 6, metadata !3, i32 5} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 89, i32 7, metadata !106, null}
!109 = metadata !{i32 90, i32 7, metadata !106, null}
!110 = metadata !{i32 91, i32 7, metadata !106, null}
!111 = metadata !{i32 92, i32 7, metadata !106, null}
!112 = metadata !{i32 93, i32 7, metadata !106, null}
!113 = metadata !{i32 94, i32 7, metadata !106, null}
!114 = metadata !{i32 56, i32 61, metadata !60, null}
!115 = metadata !{i32 56, i32 74, metadata !59, null}
!116 = metadata !{i32 56, i32 110, metadata !59, null}
!117 = metadata !{i32 167, i32 6, metadata !57, null}
!118 = metadata !{i32 786688, metadata !29, metadata !"counter", metadata !3, i32 45, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 66, i32 41, metadata !58, null}
!120 = metadata !{i32 786688, metadata !58, metadata !"column_index", metadata !3, i32 66, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 66, i32 93, metadata !57, null}
!122 = metadata !{i32 66, i32 129, metadata !57, null}
!123 = metadata !{i32 68, i32 6, metadata !57, null}
!124 = metadata !{i32 105, i32 20, metadata !125, null}
!125 = metadata !{i32 786443, metadata !102, i32 102, i32 49, metadata !3, i32 8} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 102, i32 50, metadata !125, null}
!127 = metadata !{i32 102, i32 93, metadata !125, null}
!128 = metadata !{i32 103, i32 1, metadata !125, null}
!129 = metadata !{i32 786688, metadata !125, metadata !"lnReturnA", metadata !3, i32 105, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 106, i32 25, metadata !125, null}
!131 = metadata !{i32 786688, metadata !125, metadata !"lnReturnB", metadata !3, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 107, i32 37, metadata !125, null}
!133 = metadata !{i32 786688, metadata !125, metadata !"weight", metadata !3, i32 107, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 110, i32 7, metadata !125, null}
!135 = metadata !{i32 111, i32 7, metadata !125, null}
!136 = metadata !{i32 114, i32 7, metadata !125, null}
!137 = metadata !{i32 115, i32 7, metadata !125, null}
!138 = metadata !{i32 118, i32 7, metadata !125, null}
!139 = metadata !{i32 119, i32 7, metadata !125, null}
!140 = metadata !{i32 122, i32 7, metadata !125, null}
!141 = metadata !{i32 124, i32 6, metadata !125, null}
!142 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !3, i32 102, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 102, i32 45, metadata !102, null}
!144 = metadata !{i32 133, i32 38, metadata !57, null}
!145 = metadata !{i32 786688, metadata !57, metadata !"sum_weight", metadata !3, i32 133, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 135, i32 19, metadata !147, null}
!147 = metadata !{i32 786443, metadata !57, i32 135, i32 6, metadata !3, i32 9} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 135, i32 28, metadata !147, null}
!149 = metadata !{i32 135, i32 33, metadata !150, null}
!150 = metadata !{i32 786443, metadata !147, i32 135, i32 32, metadata !3, i32 10} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 135, i32 74, metadata !150, null}
!152 = metadata !{i32 136, i32 1, metadata !150, null}
!153 = metadata !{i32 137, i32 2, metadata !150, null}
!154 = metadata !{i32 786688, metadata !57, metadata !"sum_returnA", metadata !3, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 138, i32 7, metadata !150, null}
!156 = metadata !{i32 786688, metadata !57, metadata !"sum_returnB", metadata !3, i32 127, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 139, i32 7, metadata !150, null}
!158 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnSquareA", metadata !3, i32 128, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 140, i32 7, metadata !150, null}
!160 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnA", metadata !3, i32 129, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 141, i32 7, metadata !150, null}
!162 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnSquareB", metadata !3, i32 130, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 142, i32 7, metadata !150, null}
!164 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnB", metadata !3, i32 131, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 143, i32 7, metadata !150, null}
!166 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnA_returnB", metadata !3, i32 132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 144, i32 6, metadata !150, null}
!168 = metadata !{i32 786688, metadata !147, metadata !"i", metadata !3, i32 135, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 786688, metadata !57, metadata !"meanReturn1", metadata !3, i32 149, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 150, i32 65, metadata !57, null}
!171 = metadata !{i32 786688, metadata !57, metadata !"meanReturn2", metadata !3, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 152, i32 26, metadata !57, null}
!173 = metadata !{i32 786688, metadata !57, metadata !"volatilityA", metadata !3, i32 152, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 155, i32 26, metadata !57, null}
!175 = metadata !{i32 786688, metadata !57, metadata !"volatilityB", metadata !3, i32 155, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 161, i32 38, metadata !57, null}
!177 = metadata !{i32 786688, metadata !57, metadata !"covariance", metadata !3, i32 158, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 163, i32 6, metadata !57, null}
!179 = metadata !{i32 786688, metadata !57, metadata !"corr_temp", metadata !3, i32 162, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 165, i32 6, metadata !57, null}
!181 = metadata !{i32 168, i32 5, metadata !57, null}
!182 = metadata !{i32 66, i32 77, metadata !58, null}
!183 = metadata !{i32 169, i32 3, metadata !59, null}
!184 = metadata !{i32 786688, metadata !60, metadata !"row_index", metadata !3, i32 56, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 170, i32 2, metadata !29, null}
