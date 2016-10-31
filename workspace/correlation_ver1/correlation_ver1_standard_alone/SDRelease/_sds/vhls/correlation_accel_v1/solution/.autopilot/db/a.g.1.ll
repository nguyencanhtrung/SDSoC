; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@weight_rom = internal global [252 x float] zeroinitializer, align 16 ; [#uses=2 type=[252 x float]*]
@.str4 = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]
@bramA = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=3 type=[252 x float]*]
@bramB = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=3 type=[252 x float]*]
@.str5 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str6 = private unnamed_addr constant [16 x i8] c"RESET_REGISTERS\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str7 = private unnamed_addr constant [18 x i8] c"ACCUMULATION_LOOP\00", align 1 ; [#uses=1 type=[18 x i8]*]
@.str8 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str9 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str10 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1 ; [#uses=1 type=[19 x i8]*]
@str = internal constant [21 x i8] c"correlation_accel_v1\00" ; [#uses=1 type=[21 x i8]*]
@str1 = internal constant [72 x i8] c"memcpy.correlation_accel_v1(int, int, float*, float*)::bramA.in_indices\00" ; [#uses=1 type=[72 x i8]*]
@str2 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@str3 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str11 = internal constant [17 x i8] c"burstread.region\00" ; [#uses=2 type=[17 x i8]*]
@str12 = internal constant [72 x i8] c"memcpy.correlation_accel_v1(int, int, float*, float*)::bramB.in_indices\00" ; [#uses=1 type=[72 x i8]*]
@str13 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@str14 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@.str15 = internal constant [17 x i8] c"burstread.region\00" ; [#uses=2 type=[17 x i8]*]

; [#uses=0]
define i32 @correlation_accel_v1(i32 %number_of_days, i32 %number_of_indices, float* %in_indices, float* %out_correlation) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %acc_returnA = alloca [6 x float], align 16     ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnA}, metadata !41), !dbg !50 ; [debug line = 73:12] [debug variable = acc_returnA]
  %acc_returnB = alloca [6 x float], align 16     ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnB}, metadata !51), !dbg !52 ; [debug line = 74:12] [debug variable = acc_returnB]
  %acc_weight_returnSquareA = alloca [6 x float], align 16 ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareA}, metadata !53), !dbg !54 ; [debug line = 75:12] [debug variable = acc_weight_returnSquareA]
  %acc_weight_returnA = alloca [6 x float], align 16 ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA}, metadata !55), !dbg !56 ; [debug line = 76:12] [debug variable = acc_weight_returnA]
  %acc_weight_returnSquareB = alloca [6 x float], align 16 ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareB}, metadata !57), !dbg !58 ; [debug line = 77:12] [debug variable = acc_weight_returnSquareB]
  %acc_weight_returnB = alloca [6 x float], align 16 ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnB}, metadata !59), !dbg !60 ; [debug line = 78:12] [debug variable = acc_weight_returnB]
  %acc_weight_returnA_returnB = alloca [6 x float], align 16 ; [#uses=3 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !61), !dbg !62 ; [debug line = 79:12] [debug variable = acc_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !63), !dbg !64 ; [debug line = 26:6] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !65), !dbg !66 ; [debug line = 27:6] [debug variable = number_of_indices]
  call void @llvm.dbg.value(metadata !{float* %in_indices}, i64 0, metadata !67), !dbg !68 ; [debug line = 29:8] [debug variable = in_indices]
  call void @llvm.dbg.value(metadata !{float* %out_correlation}, i64 0, metadata !69), !dbg !70 ; [debug line = 30:8] [debug variable = out_correlation]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_indices, i32 2520000) nounwind, !dbg !71 ; [debug line = 32:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out_correlation, i32 49995000) nounwind, !dbg !72 ; [debug line = 32:49]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_indices, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 2520000, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !74 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_correlation, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 49995000, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 41:1]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !77), !dbg !78 ; [debug line = 43:37] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !79), !dbg !80 ; [debug line = 44:43] [debug variable = NUMBER_OF_INDICES]
  call fastcc void @weight_rom_init(float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), i32 %number_of_days), !dbg !81 ; [debug line = 50:2]
  %tmp = add nsw i32 %number_of_indices, -1, !dbg !82 ; [#uses=1 type=i32] [debug line = 56:24]
  %tmp.1 = add nsw i32 %number_of_days, -1, !dbg !83 ; [#uses=2 type=i32] [debug line = 102:19]
  %tmp.2 = sitofp i32 %tmp.1 to float, !dbg !85   ; [#uses=2 type=float] [debug line = 149:65]
  br label %1, !dbg !82                           ; [debug line = 56:24]

; <label>:1                                       ; preds = %15, %0
  %indvars.iv2 = phi i32 [ %indvars.iv.next3, %15 ], [ -1, %0 ], !dbg !86 ; [#uses=2 type=i32] [debug line = 56:61]
  %indvars.iv = phi i32 [ %indvars.iv.next, %15 ], [ 1, %0 ] ; [#uses=3 type=i32]
  %row_index = phi i32 [ %row_index.1, %15 ], [ 0, %0 ] ; [#uses=4 type=i32]
  %counter = phi i32 [ %counter.2, %15 ], [ 0, %0 ] ; [#uses=2 type=i32]
  %tmp.3 = icmp slt i32 %indvars.iv, %number_of_indices, !dbg !86 ; [#uses=1 type=i1] [debug line = 56:61]
  %smax = select i1 %tmp.3, i32 %number_of_indices, i32 %indvars.iv, !dbg !86 ; [#uses=1 type=i32] [debug line = 56:61]
  %tmp.4 = icmp slt i32 %row_index, %tmp, !dbg !82 ; [#uses=1 type=i1] [debug line = 56:24]
  br i1 %tmp.4, label %2, label %16, !dbg !82     ; [debug line = 56:24]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !87 ; [debug line = 56:74]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !88 ; [#uses=1 type=i32] [debug line = 56:110]
  %tmp.5 = mul nsw i32 %row_index, %number_of_days, !dbg !89 ; [#uses=1 type=i32] [debug line = 61:4]
  %tmp.6 = trunc i32 %number_of_days to i30, !dbg !89 ; [#uses=1 type=i30] [debug line = 61:4]
  %.add.i32.shr = zext i30 %tmp.6 to i32, !dbg !89 ; [#uses=4 type=i32] [debug line = 61:4]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i32 [ 0, %2 ], [ %indvar.next, %burst.rd.body ] ; [#uses=4 type=i32]
  %exitcond4 = icmp eq i32 %indvar, %.add.i32.shr ; [#uses=1 type=i1]
  br i1 %exitcond4, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str11) nounwind ; [#uses=1 type=i32]
  %3 = call i32 (...)* @_ssdm_op_SpecBurst(float* %in_indices, i32 1, i32 %.add.i32.shr) nounwind ; [#uses=0 type=i32]
  %4 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @str3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str1)
  %indvar.next = add i32 %indvar, 1               ; [#uses=1 type=i32]
  %in_indices.addr = add i32 %indvar, %tmp.5      ; [#uses=1 type=i32]
  %tmp.9 = sext i32 %in_indices.addr to i64, !dbg !89 ; [#uses=1 type=i64] [debug line = 61:4]
  %in_indices.addr.1 = getelementptr float* %in_indices, i64 %tmp.9, !dbg !89 ; [#uses=1 type=float*] [debug line = 61:4]
  %in_indices.load = load float* %in_indices.addr.1, align 4, !dbg !89 ; [#uses=1 type=float] [debug line = 61:4]
  %tmp.10 = sext i32 %indvar to i64, !dbg !89     ; [#uses=1 type=i64] [debug line = 61:4]
  %bramA.addr = getelementptr [252 x float]* @bramA, i64 0, i64 %tmp.10, !dbg !89 ; [#uses=1 type=float*] [debug line = 61:4]
  store float %in_indices.load, float* %bramA.addr, align 4, !dbg !89 ; [debug line = 61:4]
  %burstread.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str11, i32 %burstread.rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %tmp.7 = add i32 %counter, %indvars.iv2, !dbg !90 ; [#uses=1 type=i32] [debug line = 66:41]
  %counter.2 = add i32 %tmp.7, %smax, !dbg !91    ; [#uses=1 type=i32] [debug line = 167:6]
  call void @llvm.dbg.value(metadata !{i32 %counter.2}, i64 0, metadata !92), !dbg !91 ; [debug line = 167:6] [debug variable = counter]
  br label %5, !dbg !90                           ; [debug line = 66:41]

; <label>:5                                       ; preds = %14, %burst.rd.end
  %column_index.0.in = phi i32 [ %row_index, %burst.rd.end ], [ %column_index, %14 ] ; [#uses=1 type=i32]
  %counter.1 = phi i32 [ %counter, %burst.rd.end ], [ %tmp.61, %14 ] ; [#uses=2 type=i32]
  %column_index = add nsw i32 %column_index.0.in, 1, !dbg !90 ; [#uses=3 type=i32] [debug line = 66:41]
  call void @llvm.dbg.value(metadata !{i32 %column_index}, i64 0, metadata !93), !dbg !90 ; [debug line = 66:41] [debug variable = column_index]
  %tmp.11 = icmp slt i32 %column_index, %number_of_indices, !dbg !90 ; [#uses=1 type=i1] [debug line = 66:41]
  br i1 %tmp.11, label %6, label %15, !dbg !90    ; [debug line = 66:41]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !94 ; [debug line = 66:93]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 66:129]
  %tmp.12 = mul nsw i32 %column_index, %number_of_days, !dbg !96 ; [#uses=1 type=i32] [debug line = 68:6]
  br label %burst.rd.header8

burst.rd.header8:                                 ; preds = %burst.rd.body9, %6
  %indvar1 = phi i32 [ 0, %6 ], [ %indvar.next1, %burst.rd.body9 ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %indvar1, %.add.i32.shr ; [#uses=1 type=i1]
  br i1 %exitcond2, label %burst.rd.end7.preheader, label %burst.rd.body9

burst.rd.end7.preheader:                          ; preds = %burst.rd.header8
  br label %burst.rd.end7, !dbg !97               ; [debug line = 86:19]

burst.rd.body9:                                   ; preds = %burst.rd.header8
  %burstread.rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str15) nounwind ; [#uses=1 type=i32]
  %7 = call i32 (...)* @_ssdm_op_SpecBurst(float* %in_indices, i32 1, i32 %.add.i32.shr) nounwind ; [#uses=0 type=i32]
  %8 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @str14) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str13)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str12)
  %indvar.next1 = add i32 %indvar1, 1             ; [#uses=1 type=i32]
  %in_indices.addr2 = add i32 %indvar1, %tmp.12   ; [#uses=1 type=i32]
  %tmp.14 = sext i32 %in_indices.addr2 to i64, !dbg !96 ; [#uses=1 type=i64] [debug line = 68:6]
  %in_indices.addr.3 = getelementptr float* %in_indices, i64 %tmp.14, !dbg !96 ; [#uses=1 type=float*] [debug line = 68:6]
  %in_indices.load.1 = load float* %in_indices.addr.3, align 4, !dbg !96 ; [#uses=1 type=float] [debug line = 68:6]
  %tmp.15 = sext i32 %indvar1 to i64, !dbg !96    ; [#uses=1 type=i64] [debug line = 68:6]
  %bramB.addr = getelementptr [252 x float]* @bramB, i64 0, i64 %tmp.15, !dbg !96 ; [#uses=1 type=float*] [debug line = 68:6]
  store float %in_indices.load.1, float* %bramB.addr, align 4, !dbg !96 ; [debug line = 68:6]
  %burstread.rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str15, i32 %burstread.rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header8

burst.rd.end7:                                    ; preds = %9, %burst.rd.end7.preheader
  %i = phi i32 [ %i.1, %9 ], [ 0, %burst.rd.end7.preheader ] ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 6, !dbg !97        ; [#uses=1 type=i1] [debug line = 86:19]
  br i1 %exitcond1, label %.preheader.preheader, label %9, !dbg !97 ; [debug line = 86:19]

.preheader.preheader:                             ; preds = %burst.rd.end7
  br label %.preheader, !dbg !83                  ; [debug line = 102:19]

; <label>:9                                       ; preds = %burst.rd.end7
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !99 ; [debug line = 86:33]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !101 ; [#uses=1 type=i32] [debug line = 86:74]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !102 ; [debug line = 87:1]
  %tmp.16 = sext i32 %i to i64, !dbg !103         ; [#uses=7 type=i64] [debug line = 88:2]
  %acc_returnA.addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp.16, !dbg !103 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr, align 4, !dbg !103 ; [debug line = 88:2]
  %acc_returnB.addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp.16, !dbg !104 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr, align 4, !dbg !104 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp.16, !dbg !105 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr, align 4, !dbg !105 ; [debug line = 90:7]
  %acc_weight_returnA.addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp.16, !dbg !106 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr, align 4, !dbg !106 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp.16, !dbg !107 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr, align 4, !dbg !107 ; [debug line = 92:7]
  %acc_weight_returnB.addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp.16, !dbg !108 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr, align 4, !dbg !108 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp.16, !dbg !109 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr, align 4, !dbg !109 ; [debug line = 94:7]
  %rend26 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !110 ; [#uses=0 type=i32] [debug line = 95:6]
  %i.1 = add nsw i32 %i, 1, !dbg !111             ; [#uses=1 type=i32] [debug line = 86:28]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !112), !dbg !111 ; [debug line = 86:28] [debug variable = i]
  br label %burst.rd.end7, !dbg !111              ; [debug line = 86:28]

.preheader:                                       ; preds = %10, %.preheader.preheader
  %i1 = phi i32 [ %i.2, %10 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %tmp.18 = icmp slt i32 %i1, %tmp.1, !dbg !83    ; [#uses=1 type=i1] [debug line = 102:19]
  br i1 %tmp.18, label %10, label %11, !dbg !83   ; [debug line = 102:19]

; <label>:10                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !113 ; [debug line = 102:50]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 102:93]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !116 ; [debug line = 103:1]
  %tmp.19 = sext i32 %i1 to i64, !dbg !117        ; [#uses=2 type=i64] [debug line = 105:20]
  %bramA.addr.1 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp.19, !dbg !117 ; [#uses=1 type=float*] [debug line = 105:20]
  %bramA.load = load float* %bramA.addr.1, align 4, !dbg !117 ; [#uses=2 type=float] [debug line = 105:20]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %bramA.load) nounwind
  %i.2 = add nsw i32 %i1, 1, !dbg !117            ; [#uses=2 type=i32] [debug line = 105:20]
  %tmp.21 = sext i32 %i.2 to i64, !dbg !117       ; [#uses=3 type=i64] [debug line = 105:20]
  %bramA.addr.2 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp.21, !dbg !117 ; [#uses=1 type=float*] [debug line = 105:20]
  %bramA.load.1 = load float* %bramA.addr.2, align 4, !dbg !117 ; [#uses=2 type=float] [debug line = 105:20]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %bramA.load.1) nounwind
  %tmp.22 = fdiv float %bramA.load, %bramA.load.1, !dbg !117 ; [#uses=1 type=float] [debug line = 105:20]
  %lnReturnA = call float @llvm.log.f32(float %tmp.22), !dbg !117 ; [#uses=5 type=float] [debug line = 105:20]
  call void @llvm.dbg.value(metadata !{float %lnReturnA}, i64 0, metadata !118), !dbg !117 ; [debug line = 105:20] [debug variable = lnReturnA]
  %bramB.addr.1 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp.19, !dbg !119 ; [#uses=1 type=float*] [debug line = 106:25]
  %bramB.load = load float* %bramB.addr.1, align 4, !dbg !119 ; [#uses=2 type=float] [debug line = 106:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %bramB.load) nounwind
  %bramB.addr.2 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp.21, !dbg !119 ; [#uses=1 type=float*] [debug line = 106:25]
  %bramB.load.1 = load float* %bramB.addr.2, align 4, !dbg !119 ; [#uses=2 type=float] [debug line = 106:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %bramB.load.1) nounwind
  %tmp.23 = fdiv float %bramB.load, %bramB.load.1, !dbg !119 ; [#uses=1 type=float] [debug line = 106:25]
  %lnReturnB = call float @llvm.log.f32(float %tmp.23), !dbg !119 ; [#uses=5 type=float] [debug line = 106:25]
  call void @llvm.dbg.value(metadata !{float %lnReturnB}, i64 0, metadata !120), !dbg !119 ; [debug line = 106:25] [debug variable = lnReturnB]
  %weight_rom.addr = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp.21, !dbg !121 ; [#uses=1 type=float*] [debug line = 107:37]
  %weight = load float* %weight_rom.addr, align 4, !dbg !121 ; [#uses=6 type=float] [debug line = 107:37]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weight) nounwind
  call void @llvm.dbg.value(metadata !{float %weight}, i64 0, metadata !122), !dbg !121 ; [debug line = 107:37] [debug variable = weight]
  %tmp.24 = srem i32 %i1, 6, !dbg !123            ; [#uses=1 type=i32] [debug line = 110:7]
  %tmp.25 = sext i32 %tmp.24 to i64, !dbg !123    ; [#uses=7 type=i64] [debug line = 110:7]
  %acc_returnA.addr.1 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp.25, !dbg !123 ; [#uses=2 type=float*] [debug line = 110:7]
  %acc_returnA.load = load float* %acc_returnA.addr.1, align 4, !dbg !123 ; [#uses=2 type=float] [debug line = 110:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_returnA.load) nounwind
  %tmp.26 = fadd float %acc_returnA.load, %lnReturnA, !dbg !123 ; [#uses=1 type=float] [debug line = 110:7]
  store float %tmp.26, float* %acc_returnA.addr.1, align 4, !dbg !123 ; [debug line = 110:7]
  %acc_returnB.addr.1 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp.25, !dbg !124 ; [#uses=2 type=float*] [debug line = 111:7]
  %acc_returnB.load = load float* %acc_returnB.addr.1, align 4, !dbg !124 ; [#uses=2 type=float] [debug line = 111:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_returnB.load) nounwind
  %tmp.27 = fadd float %acc_returnB.load, %lnReturnB, !dbg !124 ; [#uses=1 type=float] [debug line = 111:7]
  store float %tmp.27, float* %acc_returnB.addr.1, align 4, !dbg !124 ; [debug line = 111:7]
  %tmp.28 = fmul float %lnReturnA, %lnReturnA, !dbg !125 ; [#uses=1 type=float] [debug line = 114:7]
  %tmp.29 = fmul float %tmp.28, %weight, !dbg !125 ; [#uses=1 type=float] [debug line = 114:7]
  %acc_weight_returnSquareA.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp.25, !dbg !125 ; [#uses=2 type=float*] [debug line = 114:7]
  %acc_weight_returnSquareA.load = load float* %acc_weight_returnSquareA.addr.1, align 4, !dbg !125 ; [#uses=2 type=float] [debug line = 114:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnSquareA.load) nounwind
  %tmp.30 = fadd float %acc_weight_returnSquareA.load, %tmp.29, !dbg !125 ; [#uses=1 type=float] [debug line = 114:7]
  store float %tmp.30, float* %acc_weight_returnSquareA.addr.1, align 4, !dbg !125 ; [debug line = 114:7]
  %tmp.31 = fmul float %lnReturnB, %lnReturnB, !dbg !126 ; [#uses=1 type=float] [debug line = 115:7]
  %tmp.32 = fmul float %tmp.31, %weight, !dbg !126 ; [#uses=1 type=float] [debug line = 115:7]
  %acc_weight_returnSquareB.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp.25, !dbg !126 ; [#uses=2 type=float*] [debug line = 115:7]
  %acc_weight_returnSquareB.load = load float* %acc_weight_returnSquareB.addr.1, align 4, !dbg !126 ; [#uses=2 type=float] [debug line = 115:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnSquareB.load) nounwind
  %tmp.33 = fadd float %acc_weight_returnSquareB.load, %tmp.32, !dbg !126 ; [#uses=1 type=float] [debug line = 115:7]
  store float %tmp.33, float* %acc_weight_returnSquareB.addr.1, align 4, !dbg !126 ; [debug line = 115:7]
  %tmp.34 = fmul float %lnReturnA, %weight, !dbg !127 ; [#uses=1 type=float] [debug line = 118:7]
  %acc_weight_returnA.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp.25, !dbg !127 ; [#uses=2 type=float*] [debug line = 118:7]
  %acc_weight_returnA.load = load float* %acc_weight_returnA.addr.1, align 4, !dbg !127 ; [#uses=2 type=float] [debug line = 118:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnA.load) nounwind
  %tmp.35 = fadd float %acc_weight_returnA.load, %tmp.34, !dbg !127 ; [#uses=1 type=float] [debug line = 118:7]
  store float %tmp.35, float* %acc_weight_returnA.addr.1, align 4, !dbg !127 ; [debug line = 118:7]
  %tmp.36 = fmul float %lnReturnB, %weight, !dbg !128 ; [#uses=1 type=float] [debug line = 119:7]
  %acc_weight_returnB.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp.25, !dbg !128 ; [#uses=2 type=float*] [debug line = 119:7]
  %acc_weight_returnB.load = load float* %acc_weight_returnB.addr.1, align 4, !dbg !128 ; [#uses=2 type=float] [debug line = 119:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnB.load) nounwind
  %tmp.37 = fadd float %acc_weight_returnB.load, %tmp.36, !dbg !128 ; [#uses=1 type=float] [debug line = 119:7]
  store float %tmp.37, float* %acc_weight_returnB.addr.1, align 4, !dbg !128 ; [debug line = 119:7]
  %tmp.38 = fmul float %lnReturnA, %lnReturnB, !dbg !129 ; [#uses=1 type=float] [debug line = 122:7]
  %tmp.39 = fmul float %tmp.38, %weight, !dbg !129 ; [#uses=1 type=float] [debug line = 122:7]
  %acc_weight_returnA_returnB.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp.25, !dbg !129 ; [#uses=2 type=float*] [debug line = 122:7]
  %acc_weight_returnA_returnB.load = load float* %acc_weight_returnA_returnB.addr.1, align 4, !dbg !129 ; [#uses=2 type=float] [debug line = 122:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnA_returnB.load) nounwind
  %tmp.40 = fadd float %acc_weight_returnA_returnB.load, %tmp.39, !dbg !129 ; [#uses=1 type=float] [debug line = 122:7]
  store float %tmp.40, float* %acc_weight_returnA_returnB.addr.1, align 4, !dbg !129 ; [debug line = 122:7]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !130 ; [#uses=0 type=i32] [debug line = 124:6]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !131), !dbg !132 ; [debug line = 102:45] [debug variable = i]
  br label %.preheader, !dbg !132                 ; [debug line = 102:45]

; <label>:11                                      ; preds = %.preheader
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !133 ; [#uses=4 type=float] [debug line = 133:38]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %sum_weight) nounwind
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !134), !dbg !133 ; [debug line = 133:38] [debug variable = sum_weight]
  br label %12, !dbg !135                         ; [debug line = 135:19]

; <label>:12                                      ; preds = %13, %11
  %sum_returnA = phi float [ 0.000000e+00, %11 ], [ %sum_returnA.1, %13 ] ; [#uses=2 type=float]
  %sum_returnB = phi float [ 0.000000e+00, %11 ], [ %sum_returnB.1, %13 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareA = phi float [ 0.000000e+00, %11 ], [ %sum_weight_returnSquareA.1, %13 ] ; [#uses=2 type=float]
  %sum_weight_returnA = phi float [ 0.000000e+00, %11 ], [ %sum_weight_returnA.1, %13 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareB = phi float [ 0.000000e+00, %11 ], [ %sum_weight_returnSquareB.1, %13 ] ; [#uses=2 type=float]
  %sum_weight_returnB = phi float [ 0.000000e+00, %11 ], [ %sum_weight_returnB.1, %13 ] ; [#uses=2 type=float]
  %sum_weight_returnA_returnB = phi float [ 0.000000e+00, %11 ], [ %sum_weight_returnA_returnB.1, %13 ] ; [#uses=2 type=float]
  %i2 = phi i32 [ 0, %11 ], [ %i.3, %13 ]         ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i2, 6, !dbg !135       ; [#uses=1 type=i1] [debug line = 135:19]
  br i1 %exitcond, label %14, label %13, !dbg !135 ; [debug line = 135:19]

; <label>:13                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !137 ; [debug line = 135:33]
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !139 ; [#uses=1 type=i32] [debug line = 135:74]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !140 ; [debug line = 136:1]
  %tmp.62 = sext i32 %i2 to i64, !dbg !141        ; [#uses=7 type=i64] [debug line = 137:2]
  %acc_returnA.addr.2 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp.62, !dbg !141 ; [#uses=1 type=float*] [debug line = 137:2]
  %acc_returnA.load.1 = load float* %acc_returnA.addr.2, align 4, !dbg !141 ; [#uses=2 type=float] [debug line = 137:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_returnA.load.1) nounwind
  %sum_returnA.1 = fadd float %sum_returnA, %acc_returnA.load.1, !dbg !141 ; [#uses=1 type=float] [debug line = 137:2]
  call void @llvm.dbg.value(metadata !{float %sum_returnA.1}, i64 0, metadata !142), !dbg !141 ; [debug line = 137:2] [debug variable = sum_returnA]
  %acc_returnB.addr.2 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp.62, !dbg !143 ; [#uses=1 type=float*] [debug line = 138:7]
  %acc_returnB.load.1 = load float* %acc_returnB.addr.2, align 4, !dbg !143 ; [#uses=2 type=float] [debug line = 138:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_returnB.load.1) nounwind
  %sum_returnB.1 = fadd float %sum_returnB, %acc_returnB.load.1, !dbg !143 ; [#uses=1 type=float] [debug line = 138:7]
  call void @llvm.dbg.value(metadata !{float %sum_returnB.1}, i64 0, metadata !144), !dbg !143 ; [debug line = 138:7] [debug variable = sum_returnB]
  %acc_weight_returnSquareA.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp.62, !dbg !145 ; [#uses=1 type=float*] [debug line = 139:7]
  %acc_weight_returnSquareA.load.1 = load float* %acc_weight_returnSquareA.addr.2, align 4, !dbg !145 ; [#uses=2 type=float] [debug line = 139:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnSquareA.load.1) nounwind
  %sum_weight_returnSquareA.1 = fadd float %sum_weight_returnSquareA, %acc_weight_returnSquareA.load.1, !dbg !145 ; [#uses=1 type=float] [debug line = 139:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareA.1}, i64 0, metadata !146), !dbg !145 ; [debug line = 139:7] [debug variable = sum_weight_returnSquareA]
  %acc_weight_returnA.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp.62, !dbg !147 ; [#uses=1 type=float*] [debug line = 140:7]
  %acc_weight_returnA.load.1 = load float* %acc_weight_returnA.addr.2, align 4, !dbg !147 ; [#uses=2 type=float] [debug line = 140:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnA.load.1) nounwind
  %sum_weight_returnA.1 = fadd float %sum_weight_returnA, %acc_weight_returnA.load.1, !dbg !147 ; [#uses=1 type=float] [debug line = 140:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA.1}, i64 0, metadata !148), !dbg !147 ; [debug line = 140:7] [debug variable = sum_weight_returnA]
  %acc_weight_returnSquareB.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp.62, !dbg !149 ; [#uses=1 type=float*] [debug line = 141:7]
  %acc_weight_returnSquareB.load.1 = load float* %acc_weight_returnSquareB.addr.2, align 4, !dbg !149 ; [#uses=2 type=float] [debug line = 141:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnSquareB.load.1) nounwind
  %sum_weight_returnSquareB.1 = fadd float %sum_weight_returnSquareB, %acc_weight_returnSquareB.load.1, !dbg !149 ; [#uses=1 type=float] [debug line = 141:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareB.1}, i64 0, metadata !150), !dbg !149 ; [debug line = 141:7] [debug variable = sum_weight_returnSquareB]
  %acc_weight_returnB.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp.62, !dbg !151 ; [#uses=1 type=float*] [debug line = 142:7]
  %acc_weight_returnB.load.1 = load float* %acc_weight_returnB.addr.2, align 4, !dbg !151 ; [#uses=2 type=float] [debug line = 142:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnB.load.1) nounwind
  %sum_weight_returnB.1 = fadd float %sum_weight_returnB, %acc_weight_returnB.load.1, !dbg !151 ; [#uses=1 type=float] [debug line = 142:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnB.1}, i64 0, metadata !152), !dbg !151 ; [debug line = 142:7] [debug variable = sum_weight_returnB]
  %acc_weight_returnA_returnB.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp.62, !dbg !153 ; [#uses=1 type=float*] [debug line = 143:7]
  %acc_weight_returnA_returnB.load.1 = load float* %acc_weight_returnA_returnB.addr.2, align 4, !dbg !153 ; [#uses=2 type=float] [debug line = 143:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %acc_weight_returnA_returnB.load.1) nounwind
  %sum_weight_returnA_returnB.1 = fadd float %sum_weight_returnA_returnB, %acc_weight_returnA_returnB.load.1, !dbg !153 ; [#uses=1 type=float] [debug line = 143:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_returnB.1}, i64 0, metadata !154), !dbg !153 ; [debug line = 143:7] [debug variable = sum_weight_returnA_returnB]
  %rend22 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !155 ; [#uses=0 type=i32] [debug line = 144:6]
  %i.3 = add nsw i32 %i2, 1, !dbg !156            ; [#uses=1 type=i32] [debug line = 135:28]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !157), !dbg !156 ; [debug line = 135:28] [debug variable = i]
  br label %12, !dbg !156                         ; [debug line = 135:28]

; <label>:14                                      ; preds = %12
  %sum_weight_returnA_returnB.0.lcssa = phi float [ %sum_weight_returnA_returnB, %12 ] ; [#uses=1 type=float]
  %sum_weight_returnB.0.lcssa = phi float [ %sum_weight_returnB, %12 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareB.0.lcssa = phi float [ %sum_weight_returnSquareB, %12 ] ; [#uses=1 type=float]
  %sum_weight_returnA.0.lcssa = phi float [ %sum_weight_returnA, %12 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareA.0.lcssa = phi float [ %sum_weight_returnSquareA, %12 ] ; [#uses=1 type=float]
  %sum_returnB.0.lcssa = phi float [ %sum_returnB, %12 ] ; [#uses=1 type=float]
  %sum_returnA.0.lcssa = phi float [ %sum_returnA, %12 ] ; [#uses=1 type=float]
  %meanReturn1 = fdiv float %sum_returnA.0.lcssa, %tmp.2, !dbg !85 ; [#uses=5 type=float] [debug line = 149:65]
  call void @llvm.dbg.value(metadata !{float %meanReturn1}, i64 0, metadata !158), !dbg !85 ; [debug line = 149:65] [debug variable = meanReturn1]
  %meanReturn2 = fdiv float %sum_returnB.0.lcssa, %tmp.2, !dbg !159 ; [#uses=5 type=float] [debug line = 150:65]
  call void @llvm.dbg.value(metadata !{float %meanReturn2}, i64 0, metadata !160), !dbg !159 ; [debug line = 150:65] [debug variable = meanReturn2]
  %tmp.41 = fmul float %meanReturn1, 2.000000e+00, !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.42 = fmul float %tmp.41, %sum_weight_returnA.0.lcssa, !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.43 = fsub float %sum_weight_returnSquareA.0.lcssa, %tmp.42, !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.44 = fdiv float %tmp.43, %sum_weight, !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.45 = fmul float %meanReturn1, %meanReturn1, !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.46 = fadd float %tmp.44, %tmp.45, !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  %volatilityA = call float @llvm.sqrt.f32(float %tmp.46), !dbg !161 ; [#uses=1 type=float] [debug line = 152:26]
  call void @llvm.dbg.value(metadata !{float %volatilityA}, i64 0, metadata !162), !dbg !161 ; [debug line = 152:26] [debug variable = volatilityA]
  %tmp.47 = fmul float %meanReturn2, 2.000000e+00, !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.48 = fmul float %tmp.47, %sum_weight_returnB.0.lcssa, !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.49 = fsub float %sum_weight_returnSquareB.0.lcssa, %tmp.48, !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.50 = fdiv float %tmp.49, %sum_weight, !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.51 = fmul float %meanReturn2, %meanReturn2, !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.52 = fadd float %tmp.50, %tmp.51, !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  %volatilityB = call float @llvm.sqrt.f32(float %tmp.52), !dbg !163 ; [#uses=1 type=float] [debug line = 155:26]
  call void @llvm.dbg.value(metadata !{float %volatilityB}, i64 0, metadata !164), !dbg !163 ; [debug line = 155:26] [debug variable = volatilityB]
  %tmp.53 = fmul float %meanReturn1, %sum_weight_returnB.0.lcssa, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.54 = fsub float %sum_weight_returnA_returnB.0.lcssa, %tmp.53, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.55 = fmul float %meanReturn2, %sum_weight_returnA.0.lcssa, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.56 = fsub float %tmp.54, %tmp.55, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.57 = fdiv float %tmp.56, %sum_weight, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.58 = fmul float %meanReturn1, %meanReturn2, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  %covariance = fadd float %tmp.57, %tmp.58, !dbg !165 ; [#uses=1 type=float] [debug line = 161:38]
  call void @llvm.dbg.value(metadata !{float %covariance}, i64 0, metadata !166), !dbg !165 ; [debug line = 161:38] [debug variable = covariance]
  %tmp.59 = fmul float %volatilityA, %volatilityB, !dbg !167 ; [#uses=1 type=float] [debug line = 163:6]
  %corr_temp = fdiv float %covariance, %tmp.59, !dbg !167 ; [#uses=1 type=float] [debug line = 163:6]
  call void @llvm.dbg.value(metadata !{float %corr_temp}, i64 0, metadata !168), !dbg !167 ; [debug line = 163:6] [debug variable = corr_temp]
  %tmp.60 = sext i32 %counter.1 to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 165:6]
  %out_correlation.addr = getelementptr inbounds float* %out_correlation, i64 %tmp.60, !dbg !169 ; [#uses=1 type=float*] [debug line = 165:6]
  store float %corr_temp, float* %out_correlation.addr, align 4, !dbg !169 ; [debug line = 165:6]
  %tmp.61 = add nsw i32 %counter.1, 1, !dbg !91   ; [#uses=1 type=i32] [debug line = 167:6]
  %rend20 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !170 ; [#uses=0 type=i32] [debug line = 168:5]
  br label %5, !dbg !171                          ; [debug line = 66:77]

; <label>:15                                      ; preds = %5
  %rend24 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !172 ; [#uses=0 type=i32] [debug line = 169:3]
  %row_index.1 = add nsw i32 %row_index, 1, !dbg !86 ; [#uses=1 type=i32] [debug line = 56:61]
  call void @llvm.dbg.value(metadata !{i32 %row_index.1}, i64 0, metadata !173), !dbg !86 ; [debug line = 56:61] [debug variable = row_index]
  %indvars.iv.next = add i32 %indvars.iv, 1, !dbg !86 ; [#uses=1 type=i32] [debug line = 56:61]
  %indvars.iv.next3 = add i32 %indvars.iv2, -1, !dbg !86 ; [#uses=1 type=i32] [debug line = 56:61]
  br label %1, !dbg !86                           ; [debug line = 56:61]

; <label>:16                                      ; preds = %1
  ret i32 0, !dbg !174                            ; [debug line = 170:2]
}

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define internal fastcc void @weight_rom_init(float* %weightRom, i32 %NUMBER_OF_DAYS) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{float* %weightRom}, i64 0, metadata !175), !dbg !176 ; [debug line = 200:9] [debug variable = weightRom]
  call void @llvm.dbg.value(metadata !{i32 %NUMBER_OF_DAYS}, i64 0, metadata !177), !dbg !178 ; [debug line = 201:7] [debug variable = NUMBER_OF_DAYS]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %weightRom, i32 252) nounwind, !dbg !179 ; [debug line = 202:2]
  store float 1.000000e+00, float* %weightRom, align 4, !dbg !181 ; [debug line = 204:2]
  %weightRom.addr = getelementptr inbounds float* %weightRom, i64 1, !dbg !182 ; [#uses=1 type=float*] [debug line = 205:2]
  store float 1.000000e+00, float* %weightRom.addr, align 4, !dbg !182 ; [debug line = 205:2]
  br label %1, !dbg !183                          ; [debug line = 208:15]

; <label>:1                                       ; preds = %2, %0
  %tmp = phi float [ 1.000000e+00, %0 ], [ %tmp.71, %2 ] ; [#uses=2 type=float]
  %i = phi i32 [ 2, %0 ], [ %i.4, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 252, !dbg !183      ; [#uses=1 type=i1] [debug line = 208:15]
  br i1 %exitcond, label %.preheader.preheader, label %2, !dbg !183 ; [debug line = 208:15]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !185                 ; [debug line = 213:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !187 ; [debug line = 208:46]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !189 ; [#uses=1 type=i32] [debug line = 208:87]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %tmp) nounwind
  %tmp.71 = fmul float %tmp, 0x3FEE147AE0000000, !dbg !190 ; [#uses=2 type=float] [debug line = 209:3]
  %tmp.72 = sext i32 %i to i64, !dbg !190         ; [#uses=1 type=i64] [debug line = 209:3]
  %weightRom.addr.1 = getelementptr inbounds float* %weightRom, i64 %tmp.72, !dbg !190 ; [#uses=1 type=float*] [debug line = 209:3]
  store float %tmp.71, float* %weightRom.addr.1, align 4, !dbg !190 ; [debug line = 209:3]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !191 ; [#uses=0 type=i32] [debug line = 210:2]
  %i.4 = add nsw i32 %i, 1, !dbg !192             ; [#uses=1 type=i32] [debug line = 208:40]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !193), !dbg !192 ; [debug line = 208:40] [debug variable = i]
  br label %1, !dbg !192                          ; [debug line = 208:40]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i1 = phi i32 [ %i.5, %3 ], [ 2, %.preheader.preheader ] ; [#uses=3 type=i32]
  %tmp.74 = icmp slt i32 %i1, %NUMBER_OF_DAYS, !dbg !185 ; [#uses=1 type=i1] [debug line = 213:15]
  br i1 %tmp.74, label %3, label %4, !dbg !185    ; [debug line = 213:15]

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !194 ; [debug line = 213:42]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0)) nounwind, !dbg !196 ; [#uses=1 type=i32] [debug line = 213:86]
  %tmp.75 = sext i32 %i1 to i64, !dbg !197        ; [#uses=1 type=i64] [debug line = 214:3]
  %weightRom.addr.2 = getelementptr inbounds float* %weightRom, i64 %tmp.75, !dbg !197 ; [#uses=1 type=float*] [debug line = 214:3]
  %weightRom.load = load float* %weightRom.addr.2, align 4, !dbg !197 ; [#uses=2 type=float] [debug line = 214:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weightRom.load) nounwind
  %weightRom.load.1 = load float* %weightRom, align 4, !dbg !197 ; [#uses=2 type=float] [debug line = 214:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %weightRom.load.1) nounwind
  %tmp.76 = fadd float %weightRom.load.1, %weightRom.load, !dbg !197 ; [#uses=1 type=float] [debug line = 214:3]
  store float %tmp.76, float* %weightRom, align 4, !dbg !197 ; [debug line = 214:3]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !198 ; [#uses=0 type=i32] [debug line = 216:2]
  %i.5 = add nsw i32 %i1, 1, !dbg !199            ; [#uses=1 type=i32] [debug line = 213:37]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !200), !dbg !199 ; [debug line = 213:37] [debug variable = i]
  br label %.preheader, !dbg !199                 ; [debug line = 213:37]

; <label>:4                                       ; preds = %.preheader
  ret void, !dbg !201                             ; [debug line = 217:1]
}

; [#uses=9]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=33]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=23]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=2]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare i32 @_ssdm_SpecLoopFlatten(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/correlation_accel_v1.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !17} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"correlation_accel_v1", metadata !"correlation_accel_v1", metadata !"_Z20correlation_accel_v1iiPfS_", metadata !6, i32 25, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, float*, float*)* @correlation_accel_v1, null, null, metadata !12, i32 32} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls/src/correlation_accel_v1.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", metadata !6, i32 199, metadata !15, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32)* @weight_rom_init, null, null, metadata !12, i32 202} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !10, metadata !9}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19, metadata !23, metadata !24, metadata !25, metadata !27, metadata !30, metadata !31, metadata !32, metadata !34}
!19 = metadata !{i32 786484, i32 0, metadata !5, metadata !"weight_rom", metadata !"weight_rom", metadata !"", metadata !6, i32 49, metadata !20, i32 1, i32 1, [252 x float]* @weight_rom} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8064, i64 32, i32 0, i32 0, metadata !11, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 251}      ; [ DW_TAG_subrange_type ]
!23 = metadata !{i32 786484, i32 0, metadata !5, metadata !"bramA", metadata !"bramA", metadata !"", metadata !6, i32 58, metadata !20, i32 1, i32 1, [252 x float]* @bramA} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, metadata !5, metadata !"bramB", metadata !"bramB", metadata !"", metadata !6, i32 59, metadata !20, i32 1, i32 1, [252 x float]* @bramB} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !26, i32 157, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !28, i32 346, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !28, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !28, i32 347, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !28, i32 348, metadata !29, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !33, i32 27, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_standard_alone/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !33, i32 31, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"return", metadata !39, metadata !"int", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 1, i32 0}
!41 = metadata !{i32 786688, metadata !42, metadata !"acc_returnA", metadata !6, i32 73, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 786443, metadata !43, i32 66, i32 92, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786443, metadata !44, i32 66, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 786443, metadata !45, i32 56, i32 73, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 786443, metadata !46, i32 56, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 786443, metadata !5, i32 32, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !11, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!50 = metadata !{i32 73, i32 12, metadata !42, null}
!51 = metadata !{i32 786688, metadata !42, metadata !"acc_returnB", metadata !6, i32 74, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 74, i32 12, metadata !42, null}
!53 = metadata !{i32 786688, metadata !42, metadata !"acc_weight_returnSquareA", metadata !6, i32 75, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 75, i32 12, metadata !42, null}
!55 = metadata !{i32 786688, metadata !42, metadata !"acc_weight_returnA", metadata !6, i32 76, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 76, i32 12, metadata !42, null}
!57 = metadata !{i32 786688, metadata !42, metadata !"acc_weight_returnSquareB", metadata !6, i32 77, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!58 = metadata !{i32 77, i32 12, metadata !42, null}
!59 = metadata !{i32 786688, metadata !42, metadata !"acc_weight_returnB", metadata !6, i32 78, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 78, i32 12, metadata !42, null}
!61 = metadata !{i32 786688, metadata !42, metadata !"acc_weight_returnA_returnB", metadata !6, i32 79, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 79, i32 12, metadata !42, null}
!63 = metadata !{i32 786689, metadata !5, metadata !"number_of_days", metadata !6, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 26, i32 6, metadata !5, null}
!65 = metadata !{i32 786689, metadata !5, metadata !"number_of_indices", metadata !6, i32 33554459, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 27, i32 6, metadata !5, null}
!67 = metadata !{i32 786689, metadata !5, metadata !"in_indices", metadata !6, i32 50331677, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 29, i32 8, metadata !5, null}
!69 = metadata !{i32 786689, metadata !5, metadata !"out_correlation", metadata !6, i32 67108894, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 30, i32 8, metadata !5, null}
!71 = metadata !{i32 32, i32 2, metadata !46, null}
!72 = metadata !{i32 32, i32 49, metadata !46, null}
!73 = metadata !{i32 34, i32 1, metadata !46, null}
!74 = metadata !{i32 38, i32 1, metadata !46, null}
!75 = metadata !{i32 39, i32 1, metadata !46, null}
!76 = metadata !{i32 41, i32 1, metadata !46, null}
!77 = metadata !{i32 786688, metadata !46, metadata !"NUMBER_OF_DAYS", metadata !6, i32 43, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 43, i32 37, metadata !46, null}
!79 = metadata !{i32 786688, metadata !46, metadata !"NUMBER_OF_INDICES", metadata !6, i32 44, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 44, i32 43, metadata !46, null}
!81 = metadata !{i32 50, i32 2, metadata !46, null}
!82 = metadata !{i32 56, i32 24, metadata !45, null}
!83 = metadata !{i32 102, i32 19, metadata !84, null}
!84 = metadata !{i32 786443, metadata !42, i32 102, i32 6, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 149, i32 65, metadata !42, null}
!86 = metadata !{i32 56, i32 61, metadata !45, null}
!87 = metadata !{i32 56, i32 74, metadata !44, null}
!88 = metadata !{i32 56, i32 110, metadata !44, null}
!89 = metadata !{i32 61, i32 4, metadata !44, null}
!90 = metadata !{i32 66, i32 41, metadata !43, null}
!91 = metadata !{i32 167, i32 6, metadata !42, null}
!92 = metadata !{i32 786688, metadata !46, metadata !"counter", metadata !6, i32 45, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 786688, metadata !43, metadata !"column_index", metadata !6, i32 66, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 66, i32 93, metadata !42, null}
!95 = metadata !{i32 66, i32 129, metadata !42, null}
!96 = metadata !{i32 68, i32 6, metadata !42, null}
!97 = metadata !{i32 86, i32 19, metadata !98, null}
!98 = metadata !{i32 786443, metadata !42, i32 86, i32 6, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 86, i32 33, metadata !100, null}
!100 = metadata !{i32 786443, metadata !98, i32 86, i32 32, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 86, i32 74, metadata !100, null}
!102 = metadata !{i32 87, i32 1, metadata !100, null}
!103 = metadata !{i32 88, i32 2, metadata !100, null}
!104 = metadata !{i32 89, i32 7, metadata !100, null}
!105 = metadata !{i32 90, i32 7, metadata !100, null}
!106 = metadata !{i32 91, i32 7, metadata !100, null}
!107 = metadata !{i32 92, i32 7, metadata !100, null}
!108 = metadata !{i32 93, i32 7, metadata !100, null}
!109 = metadata !{i32 94, i32 7, metadata !100, null}
!110 = metadata !{i32 95, i32 6, metadata !100, null}
!111 = metadata !{i32 86, i32 28, metadata !98, null}
!112 = metadata !{i32 786688, metadata !98, metadata !"i", metadata !6, i32 86, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 102, i32 50, metadata !114, null}
!114 = metadata !{i32 786443, metadata !84, i32 102, i32 49, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 102, i32 93, metadata !114, null}
!116 = metadata !{i32 103, i32 1, metadata !114, null}
!117 = metadata !{i32 105, i32 20, metadata !114, null}
!118 = metadata !{i32 786688, metadata !114, metadata !"lnReturnA", metadata !6, i32 105, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 106, i32 25, metadata !114, null}
!120 = metadata !{i32 786688, metadata !114, metadata !"lnReturnB", metadata !6, i32 106, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 107, i32 37, metadata !114, null}
!122 = metadata !{i32 786688, metadata !114, metadata !"weight", metadata !6, i32 107, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 110, i32 7, metadata !114, null}
!124 = metadata !{i32 111, i32 7, metadata !114, null}
!125 = metadata !{i32 114, i32 7, metadata !114, null}
!126 = metadata !{i32 115, i32 7, metadata !114, null}
!127 = metadata !{i32 118, i32 7, metadata !114, null}
!128 = metadata !{i32 119, i32 7, metadata !114, null}
!129 = metadata !{i32 122, i32 7, metadata !114, null}
!130 = metadata !{i32 124, i32 6, metadata !114, null}
!131 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 102, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 102, i32 45, metadata !84, null}
!133 = metadata !{i32 133, i32 38, metadata !42, null}
!134 = metadata !{i32 786688, metadata !42, metadata !"sum_weight", metadata !6, i32 133, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 135, i32 19, metadata !136, null}
!136 = metadata !{i32 786443, metadata !42, i32 135, i32 6, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 135, i32 33, metadata !138, null}
!138 = metadata !{i32 786443, metadata !136, i32 135, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 135, i32 74, metadata !138, null}
!140 = metadata !{i32 136, i32 1, metadata !138, null}
!141 = metadata !{i32 137, i32 2, metadata !138, null}
!142 = metadata !{i32 786688, metadata !42, metadata !"sum_returnA", metadata !6, i32 126, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 138, i32 7, metadata !138, null}
!144 = metadata !{i32 786688, metadata !42, metadata !"sum_returnB", metadata !6, i32 127, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!145 = metadata !{i32 139, i32 7, metadata !138, null}
!146 = metadata !{i32 786688, metadata !42, metadata !"sum_weight_returnSquareA", metadata !6, i32 128, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 140, i32 7, metadata !138, null}
!148 = metadata !{i32 786688, metadata !42, metadata !"sum_weight_returnA", metadata !6, i32 129, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 141, i32 7, metadata !138, null}
!150 = metadata !{i32 786688, metadata !42, metadata !"sum_weight_returnSquareB", metadata !6, i32 130, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 142, i32 7, metadata !138, null}
!152 = metadata !{i32 786688, metadata !42, metadata !"sum_weight_returnB", metadata !6, i32 131, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 143, i32 7, metadata !138, null}
!154 = metadata !{i32 786688, metadata !42, metadata !"sum_weight_returnA_returnB", metadata !6, i32 132, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 144, i32 6, metadata !138, null}
!156 = metadata !{i32 135, i32 28, metadata !136, null}
!157 = metadata !{i32 786688, metadata !136, metadata !"i", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 786688, metadata !42, metadata !"meanReturn1", metadata !6, i32 149, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!159 = metadata !{i32 150, i32 65, metadata !42, null}
!160 = metadata !{i32 786688, metadata !42, metadata !"meanReturn2", metadata !6, i32 150, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 152, i32 26, metadata !42, null}
!162 = metadata !{i32 786688, metadata !42, metadata !"volatilityA", metadata !6, i32 152, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 155, i32 26, metadata !42, null}
!164 = metadata !{i32 786688, metadata !42, metadata !"volatilityB", metadata !6, i32 155, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!165 = metadata !{i32 161, i32 38, metadata !42, null}
!166 = metadata !{i32 786688, metadata !42, metadata !"covariance", metadata !6, i32 158, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 163, i32 6, metadata !42, null}
!168 = metadata !{i32 786688, metadata !42, metadata !"corr_temp", metadata !6, i32 162, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 165, i32 6, metadata !42, null}
!170 = metadata !{i32 168, i32 5, metadata !42, null}
!171 = metadata !{i32 66, i32 77, metadata !43, null}
!172 = metadata !{i32 169, i32 3, metadata !44, null}
!173 = metadata !{i32 786688, metadata !45, metadata !"row_index", metadata !6, i32 56, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 170, i32 2, metadata !46, null}
!175 = metadata !{i32 786689, metadata !14, metadata !"weightRom", metadata !6, i32 16777416, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 200, i32 9, metadata !14, null}
!177 = metadata !{i32 786689, metadata !14, metadata !"NUMBER_OF_DAYS", metadata !6, i32 33554633, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 201, i32 7, metadata !14, null}
!179 = metadata !{i32 202, i32 2, metadata !180, null}
!180 = metadata !{i32 786443, metadata !14, i32 202, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 204, i32 2, metadata !180, null}
!182 = metadata !{i32 205, i32 2, metadata !180, null}
!183 = metadata !{i32 208, i32 15, metadata !184, null}
!184 = metadata !{i32 786443, metadata !180, i32 208, i32 2, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!185 = metadata !{i32 213, i32 15, metadata !186, null}
!186 = metadata !{i32 786443, metadata !180, i32 213, i32 2, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 208, i32 46, metadata !188, null}
!188 = metadata !{i32 786443, metadata !184, i32 208, i32 45, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!189 = metadata !{i32 208, i32 87, metadata !188, null}
!190 = metadata !{i32 209, i32 3, metadata !188, null}
!191 = metadata !{i32 210, i32 2, metadata !188, null}
!192 = metadata !{i32 208, i32 40, metadata !184, null}
!193 = metadata !{i32 786688, metadata !184, metadata !"i", metadata !6, i32 208, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 213, i32 42, metadata !195, null}
!195 = metadata !{i32 786443, metadata !186, i32 213, i32 41, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 213, i32 86, metadata !195, null}
!197 = metadata !{i32 214, i32 3, metadata !195, null}
!198 = metadata !{i32 216, i32 2, metadata !195, null}
!199 = metadata !{i32 213, i32 37, metadata !186, null}
!200 = metadata !{i32 786688, metadata !186, metadata !"i", metadata !6, i32 213, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 217, i32 1, metadata !180, null}
