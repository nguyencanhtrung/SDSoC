; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=2 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=5 type=[252 x float]*]
@.str4 = private unnamed_addr constant [11 x i8] c"OUTER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@bramA = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=3 type=[252 x float]*]
@bramB = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=3 type=[252 x float]*]
@.str5 = private unnamed_addr constant [11 x i8] c"INNER_LOOP\00", align 1 ; [#uses=3 type=[11 x i8]*]
@.str7 = private unnamed_addr constant [18 x i8] c"ACCUMULATION_LOOP\00", align 1 ; [#uses=3 type=[18 x i8]*]
@.str8 = private unnamed_addr constant [16 x i8] c"LAST_ACCUM_LOOP\00", align 1 ; [#uses=3 type=[16 x i8]*]
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

; [#uses=7]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=2]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=2]
declare i32 @_ssdm_SpecLoopFlatten(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
define i32 @correlation_accel_v1(i32 %number_of_days, i32 %number_of_indices, [2520000 x float]* %in_indices, [49995000 x float]* %out_correlation) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap([2520000 x float]* %in_indices) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([49995000 x float]* %out_correlation) nounwind, !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %acc_returnA = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnA}, metadata !56), !dbg !65 ; [debug line = 73:12] [debug variable = acc_returnA]
  %acc_returnB = alloca [6 x float], align 16     ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnB}, metadata !66), !dbg !67 ; [debug line = 74:12] [debug variable = acc_returnB]
  %acc_weight_returnSquareA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareA}, metadata !68), !dbg !69 ; [debug line = 75:12] [debug variable = acc_weight_returnSquareA]
  %acc_weight_returnA = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA}, metadata !70), !dbg !71 ; [debug line = 76:12] [debug variable = acc_weight_returnA]
  %acc_weight_returnSquareB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareB}, metadata !72), !dbg !73 ; [debug line = 77:12] [debug variable = acc_weight_returnSquareB]
  %acc_weight_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnB}, metadata !74), !dbg !75 ; [debug line = 78:12] [debug variable = acc_weight_returnB]
  %acc_weight_returnA_returnB = alloca [6 x float], align 16 ; [#uses=8 type=[6 x float]*]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !76), !dbg !77 ; [debug line = 79:12] [debug variable = acc_weight_returnA_returnB]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !78), !dbg !79 ; [debug line = 26:6] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !80), !dbg !81 ; [debug line = 27:6] [debug variable = number_of_indices]
  call void @llvm.dbg.value(metadata !{[2520000 x float]* %in_indices}, i64 0, metadata !82), !dbg !86 ; [debug line = 29:8] [debug variable = in_indices]
  call void @llvm.dbg.value(metadata !{[49995000 x float]* %out_correlation}, i64 0, metadata !87), !dbg !91 ; [debug line = 30:8] [debug variable = out_correlation]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !92 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface([2520000 x float]* %in_indices, [6 x i8]* @.str1, i32 0, i32 0, i32 0, i32 2520000, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([49995000 x float]* %out_correlation, [6 x i8]* @.str1, i32 0, i32 0, i32 0, i32 49995000, [1 x i8]* @.str, [7 x i8]* @.str2, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !93 ; [debug line = 41:1]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !94), !dbg !95 ; [debug line = 43:37] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !96), !dbg !97 ; [debug line = 44:43] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !98) nounwind, !dbg !103 ; [debug line = 201:7@50:2] [debug variable = NUMBER_OF_DAYS]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !104 ; [debug line = 204:2@50:2]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4, !dbg !106 ; [debug line = 205:2@50:2]
  br label %1, !dbg !107                          ; [debug line = 208:15@50:2]

; <label>:1                                       ; preds = %3, %0
  %tmp.i = phi float [ 1.000000e+00, %0 ], [ %tmp..i, %3 ] ; [#uses=1 type=float]
  %i.i = phi i8 [ 2, %0 ], [ %i.2, %3 ]           ; [#uses=3 type=i8]
  %exitcond.i = icmp eq i8 %i.i, -4, !dbg !107    ; [#uses=1 type=i1] [debug line = 208:15@50:2]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %.preheader.i, label %3, !dbg !107 ; [debug line = 208:15@50:2]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str9) nounwind, !dbg !109 ; [debug line = 208:46@50:2]
  %tmp..i = fmul float %tmp.i, 0x3FEE147AE0000000, !dbg !111 ; [#uses=2 type=float] [debug line = 209:3@50:2]
  %tmp.58.i = zext i8 %i.i to i64, !dbg !111      ; [#uses=1 type=i64] [debug line = 209:3@50:2]
  %weight_rom.addr.1 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp.58.i, !dbg !111 ; [#uses=1 type=float*] [debug line = 209:3@50:2]
  store float %tmp..i, float* %weight_rom.addr.1, align 4, !dbg !111 ; [debug line = 209:3@50:2]
  %i.2 = add i8 %i.i, 1, !dbg !112                ; [#uses=1 type=i8] [debug line = 208:40@50:2]
  call void @llvm.dbg.value(metadata !{i8 %i.2}, i64 0, metadata !113) nounwind, !dbg !112 ; [debug line = 208:40@50:2] [debug variable = i]
  br label %1, !dbg !112                          ; [debug line = 208:40@50:2]

.preheader.i:                                     ; preds = %5, %1
  %i1.i = phi i31 [ %i.3, %5 ], [ 2, %1 ]         ; [#uses=3 type=i31]
  %i1.i.cast = zext i31 %i1.i to i32, !dbg !114   ; [#uses=1 type=i32] [debug line = 213:15@50:2]
  %tmp.59.i = icmp slt i32 %i1.i.cast, %number_of_days, !dbg !114 ; [#uses=1 type=i1] [debug line = 213:15@50:2]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.59.i, label %5, label %weight_rom_init.exit, !dbg !114 ; [debug line = 213:15@50:2]

; <label>:5                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @.str10) nounwind, !dbg !116 ; [debug line = 213:42@50:2]
  %tmp.60.i = zext i31 %i1.i to i64, !dbg !118    ; [#uses=1 type=i64] [debug line = 214:3@50:2]
  %weight_rom.addr.2 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp.60.i, !dbg !118 ; [#uses=1 type=float*] [debug line = 214:3@50:2]
  %weight_rom.load = load float* %weight_rom.addr.2, align 4, !dbg !118 ; [#uses=1 type=float] [debug line = 214:3@50:2]
  %weight_rom.load.1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !118 ; [#uses=1 type=float] [debug line = 214:3@50:2]
  %tmp.61.i = fadd float %weight_rom.load.1, %weight_rom.load, !dbg !118 ; [#uses=1 type=float] [debug line = 214:3@50:2]
  store float %tmp.61.i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !118 ; [debug line = 214:3@50:2]
  %i.3 = add i31 %i1.i, 1, !dbg !119              ; [#uses=1 type=i31] [debug line = 213:37@50:2]
  call void @llvm.dbg.value(metadata !{i31 %i.3}, i64 0, metadata !120) nounwind, !dbg !119 ; [debug line = 213:37@50:2] [debug variable = i]
  br label %.preheader.i, !dbg !119               ; [debug line = 213:37@50:2]

weight_rom_init.exit:                             ; preds = %.preheader.i
  %tmp = add nsw i32 %number_of_indices, -1, !dbg !121 ; [#uses=1 type=i32] [debug line = 56:24]
  %tmp.1 = add nsw i32 %number_of_days, -1, !dbg !122 ; [#uses=2 type=i32] [debug line = 102:19]
  %tmp.2 = sitofp i32 %tmp.1 to float, !dbg !124  ; [#uses=2 type=float] [debug line = 149:65]
  br label %6, !dbg !121                          ; [debug line = 56:24]

; <label>:6                                       ; preds = %25, %weight_rom_init.exit
  %indvars.iv2 = phi i32 [ %indvars.iv.next3, %25 ], [ -1, %weight_rom_init.exit ], !dbg !125 ; [#uses=2 type=i32] [debug line = 56:61]
  %indvars.iv = phi i32 [ %indvars.iv.next, %25 ], [ 1, %weight_rom_init.exit ] ; [#uses=3 type=i32]
  %row_index = phi i31 [ %row_index.1, %25 ], [ 0, %weight_rom_init.exit ] ; [#uses=2 type=i31]
  %counter = phi i32 [ %counter.2, %25 ], [ 0, %weight_rom_init.exit ] ; [#uses=2 type=i32]
  %row_index.cast = zext i31 %row_index to i32, !dbg !125 ; [#uses=3 type=i32] [debug line = 56:61]
  %tmp.3 = icmp slt i32 %indvars.iv, %number_of_indices, !dbg !125 ; [#uses=1 type=i1] [debug line = 56:61]
  %smax = select i1 %tmp.3, i32 %number_of_indices, i32 %indvars.iv, !dbg !125 ; [#uses=1 type=i32] [debug line = 56:61]
  %tmp.4 = icmp slt i32 %row_index.cast, %tmp, !dbg !121 ; [#uses=1 type=i1] [debug line = 56:24]
  br i1 %tmp.4, label %7, label %27, !dbg !121    ; [debug line = 56:24]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str4) nounwind, !dbg !126 ; [debug line = 56:74]
  %tmp.7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str4) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 56:110]
  %tmp.5 = mul nsw i32 %row_index.cast, %number_of_days, !dbg !128 ; [#uses=1 type=i32] [debug line = 61:4]
  %tmp.6 = trunc i32 %number_of_days to i30, !dbg !128 ; [#uses=3 type=i30] [debug line = 61:4]
  %.add.i32.shr = zext i30 %tmp.6 to i32, !dbg !128 ; [#uses=2 type=i32] [debug line = 61:4]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %7
  %indvar = phi i30 [ 0, %7 ], [ %indvar.next, %burst.rd.body ] ; [#uses=4 type=i30]
  %indvar.cast3 = zext i30 %indvar to i32         ; [#uses=1 type=i32]
  %exitcond4 = icmp eq i30 %indvar, %tmp.6        ; [#uses=1 type=i1]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1073741823, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread.rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str11) nounwind ; [#uses=1 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecBurst([2520000 x float]* %in_indices, i32 1, i32 %.add.i32.shr) nounwind ; [#uses=0 type=i32]
  %10 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @str3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str2)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str1)
  %indvar.next = add i30 %indvar, 1               ; [#uses=1 type=i30]
  %in_indices.addr = add i32 %indvar.cast3, %tmp.5 ; [#uses=1 type=i32]
  %tmp.9 = sext i32 %in_indices.addr to i64, !dbg !128 ; [#uses=1 type=i64] [debug line = 61:4]
  %in_indices.addr.1 = getelementptr [2520000 x float]* %in_indices, i64 0, i64 %tmp.9, !dbg !128 ; [#uses=1 type=float*] [debug line = 61:4]
  %in_indices.load = load float* %in_indices.addr.1, align 4, !dbg !128 ; [#uses=1 type=float] [debug line = 61:4]
  %tmp. = zext i30 %indvar to i64, !dbg !128      ; [#uses=1 type=i64] [debug line = 61:4]
  %bramA.addr = getelementptr [252 x float]* @bramA, i64 0, i64 %tmp., !dbg !128 ; [#uses=1 type=float*] [debug line = 61:4]
  store float %in_indices.load, float* %bramA.addr, align 4, !dbg !128 ; [debug line = 61:4]
  %burstread.rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str11, i32 %burstread.rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  %tmp.13 = add i32 %smax, %indvars.iv2, !dbg !129 ; [#uses=1 type=i32] [debug line = 167:6]
  %counter.2 = add i32 %counter, %tmp.13, !dbg !129 ; [#uses=1 type=i32] [debug line = 167:6]
  call void @llvm.dbg.value(metadata !{i32 %counter.2}, i64 0, metadata !130), !dbg !129 ; [debug line = 167:6] [debug variable = counter]
  br label %11, !dbg !131                         ; [debug line = 66:41]

; <label>:11                                      ; preds = %23, %burst.rd.end
  %column_index.0.in = phi i32 [ %row_index.cast, %burst.rd.end ], [ %column_index, %23 ] ; [#uses=1 type=i32]
  %counter.1 = phi i32 [ %counter, %burst.rd.end ], [ %tmp.56, %23 ] ; [#uses=2 type=i32]
  %column_index = add nsw i32 %column_index.0.in, 1, !dbg !131 ; [#uses=3 type=i32] [debug line = 66:41]
  call void @llvm.dbg.value(metadata !{i32 %column_index}, i64 0, metadata !132), !dbg !131 ; [debug line = 66:41] [debug variable = column_index]
  %tmp.8 = icmp slt i32 %column_index, %number_of_indices, !dbg !131 ; [#uses=1 type=i1] [debug line = 66:41]
  br i1 %tmp.8, label %12, label %25, !dbg !131   ; [debug line = 66:41]

; <label>:12                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @.str5) nounwind, !dbg !133 ; [debug line = 66:93]
  %tmp.58 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @.str5) nounwind, !dbg !134 ; [#uses=1 type=i32] [debug line = 66:129]
  %tmp.10 = mul nsw i32 %column_index, %number_of_days, !dbg !135 ; [#uses=1 type=i32] [debug line = 68:6]
  br label %burst.rd.header8

burst.rd.header8:                                 ; preds = %burst.rd.body9, %12
  %indvar1 = phi i30 [ 0, %12 ], [ %indvar.next1, %burst.rd.body9 ] ; [#uses=4 type=i30]
  %indvar1.cast2 = zext i30 %indvar1 to i32       ; [#uses=1 type=i32]
  %exitcond2 = icmp eq i30 %indvar1, %tmp.6       ; [#uses=1 type=i1]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1073741823, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %burst.rd.end7.0, label %burst.rd.body9

burst.rd.body9:                                   ; preds = %burst.rd.header8
  %burstread.rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @.str15) nounwind ; [#uses=1 type=i32]
  %14 = call i32 (...)* @_ssdm_op_SpecBurst([2520000 x float]* %in_indices, i32 1, i32 %.add.i32.shr) nounwind ; [#uses=0 type=i32]
  %15 = call i32 (...)* @_ssdm_SpecLoopFlatten(i32 1, [1 x i8]* @str14) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @str13)
  call void (...)* @_ssdm_op_SpecLoopName([72 x i8]* @str12)
  %indvar.next1 = add i30 %indvar1, 1             ; [#uses=1 type=i30]
  %in_indices.addr2 = add i32 %indvar1.cast2, %tmp.10 ; [#uses=1 type=i32]
  %tmp.11 = sext i32 %in_indices.addr2 to i64, !dbg !135 ; [#uses=1 type=i64] [debug line = 68:6]
  %in_indices.addr.2 = getelementptr [2520000 x float]* %in_indices, i64 0, i64 %tmp.11, !dbg !135 ; [#uses=1 type=float*] [debug line = 68:6]
  %in_indices.load.1 = load float* %in_indices.addr.2, align 4, !dbg !135 ; [#uses=1 type=float] [debug line = 68:6]
  %tmp.12 = zext i30 %indvar1 to i64, !dbg !135   ; [#uses=1 type=i64] [debug line = 68:6]
  %bramB.addr = getelementptr [252 x float]* @bramB, i64 0, i64 %tmp.12, !dbg !135 ; [#uses=1 type=float*] [debug line = 68:6]
  store float %in_indices.load.1, float* %bramB.addr, align 4, !dbg !135 ; [debug line = 68:6]
  %burstread.rend18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @.str15, i32 %burstread.rbegin1) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header8

burst.rd.end7.0:                                  ; preds = %burst.rd.header8
  %acc_returnA.addr = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 0, !dbg !136 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr, align 16, !dbg !136 ; [debug line = 88:2]
  %acc_returnB.addr = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 0, !dbg !139 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr, align 16, !dbg !139 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 0, !dbg !140 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr, align 16, !dbg !140 ; [debug line = 90:7]
  %acc_weight_returnA.addr = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 0, !dbg !141 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr, align 16, !dbg !141 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 0, !dbg !142 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr, align 16, !dbg !142 ; [debug line = 92:7]
  %acc_weight_returnB.addr = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 0, !dbg !143 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr, align 16, !dbg !143 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0, !dbg !144 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr, align 16, !dbg !144 ; [debug line = 94:7]
  %acc_returnA.addr.6 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 1, !dbg !136 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr.6, align 4, !dbg !136 ; [debug line = 88:2]
  %acc_returnB.addr.6 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 1, !dbg !139 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr.6, align 4, !dbg !139 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr.6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 1, !dbg !140 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr.6, align 4, !dbg !140 ; [debug line = 90:7]
  %acc_weight_returnA.addr.6 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 1, !dbg !141 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr.6, align 4, !dbg !141 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr.6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 1, !dbg !142 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr.6, align 4, !dbg !142 ; [debug line = 92:7]
  %acc_weight_returnB.addr.6 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 1, !dbg !143 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr.6, align 4, !dbg !143 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr.6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1, !dbg !144 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr.6, align 4, !dbg !144 ; [debug line = 94:7]
  %acc_returnA.addr.7 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 2, !dbg !136 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr.7, align 8, !dbg !136 ; [debug line = 88:2]
  %acc_returnB.addr.7 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 2, !dbg !139 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr.7, align 8, !dbg !139 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr.7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 2, !dbg !140 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr.7, align 8, !dbg !140 ; [debug line = 90:7]
  %acc_weight_returnA.addr.7 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 2, !dbg !141 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr.7, align 8, !dbg !141 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr.7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 2, !dbg !142 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr.7, align 8, !dbg !142 ; [debug line = 92:7]
  %acc_weight_returnB.addr.7 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 2, !dbg !143 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr.7, align 8, !dbg !143 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr.7 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2, !dbg !144 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr.7, align 8, !dbg !144 ; [debug line = 94:7]
  %acc_returnA.addr.3 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 3, !dbg !136 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr.3, align 4, !dbg !136 ; [debug line = 88:2]
  %acc_returnB.addr.3 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 3, !dbg !139 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr.3, align 4, !dbg !139 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr.3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 3, !dbg !140 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr.3, align 4, !dbg !140 ; [debug line = 90:7]
  %acc_weight_returnA.addr.3 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 3, !dbg !141 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr.3, align 4, !dbg !141 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr.3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 3, !dbg !142 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr.3, align 4, !dbg !142 ; [debug line = 92:7]
  %acc_weight_returnB.addr.3 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 3, !dbg !143 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr.3, align 4, !dbg !143 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr.3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3, !dbg !144 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr.3, align 4, !dbg !144 ; [debug line = 94:7]
  %acc_returnA.addr.4 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 4, !dbg !136 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr.4, align 16, !dbg !136 ; [debug line = 88:2]
  %acc_returnB.addr.4 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 4, !dbg !139 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr.4, align 16, !dbg !139 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr.4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 4, !dbg !140 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr.4, align 16, !dbg !140 ; [debug line = 90:7]
  %acc_weight_returnA.addr.4 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 4, !dbg !141 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr.4, align 16, !dbg !141 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr.4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 4, !dbg !142 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr.4, align 16, !dbg !142 ; [debug line = 92:7]
  %acc_weight_returnB.addr.4 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 4, !dbg !143 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr.4, align 16, !dbg !143 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr.4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4, !dbg !144 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr.4, align 16, !dbg !144 ; [debug line = 94:7]
  %acc_returnA.addr.5 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 5, !dbg !136 ; [#uses=1 type=float*] [debug line = 88:2]
  store float 0.000000e+00, float* %acc_returnA.addr.5, align 4, !dbg !136 ; [debug line = 88:2]
  %acc_returnB.addr.5 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 5, !dbg !139 ; [#uses=1 type=float*] [debug line = 89:7]
  store float 0.000000e+00, float* %acc_returnB.addr.5, align 4, !dbg !139 ; [debug line = 89:7]
  %acc_weight_returnSquareA.addr.5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 5, !dbg !140 ; [#uses=1 type=float*] [debug line = 90:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareA.addr.5, align 4, !dbg !140 ; [debug line = 90:7]
  %acc_weight_returnA.addr.5 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 5, !dbg !141 ; [#uses=1 type=float*] [debug line = 91:7]
  store float 0.000000e+00, float* %acc_weight_returnA.addr.5, align 4, !dbg !141 ; [debug line = 91:7]
  %acc_weight_returnSquareB.addr.5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 5, !dbg !142 ; [#uses=1 type=float*] [debug line = 92:7]
  store float 0.000000e+00, float* %acc_weight_returnSquareB.addr.5, align 4, !dbg !142 ; [debug line = 92:7]
  %acc_weight_returnB.addr.5 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 5, !dbg !143 ; [#uses=1 type=float*] [debug line = 93:7]
  store float 0.000000e+00, float* %acc_weight_returnB.addr.5, align 4, !dbg !143 ; [debug line = 93:7]
  %acc_weight_returnA_returnB.addr.5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5, !dbg !144 ; [#uses=1 type=float*] [debug line = 94:7]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB.addr.5, align 4, !dbg !144 ; [debug line = 94:7]
  br label %.preheader, !dbg !122                 ; [debug line = 102:19]

.preheader:                                       ; preds = %16, %burst.rd.end7.0
  %i1 = phi i31 [ %i, %16 ], [ 0, %burst.rd.end7.0 ] ; [#uses=4 type=i31]
  %i1.cast = zext i31 %i1 to i32, !dbg !122       ; [#uses=1 type=i32] [debug line = 102:19]
  %tmp.14 = icmp slt i32 %i1.cast, %tmp.1, !dbg !122 ; [#uses=1 type=i1] [debug line = 102:19]
  br i1 %tmp.14, label %16, label %18, !dbg !122  ; [debug line = 102:19]

; <label>:16                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @.str7) nounwind, !dbg !145 ; [debug line = 102:50]
  %tmp.59 = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @.str7) nounwind, !dbg !147 ; [#uses=1 type=i32] [debug line = 102:93]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !148 ; [debug line = 103:1]
  %tmp.15 = zext i31 %i1 to i64, !dbg !149        ; [#uses=2 type=i64] [debug line = 105:20]
  %bramA.addr.1 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp.15, !dbg !149 ; [#uses=1 type=float*] [debug line = 105:20]
  %bramA.load = load float* %bramA.addr.1, align 4, !dbg !149 ; [#uses=1 type=float] [debug line = 105:20]
  %i = add i31 %i1, 1, !dbg !149                  ; [#uses=2 type=i31] [debug line = 105:20]
  %tmp.16 = zext i31 %i to i64, !dbg !149         ; [#uses=3 type=i64] [debug line = 105:20]
  %bramA.addr.2 = getelementptr inbounds [252 x float]* @bramA, i64 0, i64 %tmp.16, !dbg !149 ; [#uses=1 type=float*] [debug line = 105:20]
  %bramA.load.1 = load float* %bramA.addr.2, align 4, !dbg !149 ; [#uses=1 type=float] [debug line = 105:20]
  %tmp.17 = fdiv float %bramA.load, %bramA.load.1, !dbg !149 ; [#uses=1 type=float] [debug line = 105:20]
  %lnReturnA = call float @llvm.log.f32(float %tmp.17), !dbg !149 ; [#uses=5 type=float] [debug line = 105:20]
  call void @llvm.dbg.value(metadata !{float %lnReturnA}, i64 0, metadata !150), !dbg !149 ; [debug line = 105:20] [debug variable = lnReturnA]
  %bramB.addr.1 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp.15, !dbg !151 ; [#uses=1 type=float*] [debug line = 106:25]
  %bramB.load = load float* %bramB.addr.1, align 4, !dbg !151 ; [#uses=1 type=float] [debug line = 106:25]
  %bramB.addr.2 = getelementptr inbounds [252 x float]* @bramB, i64 0, i64 %tmp.16, !dbg !151 ; [#uses=1 type=float*] [debug line = 106:25]
  %bramB.load.1 = load float* %bramB.addr.2, align 4, !dbg !151 ; [#uses=1 type=float] [debug line = 106:25]
  %tmp.18 = fdiv float %bramB.load, %bramB.load.1, !dbg !151 ; [#uses=1 type=float] [debug line = 106:25]
  %lnReturnB = call float @llvm.log.f32(float %tmp.18), !dbg !151 ; [#uses=5 type=float] [debug line = 106:25]
  call void @llvm.dbg.value(metadata !{float %lnReturnB}, i64 0, metadata !152), !dbg !151 ; [debug line = 106:25] [debug variable = lnReturnB]
  %weight_rom.addr = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp.16, !dbg !153 ; [#uses=1 type=float*] [debug line = 107:37]
  %weight = load float* %weight_rom.addr, align 4, !dbg !153 ; [#uses=5 type=float] [debug line = 107:37]
  call void @llvm.dbg.value(metadata !{float %weight}, i64 0, metadata !154), !dbg !153 ; [debug line = 107:37] [debug variable = weight]
  %tmp.19 = urem i31 %i1, 6, !dbg !155            ; [#uses=1 type=i31] [debug line = 110:7]
  %tmp.20 = zext i31 %tmp.19 to i64, !dbg !155    ; [#uses=7 type=i64] [debug line = 110:7]
  %acc_returnA.addr.1 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp.20, !dbg !155 ; [#uses=2 type=float*] [debug line = 110:7]
  %acc_returnA.load = load float* %acc_returnA.addr.1, align 4, !dbg !155 ; [#uses=1 type=float] [debug line = 110:7]
  %tmp.21 = fadd float %acc_returnA.load, %lnReturnA, !dbg !155 ; [#uses=1 type=float] [debug line = 110:7]
  store float %tmp.21, float* %acc_returnA.addr.1, align 4, !dbg !155 ; [debug line = 110:7]
  %acc_returnB.addr.1 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp.20, !dbg !156 ; [#uses=2 type=float*] [debug line = 111:7]
  %acc_returnB.load = load float* %acc_returnB.addr.1, align 4, !dbg !156 ; [#uses=1 type=float] [debug line = 111:7]
  %tmp.22 = fadd float %acc_returnB.load, %lnReturnB, !dbg !156 ; [#uses=1 type=float] [debug line = 111:7]
  store float %tmp.22, float* %acc_returnB.addr.1, align 4, !dbg !156 ; [debug line = 111:7]
  %tmp.23 = fmul float %lnReturnA, %lnReturnA, !dbg !157 ; [#uses=1 type=float] [debug line = 114:7]
  %tmp.24 = fmul float %tmp.23, %weight, !dbg !157 ; [#uses=1 type=float] [debug line = 114:7]
  %acc_weight_returnSquareA.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp.20, !dbg !157 ; [#uses=2 type=float*] [debug line = 114:7]
  %acc_weight_returnSquareA.load = load float* %acc_weight_returnSquareA.addr.1, align 4, !dbg !157 ; [#uses=1 type=float] [debug line = 114:7]
  %tmp.25 = fadd float %acc_weight_returnSquareA.load, %tmp.24, !dbg !157 ; [#uses=1 type=float] [debug line = 114:7]
  store float %tmp.25, float* %acc_weight_returnSquareA.addr.1, align 4, !dbg !157 ; [debug line = 114:7]
  %tmp.26 = fmul float %lnReturnB, %lnReturnB, !dbg !158 ; [#uses=1 type=float] [debug line = 115:7]
  %tmp.27 = fmul float %tmp.26, %weight, !dbg !158 ; [#uses=1 type=float] [debug line = 115:7]
  %acc_weight_returnSquareB.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp.20, !dbg !158 ; [#uses=2 type=float*] [debug line = 115:7]
  %acc_weight_returnSquareB.load = load float* %acc_weight_returnSquareB.addr.1, align 4, !dbg !158 ; [#uses=1 type=float] [debug line = 115:7]
  %tmp.28 = fadd float %acc_weight_returnSquareB.load, %tmp.27, !dbg !158 ; [#uses=1 type=float] [debug line = 115:7]
  store float %tmp.28, float* %acc_weight_returnSquareB.addr.1, align 4, !dbg !158 ; [debug line = 115:7]
  %tmp.29 = fmul float %lnReturnA, %weight, !dbg !159 ; [#uses=1 type=float] [debug line = 118:7]
  %acc_weight_returnA.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp.20, !dbg !159 ; [#uses=2 type=float*] [debug line = 118:7]
  %acc_weight_returnA.load = load float* %acc_weight_returnA.addr.1, align 4, !dbg !159 ; [#uses=1 type=float] [debug line = 118:7]
  %tmp.30 = fadd float %acc_weight_returnA.load, %tmp.29, !dbg !159 ; [#uses=1 type=float] [debug line = 118:7]
  store float %tmp.30, float* %acc_weight_returnA.addr.1, align 4, !dbg !159 ; [debug line = 118:7]
  %tmp.31 = fmul float %lnReturnB, %weight, !dbg !160 ; [#uses=1 type=float] [debug line = 119:7]
  %acc_weight_returnB.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp.20, !dbg !160 ; [#uses=2 type=float*] [debug line = 119:7]
  %acc_weight_returnB.load = load float* %acc_weight_returnB.addr.1, align 4, !dbg !160 ; [#uses=1 type=float] [debug line = 119:7]
  %tmp.32 = fadd float %acc_weight_returnB.load, %tmp.31, !dbg !160 ; [#uses=1 type=float] [debug line = 119:7]
  store float %tmp.32, float* %acc_weight_returnB.addr.1, align 4, !dbg !160 ; [debug line = 119:7]
  %tmp.33 = fmul float %lnReturnA, %lnReturnB, !dbg !161 ; [#uses=1 type=float] [debug line = 122:7]
  %tmp.34 = fmul float %tmp.33, %weight, !dbg !161 ; [#uses=1 type=float] [debug line = 122:7]
  %acc_weight_returnA_returnB.addr.1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp.20, !dbg !161 ; [#uses=2 type=float*] [debug line = 122:7]
  %acc_weight_returnA_returnB.load = load float* %acc_weight_returnA_returnB.addr.1, align 4, !dbg !161 ; [#uses=1 type=float] [debug line = 122:7]
  %tmp.35 = fadd float %acc_weight_returnA_returnB.load, %tmp.34, !dbg !161 ; [#uses=1 type=float] [debug line = 122:7]
  store float %tmp.35, float* %acc_weight_returnA_returnB.addr.1, align 4, !dbg !161 ; [debug line = 122:7]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @.str7, i32 %tmp.59) nounwind, !dbg !162 ; [#uses=0 type=i32] [debug line = 124:6]
  call void @llvm.dbg.value(metadata !{i31 %i}, i64 0, metadata !163), !dbg !164 ; [debug line = 102:45] [debug variable = i]
  br label %.preheader, !dbg !164                 ; [debug line = 102:45]

; <label>:18                                      ; preds = %.preheader
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !165 ; [#uses=3 type=float] [debug line = 133:38]
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !166), !dbg !165 ; [debug line = 133:38] [debug variable = sum_weight]
  br label %19, !dbg !167                         ; [debug line = 135:19]

; <label>:19                                      ; preds = %21, %18
  %sum_returnA = phi float [ 0.000000e+00, %18 ], [ %sum_returnA.1, %21 ] ; [#uses=2 type=float]
  %sum_returnB = phi float [ 0.000000e+00, %18 ], [ %sum_returnB.1, %21 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareA = phi float [ 0.000000e+00, %18 ], [ %sum_weight_returnSquareA.1, %21 ] ; [#uses=2 type=float]
  %sum_weight_returnA = phi float [ 0.000000e+00, %18 ], [ %sum_weight_returnA.1, %21 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareB = phi float [ 0.000000e+00, %18 ], [ %sum_weight_returnSquareB.1, %21 ] ; [#uses=2 type=float]
  %sum_weight_returnB = phi float [ 0.000000e+00, %18 ], [ %sum_weight_returnB.1, %21 ] ; [#uses=2 type=float]
  %sum_weight_returnA_returnB = phi float [ 0.000000e+00, %18 ], [ %sum_weight_returnA_returnB.1, %21 ] ; [#uses=2 type=float]
  %i2 = phi i3 [ 0, %18 ], [ %i.1, %21 ]          ; [#uses=3 type=i3]
  %exitcond = icmp eq i3 %i2, -2, !dbg !167       ; [#uses=1 type=i1] [debug line = 135:19]
  %20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %23, label %21, !dbg !167 ; [debug line = 135:19]

; <label>:21                                      ; preds = %19
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str8) nounwind, !dbg !169 ; [debug line = 135:33]
  %tmp.60 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str8) nounwind, !dbg !171 ; [#uses=1 type=i32] [debug line = 135:74]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !172 ; [debug line = 136:1]
  %tmp.57 = zext i3 %i2 to i64, !dbg !173         ; [#uses=7 type=i64] [debug line = 137:2]
  %acc_returnA.addr.2 = getelementptr inbounds [6 x float]* %acc_returnA, i64 0, i64 %tmp.57, !dbg !173 ; [#uses=1 type=float*] [debug line = 137:2]
  %acc_returnA.load.1 = load float* %acc_returnA.addr.2, align 4, !dbg !173 ; [#uses=1 type=float] [debug line = 137:2]
  %sum_returnA.1 = fadd float %sum_returnA, %acc_returnA.load.1, !dbg !173 ; [#uses=1 type=float] [debug line = 137:2]
  call void @llvm.dbg.value(metadata !{float %sum_returnA.1}, i64 0, metadata !174), !dbg !173 ; [debug line = 137:2] [debug variable = sum_returnA]
  %acc_returnB.addr.2 = getelementptr inbounds [6 x float]* %acc_returnB, i64 0, i64 %tmp.57, !dbg !175 ; [#uses=1 type=float*] [debug line = 138:7]
  %acc_returnB.load.1 = load float* %acc_returnB.addr.2, align 4, !dbg !175 ; [#uses=1 type=float] [debug line = 138:7]
  %sum_returnB.1 = fadd float %sum_returnB, %acc_returnB.load.1, !dbg !175 ; [#uses=1 type=float] [debug line = 138:7]
  call void @llvm.dbg.value(metadata !{float %sum_returnB.1}, i64 0, metadata !176), !dbg !175 ; [debug line = 138:7] [debug variable = sum_returnB]
  %acc_weight_returnSquareA.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i64 0, i64 %tmp.57, !dbg !177 ; [#uses=1 type=float*] [debug line = 139:7]
  %acc_weight_returnSquareA.load.1 = load float* %acc_weight_returnSquareA.addr.2, align 4, !dbg !177 ; [#uses=1 type=float] [debug line = 139:7]
  %sum_weight_returnSquareA.1 = fadd float %sum_weight_returnSquareA, %acc_weight_returnSquareA.load.1, !dbg !177 ; [#uses=1 type=float] [debug line = 139:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareA.1}, i64 0, metadata !178), !dbg !177 ; [debug line = 139:7] [debug variable = sum_weight_returnSquareA]
  %acc_weight_returnA.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i64 0, i64 %tmp.57, !dbg !179 ; [#uses=1 type=float*] [debug line = 140:7]
  %acc_weight_returnA.load.1 = load float* %acc_weight_returnA.addr.2, align 4, !dbg !179 ; [#uses=1 type=float] [debug line = 140:7]
  %sum_weight_returnA.1 = fadd float %sum_weight_returnA, %acc_weight_returnA.load.1, !dbg !179 ; [#uses=1 type=float] [debug line = 140:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA.1}, i64 0, metadata !180), !dbg !179 ; [debug line = 140:7] [debug variable = sum_weight_returnA]
  %acc_weight_returnSquareB.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i64 0, i64 %tmp.57, !dbg !181 ; [#uses=1 type=float*] [debug line = 141:7]
  %acc_weight_returnSquareB.load.1 = load float* %acc_weight_returnSquareB.addr.2, align 4, !dbg !181 ; [#uses=1 type=float] [debug line = 141:7]
  %sum_weight_returnSquareB.1 = fadd float %sum_weight_returnSquareB, %acc_weight_returnSquareB.load.1, !dbg !181 ; [#uses=1 type=float] [debug line = 141:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareB.1}, i64 0, metadata !182), !dbg !181 ; [debug line = 141:7] [debug variable = sum_weight_returnSquareB]
  %acc_weight_returnB.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i64 0, i64 %tmp.57, !dbg !183 ; [#uses=1 type=float*] [debug line = 142:7]
  %acc_weight_returnB.load.1 = load float* %acc_weight_returnB.addr.2, align 4, !dbg !183 ; [#uses=1 type=float] [debug line = 142:7]
  %sum_weight_returnB.1 = fadd float %sum_weight_returnB, %acc_weight_returnB.load.1, !dbg !183 ; [#uses=1 type=float] [debug line = 142:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnB.1}, i64 0, metadata !184), !dbg !183 ; [debug line = 142:7] [debug variable = sum_weight_returnB]
  %acc_weight_returnA_returnB.addr.2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp.57, !dbg !185 ; [#uses=1 type=float*] [debug line = 143:7]
  %acc_weight_returnA_returnB.load.1 = load float* %acc_weight_returnA_returnB.addr.2, align 4, !dbg !185 ; [#uses=1 type=float] [debug line = 143:7]
  %sum_weight_returnA_returnB.1 = fadd float %sum_weight_returnA_returnB, %acc_weight_returnA_returnB.load.1, !dbg !185 ; [#uses=1 type=float] [debug line = 143:7]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_returnB.1}, i64 0, metadata !186), !dbg !185 ; [debug line = 143:7] [debug variable = sum_weight_returnA_returnB]
  %22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str8, i32 %tmp.60) nounwind, !dbg !187 ; [#uses=0 type=i32] [debug line = 144:6]
  %i.1 = add i3 %i2, 1, !dbg !188                 ; [#uses=1 type=i3] [debug line = 135:28]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !189), !dbg !188 ; [debug line = 135:28] [debug variable = i]
  br label %19, !dbg !188                         ; [debug line = 135:28]

; <label>:23                                      ; preds = %19
  %sum_weight_returnA_returnB.lcssa = phi float [ %sum_weight_returnA_returnB, %19 ] ; [#uses=1 type=float]
  %sum_weight_returnB.lcssa = phi float [ %sum_weight_returnB, %19 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareB.lcssa = phi float [ %sum_weight_returnSquareB, %19 ] ; [#uses=1 type=float]
  %sum_weight_returnA.lcssa = phi float [ %sum_weight_returnA, %19 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareA.lcssa = phi float [ %sum_weight_returnSquareA, %19 ] ; [#uses=1 type=float]
  %sum_returnB.lcssa = phi float [ %sum_returnB, %19 ] ; [#uses=1 type=float]
  %sum_returnA.lcssa = phi float [ %sum_returnA, %19 ] ; [#uses=1 type=float]
  %meanReturn1 = fdiv float %sum_returnA.lcssa, %tmp.2, !dbg !124 ; [#uses=5 type=float] [debug line = 149:65]
  call void @llvm.dbg.value(metadata !{float %meanReturn1}, i64 0, metadata !190), !dbg !124 ; [debug line = 149:65] [debug variable = meanReturn1]
  %meanReturn2 = fdiv float %sum_returnB.lcssa, %tmp.2, !dbg !191 ; [#uses=5 type=float] [debug line = 150:65]
  call void @llvm.dbg.value(metadata !{float %meanReturn2}, i64 0, metadata !192), !dbg !191 ; [debug line = 150:65] [debug variable = meanReturn2]
  %tmp.36 = fmul float %meanReturn1, 2.000000e+00, !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.37 = fmul float %tmp.36, %sum_weight_returnA.lcssa, !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.38 = fsub float %sum_weight_returnSquareA.lcssa, %tmp.37, !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.39 = fdiv float %tmp.38, %sum_weight, !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.40 = fmul float %meanReturn1, %meanReturn1, !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  %tmp.41 = fadd float %tmp.39, %tmp.40, !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  %volatilityA = call float @llvm.sqrt.f32(float %tmp.41), !dbg !193 ; [#uses=1 type=float] [debug line = 152:26]
  call void @llvm.dbg.value(metadata !{float %volatilityA}, i64 0, metadata !194), !dbg !193 ; [debug line = 152:26] [debug variable = volatilityA]
  %tmp.42 = fmul float %meanReturn2, 2.000000e+00, !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.43 = fmul float %tmp.42, %sum_weight_returnB.lcssa, !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.44 = fsub float %sum_weight_returnSquareB.lcssa, %tmp.43, !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.45 = fdiv float %tmp.44, %sum_weight, !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.46 = fmul float %meanReturn2, %meanReturn2, !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  %tmp.47 = fadd float %tmp.45, %tmp.46, !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  %volatilityB = call float @llvm.sqrt.f32(float %tmp.47), !dbg !195 ; [#uses=1 type=float] [debug line = 155:26]
  call void @llvm.dbg.value(metadata !{float %volatilityB}, i64 0, metadata !196), !dbg !195 ; [debug line = 155:26] [debug variable = volatilityB]
  %tmp.48 = fmul float %meanReturn1, %sum_weight_returnB.lcssa, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.49 = fsub float %sum_weight_returnA_returnB.lcssa, %tmp.48, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.50 = fmul float %meanReturn2, %sum_weight_returnA.lcssa, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.51 = fsub float %tmp.49, %tmp.50, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.52 = fdiv float %tmp.51, %sum_weight, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  %tmp.53 = fmul float %meanReturn1, %meanReturn2, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  %covariance = fadd float %tmp.52, %tmp.53, !dbg !197 ; [#uses=1 type=float] [debug line = 161:38]
  call void @llvm.dbg.value(metadata !{float %covariance}, i64 0, metadata !198), !dbg !197 ; [debug line = 161:38] [debug variable = covariance]
  %tmp.54 = fmul float %volatilityA, %volatilityB, !dbg !199 ; [#uses=1 type=float] [debug line = 163:6]
  %corr_temp = fdiv float %covariance, %tmp.54, !dbg !199 ; [#uses=1 type=float] [debug line = 163:6]
  call void @llvm.dbg.value(metadata !{float %corr_temp}, i64 0, metadata !200), !dbg !199 ; [debug line = 163:6] [debug variable = corr_temp]
  %tmp.55 = sext i32 %counter.1 to i64, !dbg !201 ; [#uses=1 type=i64] [debug line = 165:6]
  %out_correlation.addr = getelementptr [49995000 x float]* %out_correlation, i64 0, i64 %tmp.55, !dbg !201 ; [#uses=1 type=float*] [debug line = 165:6]
  store float %corr_temp, float* %out_correlation.addr, align 4, !dbg !201 ; [debug line = 165:6]
  %tmp.56 = add nsw i32 %counter.1, 1, !dbg !129  ; [#uses=1 type=i32] [debug line = 167:6]
  %24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str5, i32 %tmp.58) nounwind, !dbg !202 ; [#uses=0 type=i32] [debug line = 168:5]
  br label %11, !dbg !203                         ; [debug line = 66:77]

; <label>:25                                      ; preds = %11
  %26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @.str4, i32 %tmp.7) nounwind, !dbg !204 ; [#uses=0 type=i32] [debug line = 169:3]
  %row_index.1 = add i31 %row_index, 1, !dbg !125 ; [#uses=1 type=i31] [debug line = 56:61]
  call void @llvm.dbg.value(metadata !{i31 %row_index.1}, i64 0, metadata !205), !dbg !125 ; [debug line = 56:61] [debug variable = row_index]
  %indvars.iv.next = add i32 %indvars.iv, 1, !dbg !125 ; [#uses=1 type=i32] [debug line = 56:61]
  %indvars.iv.next3 = add i32 %indvars.iv2, -1, !dbg !125 ; [#uses=1 type=i32] [debug line = 56:61]
  br label %6, !dbg !125                          ; [debug line = 56:61]

; <label>:27                                      ; preds = %6
  ret i32 0, !dbg !206                            ; [debug line = 170:2]
}

; [#uses=5]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls/correlation_accel_v1/solution/.autopilot/db/correlation_accel_v1.pragma.2.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !16, metadata !17, metadata !18, metadata !20, metadata !23, metadata !24, metadata !25, metadata !27}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"bramB", metadata !"bramB", metadata !"", metadata !5, i32 59, metadata !13, i32 1, i32 1, [252 x float]* @bramB} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"correlation_accel_v1", metadata !"correlation_accel_v1", metadata !"_Z20correlation_accel_v1iiPfS_", metadata !5, i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 32} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls/src/correlation_accel_v1.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !9, metadata !9}
!8 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8064, i64 32, i32 0, i32 0, metadata !10, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 251}      ; [ DW_TAG_subrange_type ]
!16 = metadata !{i32 786484, i32 0, metadata !4, metadata !"weight_rom", metadata !"weight_rom", metadata !"", metadata !5, i32 49, metadata !13, i32 1, i32 1, [252 x float]* @weight_rom} ; [ DW_TAG_variable ]
!17 = metadata !{i32 786484, i32 0, metadata !4, metadata !"bramA", metadata !"bramA", metadata !"", metadata !5, i32 58, metadata !13, i32 1, i32 1, [252 x float]* @bramA} ; [ DW_TAG_variable ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !19, i32 157, metadata !8, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 346, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !21, i32 344, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 347, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 348, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 27, metadata !8, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver1/correlation_ver1_linux/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!27 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !26, i32 31, metadata !8, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"number_of_days", metadata !32, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 0, i32 0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"number_of_indices", metadata !32, metadata !"int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"in_indices", metadata !42, metadata !"float", i32 0, i32 31}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 2519999, i32 1}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"out_correlation", metadata !48, metadata !"float", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 49994999, i32 1}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"return", metadata !54, metadata !"int", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 1, i32 0}
!56 = metadata !{i32 786688, metadata !57, metadata !"acc_returnA", metadata !5, i32 73, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 786443, metadata !58, i32 66, i32 92, metadata !5, i32 4} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 786443, metadata !59, i32 66, i32 5, metadata !5, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786443, metadata !60, i32 56, i32 73, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !61, i32 56, i32 3, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !4, i32 32, i32 1, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !10, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ]
!65 = metadata !{i32 73, i32 12, metadata !57, null}
!66 = metadata !{i32 786688, metadata !57, metadata !"acc_returnB", metadata !5, i32 74, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 74, i32 12, metadata !57, null}
!68 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnSquareA", metadata !5, i32 75, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 75, i32 12, metadata !57, null}
!70 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnA", metadata !5, i32 76, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 76, i32 12, metadata !57, null}
!72 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnSquareB", metadata !5, i32 77, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 77, i32 12, metadata !57, null}
!74 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnB", metadata !5, i32 78, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 78, i32 12, metadata !57, null}
!76 = metadata !{i32 786688, metadata !57, metadata !"acc_weight_returnA_returnB", metadata !5, i32 79, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 79, i32 12, metadata !57, null}
!78 = metadata !{i32 786689, metadata !4, metadata !"number_of_days", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 26, i32 6, metadata !4, null}
!80 = metadata !{i32 786689, metadata !4, metadata !"number_of_indices", metadata !5, i32 33554459, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 27, i32 6, metadata !4, null}
!82 = metadata !{i32 786689, metadata !4, metadata !"in_indices", null, i32 29, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640000, i64 32, i32 0, i32 0, metadata !10, metadata !84, i32 0, i32 0} ; [ DW_TAG_array_type ]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 2519999}  ; [ DW_TAG_subrange_type ]
!86 = metadata !{i32 29, i32 8, metadata !4, null}
!87 = metadata !{i32 786689, metadata !4, metadata !"out_correlation", null, i32 30, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1599840000, i64 32, i32 0, i32 0, metadata !10, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 49994999} ; [ DW_TAG_subrange_type ]
!91 = metadata !{i32 30, i32 8, metadata !4, null}
!92 = metadata !{i32 34, i32 1, metadata !61, null}
!93 = metadata !{i32 41, i32 1, metadata !61, null}
!94 = metadata !{i32 786688, metadata !61, metadata !"NUMBER_OF_DAYS", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 43, i32 37, metadata !61, null}
!96 = metadata !{i32 786688, metadata !61, metadata !"NUMBER_OF_INDICES", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 44, i32 43, metadata !61, null}
!98 = metadata !{i32 786689, metadata !99, metadata !"NUMBER_OF_DAYS", metadata !5, i32 33554633, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 786478, i32 0, metadata !5, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", metadata !5, i32 199, metadata !100, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 202} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !9, metadata !8}
!102 = metadata !{i32 50, i32 2, metadata !61, null}
!103 = metadata !{i32 201, i32 7, metadata !99, metadata !102}
!104 = metadata !{i32 204, i32 2, metadata !105, metadata !102}
!105 = metadata !{i32 786443, metadata !99, i32 202, i32 1, metadata !5, i32 11} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 205, i32 2, metadata !105, metadata !102}
!107 = metadata !{i32 208, i32 15, metadata !108, metadata !102}
!108 = metadata !{i32 786443, metadata !105, i32 208, i32 2, metadata !5, i32 12} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 208, i32 46, metadata !110, metadata !102}
!110 = metadata !{i32 786443, metadata !108, i32 208, i32 45, metadata !5, i32 13} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 209, i32 3, metadata !110, metadata !102}
!112 = metadata !{i32 208, i32 40, metadata !108, metadata !102}
!113 = metadata !{i32 786688, metadata !108, metadata !"i", metadata !5, i32 208, metadata !8, i32 0, metadata !102} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 213, i32 15, metadata !115, metadata !102}
!115 = metadata !{i32 786443, metadata !105, i32 213, i32 2, metadata !5, i32 14} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 213, i32 42, metadata !117, metadata !102}
!117 = metadata !{i32 786443, metadata !115, i32 213, i32 41, metadata !5, i32 15} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 214, i32 3, metadata !117, metadata !102}
!119 = metadata !{i32 213, i32 37, metadata !115, metadata !102}
!120 = metadata !{i32 786688, metadata !115, metadata !"i", metadata !5, i32 213, metadata !8, i32 0, metadata !102} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 56, i32 24, metadata !60, null}
!122 = metadata !{i32 102, i32 19, metadata !123, null}
!123 = metadata !{i32 786443, metadata !57, i32 102, i32 6, metadata !5, i32 7} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 149, i32 65, metadata !57, null}
!125 = metadata !{i32 56, i32 61, metadata !60, null}
!126 = metadata !{i32 56, i32 74, metadata !59, null}
!127 = metadata !{i32 56, i32 110, metadata !59, null}
!128 = metadata !{i32 61, i32 4, metadata !59, null}
!129 = metadata !{i32 167, i32 6, metadata !57, null}
!130 = metadata !{i32 786688, metadata !61, metadata !"counter", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 66, i32 41, metadata !58, null}
!132 = metadata !{i32 786688, metadata !58, metadata !"column_index", metadata !5, i32 66, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 66, i32 93, metadata !57, null}
!134 = metadata !{i32 66, i32 129, metadata !57, null}
!135 = metadata !{i32 68, i32 6, metadata !57, null}
!136 = metadata !{i32 88, i32 2, metadata !137, null}
!137 = metadata !{i32 786443, metadata !138, i32 86, i32 32, metadata !5, i32 6} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !57, i32 86, i32 6, metadata !5, i32 5} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 89, i32 7, metadata !137, null}
!140 = metadata !{i32 90, i32 7, metadata !137, null}
!141 = metadata !{i32 91, i32 7, metadata !137, null}
!142 = metadata !{i32 92, i32 7, metadata !137, null}
!143 = metadata !{i32 93, i32 7, metadata !137, null}
!144 = metadata !{i32 94, i32 7, metadata !137, null}
!145 = metadata !{i32 102, i32 50, metadata !146, null}
!146 = metadata !{i32 786443, metadata !123, i32 102, i32 49, metadata !5, i32 8} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 102, i32 93, metadata !146, null}
!148 = metadata !{i32 103, i32 1, metadata !146, null}
!149 = metadata !{i32 105, i32 20, metadata !146, null}
!150 = metadata !{i32 786688, metadata !146, metadata !"lnReturnA", metadata !5, i32 105, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 106, i32 25, metadata !146, null}
!152 = metadata !{i32 786688, metadata !146, metadata !"lnReturnB", metadata !5, i32 106, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!153 = metadata !{i32 107, i32 37, metadata !146, null}
!154 = metadata !{i32 786688, metadata !146, metadata !"weight", metadata !5, i32 107, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!155 = metadata !{i32 110, i32 7, metadata !146, null}
!156 = metadata !{i32 111, i32 7, metadata !146, null}
!157 = metadata !{i32 114, i32 7, metadata !146, null}
!158 = metadata !{i32 115, i32 7, metadata !146, null}
!159 = metadata !{i32 118, i32 7, metadata !146, null}
!160 = metadata !{i32 119, i32 7, metadata !146, null}
!161 = metadata !{i32 122, i32 7, metadata !146, null}
!162 = metadata !{i32 124, i32 6, metadata !146, null}
!163 = metadata !{i32 786688, metadata !123, metadata !"i", metadata !5, i32 102, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 102, i32 45, metadata !123, null}
!165 = metadata !{i32 133, i32 38, metadata !57, null}
!166 = metadata !{i32 786688, metadata !57, metadata !"sum_weight", metadata !5, i32 133, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!167 = metadata !{i32 135, i32 19, metadata !168, null}
!168 = metadata !{i32 786443, metadata !57, i32 135, i32 6, metadata !5, i32 9} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 135, i32 33, metadata !170, null}
!170 = metadata !{i32 786443, metadata !168, i32 135, i32 32, metadata !5, i32 10} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 135, i32 74, metadata !170, null}
!172 = metadata !{i32 136, i32 1, metadata !170, null}
!173 = metadata !{i32 137, i32 2, metadata !170, null}
!174 = metadata !{i32 786688, metadata !57, metadata !"sum_returnA", metadata !5, i32 126, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 138, i32 7, metadata !170, null}
!176 = metadata !{i32 786688, metadata !57, metadata !"sum_returnB", metadata !5, i32 127, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 139, i32 7, metadata !170, null}
!178 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnSquareA", metadata !5, i32 128, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 140, i32 7, metadata !170, null}
!180 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnA", metadata !5, i32 129, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 141, i32 7, metadata !170, null}
!182 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnSquareB", metadata !5, i32 130, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 142, i32 7, metadata !170, null}
!184 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnB", metadata !5, i32 131, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 143, i32 7, metadata !170, null}
!186 = metadata !{i32 786688, metadata !57, metadata !"sum_weight_returnA_returnB", metadata !5, i32 132, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 144, i32 6, metadata !170, null}
!188 = metadata !{i32 135, i32 28, metadata !168, null}
!189 = metadata !{i32 786688, metadata !168, metadata !"i", metadata !5, i32 135, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 786688, metadata !57, metadata !"meanReturn1", metadata !5, i32 149, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 150, i32 65, metadata !57, null}
!192 = metadata !{i32 786688, metadata !57, metadata !"meanReturn2", metadata !5, i32 150, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!193 = metadata !{i32 152, i32 26, metadata !57, null}
!194 = metadata !{i32 786688, metadata !57, metadata !"volatilityA", metadata !5, i32 152, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!195 = metadata !{i32 155, i32 26, metadata !57, null}
!196 = metadata !{i32 786688, metadata !57, metadata !"volatilityB", metadata !5, i32 155, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 161, i32 38, metadata !57, null}
!198 = metadata !{i32 786688, metadata !57, metadata !"covariance", metadata !5, i32 158, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 163, i32 6, metadata !57, null}
!200 = metadata !{i32 786688, metadata !57, metadata !"corr_temp", metadata !5, i32 162, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 165, i32 6, metadata !57, null}
!202 = metadata !{i32 168, i32 5, metadata !57, null}
!203 = metadata !{i32 66, i32 77, metadata !58, null}
!204 = metadata !{i32 169, i32 3, metadata !59, null}
!205 = metadata !{i32 786688, metadata !60, metadata !"row_index", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 170, i32 2, metadata !61, null}
