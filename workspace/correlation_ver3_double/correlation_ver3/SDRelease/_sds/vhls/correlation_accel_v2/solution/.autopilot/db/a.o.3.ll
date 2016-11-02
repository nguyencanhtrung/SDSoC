; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls/correlation_accel_v2/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=14 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@weight_rom = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=6 type=[252 x float]*]
@lnReturnA = internal unnamed_addr global [252 x float] zeroinitializer, align 16 ; [#uses=2 type=[252 x float]*]
@p_str5 = private unnamed_addr constant [30 x i8] c"ACCUMULATION_LOOP_FIRST_INDEX\00", align 1 ; [#uses=3 type=[30 x i8]*]
@p_str6 = private unnamed_addr constant [28 x i8] c"LAST_ACCUM_LOOP_FIRST_INDEX\00", align 1 ; [#uses=3 type=[28 x i8]*]
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str9 = private unnamed_addr constant [33 x i8] c"ACCUMULATION_LOOP_FLOATING_INDEX\00", align 1 ; [#uses=3 type=[33 x i8]*]
@p_str11 = private unnamed_addr constant [16 x i8] c"INIT_WEIGHT_ROM\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str12 = private unnamed_addr constant [19 x i8] c"COMP_SUM_OF_WEIGHT\00", align 1 ; [#uses=1 type=[19 x i8]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [21 x i8] c"correlation_accel_v2\00" ; [#uses=1 type=[21 x i8]*]

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=58]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=2]
declare float @llvm.log.f32(float) nounwind readonly

; [#uses=2]
declare float @llvm.sqrt.f32(float) nounwind readonly

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=16]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @correlation_accel_v2(i32 %number_of_days, i32 %number_of_indices, i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V) {
  %number_of_indices_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_indices) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices_read}, i64 0, metadata !7), !dbg !1296 ; [debug line = 37:13] [debug variable = number_of_indices]
  %number_of_days_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %number_of_days) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days_read}, i64 0, metadata !1297), !dbg !1298 ; [debug line = 36:32] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days_read}, i64 0, metadata !1299), !dbg !1306 ; [debug line = 368:7@81:2] [debug variable = NUMBER_OF_DAYS]
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_days), !map !1307
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %number_of_indices), !map !1313
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_indices_data_V), !map !1317
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_keep_V), !map !1323
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_indices_strb_V), !map !1327
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_user_V), !map !1331
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_last_V), !map !1335
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_id_V), !map !1339
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_indices_dest_V), !map !1343
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_correlation_data_V), !map !1347
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_keep_V), !map !1353
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_correlation_strb_V), !map !1357
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_user_V), !map !1361
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_last_V), !map !1365
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_id_V), !map !1369
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_correlation_dest_V), !map !1373
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %tmp1_keep_V = alloca i4, align 1               ; [#uses=4 type=i4*]
  %tmp1_strb_V = alloca i4, align 1               ; [#uses=4 type=i4*]
  %tmp1_user_V = alloca i1, align 1               ; [#uses=4 type=i1*]
  %tmp1_last_V = alloca i1, align 1               ; [#uses=4 type=i1*]
  %tmp1_id_V = alloca i1, align 1                 ; [#uses=4 type=i1*]
  %tmp1_dest_V = alloca i1, align 1               ; [#uses=4 type=i1*]
  %acc_return = alloca [6 x float], align 16      ; [#uses=9 type=[6 x float]*]
  %acc_weight_returnSquare = alloca [6 x float], align 16 ; [#uses=9 type=[6 x float]*]
  %acc_weight_return = alloca [6 x float], align 16 ; [#uses=9 type=[6 x float]*]
  %acc_weight_returnA_returnB = alloca [6 x float], align 16 ; [#uses=7 type=[6 x float]*]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !1297), !dbg !1298 ; [debug line = 36:32] [debug variable = number_of_days]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !7), !dbg !1296 ; [debug line = 37:13] [debug variable = number_of_indices]
  call void @llvm.dbg.value(metadata !{i32* %in_indices_data_V}, i64 0, metadata !1377), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.data.V]
  call void @llvm.dbg.value(metadata !{i4* %in_indices_keep_V}, i64 0, metadata !1391), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.keep.V]
  call void @llvm.dbg.value(metadata !{i4* %in_indices_strb_V}, i64 0, metadata !1401), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.strb.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_user_V}, i64 0, metadata !1402), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.user.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_last_V}, i64 0, metadata !1412), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.last.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_id_V}, i64 0, metadata !1413), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.id.V]
  call void @llvm.dbg.value(metadata !{i1* %in_indices_dest_V}, i64 0, metadata !1414), !dbg !1390 ; [debug line = 39:27] [debug variable = in_indices.dest.V]
  call void @llvm.dbg.value(metadata !{i32* %out_correlation_data_V}, i64 0, metadata !1415), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.data.V]
  call void @llvm.dbg.value(metadata !{i4* %out_correlation_keep_V}, i64 0, metadata !1421), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.keep.V]
  call void @llvm.dbg.value(metadata !{i4* %out_correlation_strb_V}, i64 0, metadata !1423), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.strb.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_user_V}, i64 0, metadata !1424), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.user.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_last_V}, i64 0, metadata !1426), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.last.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_id_V}, i64 0, metadata !1427), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.id.V]
  call void @llvm.dbg.value(metadata !{i1* %out_correlation_dest_V}, i64 0, metadata !1428), !dbg !1420 ; [debug line = 40:36] [debug variable = out_correlation.dest.V]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !1429 ; [debug line = 58:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V, [5 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !1430 ; [debug line = 65:1]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !1431), !dbg !1433 ; [debug line = 74:43] [debug variable = NUMBER_OF_DAYS]
  call void @llvm.dbg.value(metadata !{i32 %number_of_indices}, i64 0, metadata !1434), !dbg !1435 ; [debug line = 75:49] [debug variable = NUMBER_OF_INDICES]
  call void @llvm.dbg.value(metadata !{i32 %number_of_days}, i64 0, metadata !1299), !dbg !1306 ; [debug line = 368:7@81:2] [debug variable = NUMBER_OF_DAYS]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1436 ; [debug line = 371:2@81:2]
  store float 1.000000e+00, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 1), align 4, !dbg !1438 ; [debug line = 372:2@81:2]
  br label %1, !dbg !1439                         ; [debug line = 375:15@81:2]

; <label>:1                                       ; preds = %2, %0
  %tmp_i = phi float [ 1.000000e+00, %0 ], [ %tmp_i_3, %2 ] ; [#uses=1 type=float]
  %i_i = phi i8 [ 2, %0 ], [ %i_3, %2 ]           ; [#uses=3 type=i8]
  %exitcond_i = icmp eq i8 %i_i, -4, !dbg !1439   ; [#uses=1 type=i1] [debug line = 375:15@81:2]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 250, i64 250, i64 250) ; [#uses=0 type=i32]
  br i1 %exitcond_i, label %.preheader.i, label %2, !dbg !1439 ; [debug line = 375:15@81:2]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str11) nounwind, !dbg !1441 ; [debug line = 375:46@81:2]
  %tmp_i_3 = fmul float %tmp_i, 0x3FEE147AE0000000, !dbg !1443 ; [#uses=2 type=float] [debug line = 376:3@81:2]
  %tmp_79_i = zext i8 %i_i to i64, !dbg !1443     ; [#uses=1 type=i64] [debug line = 376:3@81:2]
  %weight_rom_addr_2 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_79_i, !dbg !1443 ; [#uses=1 type=float*] [debug line = 376:3@81:2]
  store float %tmp_i_3, float* %weight_rom_addr_2, align 4, !dbg !1443 ; [debug line = 376:3@81:2]
  %i_3 = add i8 %i_i, 1, !dbg !1444               ; [#uses=1 type=i8] [debug line = 375:40@81:2]
  call void @llvm.dbg.value(metadata !{i8 %i_3}, i64 0, metadata !1445), !dbg !1444 ; [debug line = 375:40@81:2] [debug variable = i]
  br label %1, !dbg !1444                         ; [debug line = 375:40@81:2]

.preheader.i:                                     ; preds = %3, %1
  %i1_i = phi i31 [ %i_4, %3 ], [ 2, %1 ]         ; [#uses=3 type=i31]
  %i1_i_cast = zext i31 %i1_i to i32, !dbg !1446  ; [#uses=1 type=i32] [debug line = 380:15@81:2]
  %tmp_78_i = icmp slt i32 %i1_i_cast, %number_of_days_read, !dbg !1446 ; [#uses=1 type=i1] [debug line = 380:15@81:2]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483645, i64 0) ; [#uses=0 type=i32]
  br i1 %tmp_78_i, label %3, label %weight_rom_init.exit, !dbg !1446 ; [debug line = 380:15@81:2]

; <label>:3                                       ; preds = %.preheader.i
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str12) nounwind, !dbg !1448 ; [debug line = 380:42@81:2]
  %tmp_80_i = zext i31 %i1_i to i64, !dbg !1450   ; [#uses=1 type=i64] [debug line = 381:3@81:2]
  %weight_rom_addr_3 = getelementptr [252 x float]* @weight_rom, i64 0, i64 %tmp_80_i, !dbg !1450 ; [#uses=1 type=float*] [debug line = 381:3@81:2]
  %weight_rom_load = load float* %weight_rom_addr_3, align 4, !dbg !1450 ; [#uses=1 type=float] [debug line = 381:3@81:2]
  %weight_rom_load_1 = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1450 ; [#uses=1 type=float] [debug line = 381:3@81:2]
  %tmp_81_i = fadd float %weight_rom_load_1, %weight_rom_load, !dbg !1450 ; [#uses=1 type=float] [debug line = 381:3@81:2]
  store float %tmp_81_i, float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1450 ; [debug line = 381:3@81:2]
  %i_4 = add i31 %i1_i, 1, !dbg !1451             ; [#uses=1 type=i31] [debug line = 380:37@81:2]
  call void @llvm.dbg.value(metadata !{i31 %i_4}, i64 0, metadata !1452), !dbg !1451 ; [debug line = 380:37@81:2] [debug variable = i]
  br label %.preheader.i, !dbg !1451              ; [debug line = 380:37@81:2]

weight_rom_init.exit:                             ; preds = %.preheader.i
  %sum_weight = load float* getelementptr inbounds ([252 x float]* @weight_rom, i64 0, i64 0), align 16, !dbg !1453 ; [#uses=3 type=float] [debug line = 82:34]
  call void @llvm.dbg.value(metadata !{float %sum_weight}, i64 0, metadata !1454), !dbg !1453 ; [debug line = 82:34] [debug variable = sum_weight]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_return}, metadata !1455), !dbg !1459 ; [debug line = 91:8] [debug variable = acc_return]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquare}, metadata !1460), !dbg !1461 ; [debug line = 92:8] [debug variable = acc_weight_returnSquare]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_return}, metadata !1462), !dbg !1463 ; [debug line = 93:8] [debug variable = acc_weight_return]
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !1464), !dbg !1465 ; [debug line = 94:8] [debug variable = acc_weight_returnA_returnB]
  %acc_return_addr = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 0, !dbg !1466 ; [#uses=3 type=float*] [debug line = 116:2]
  store float 0.000000e+00, float* %acc_return_addr, align 16, !dbg !1466 ; [debug line = 116:2]
  %acc_weight_returnSquare_addr = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 0, !dbg !1469 ; [#uses=3 type=float*] [debug line = 117:4]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr, align 16, !dbg !1470 ; [debug line = 118:4]
  %acc_weight_return_addr = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 0, !dbg !1471 ; [#uses=3 type=float*] [debug line = 119:4]
  store float 0.000000e+00, float* %acc_weight_return_addr, align 16, !dbg !1471 ; [debug line = 119:4]
  %acc_return_addr_3 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 1, !dbg !1466 ; [#uses=3 type=float*] [debug line = 116:2]
  store float 0.000000e+00, float* %acc_return_addr_3, align 4, !dbg !1466 ; [debug line = 116:2]
  %acc_weight_returnSquare_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 1, !dbg !1469 ; [#uses=3 type=float*] [debug line = 117:4]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_3, align 4, !dbg !1470 ; [debug line = 118:4]
  %acc_weight_return_addr_3 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 1, !dbg !1471 ; [#uses=3 type=float*] [debug line = 119:4]
  store float 0.000000e+00, float* %acc_weight_return_addr_3, align 4, !dbg !1471 ; [debug line = 119:4]
  %acc_return_addr_4 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 2, !dbg !1466 ; [#uses=3 type=float*] [debug line = 116:2]
  store float 0.000000e+00, float* %acc_return_addr_4, align 8, !dbg !1466 ; [debug line = 116:2]
  %acc_weight_returnSquare_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 2, !dbg !1469 ; [#uses=3 type=float*] [debug line = 117:4]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_4, align 8, !dbg !1470 ; [debug line = 118:4]
  %acc_weight_return_addr_4 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 2, !dbg !1471 ; [#uses=3 type=float*] [debug line = 119:4]
  store float 0.000000e+00, float* %acc_weight_return_addr_4, align 8, !dbg !1471 ; [debug line = 119:4]
  %acc_return_addr_6 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 3, !dbg !1466 ; [#uses=3 type=float*] [debug line = 116:2]
  store float 0.000000e+00, float* %acc_return_addr_6, align 4, !dbg !1466 ; [debug line = 116:2]
  %acc_weight_returnSquare_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 3, !dbg !1469 ; [#uses=3 type=float*] [debug line = 117:4]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_6, align 4, !dbg !1470 ; [debug line = 118:4]
  %acc_weight_return_addr_6 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 3, !dbg !1471 ; [#uses=3 type=float*] [debug line = 119:4]
  store float 0.000000e+00, float* %acc_weight_return_addr_6, align 4, !dbg !1471 ; [debug line = 119:4]
  %acc_return_addr_7 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 4, !dbg !1466 ; [#uses=3 type=float*] [debug line = 116:2]
  store float 0.000000e+00, float* %acc_return_addr_7, align 16, !dbg !1466 ; [debug line = 116:2]
  %acc_weight_returnSquare_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 4, !dbg !1469 ; [#uses=3 type=float*] [debug line = 117:4]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_7, align 16, !dbg !1470 ; [debug line = 118:4]
  %acc_weight_return_addr_7 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 4, !dbg !1471 ; [#uses=3 type=float*] [debug line = 119:4]
  store float 0.000000e+00, float* %acc_weight_return_addr_7, align 16, !dbg !1471 ; [debug line = 119:4]
  %acc_return_addr_8 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 5, !dbg !1466 ; [#uses=3 type=float*] [debug line = 116:2]
  store float 0.000000e+00, float* %acc_return_addr_8, align 4, !dbg !1466 ; [debug line = 116:2]
  %acc_weight_returnSquare_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 5, !dbg !1469 ; [#uses=3 type=float*] [debug line = 117:4]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_8, align 4, !dbg !1470 ; [debug line = 118:4]
  %acc_weight_return_addr_8 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 5, !dbg !1471 ; [#uses=3 type=float*] [debug line = 119:4]
  store float 0.000000e+00, float* %acc_weight_return_addr_8, align 4, !dbg !1471 ; [debug line = 119:4]
  %empty_5 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V) ; [#uses=7 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %in_indices_data_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 0 ; [#uses=1 type=i32]
  %tmp1_keep_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 1 ; [#uses=1 type=i4]
  %tmp1_strb_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 2 ; [#uses=1 type=i4]
  %tmp1_user_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 3 ; [#uses=1 type=i1]
  %tmp1_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 4 ; [#uses=1 type=i1]
  %tmp1_id_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 5 ; [#uses=1 type=i1]
  %tmp1_dest_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_5, 6 ; [#uses=1 type=i1]
  %tmp = bitcast i32 %in_indices_data_V_val to float, !dbg !1472 ; [#uses=1 type=float] [debug line = 125:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_keep_V_1}, i64 0, metadata !1473), !dbg !1475 ; [debug line = 264:10@126:12] [debug variable = tmp1.keep.V]
  store volatile i4 %tmp1_keep_V_1, i4* %tmp1_keep_V, align 4, !dbg !1475 ; [debug line = 264:10@126:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_strb_V_1}, i64 0, metadata !1479), !dbg !1480 ; [debug line = 264:10@127:12] [debug variable = tmp1.strb.V]
  store volatile i4 %tmp1_strb_V_1, i4* %tmp1_strb_V, align 1, !dbg !1480 ; [debug line = 264:10@127:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_user_V_1}, i64 0, metadata !1482), !dbg !1483 ; [debug line = 264:10@128:12] [debug variable = tmp1.user.V]
  store volatile i1 %tmp1_user_V_1, i1* %tmp1_user_V, align 2, !dbg !1483 ; [debug line = 264:10@128:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_last_V_1}, i64 0, metadata !1487), !dbg !1488 ; [debug line = 264:10@129:12] [debug variable = tmp1.last.V]
  store volatile i1 %tmp1_last_V_1, i1* %tmp1_last_V, align 1, !dbg !1488 ; [debug line = 264:10@129:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_id_V_1}, i64 0, metadata !1490), !dbg !1491 ; [debug line = 264:10@130:12] [debug variable = tmp1.id.V]
  store volatile i1 %tmp1_id_V_1, i1* %tmp1_id_V, align 4, !dbg !1491 ; [debug line = 264:10@130:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_dest_V_1}, i64 0, metadata !1493), !dbg !1494 ; [debug line = 264:10@131:12] [debug variable = tmp1.dest.V]
  store volatile i1 %tmp1_dest_V_1, i1* %tmp1_dest_V, align 1, !dbg !1494 ; [debug line = 264:10@131:12]
  %tmp_1 = add nsw i32 %number_of_days_read, -1, !dbg !1496 ; [#uses=3 type=i32] [debug line = 137:16]
  br label %4, !dbg !1496                         ; [debug line = 137:16]

; <label>:4                                       ; preds = %5, %weight_rom_init.exit
  %tmp_4 = phi float [ %tmp, %weight_rom_init.exit ], [ %tmp_4_tmp_5, %5 ] ; [#uses=1 type=float]
  %tmp_5 = phi float [ undef, %weight_rom_init.exit ], [ %tmp_16, %5 ] ; [#uses=2 type=float]
  %i1 = phi i32 [ 1, %weight_rom_init.exit ], [ %i_1, %5 ] ; [#uses=6 type=i32]
  %tmp_6 = icmp sgt i32 %i1, %tmp_1, !dbg !1496   ; [#uses=1 type=i1] [debug line = 137:16]
  br i1 %tmp_6, label %.preheader148, label %5, !dbg !1496 ; [debug line = 137:16]

; <label>:5                                       ; preds = %4
  %tmp_32 = trunc i32 %i1 to i31, !dbg !1496      ; [#uses=1 type=i31] [debug line = 137:16]
  call void (...)* @_ssdm_op_SpecLoopName([30 x i8]* @p_str5) nounwind, !dbg !1498 ; [debug line = 137:48]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([30 x i8]* @p_str5), !dbg !1500 ; [#uses=1 type=i32] [debug line = 137:103]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !1501 ; [debug line = 139:1]
  %tmp_7 = icmp eq i32 %i1, 1, !dbg !1502         ; [#uses=1 type=i1] [debug line = 140:2]
  %empty_6 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V) ; [#uses=7 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %in_indices_data_V_val7 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 0 ; [#uses=1 type=i32]
  %in_indices_keep_V_val8 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 1 ; [#uses=1 type=i4]
  %in_indices_strb_V_val9 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 2 ; [#uses=1 type=i4]
  %in_indices_user_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 3 ; [#uses=1 type=i1]
  %in_indices_last_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 4 ; [#uses=1 type=i1]
  %in_indices_id_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 5 ; [#uses=1 type=i1]
  %in_indices_dest_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_6, 6 ; [#uses=1 type=i1]
  store volatile i4 %in_indices_keep_V_val8, i4* %tmp1_keep_V, align 4, !dbg !1503 ; [debug line = 264:10@143:16]
  store volatile i4 %in_indices_strb_V_val9, i4* %tmp1_strb_V, align 1, !dbg !1506 ; [debug line = 264:10@144:16]
  store volatile i1 %in_indices_user_V_val, i1* %tmp1_user_V, align 2, !dbg !1508 ; [debug line = 264:10@145:16]
  store volatile i1 %in_indices_last_V_val, i1* %tmp1_last_V, align 1, !dbg !1510 ; [debug line = 264:10@146:16]
  store volatile i1 %in_indices_id_V_val, i1* %tmp1_id_V, align 4, !dbg !1512 ; [debug line = 264:10@147:16]
  store volatile i1 %in_indices_dest_V_val, i1* %tmp1_dest_V, align 1, !dbg !1514 ; [debug line = 264:10@148:16]
  %tmp_4_tmp_5 = select i1 %tmp_7, float %tmp_4, float %tmp_5 ; [#uses=2 type=float]
  %tmp_16 = bitcast i32 %in_indices_data_V_val7 to float, !dbg !1516 ; [#uses=2 type=float] [debug line = 142:16]
  %tmp_18 = fdiv float %tmp_4_tmp_5, %tmp_16, !dbg !1517 ; [#uses=1 type=float] [debug line = 173:21]
  %lnReturn = call float @llvm.log.f32(float %tmp_18), !dbg !1517 ; [#uses=5 type=float] [debug line = 173:21]
  call void @llvm.dbg.value(metadata !{float %lnReturn}, i64 0, metadata !1518), !dbg !1517 ; [debug line = 173:21] [debug variable = lnReturn]
  %tmp_19 = zext i32 %i1 to i64, !dbg !1519       ; [#uses=1 type=i64] [debug line = 174:32]
  %weight_rom_addr = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_19, !dbg !1519 ; [#uses=1 type=float*] [debug line = 174:32]
  %weight = load float* %weight_rom_addr, align 4, !dbg !1519 ; [#uses=2 type=float] [debug line = 174:32]
  call void @llvm.dbg.value(metadata !{float %weight}, i64 0, metadata !1520), !dbg !1519 ; [debug line = 174:32] [debug variable = weight]
  %channel = urem i32 %i1, 6, !dbg !1521          ; [#uses=1 type=i32] [debug line = 177:21]
  call void @llvm.dbg.value(metadata !{i32 %channel}, i64 0, metadata !1522), !dbg !1521 ; [debug line = 177:21] [debug variable = channel]
  %tmp_20 = zext i32 %channel to i64, !dbg !1523  ; [#uses=3 type=i64] [debug line = 179:4]
  %acc_return_addr_2 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_20, !dbg !1523 ; [#uses=2 type=float*] [debug line = 179:4]
  %acc_return_load_1 = load float* %acc_return_addr_2, align 4, !dbg !1523 ; [#uses=1 type=float] [debug line = 179:4]
  %tmp_21 = fadd float %acc_return_load_1, %lnReturn, !dbg !1523 ; [#uses=1 type=float] [debug line = 179:4]
  store float %tmp_21, float* %acc_return_addr_2, align 4, !dbg !1523 ; [debug line = 179:4]
  %tmp_22 = fmul float %lnReturn, %lnReturn, !dbg !1524 ; [#uses=1 type=float] [debug line = 182:4]
  %tmp_23 = fmul float %tmp_22, %weight, !dbg !1524 ; [#uses=1 type=float] [debug line = 182:4]
  %acc_weight_returnSquare_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_20, !dbg !1524 ; [#uses=2 type=float*] [debug line = 182:4]
  %acc_weight_returnSquare_load_1 = load float* %acc_weight_returnSquare_addr_2, align 4, !dbg !1524 ; [#uses=1 type=float] [debug line = 182:4]
  %tmp_24 = fadd float %acc_weight_returnSquare_load_1, %tmp_23, !dbg !1524 ; [#uses=1 type=float] [debug line = 182:4]
  store float %tmp_24, float* %acc_weight_returnSquare_addr_2, align 4, !dbg !1524 ; [debug line = 182:4]
  %tmp_25 = fmul float %lnReturn, %weight, !dbg !1525 ; [#uses=1 type=float] [debug line = 185:4]
  %acc_weight_return_addr_2 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_20, !dbg !1525 ; [#uses=2 type=float*] [debug line = 185:4]
  %acc_weight_return_load_1 = load float* %acc_weight_return_addr_2, align 4, !dbg !1525 ; [#uses=1 type=float] [debug line = 185:4]
  %tmp_26 = fadd float %acc_weight_return_load_1, %tmp_25, !dbg !1525 ; [#uses=1 type=float] [debug line = 185:4]
  store float %tmp_26, float* %acc_weight_return_addr_2, align 4, !dbg !1525 ; [debug line = 185:4]
  %tmp_27 = add i31 %tmp_32, -1, !dbg !1526       ; [#uses=1 type=i31] [debug line = 188:4]
  %tmp_28 = zext i31 %tmp_27 to i64, !dbg !1526   ; [#uses=1 type=i64] [debug line = 188:4]
  %lnReturnA_addr = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_28, !dbg !1526 ; [#uses=1 type=float*] [debug line = 188:4]
  store float %lnReturn, float* %lnReturnA_addr, align 4, !dbg !1526 ; [debug line = 188:4]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([30 x i8]* @p_str5, i32 %tmp_2), !dbg !1527 ; [#uses=0 type=i32] [debug line = 189:3]
  %i_1 = add nsw i32 %i1, 1, !dbg !1528           ; [#uses=1 type=i32] [debug line = 137:43]
  call void @llvm.dbg.value(metadata !{i32 %i_1}, i64 0, metadata !1529), !dbg !1528 ; [debug line = 137:43] [debug variable = i]
  br label %4, !dbg !1528                         ; [debug line = 137:43]

.preheader148:                                    ; preds = %6, %4
  %sum_returnA = phi float [ %sum_returnA_1, %6 ], [ 0.000000e+00, %4 ] ; [#uses=2 type=float]
  %sum_weight_returnSquareA = phi float [ %sum_weight_returnSquareA_1, %6 ], [ 0.000000e+00, %4 ] ; [#uses=2 type=float]
  %sum_weight_returnA = phi float [ %sum_weight_returnA_1, %6 ], [ 0.000000e+00, %4 ] ; [#uses=3 type=float]
  %i2 = phi i3 [ %i, %6 ], [ 0, %4 ]              ; [#uses=3 type=i3]
  %exitcond2 = icmp eq i3 %i2, -2, !dbg !1530     ; [#uses=1 type=i1] [debug line = 193:15]
  %i = add i3 %i2, 1, !dbg !1532                  ; [#uses=1 type=i3] [debug line = 193:24]
  br i1 %exitcond2, label %.preheader147.preheader, label %6, !dbg !1530 ; [debug line = 193:15]

.preheader147.preheader:                          ; preds = %.preheader148
  %tmp_17 = alloca float, align 4                 ; [#uses=3 type=float*]
  %tmp_3 = sitofp i32 %tmp_1 to float, !dbg !1533 ; [#uses=2 type=float] [debug line = 308:62]
  %meanReturnA = fdiv float %sum_returnA, %tmp_3, !dbg !1533 ; [#uses=5 type=float] [debug line = 308:62]
  %tmp_s = fmul float %meanReturnA, 2.000000e+00, !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  %tmp_8 = fmul float %tmp_s, %sum_weight_returnA, !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  %tmp_9 = fsub float %sum_weight_returnSquareA, %tmp_8, !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  %tmp_10 = fdiv float %tmp_9, %sum_weight, !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  %tmp_11 = fmul float %meanReturnA, %meanReturnA, !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  %tmp_12 = fadd float %tmp_10, %tmp_11, !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  %tmp_13 = add nsw i32 %number_of_indices_read, -1, !dbg !1537 ; [#uses=1 type=i32] [debug line = 332:16]
  %acc_weight_returnA_returnB_add = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 0, !dbg !1538 ; [#uses=2 type=float*] [debug line = 216:5]
  %acc_weight_returnA_returnB_add_1 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 1, !dbg !1538 ; [#uses=2 type=float*] [debug line = 216:5]
  %acc_weight_returnA_returnB_add_2 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 2, !dbg !1538 ; [#uses=2 type=float*] [debug line = 216:5]
  %acc_weight_returnA_returnB_add_3 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 3, !dbg !1538 ; [#uses=2 type=float*] [debug line = 216:5]
  %acc_weight_returnA_returnB_add_4 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 4, !dbg !1538 ; [#uses=2 type=float*] [debug line = 216:5]
  %acc_weight_returnA_returnB_add_5 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 5, !dbg !1538 ; [#uses=2 type=float*] [debug line = 216:5]
  store float %tmp_5, float* %tmp_17, align 4
  br label %.preheader147, !dbg !1541             ; [debug line = 205:26]

; <label>:6                                       ; preds = %.preheader148
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([28 x i8]* @p_str6) nounwind, !dbg !1542 ; [debug line = 193:29]
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([28 x i8]* @p_str6), !dbg !1544 ; [#uses=1 type=i32] [debug line = 193:82]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !1545 ; [debug line = 195:1]
  %tmp_15 = zext i3 %i2 to i64, !dbg !1546        ; [#uses=3 type=i64] [debug line = 197:2]
  %acc_return_addr_1 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_15, !dbg !1546 ; [#uses=1 type=float*] [debug line = 197:2]
  %acc_return_load = load float* %acc_return_addr_1, align 4, !dbg !1546 ; [#uses=1 type=float] [debug line = 197:2]
  %sum_returnA_1 = fadd float %sum_returnA, %acc_return_load, !dbg !1546 ; [#uses=1 type=float] [debug line = 197:2]
  call void @llvm.dbg.value(metadata !{float %sum_returnA_1}, i64 0, metadata !1547), !dbg !1546 ; [debug line = 197:2] [debug variable = sum_returnA]
  %acc_weight_returnSquare_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_15, !dbg !1548 ; [#uses=1 type=float*] [debug line = 198:3]
  %acc_weight_returnSquare_load = load float* %acc_weight_returnSquare_addr_1, align 4, !dbg !1548 ; [#uses=1 type=float] [debug line = 198:3]
  %sum_weight_returnSquareA_1 = fadd float %sum_weight_returnSquareA, %acc_weight_returnSquare_load, !dbg !1548 ; [#uses=1 type=float] [debug line = 198:3]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnSquareA_1}, i64 0, metadata !1549), !dbg !1548 ; [debug line = 198:3] [debug variable = sum_weight_returnSquareA]
  %acc_weight_return_addr_1 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_15, !dbg !1550 ; [#uses=1 type=float*] [debug line = 199:3]
  %acc_weight_return_load = load float* %acc_weight_return_addr_1, align 4, !dbg !1550 ; [#uses=1 type=float] [debug line = 199:3]
  %sum_weight_returnA_1 = fadd float %sum_weight_returnA, %acc_weight_return_load, !dbg !1550 ; [#uses=1 type=float] [debug line = 199:3]
  call void @llvm.dbg.value(metadata !{float %sum_weight_returnA_1}, i64 0, metadata !1551), !dbg !1550 ; [debug line = 199:3] [debug variable = sum_weight_returnA]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([28 x i8]* @p_str6, i32 %tmp_14), !dbg !1552 ; [#uses=0 type=i32] [debug line = 200:2]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !1553), !dbg !1532 ; [debug line = 193:24] [debug variable = i]
  br label %.preheader148, !dbg !1532             ; [debug line = 193:24]

.preheader147:                                    ; preds = %.preheader.0, %.preheader147.preheader
  %column_index = phi i31 [ %column_index_1, %.preheader.0 ], [ 1, %.preheader147.preheader ] ; [#uses=2 type=i31]
  %column_index_cast = zext i31 %column_index to i32, !dbg !1541 ; [#uses=2 type=i32] [debug line = 205:26]
  %tmp_29 = icmp slt i32 %column_index_cast, %number_of_indices_read, !dbg !1541 ; [#uses=1 type=i1] [debug line = 205:26]
  br i1 %tmp_29, label %7, label %10, !dbg !1541  ; [debug line = 205:26]

; <label>:7                                       ; preds = %.preheader147
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 2147483646, i64 0) ; [#uses=0 type=i32]
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7), !dbg !1554 ; [#uses=1 type=i32] [debug line = 205:79]
  store float 0.000000e+00, float* %acc_return_addr, align 16, !dbg !1555 ; [debug line = 212:2]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr, align 16, !dbg !1556 ; [debug line = 214:5]
  store float 0.000000e+00, float* %acc_weight_return_addr, align 16, !dbg !1557 ; [debug line = 215:5]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add, align 16, !dbg !1538 ; [debug line = 216:5]
  store float 0.000000e+00, float* %acc_return_addr_3, align 4, !dbg !1555 ; [debug line = 212:2]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_3, align 4, !dbg !1556 ; [debug line = 214:5]
  store float 0.000000e+00, float* %acc_weight_return_addr_3, align 4, !dbg !1557 ; [debug line = 215:5]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_1, align 4, !dbg !1538 ; [debug line = 216:5]
  store float 0.000000e+00, float* %acc_return_addr_4, align 8, !dbg !1555 ; [debug line = 212:2]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_4, align 8, !dbg !1556 ; [debug line = 214:5]
  store float 0.000000e+00, float* %acc_weight_return_addr_4, align 8, !dbg !1557 ; [debug line = 215:5]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_2, align 8, !dbg !1538 ; [debug line = 216:5]
  store float 0.000000e+00, float* %acc_return_addr_6, align 4, !dbg !1555 ; [debug line = 212:2]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_6, align 4, !dbg !1556 ; [debug line = 214:5]
  store float 0.000000e+00, float* %acc_weight_return_addr_6, align 4, !dbg !1557 ; [debug line = 215:5]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_3, align 4, !dbg !1538 ; [debug line = 216:5]
  store float 0.000000e+00, float* %acc_return_addr_7, align 16, !dbg !1555 ; [debug line = 212:2]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_7, align 16, !dbg !1556 ; [debug line = 214:5]
  store float 0.000000e+00, float* %acc_weight_return_addr_7, align 16, !dbg !1557 ; [debug line = 215:5]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_4, align 16, !dbg !1538 ; [debug line = 216:5]
  store float 0.000000e+00, float* %acc_return_addr_8, align 4, !dbg !1555 ; [debug line = 212:2]
  store float 0.000000e+00, float* %acc_weight_returnSquare_addr_8, align 4, !dbg !1556 ; [debug line = 214:5]
  store float 0.000000e+00, float* %acc_weight_return_addr_8, align 4, !dbg !1557 ; [debug line = 215:5]
  store float 0.000000e+00, float* %acc_weight_returnA_returnB_add_5, align 4, !dbg !1538 ; [debug line = 216:5]
  %empty_11 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V) ; [#uses=7 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %in_indices_data_V_val1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 0 ; [#uses=1 type=i32]
  %tmp1_keep_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 1 ; [#uses=1 type=i4]
  %tmp1_strb_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 2 ; [#uses=1 type=i4]
  %tmp1_user_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 3 ; [#uses=1 type=i1]
  %tmp1_last_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 4 ; [#uses=1 type=i1]
  %tmp1_id_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 5 ; [#uses=1 type=i1]
  %tmp1_dest_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 6 ; [#uses=1 type=i1]
  %tmp_31 = bitcast i32 %in_indices_data_V_val1 to float, !dbg !1558 ; [#uses=1 type=float] [debug line = 224:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_keep_V_2}, i64 0, metadata !1473), !dbg !1559 ; [debug line = 264:10@225:12] [debug variable = tmp1.keep.V]
  store volatile i4 %tmp1_keep_V_2, i4* %tmp1_keep_V, align 4, !dbg !1559 ; [debug line = 264:10@225:12]
  call void @llvm.dbg.value(metadata !{i4 %tmp1_strb_V_2}, i64 0, metadata !1479), !dbg !1561 ; [debug line = 264:10@226:12] [debug variable = tmp1.strb.V]
  store volatile i4 %tmp1_strb_V_2, i4* %tmp1_strb_V, align 1, !dbg !1561 ; [debug line = 264:10@226:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_user_V_2}, i64 0, metadata !1482), !dbg !1563 ; [debug line = 264:10@227:12] [debug variable = tmp1.user.V]
  store volatile i1 %tmp1_user_V_2, i1* %tmp1_user_V, align 2, !dbg !1563 ; [debug line = 264:10@227:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_last_V_2}, i64 0, metadata !1487), !dbg !1565 ; [debug line = 264:10@228:12] [debug variable = tmp1.last.V]
  store volatile i1 %tmp1_last_V_2, i1* %tmp1_last_V, align 1, !dbg !1565 ; [debug line = 264:10@228:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_id_V_2}, i64 0, metadata !1490), !dbg !1567 ; [debug line = 264:10@229:12] [debug variable = tmp1.id.V]
  store volatile i1 %tmp1_id_V_2, i1* %tmp1_id_V, align 4, !dbg !1567 ; [debug line = 264:10@229:12]
  call void @llvm.dbg.value(metadata !{i1 %tmp1_dest_V_2}, i64 0, metadata !1493), !dbg !1569 ; [debug line = 264:10@230:12] [debug variable = tmp1.dest.V]
  store volatile i1 %tmp1_dest_V_2, i1* %tmp1_dest_V, align 1, !dbg !1569 ; [debug line = 264:10@230:12]
  br label %8, !dbg !1571                         ; [debug line = 236:17]

; <label>:8                                       ; preds = %9, %7
  %tmp_33 = phi float [ %tmp_31, %7 ], [ %tmp_34_tmp_s, %9 ] ; [#uses=1 type=float]
  %i4 = phi i32 [ 1, %7 ], [ %i_2, %9 ]           ; [#uses=6 type=i32]
  %tmp_34 = icmp sgt i32 %i4, %tmp_1, !dbg !1571  ; [#uses=1 type=i1] [debug line = 236:17]
  br i1 %tmp_34, label %.preheader.0, label %9, !dbg !1571 ; [debug line = 236:17]

; <label>:9                                       ; preds = %8
  %tmp_17_load = load float* %tmp_17, align 4     ; [#uses=1 type=float]
  %tmp_66 = trunc i32 %i4 to i31, !dbg !1571      ; [#uses=1 type=i31] [debug line = 236:17]
  call void (...)* @_ssdm_op_SpecLoopName([33 x i8]* @p_str9) nounwind, !dbg !1573 ; [debug line = 236:49]
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([33 x i8]* @p_str9), !dbg !1575 ; [#uses=1 type=i32] [debug line = 236:107]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !1576 ; [debug line = 238:1]
  %tmp_39 = icmp eq i32 %i4, 1, !dbg !1577        ; [#uses=1 type=i1] [debug line = 239:2]
  %empty_12 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %in_indices_data_V, i4* %in_indices_keep_V, i4* %in_indices_strb_V, i1* %in_indices_user_V, i1* %in_indices_last_V, i1* %in_indices_id_V, i1* %in_indices_dest_V) ; [#uses=7 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %in_indices_data_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 0 ; [#uses=1 type=i32]
  %in_indices_keep_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 1 ; [#uses=1 type=i4]
  %in_indices_strb_V_val = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 2 ; [#uses=1 type=i4]
  %in_indices_user_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 3 ; [#uses=1 type=i1]
  %in_indices_last_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 4 ; [#uses=1 type=i1]
  %in_indices_id_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 5 ; [#uses=1 type=i1]
  %in_indices_dest_V_val2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_12, 6 ; [#uses=1 type=i1]
  store volatile i4 %in_indices_keep_V_val, i4* %tmp1_keep_V, align 4, !dbg !1578 ; [debug line = 264:10@242:17]
  store volatile i4 %in_indices_strb_V_val, i4* %tmp1_strb_V, align 1, !dbg !1581 ; [debug line = 264:10@243:17]
  store volatile i1 %in_indices_user_V_val2, i1* %tmp1_user_V, align 2, !dbg !1583 ; [debug line = 264:10@244:17]
  store volatile i1 %in_indices_last_V_val2, i1* %tmp1_last_V, align 1, !dbg !1585 ; [debug line = 264:10@245:17]
  store volatile i1 %in_indices_id_V_val2, i1* %tmp1_id_V, align 4, !dbg !1587 ; [debug line = 264:10@246:17]
  store volatile i1 %in_indices_dest_V_val2, i1* %tmp1_dest_V, align 1, !dbg !1589 ; [debug line = 264:10@247:17]
  %tmp_34_tmp_s = select i1 %tmp_39, float %tmp_33, float %tmp_17_load ; [#uses=2 type=float]
  %tmp_51 = bitcast i32 %in_indices_data_V_val2 to float, !dbg !1591 ; [#uses=2 type=float] [debug line = 241:17]
  %tmp_52 = fdiv float %tmp_34_tmp_s, %tmp_51, !dbg !1592 ; [#uses=1 type=float] [debug line = 271:19]
  %lnReturn_1 = call float @llvm.log.f32(float %tmp_52), !dbg !1592 ; [#uses=5 type=float] [debug line = 271:19]
  call void @llvm.dbg.value(metadata !{float %lnReturn_1}, i64 0, metadata !1593), !dbg !1592 ; [debug line = 271:19] [debug variable = lnReturn]
  %tmp_53 = zext i32 %i4 to i64, !dbg !1594       ; [#uses=1 type=i64] [debug line = 272:33]
  %weight_rom_addr_1 = getelementptr inbounds [252 x float]* @weight_rom, i64 0, i64 %tmp_53, !dbg !1594 ; [#uses=1 type=float*] [debug line = 272:33]
  %weight_1 = load float* %weight_rom_addr_1, align 4, !dbg !1594 ; [#uses=3 type=float] [debug line = 272:33]
  call void @llvm.dbg.value(metadata !{float %weight_1}, i64 0, metadata !1595), !dbg !1594 ; [debug line = 272:33] [debug variable = weight]
  %channel_1 = urem i32 %i4, 6, !dbg !1596        ; [#uses=1 type=i32] [debug line = 275:22]
  call void @llvm.dbg.value(metadata !{i32 %channel_1}, i64 0, metadata !1597), !dbg !1596 ; [debug line = 275:22] [debug variable = channel]
  %tmp_54 = zext i32 %channel_1 to i64, !dbg !1598 ; [#uses=4 type=i64] [debug line = 278:5]
  %acc_return_addr_5 = getelementptr inbounds [6 x float]* %acc_return, i64 0, i64 %tmp_54, !dbg !1598 ; [#uses=2 type=float*] [debug line = 278:5]
  %acc_return_load_3 = load float* %acc_return_addr_5, align 4, !dbg !1598 ; [#uses=1 type=float] [debug line = 278:5]
  %tmp_55 = fadd float %acc_return_load_3, %lnReturn_1, !dbg !1598 ; [#uses=1 type=float] [debug line = 278:5]
  store float %tmp_55, float* %acc_return_addr_5, align 4, !dbg !1598 ; [debug line = 278:5]
  %tmp_56 = fmul float %lnReturn_1, %lnReturn_1, !dbg !1599 ; [#uses=1 type=float] [debug line = 281:5]
  %tmp_57 = fmul float %tmp_56, %weight_1, !dbg !1599 ; [#uses=1 type=float] [debug line = 281:5]
  %acc_weight_returnSquare_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i64 0, i64 %tmp_54, !dbg !1599 ; [#uses=2 type=float*] [debug line = 281:5]
  %acc_weight_returnSquare_load_3 = load float* %acc_weight_returnSquare_addr_5, align 4, !dbg !1599 ; [#uses=1 type=float] [debug line = 281:5]
  %tmp_58 = fadd float %acc_weight_returnSquare_load_3, %tmp_57, !dbg !1599 ; [#uses=1 type=float] [debug line = 281:5]
  store float %tmp_58, float* %acc_weight_returnSquare_addr_5, align 4, !dbg !1599 ; [debug line = 281:5]
  %tmp_59 = fmul float %lnReturn_1, %weight_1, !dbg !1600 ; [#uses=1 type=float] [debug line = 284:5]
  %acc_weight_return_addr_5 = getelementptr inbounds [6 x float]* %acc_weight_return, i64 0, i64 %tmp_54, !dbg !1600 ; [#uses=2 type=float*] [debug line = 284:5]
  %acc_weight_return_load_3 = load float* %acc_weight_return_addr_5, align 4, !dbg !1600 ; [#uses=1 type=float] [debug line = 284:5]
  %tmp_60 = fadd float %acc_weight_return_load_3, %tmp_59, !dbg !1600 ; [#uses=1 type=float] [debug line = 284:5]
  store float %tmp_60, float* %acc_weight_return_addr_5, align 4, !dbg !1600 ; [debug line = 284:5]
  %tmp_61 = add i31 %tmp_66, -1, !dbg !1601       ; [#uses=1 type=i31] [debug line = 287:5]
  %tmp_62 = zext i31 %tmp_61 to i64, !dbg !1601   ; [#uses=1 type=i64] [debug line = 287:5]
  %lnReturnA_addr_1 = getelementptr inbounds [252 x float]* @lnReturnA, i64 0, i64 %tmp_62, !dbg !1601 ; [#uses=1 type=float*] [debug line = 287:5]
  %lnReturnA_load = load float* %lnReturnA_addr_1, align 4, !dbg !1601 ; [#uses=1 type=float] [debug line = 287:5]
  %tmp_63 = fmul float %lnReturnA_load, %lnReturn_1, !dbg !1601 ; [#uses=1 type=float] [debug line = 287:5]
  %tmp_64 = fmul float %tmp_63, %weight_1, !dbg !1601 ; [#uses=1 type=float] [debug line = 287:5]
  %acc_weight_returnA_returnB_add_6 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i64 0, i64 %tmp_54, !dbg !1601 ; [#uses=2 type=float*] [debug line = 287:5]
  %acc_weight_returnA_returnB_loa = load float* %acc_weight_returnA_returnB_add_6, align 4, !dbg !1601 ; [#uses=1 type=float] [debug line = 287:5]
  %tmp_65 = fadd float %acc_weight_returnA_returnB_loa, %tmp_64, !dbg !1601 ; [#uses=1 type=float] [debug line = 287:5]
  store float %tmp_65, float* %acc_weight_returnA_returnB_add_6, align 4, !dbg !1601 ; [debug line = 287:5]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([33 x i8]* @p_str9, i32 %tmp_50), !dbg !1602 ; [#uses=0 type=i32] [debug line = 288:4]
  %i_2 = add nsw i32 %i4, 1, !dbg !1603           ; [#uses=1 type=i32] [debug line = 236:44]
  call void @llvm.dbg.value(metadata !{i32 %i_2}, i64 0, metadata !1604), !dbg !1603 ; [debug line = 236:44] [debug variable = i]
  store float %tmp_51, float* %tmp_17, align 4
  br label %8, !dbg !1603                         ; [debug line = 236:44]

.preheader.0:                                     ; preds = %8
  %acc_return_load_2 = load float* %acc_return_addr, align 16, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %sum_return_1 = fadd float %acc_return_load_2, 0.000000e+00, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %acc_weight_returnSquare_load_2 = load float* %acc_weight_returnSquare_addr, align 16, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %sum_weight_returnSquare_1 = fadd float %acc_weight_returnSquare_load_2, 0.000000e+00, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %acc_weight_return_load_2 = load float* %acc_weight_return_addr, align 16, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %sum_weight_return_1 = fadd float %acc_weight_return_load_2, 0.000000e+00, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %acc_weight_returnA_returnB_loa_1 = load float* %acc_weight_returnA_returnB_add, align 16, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %sum_weight_returnA_returnB_1 = fadd float %acc_weight_returnA_returnB_loa_1, 0.000000e+00, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %acc_return_load_4 = load float* %acc_return_addr_3, align 4, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %sum_return_1_1 = fadd float %sum_return_1, %acc_return_load_4, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %acc_weight_returnSquare_load_4 = load float* %acc_weight_returnSquare_addr_3, align 4, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %sum_weight_returnSquare_1_1 = fadd float %sum_weight_returnSquare_1, %acc_weight_returnSquare_load_4, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %acc_weight_return_load_4 = load float* %acc_weight_return_addr_3, align 4, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %sum_weight_return_1_1 = fadd float %sum_weight_return_1, %acc_weight_return_load_4, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %acc_weight_returnA_returnB_loa_2 = load float* %acc_weight_returnA_returnB_add_1, align 4, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %sum_weight_returnA_returnB_1_1 = fadd float %sum_weight_returnA_returnB_1, %acc_weight_returnA_returnB_loa_2, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %acc_return_load_5 = load float* %acc_return_addr_4, align 8, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %sum_return_1_2 = fadd float %sum_return_1_1, %acc_return_load_5, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %acc_weight_returnSquare_load_5 = load float* %acc_weight_returnSquare_addr_4, align 8, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %sum_weight_returnSquare_1_2 = fadd float %sum_weight_returnSquare_1_1, %acc_weight_returnSquare_load_5, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %acc_weight_return_load_5 = load float* %acc_weight_return_addr_4, align 8, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %sum_weight_return_1_2 = fadd float %sum_weight_return_1_1, %acc_weight_return_load_5, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %acc_weight_returnA_returnB_loa_3 = load float* %acc_weight_returnA_returnB_add_2, align 8, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %sum_weight_returnA_returnB_1_2 = fadd float %sum_weight_returnA_returnB_1_1, %acc_weight_returnA_returnB_loa_3, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %acc_return_load_6 = load float* %acc_return_addr_6, align 4, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %sum_return_1_3 = fadd float %sum_return_1_2, %acc_return_load_6, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %acc_weight_returnSquare_load_6 = load float* %acc_weight_returnSquare_addr_6, align 4, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %sum_weight_returnSquare_1_3 = fadd float %sum_weight_returnSquare_1_2, %acc_weight_returnSquare_load_6, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %acc_weight_return_load_6 = load float* %acc_weight_return_addr_6, align 4, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %sum_weight_return_1_3 = fadd float %sum_weight_return_1_2, %acc_weight_return_load_6, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %acc_weight_returnA_returnB_loa_4 = load float* %acc_weight_returnA_returnB_add_3, align 4, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %sum_weight_returnA_returnB_1_3 = fadd float %sum_weight_returnA_returnB_1_2, %acc_weight_returnA_returnB_loa_4, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %acc_return_load_7 = load float* %acc_return_addr_7, align 16, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %sum_return_1_4 = fadd float %sum_return_1_3, %acc_return_load_7, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %acc_weight_returnSquare_load_7 = load float* %acc_weight_returnSquare_addr_7, align 16, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %sum_weight_returnSquare_1_4 = fadd float %sum_weight_returnSquare_1_3, %acc_weight_returnSquare_load_7, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %acc_weight_return_load_7 = load float* %acc_weight_return_addr_7, align 16, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %sum_weight_return_1_4 = fadd float %sum_weight_return_1_3, %acc_weight_return_load_7, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %acc_weight_returnA_returnB_loa_5 = load float* %acc_weight_returnA_returnB_add_4, align 16, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %sum_weight_returnA_returnB_1_4 = fadd float %sum_weight_returnA_returnB_1_3, %acc_weight_returnA_returnB_loa_5, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %acc_return_load_8 = load float* %acc_return_addr_8, align 4, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %sum_return_1_5 = fadd float %sum_return_1_4, %acc_return_load_8, !dbg !1605 ; [#uses=1 type=float] [debug line = 301:2]
  %acc_weight_returnSquare_load_8 = load float* %acc_weight_returnSquare_addr_8, align 4, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %sum_weight_returnSquare_1_5 = fadd float %sum_weight_returnSquare_1_4, %acc_weight_returnSquare_load_8, !dbg !1608 ; [#uses=1 type=float] [debug line = 302:4]
  %acc_weight_return_load_8 = load float* %acc_weight_return_addr_8, align 4, !dbg !1609 ; [#uses=1 type=float] [debug line = 303:4]
  %sum_weight_return_1_5 = fadd float %sum_weight_return_1_4, %acc_weight_return_load_8, !dbg !1609 ; [#uses=2 type=float] [debug line = 303:4]
  %acc_weight_returnA_returnB_loa_6 = load float* %acc_weight_returnA_returnB_add_5, align 4, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  %sum_weight_returnA_returnB_1_5 = fadd float %sum_weight_returnA_returnB_1_4, %acc_weight_returnA_returnB_loa_6, !dbg !1610 ; [#uses=1 type=float] [debug line = 304:4]
  call void @llvm.dbg.value(metadata !{float %meanReturnA}, i64 0, metadata !1611), !dbg !1533 ; [debug line = 308:62] [debug variable = meanReturnA]
  %meanReturnB = fdiv float %sum_return_1_5, %tmp_3, !dbg !1612 ; [#uses=5 type=float] [debug line = 309:61]
  call void @llvm.dbg.value(metadata !{float %meanReturnB}, i64 0, metadata !1613), !dbg !1612 ; [debug line = 309:61] [debug variable = meanReturnB]
  %volatilityA = call float @llvm.sqrt.f32(float %tmp_12), !dbg !1536 ; [#uses=1 type=float] [debug line = 311:23]
  call void @llvm.dbg.value(metadata !{float %volatilityA}, i64 0, metadata !1614), !dbg !1536 ; [debug line = 311:23] [debug variable = volatilityA]
  %tmp_35 = fmul float %meanReturnB, 2.000000e+00, !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  %tmp_36 = fmul float %tmp_35, %sum_weight_return_1_5, !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  %tmp_37 = fsub float %sum_weight_returnSquare_1_5, %tmp_36, !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  %tmp_38 = fdiv float %tmp_37, %sum_weight, !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  %tmp_40 = fmul float %meanReturnB, %meanReturnB, !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  %tmp_41 = fadd float %tmp_38, %tmp_40, !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  %volatilityB = call float @llvm.sqrt.f32(float %tmp_41), !dbg !1615 ; [#uses=1 type=float] [debug line = 314:23]
  call void @llvm.dbg.value(metadata !{float %volatilityB}, i64 0, metadata !1616), !dbg !1615 ; [debug line = 314:23] [debug variable = volatilityB]
  %tmp_42 = fmul float %meanReturnA, %sum_weight_return_1_5, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  %tmp_43 = fsub float %sum_weight_returnA_returnB_1_5, %tmp_42, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  %tmp_44 = fmul float %meanReturnB, %sum_weight_returnA, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  %tmp_45 = fsub float %tmp_43, %tmp_44, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  %tmp_46 = fdiv float %tmp_45, %sum_weight, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  %tmp_47 = fmul float %meanReturnA, %meanReturnB, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  %covariance = fadd float %tmp_46, %tmp_47, !dbg !1617 ; [#uses=1 type=float] [debug line = 317:159]
  call void @llvm.dbg.value(metadata !{float %covariance}, i64 0, metadata !1618), !dbg !1617 ; [debug line = 317:159] [debug variable = covariance]
  %tmp_48 = fmul float %volatilityA, %volatilityB, !dbg !1619 ; [#uses=1 type=float] [debug line = 321:61]
  %corr_temp = fdiv float %covariance, %tmp_48, !dbg !1619 ; [#uses=1 type=float] [debug line = 321:61]
  call void @llvm.dbg.value(metadata !{float %corr_temp}, i64 0, metadata !1620), !dbg !1619 ; [debug line = 321:61] [debug variable = corr_temp]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !1621 ; [debug line = 326:1]
  %val_assign = bitcast float %corr_temp to i32, !dbg !1622 ; [#uses=1 type=i32] [debug line = 327:2]
  call void @llvm.dbg.value(metadata !{i32 %val_assign}, i64 0, metadata !1623), !dbg !1625 ; [debug line = 250:55@328:16] [debug variable = val]
  call void @llvm.dbg.value(metadata !{i32 %val_assign}, i64 0, metadata !1627), !dbg !1629 ; [debug line = 250:55@250:77@328:16] [debug variable = val]
  %tmp_49 = icmp eq i32 %column_index_cast, %tmp_13, !dbg !1537 ; [#uses=1 type=i1] [debug line = 332:16]
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %out_correlation_data_V, i4* %out_correlation_keep_V, i4* %out_correlation_strb_V, i1* %out_correlation_user_V, i1* %out_correlation_last_V, i1* %out_correlation_id_V, i1* %out_correlation_dest_V, i32 %val_assign, i4 -1, i4 1, i1 false, i1 %tmp_49, i1 false, i1 false)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_30), !dbg !1631 ; [#uses=0 type=i32] [debug line = 338:2]
  %column_index_1 = add i31 %column_index, 1, !dbg !1632 ; [#uses=1 type=i31] [debug line = 205:62]
  call void @llvm.dbg.value(metadata !{i31 %column_index_1}, i64 0, metadata !1633), !dbg !1632 ; [debug line = 205:62] [debug variable = column_index]
  br label %.preheader147, !dbg !1632             ; [debug line = 205:62]

; <label>:10                                      ; preds = %.preheader147
  ret void, !dbg !1634                            ; [debug line = 340:1]
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=4]
define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  %empty_15 = load i4* %1                         ; [#uses=1 type=i4]
  %empty_16 = load i4* %2                         ; [#uses=1 type=i4]
  %empty_17 = load i1* %3                         ; [#uses=1 type=i1]
  %empty_18 = load i1* %4                         ; [#uses=1 type=i1]
  %empty_19 = load i1* %5                         ; [#uses=1 type=i1]
  %empty_20 = load i1* %6                         ; [#uses=1 type=i1]
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_15, 1 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_16, 2 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_17, 3 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_18, 4 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_19, 5 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_20, 6 ; [#uses=1 type={ i32, i4, i4, i1, i1, i1, i1 }]
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

; [#uses=1]
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

; [#uses=0]
declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{i32 786689, metadata !8, metadata !"number_of_indices", metadata !9, i32 33554469, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!8 = metadata !{i32 786478, i32 0, metadata !9, metadata !"correlation_accel_v2", metadata !"correlation_accel_v2", metadata !"_Z20correlation_accel_v2iiP7ap_axiuILi32ELi1ELi1ELi1EES1_", metadata !9, i32 36, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !35, i32 56} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls/src/correlation_accel_v2.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!10 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null, metadata !12, metadata !12, metadata !13, metadata !13}
!12 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ]
!14 = metadata !{i32 786434, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !15, i32 101, i64 96, i64 32, i32 0, i32 0, null, metadata !16, i32 0, null, metadata !1291} ; [ DW_TAG_class_type ]
!15 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/ap_axi_sdata.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!16 = metadata !{metadata !17, metadata !675, metadata !981, metadata !982, metadata !1284, metadata !1285, metadata !1286, metadata !1287}
!17 = metadata !{i32 786445, metadata !14, metadata !"data", metadata !15, i32 102, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ]
!18 = metadata !{i32 786434, null, metadata !"ap_uint<32>", metadata !19, i32 180, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, metadata !674} ; [ DW_TAG_class_type ]
!19 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/ap_int.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!20 = metadata !{metadata !21, metadata !603, metadata !607, metadata !613, metadata !614, metadata !617, metadata !620, metadata !623, metadata !626, metadata !629, metadata !632, metadata !635, metadata !638, metadata !641, metadata !644, metadata !647, metadata !650, metadata !653, metadata !656, metadata !659, metadata !662, metadata !667, metadata !668, metadata !672, metadata !673}
!21 = metadata !{i32 786460, metadata !18, null, metadata !19, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_inheritance ]
!22 = metadata !{i32 786434, null, metadata !"ap_int_base<32, false, true>", metadata !23, i32 1398, i64 32, i64 32, i32 0, i32 0, null, metadata !24, i32 0, null, metadata !602} ; [ DW_TAG_class_type ]
!23 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/ap_int_syn.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!24 = metadata !{metadata !25, metadata !41, metadata !45, metadata !53, metadata !54, metadata !57, metadata !61, metadata !65, metadata !69, metadata !73, metadata !76, metadata !80, metadata !84, metadata !88, metadata !93, metadata !98, metadata !102, metadata !106, metadata !112, metadata !115, metadata !120, metadata !123, metadata !124, metadata !125, metadata !129, metadata !130, metadata !133, metadata !136, metadata !139, metadata !142, metadata !145, metadata !148, metadata !151, metadata !154, metadata !157, metadata !160, metadata !170, metadata !173, metadata !176, metadata !179, metadata !182, metadata !185, metadata !188, metadata !191, metadata !194, metadata !195, metadata !200, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !211, metadata !212, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !223, metadata !224, metadata !225, metadata !228, metadata !229, metadata !232, metadata !233, metadata !505, metadata !567, metadata !568, metadata !571, metadata !572, metadata !576, metadata !577, metadata !578, metadata !579, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !596, metadata !599}
!25 = metadata !{i32 786460, metadata !22, null, metadata !23, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_inheritance ]
!26 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !27, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !28, i32 0, null, metadata !37} ; [ DW_TAG_class_type ]
!27 = metadata !{i32 786473, metadata !"/opt/Xilinx/SDSoC/2014.4/Vivado_HLS/2014.4/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver3_double/correlation_ver3/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!28 = metadata !{metadata !29, metadata !31}
!29 = metadata !{i32 786445, metadata !26, metadata !"V", metadata !27, i32 34, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ]
!30 = metadata !{i32 786468, null, metadata !"uint32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786478, i32 0, metadata !26, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !27, i32 34, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 34} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !34}
!34 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !26} ; [ DW_TAG_pointer_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !12, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!39 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !40, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!40 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1439, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1439} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !44}
!44 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !22} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base<32, false>", metadata !"ap_int_base<32, false>", metadata !"", metadata !23, i32 1451, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !50, i32 0, metadata !35, i32 1451} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !44, metadata !48}
!48 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_reference_type ]
!49 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !12, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!52 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !40, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!53 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base<32, false>", metadata !"ap_int_base<32, false>", metadata !"", metadata !23, i32 1454, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !50, i32 0, metadata !35, i32 1454} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1461, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1461} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{null, metadata !44, metadata !40}
!57 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1462, metadata !58, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1462} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!59 = metadata !{null, metadata !44, metadata !60}
!60 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!61 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1463, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1463} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{null, metadata !44, metadata !64}
!64 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1464, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1464} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !44, metadata !68}
!68 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1465, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1465} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !44, metadata !72}
!72 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1466, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1466} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !44, metadata !12}
!76 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1467, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1467} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !44, metadata !79}
!79 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!80 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1468, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1468} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !44, metadata !83}
!83 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1469, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1469} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !44, metadata !87}
!87 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1470, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1470} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !44, metadata !91}
!91 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !23, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ]
!92 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!93 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1471, metadata !94, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1471} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{null, metadata !44, metadata !96}
!96 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !23, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ]
!97 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1472, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1472} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !44, metadata !101}
!101 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!102 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1473, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1473} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !44, metadata !105}
!105 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1500, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1500} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !44, metadata !109}
!109 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ]
!110 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_const_type ]
!111 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!112 = metadata !{i32 786478, i32 0, metadata !22, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1507, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1507} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{null, metadata !44, metadata !109, metadata !60}
!115 = metadata !{i32 786478, i32 0, metadata !22, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EE4readEv", metadata !23, i32 1528, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1528} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !22, metadata !118}
!118 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !119} ; [ DW_TAG_pointer_type ]
!119 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_volatile_type ]
!120 = metadata !{i32 786478, i32 0, metadata !22, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EE5writeERKS0_", metadata !23, i32 1534, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1534} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{null, metadata !118, metadata !48}
!123 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EEaSERVKS0_", metadata !23, i32 1546, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1546} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb0ELb1EEaSERKS0_", metadata !23, i32 1555, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1555} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSERVKS0_", metadata !23, i32 1578, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1578} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{metadata !128, metadata !44, metadata !48}
!128 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_reference_type ]
!129 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSERKS0_", metadata !23, i32 1583, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1583} ; [ DW_TAG_subprogram ]
!130 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEPKc", metadata !23, i32 1587, metadata !131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1587} ; [ DW_TAG_subprogram ]
!131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!132 = metadata !{metadata !128, metadata !44, metadata !109}
!133 = metadata !{i32 786478, i32 0, metadata !22, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEPKca", metadata !23, i32 1595, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1595} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{metadata !128, metadata !44, metadata !109, metadata !60}
!136 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEc", metadata !23, i32 1609, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1609} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{metadata !128, metadata !44, metadata !111}
!139 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEh", metadata !23, i32 1610, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1610} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{metadata !128, metadata !44, metadata !64}
!142 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEs", metadata !23, i32 1611, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1611} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{metadata !128, metadata !44, metadata !68}
!145 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEt", metadata !23, i32 1612, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1612} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{metadata !128, metadata !44, metadata !72}
!148 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEi", metadata !23, i32 1613, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1613} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !128, metadata !44, metadata !12}
!151 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEj", metadata !23, i32 1614, metadata !152, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1614} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{metadata !128, metadata !44, metadata !79}
!154 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEx", metadata !23, i32 1615, metadata !155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1615} ; [ DW_TAG_subprogram ]
!155 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!156 = metadata !{metadata !128, metadata !44, metadata !91}
!157 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEaSEy", metadata !23, i32 1616, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1616} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{metadata !128, metadata !44, metadata !96}
!160 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEcvjEv", metadata !23, i32 1654, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1654} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{metadata !163, metadata !169}
!163 = metadata !{i32 786454, metadata !22, metadata !"RetType", metadata !23, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ]
!164 = metadata !{i32 786454, metadata !165, metadata !"Type", metadata !23, i32 1389, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ]
!165 = metadata !{i32 786434, null, metadata !"retval<4, false>", metadata !23, i32 1388, i64 8, i64 8, i32 0, i32 0, null, metadata !166, i32 0, null, metadata !167} ; [ DW_TAG_class_type ]
!166 = metadata !{i32 0}
!167 = metadata !{metadata !168, metadata !39}
!168 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !12, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!169 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !49} ; [ DW_TAG_pointer_type ]
!170 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_boolEv", metadata !23, i32 1660, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1660} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{metadata !40, metadata !169}
!173 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6to_intEv", metadata !23, i32 1661, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1661} ; [ DW_TAG_subprogram ]
!174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!175 = metadata !{metadata !12, metadata !169}
!176 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_uintEv", metadata !23, i32 1662, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1662} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{metadata !79, metadata !169}
!179 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7to_longEv", metadata !23, i32 1663, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1663} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{metadata !83, metadata !169}
!182 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE8to_ulongEv", metadata !23, i32 1664, metadata !183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1664} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!184 = metadata !{metadata !87, metadata !169}
!185 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE8to_int64Ev", metadata !23, i32 1665, metadata !186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1665} ; [ DW_TAG_subprogram ]
!186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!187 = metadata !{metadata !91, metadata !169}
!188 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_uint64Ev", metadata !23, i32 1666, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1666} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{metadata !96, metadata !169}
!191 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_doubleEv", metadata !23, i32 1667, metadata !192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1667} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!193 = metadata !{metadata !105, metadata !169}
!194 = metadata !{i32 786478, i32 0, metadata !22, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6lengthEv", metadata !23, i32 1680, metadata !174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1680} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 786478, i32 0, metadata !22, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi32ELb0ELb1EE6lengthEv", metadata !23, i32 1681, metadata !196, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1681} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!197 = metadata !{metadata !12, metadata !198}
!198 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !199} ; [ DW_TAG_pointer_type ]
!199 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_const_type ]
!200 = metadata !{i32 786478, i32 0, metadata !22, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7reverseEv", metadata !23, i32 1686, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1686} ; [ DW_TAG_subprogram ]
!201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!202 = metadata !{metadata !128, metadata !44}
!203 = metadata !{i32 786478, i32 0, metadata !22, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE6iszeroEv", metadata !23, i32 1692, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1692} ; [ DW_TAG_subprogram ]
!204 = metadata !{i32 786478, i32 0, metadata !22, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7is_zeroEv", metadata !23, i32 1697, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1697} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786478, i32 0, metadata !22, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE4signEv", metadata !23, i32 1702, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1702} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786478, i32 0, metadata !22, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5clearEi", metadata !23, i32 1710, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1710} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786478, i32 0, metadata !22, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE6invertEi", metadata !23, i32 1716, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1716} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786478, i32 0, metadata !22, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE4testEi", metadata !23, i32 1724, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1724} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{metadata !40, metadata !169, metadata !12}
!211 = metadata !{i32 786478, i32 0, metadata !22, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEi", metadata !23, i32 1730, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1730} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786478, i32 0, metadata !22, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3setEib", metadata !23, i32 1736, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1736} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{null, metadata !44, metadata !12, metadata !40}
!215 = metadata !{i32 786478, i32 0, metadata !22, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7lrotateEi", metadata !23, i32 1743, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1743} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786478, i32 0, metadata !22, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7rrotateEi", metadata !23, i32 1752, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1752} ; [ DW_TAG_subprogram ]
!217 = metadata !{i32 786478, i32 0, metadata !22, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE7set_bitEib", metadata !23, i32 1760, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1760} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786478, i32 0, metadata !22, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE7get_bitEi", metadata !23, i32 1765, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1765} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786478, i32 0, metadata !22, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5b_notEv", metadata !23, i32 1770, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1770} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786478, i32 0, metadata !22, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE17countLeadingZerosEv", metadata !23, i32 1777, metadata !221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1777} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{metadata !12, metadata !44}
!223 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEppEv", metadata !23, i32 1834, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1834} ; [ DW_TAG_subprogram ]
!224 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEmmEv", metadata !23, i32 1838, metadata !201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1838} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEppEi", metadata !23, i32 1846, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1846} ; [ DW_TAG_subprogram ]
!226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!227 = metadata !{metadata !49, metadata !44, metadata !12}
!228 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEmmEi", metadata !23, i32 1851, metadata !226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1851} ; [ DW_TAG_subprogram ]
!229 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEpsEv", metadata !23, i32 1860, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1860} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{metadata !22, metadata !169}
!232 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEntEv", metadata !23, i32 1866, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1866} ; [ DW_TAG_subprogram ]
!233 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEngEv", metadata !23, i32 1871, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1871} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !236, metadata !169}
!236 = metadata !{i32 786434, null, metadata !"ap_int_base<33, true, true>", metadata !23, i32 1398, i64 64, i64 64, i32 0, i32 0, null, metadata !237, i32 0, null, metadata !503} ; [ DW_TAG_class_type ]
!237 = metadata !{metadata !238, metadata !250, metadata !254, metadata !257, metadata !260, metadata !263, metadata !266, metadata !269, metadata !272, metadata !275, metadata !278, metadata !281, metadata !284, metadata !287, metadata !290, metadata !293, metadata !296, metadata !299, metadata !304, metadata !309, metadata !310, metadata !311, metadata !315, metadata !316, metadata !319, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !355, metadata !358, metadata !361, metadata !364, metadata !367, metadata !370, metadata !373, metadata !376, metadata !379, metadata !380, metadata !385, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !396, metadata !397, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !408, metadata !409, metadata !410, metadata !413, metadata !414, metadata !417, metadata !418, metadata !422, metadata !426, metadata !427, metadata !430, metadata !431, metadata !470, metadata !471, metadata !472, metadata !473, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !497, metadata !500}
!238 = metadata !{i32 786460, metadata !236, null, metadata !23, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_inheritance ]
!239 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !27, i32 35, i64 64, i64 64, i32 0, i32 0, null, metadata !240, i32 0, null, metadata !247} ; [ DW_TAG_class_type ]
!240 = metadata !{metadata !241, metadata !243}
!241 = metadata !{i32 786445, metadata !239, metadata !"V", metadata !27, i32 35, i64 33, i64 64, i64 0, i32 0, metadata !242} ; [ DW_TAG_member ]
!242 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!243 = metadata !{i32 786478, i32 0, metadata !239, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !27, i32 35, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 35} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{null, metadata !246}
!246 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !239} ; [ DW_TAG_pointer_type ]
!247 = metadata !{metadata !248, metadata !249}
!248 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !12, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!249 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !40, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!250 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1439, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1439} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!252 = metadata !{null, metadata !253}
!253 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !236} ; [ DW_TAG_pointer_type ]
!254 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1461, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1461} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{null, metadata !253, metadata !40}
!257 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1462, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1462} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{null, metadata !253, metadata !60}
!260 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1463, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1463} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{null, metadata !253, metadata !64}
!263 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1464, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1464} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{null, metadata !253, metadata !68}
!266 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1465, metadata !267, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1465} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!268 = metadata !{null, metadata !253, metadata !72}
!269 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1466, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1466} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!271 = metadata !{null, metadata !253, metadata !12}
!272 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1467, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1467} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!274 = metadata !{null, metadata !253, metadata !79}
!275 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1468, metadata !276, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1468} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !277, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!277 = metadata !{null, metadata !253, metadata !83}
!278 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1469, metadata !279, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1469} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!280 = metadata !{null, metadata !253, metadata !87}
!281 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1470, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1470} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{null, metadata !253, metadata !91}
!284 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1471, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1471} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{null, metadata !253, metadata !96}
!287 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1472, metadata !288, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1472} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!289 = metadata !{null, metadata !253, metadata !101}
!290 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1473, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1473} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !253, metadata !105}
!293 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1500, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1500} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{null, metadata !253, metadata !109}
!296 = metadata !{i32 786478, i32 0, metadata !236, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1507, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1507} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{null, metadata !253, metadata !109, metadata !60}
!299 = metadata !{i32 786478, i32 0, metadata !236, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE4readEv", metadata !23, i32 1528, metadata !300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1528} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!301 = metadata !{metadata !236, metadata !302}
!302 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !303} ; [ DW_TAG_pointer_type ]
!303 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_volatile_type ]
!304 = metadata !{i32 786478, i32 0, metadata !236, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EE5writeERKS0_", metadata !23, i32 1534, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1534} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{null, metadata !302, metadata !307}
!307 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_reference_type ]
!308 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_const_type ]
!309 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !23, i32 1546, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1546} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !23, i32 1555, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1555} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERVKS0_", metadata !23, i32 1578, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1578} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{metadata !314, metadata !253, metadata !307}
!314 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_reference_type ]
!315 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSERKS0_", metadata !23, i32 1583, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1583} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEPKc", metadata !23, i32 1587, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1587} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{metadata !314, metadata !253, metadata !109}
!319 = metadata !{i32 786478, i32 0, metadata !236, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEPKca", metadata !23, i32 1595, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1595} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{metadata !314, metadata !253, metadata !109, metadata !60}
!322 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEc", metadata !23, i32 1609, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1609} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{metadata !314, metadata !253, metadata !111}
!325 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEh", metadata !23, i32 1610, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1610} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{metadata !314, metadata !253, metadata !64}
!328 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEs", metadata !23, i32 1611, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1611} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{metadata !314, metadata !253, metadata !68}
!331 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEt", metadata !23, i32 1612, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1612} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !314, metadata !253, metadata !72}
!334 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEi", metadata !23, i32 1613, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1613} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{metadata !314, metadata !253, metadata !12}
!337 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEj", metadata !23, i32 1614, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1614} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{metadata !314, metadata !253, metadata !79}
!340 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEx", metadata !23, i32 1615, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1615} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{metadata !314, metadata !253, metadata !91}
!343 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEaSEy", metadata !23, i32 1616, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1616} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{metadata !314, metadata !253, metadata !96}
!346 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEcvxEv", metadata !23, i32 1654, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1654} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !349, metadata !354}
!349 = metadata !{i32 786454, metadata !236, metadata !"RetType", metadata !23, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !350} ; [ DW_TAG_typedef ]
!350 = metadata !{i32 786454, metadata !351, metadata !"Type", metadata !23, i32 1360, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ]
!351 = metadata !{i32 786434, null, metadata !"retval<5, true>", metadata !23, i32 1359, i64 8, i64 8, i32 0, i32 0, null, metadata !166, i32 0, null, metadata !352} ; [ DW_TAG_class_type ]
!352 = metadata !{metadata !353, metadata !249}
!353 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !12, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!354 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !308} ; [ DW_TAG_pointer_type ]
!355 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_boolEv", metadata !23, i32 1660, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1660} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!357 = metadata !{metadata !40, metadata !354}
!358 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6to_intEv", metadata !23, i32 1661, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1661} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{metadata !12, metadata !354}
!361 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_uintEv", metadata !23, i32 1662, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1662} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{metadata !79, metadata !354}
!364 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7to_longEv", metadata !23, i32 1663, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1663} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{metadata !83, metadata !354}
!367 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_ulongEv", metadata !23, i32 1664, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1664} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{metadata !87, metadata !354}
!370 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE8to_int64Ev", metadata !23, i32 1665, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1665} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{metadata !91, metadata !354}
!373 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_uint64Ev", metadata !23, i32 1666, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1666} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{metadata !96, metadata !354}
!376 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_doubleEv", metadata !23, i32 1667, metadata !377, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1667} ; [ DW_TAG_subprogram ]
!377 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!378 = metadata !{metadata !105, metadata !354}
!379 = metadata !{i32 786478, i32 0, metadata !236, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !23, i32 1680, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1680} ; [ DW_TAG_subprogram ]
!380 = metadata !{i32 786478, i32 0, metadata !236, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi33ELb1ELb1EE6lengthEv", metadata !23, i32 1681, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1681} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{metadata !12, metadata !383}
!383 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !384} ; [ DW_TAG_pointer_type ]
!384 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_const_type ]
!385 = metadata !{i32 786478, i32 0, metadata !236, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7reverseEv", metadata !23, i32 1686, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1686} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!387 = metadata !{metadata !314, metadata !253}
!388 = metadata !{i32 786478, i32 0, metadata !236, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE6iszeroEv", metadata !23, i32 1692, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1692} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786478, i32 0, metadata !236, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7is_zeroEv", metadata !23, i32 1697, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1697} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786478, i32 0, metadata !236, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4signEv", metadata !23, i32 1702, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1702} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786478, i32 0, metadata !236, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5clearEi", metadata !23, i32 1710, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1710} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786478, i32 0, metadata !236, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE6invertEi", metadata !23, i32 1716, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1716} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786478, i32 0, metadata !236, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE4testEi", metadata !23, i32 1724, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1724} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{metadata !40, metadata !354, metadata !12}
!396 = metadata !{i32 786478, i32 0, metadata !236, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEi", metadata !23, i32 1730, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1730} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786478, i32 0, metadata !236, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3setEib", metadata !23, i32 1736, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1736} ; [ DW_TAG_subprogram ]
!398 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!399 = metadata !{null, metadata !253, metadata !12, metadata !40}
!400 = metadata !{i32 786478, i32 0, metadata !236, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7lrotateEi", metadata !23, i32 1743, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1743} ; [ DW_TAG_subprogram ]
!401 = metadata !{i32 786478, i32 0, metadata !236, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7rrotateEi", metadata !23, i32 1752, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1752} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786478, i32 0, metadata !236, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE7set_bitEib", metadata !23, i32 1760, metadata !398, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1760} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786478, i32 0, metadata !236, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE7get_bitEi", metadata !23, i32 1765, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1765} ; [ DW_TAG_subprogram ]
!404 = metadata !{i32 786478, i32 0, metadata !236, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5b_notEv", metadata !23, i32 1770, metadata !251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1770} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786478, i32 0, metadata !236, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE17countLeadingZerosEv", metadata !23, i32 1777, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1777} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{metadata !12, metadata !253}
!408 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEv", metadata !23, i32 1834, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1834} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEv", metadata !23, i32 1838, metadata !386, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1838} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEppEi", metadata !23, i32 1846, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1846} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{metadata !308, metadata !253, metadata !12}
!413 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEmmEi", metadata !23, i32 1851, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1851} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEpsEv", metadata !23, i32 1860, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1860} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{metadata !236, metadata !354}
!417 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEntEv", metadata !23, i32 1866, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1866} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEngEv", metadata !23, i32 1871, metadata !419, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1871} ; [ DW_TAG_subprogram ]
!419 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!420 = metadata !{metadata !421, metadata !354}
!421 = metadata !{i32 786434, null, metadata !"ap_int_base<34, true, true>", metadata !23, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!422 = metadata !{i32 786478, i32 0, metadata !236, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !23, i32 2001, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2001} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{metadata !425, metadata !253, metadata !12, metadata !12}
!425 = metadata !{i32 786434, null, metadata !"ap_range_ref<33, true>", metadata !23, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!426 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEclEii", metadata !23, i32 2007, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2007} ; [ DW_TAG_subprogram ]
!427 = metadata !{i32 786478, i32 0, metadata !236, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE5rangeEii", metadata !23, i32 2013, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2013} ; [ DW_TAG_subprogram ]
!428 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!429 = metadata !{metadata !425, metadata !354, metadata !12, metadata !12}
!430 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEclEii", metadata !23, i32 2019, metadata !428, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2019} ; [ DW_TAG_subprogram ]
!431 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EEixEi", metadata !23, i32 2038, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2038} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!433 = metadata !{metadata !434, metadata !253, metadata !12}
!434 = metadata !{i32 786434, null, metadata !"ap_bit_ref<33, true>", metadata !23, i32 1194, i64 128, i64 64, i32 0, i32 0, null, metadata !435, i32 0, null, metadata !468} ; [ DW_TAG_class_type ]
!435 = metadata !{metadata !436, metadata !437, metadata !438, metadata !444, metadata !448, metadata !452, metadata !453, metadata !457, metadata !460, metadata !461, metadata !464, metadata !465}
!436 = metadata !{i32 786445, metadata !434, metadata !"d_bv", metadata !23, i32 1195, i64 64, i64 64, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ]
!437 = metadata !{i32 786445, metadata !434, metadata !"d_index", metadata !23, i32 1196, i64 32, i64 32, i64 64, i32 0, metadata !12} ; [ DW_TAG_member ]
!438 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !23, i32 1199, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1199} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{null, metadata !441, metadata !442}
!441 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !434} ; [ DW_TAG_pointer_type ]
!442 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !443} ; [ DW_TAG_reference_type ]
!443 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_const_type ]
!444 = metadata !{i32 786478, i32 0, metadata !434, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !23, i32 1202, metadata !445, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1202} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!446 = metadata !{null, metadata !441, metadata !447, metadata !12}
!447 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ]
!448 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi33ELb1EEcvbEv", metadata !23, i32 1204, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1204} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !40, metadata !451}
!451 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !443} ; [ DW_TAG_pointer_type ]
!452 = metadata !{i32 786478, i32 0, metadata !434, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", metadata !23, i32 1205, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1205} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEy", metadata !23, i32 1207, metadata !454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1207} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!455 = metadata !{metadata !456, metadata !441, metadata !97}
!456 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_reference_type ]
!457 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSERKS0_", metadata !23, i32 1227, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1227} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{metadata !456, metadata !441, metadata !442}
!460 = metadata !{i32 786478, i32 0, metadata !434, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi33ELb1EE3getEv", metadata !23, i32 1335, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1335} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786478, i32 0, metadata !434, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi33ELb1EE3getEv", metadata !23, i32 1339, metadata !462, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1339} ; [ DW_TAG_subprogram ]
!462 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !463, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!463 = metadata !{metadata !40, metadata !441}
!464 = metadata !{i32 786478, i32 0, metadata !434, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi33ELb1EEcoEv", metadata !23, i32 1348, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1348} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786478, i32 0, metadata !434, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi33ELb1EE6lengthEv", metadata !23, i32 1353, metadata !466, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1353} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{metadata !12, metadata !451}
!468 = metadata !{metadata !469, metadata !249}
!469 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !12, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!470 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EEixEi", metadata !23, i32 2052, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2052} ; [ DW_TAG_subprogram ]
!471 = metadata !{i32 786478, i32 0, metadata !236, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !23, i32 2066, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2066} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 786478, i32 0, metadata !236, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE3bitEi", metadata !23, i32 2080, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2080} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786478, i32 0, metadata !236, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !23, i32 2260, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2260} ; [ DW_TAG_subprogram ]
!474 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!475 = metadata !{metadata !40, metadata !253}
!476 = metadata !{i32 786478, i32 0, metadata !236, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !23, i32 2263, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2263} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786478, i32 0, metadata !236, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !23, i32 2266, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2266} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786478, i32 0, metadata !236, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !23, i32 2269, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2269} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786478, i32 0, metadata !236, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !23, i32 2272, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2272} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 786478, i32 0, metadata !236, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !23, i32 2275, metadata !474, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2275} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786478, i32 0, metadata !236, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10and_reduceEv", metadata !23, i32 2279, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2279} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786478, i32 0, metadata !236, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11nand_reduceEv", metadata !23, i32 2282, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2282} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786478, i32 0, metadata !236, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9or_reduceEv", metadata !23, i32 2285, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2285} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 786478, i32 0, metadata !236, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10nor_reduceEv", metadata !23, i32 2288, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2288} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786478, i32 0, metadata !236, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE10xor_reduceEv", metadata !23, i32 2291, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2291} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786478, i32 0, metadata !236, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE11xnor_reduceEv", metadata !23, i32 2294, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2294} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !23, i32 2301, metadata !488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2301} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!489 = metadata !{null, metadata !354, metadata !490, metadata !12, metadata !491, metadata !40}
!490 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!491 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !23, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !492, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!492 = metadata !{metadata !493, metadata !494, metadata !495, metadata !496}
!493 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!494 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!495 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!496 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!497 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringE8BaseModeb", metadata !23, i32 2328, metadata !498, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2328} ; [ DW_TAG_subprogram ]
!498 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !499, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!499 = metadata !{metadata !490, metadata !354, metadata !491, metadata !40}
!500 = metadata !{i32 786478, i32 0, metadata !236, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1ELb1EE9to_stringEab", metadata !23, i32 2332, metadata !501, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2332} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!502 = metadata !{metadata !490, metadata !354, metadata !60, metadata !40}
!503 = metadata !{metadata !469, metadata !249, metadata !504}
!504 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !40, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!505 = metadata !{i32 786478, i32 0, metadata !22, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE5rangeEii", metadata !23, i32 2001, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2001} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{metadata !508, metadata !44, metadata !12, metadata !12}
!508 = metadata !{i32 786434, null, metadata !"ap_range_ref<32, false>", metadata !23, i32 924, i64 128, i64 64, i32 0, i32 0, null, metadata !509, i32 0, null, metadata !565} ; [ DW_TAG_class_type ]
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !513, metadata !519, metadata !523, metadata !527, metadata !530, metadata !534, metadata !537, metadata !541, metadata !544, metadata !545, metadata !548, metadata !551, metadata !554, metadata !557, metadata !560, metadata !563, metadata !564}
!510 = metadata !{i32 786445, metadata !508, metadata !"d_bv", metadata !23, i32 925, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ]
!511 = metadata !{i32 786445, metadata !508, metadata !"l_index", metadata !23, i32 926, i64 32, i64 32, i64 64, i32 0, metadata !12} ; [ DW_TAG_member ]
!512 = metadata !{i32 786445, metadata !508, metadata !"h_index", metadata !23, i32 927, i64 32, i64 32, i64 96, i32 0, metadata !12} ; [ DW_TAG_member ]
!513 = metadata !{i32 786478, i32 0, metadata !508, metadata !"ap_range_ref", metadata !"ap_range_ref", metadata !"", metadata !23, i32 930, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 930} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{null, metadata !516, metadata !517}
!516 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !508} ; [ DW_TAG_pointer_type ]
!517 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !518} ; [ DW_TAG_reference_type ]
!518 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !508} ; [ DW_TAG_const_type ]
!519 = metadata !{i32 786478, i32 0, metadata !508, metadata !"ap_range_ref", metadata !"ap_range_ref", metadata !"", metadata !23, i32 933, metadata !520, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 933} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !521, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!521 = metadata !{null, metadata !516, metadata !522, metadata !12, metadata !12}
!522 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!523 = metadata !{i32 786478, i32 0, metadata !508, metadata !"operator ap_int_base", metadata !"operator ap_int_base", metadata !"_ZNK12ap_range_refILi32ELb0EEcv11ap_int_baseILi32ELb0ELb1EEEv", metadata !23, i32 938, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 938} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!525 = metadata !{metadata !22, metadata !526}
!526 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !518} ; [ DW_TAG_pointer_type ]
!527 = metadata !{i32 786478, i32 0, metadata !508, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK12ap_range_refILi32ELb0EEcvyEv", metadata !23, i32 944, metadata !528, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 944} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!529 = metadata !{metadata !97, metadata !526}
!530 = metadata !{i32 786478, i32 0, metadata !508, metadata !"operator=", metadata !"operator=", metadata !"_ZN12ap_range_refILi32ELb0EEaSEy", metadata !23, i32 948, metadata !531, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 948} ; [ DW_TAG_subprogram ]
!531 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!532 = metadata !{metadata !533, metadata !516, metadata !97}
!533 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !508} ; [ DW_TAG_reference_type ]
!534 = metadata !{i32 786478, i32 0, metadata !508, metadata !"operator=", metadata !"operator=", metadata !"_ZN12ap_range_refILi32ELb0EEaSERKS0_", metadata !23, i32 966, metadata !535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 966} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!536 = metadata !{metadata !533, metadata !516, metadata !517}
!537 = metadata !{i32 786478, i32 0, metadata !508, metadata !"operator,", metadata !"operator,", metadata !"_ZN12ap_range_refILi32ELb0EEcmER11ap_int_baseILi32ELb0ELb1EE", metadata !23, i32 1021, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1021} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{metadata !540, metadata !516, metadata !128}
!540 = metadata !{i32 786434, null, metadata !"ap_concat_ref<32, ap_range_ref<32, false>, 32, ap_int_base<32, false, true> >", metadata !23, i32 687, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!541 = metadata !{i32 786478, i32 0, metadata !508, metadata !"length", metadata !"length", metadata !"_ZNK12ap_range_refILi32ELb0EE6lengthEv", metadata !23, i32 1132, metadata !542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1132} ; [ DW_TAG_subprogram ]
!542 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!543 = metadata !{metadata !12, metadata !526}
!544 = metadata !{i32 786478, i32 0, metadata !508, metadata !"to_int", metadata !"to_int", metadata !"_ZNK12ap_range_refILi32ELb0EE6to_intEv", metadata !23, i32 1136, metadata !542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1136} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786478, i32 0, metadata !508, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK12ap_range_refILi32ELb0EE7to_uintEv", metadata !23, i32 1139, metadata !546, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1139} ; [ DW_TAG_subprogram ]
!546 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!547 = metadata !{metadata !79, metadata !526}
!548 = metadata !{i32 786478, i32 0, metadata !508, metadata !"to_long", metadata !"to_long", metadata !"_ZNK12ap_range_refILi32ELb0EE7to_longEv", metadata !23, i32 1142, metadata !549, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1142} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !550, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!550 = metadata !{metadata !83, metadata !526}
!551 = metadata !{i32 786478, i32 0, metadata !508, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK12ap_range_refILi32ELb0EE8to_ulongEv", metadata !23, i32 1145, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1145} ; [ DW_TAG_subprogram ]
!552 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!553 = metadata !{metadata !87, metadata !526}
!554 = metadata !{i32 786478, i32 0, metadata !508, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK12ap_range_refILi32ELb0EE8to_int64Ev", metadata !23, i32 1148, metadata !555, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1148} ; [ DW_TAG_subprogram ]
!555 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!556 = metadata !{metadata !91, metadata !526}
!557 = metadata !{i32 786478, i32 0, metadata !508, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK12ap_range_refILi32ELb0EE9to_uint64Ev", metadata !23, i32 1151, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1151} ; [ DW_TAG_subprogram ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!559 = metadata !{metadata !96, metadata !526}
!560 = metadata !{i32 786478, i32 0, metadata !508, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE10and_reduceEv", metadata !23, i32 1154, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1154} ; [ DW_TAG_subprogram ]
!561 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!562 = metadata !{metadata !40, metadata !526}
!563 = metadata !{i32 786478, i32 0, metadata !508, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE9or_reduceEv", metadata !23, i32 1165, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1165} ; [ DW_TAG_subprogram ]
!564 = metadata !{i32 786478, i32 0, metadata !508, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK12ap_range_refILi32ELb0EE10xor_reduceEv", metadata !23, i32 1176, metadata !561, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1176} ; [ DW_TAG_subprogram ]
!565 = metadata !{metadata !566, metadata !39}
!566 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !12, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!567 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEclEii", metadata !23, i32 2007, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2007} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786478, i32 0, metadata !22, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE5rangeEii", metadata !23, i32 2013, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2013} ; [ DW_TAG_subprogram ]
!569 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !570, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!570 = metadata !{metadata !508, metadata !169, metadata !12, metadata !12}
!571 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEclEii", metadata !23, i32 2019, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2019} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EEixEi", metadata !23, i32 2038, metadata !573, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2038} ; [ DW_TAG_subprogram ]
!573 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !574, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!574 = metadata !{metadata !575, metadata !44, metadata !12}
!575 = metadata !{i32 786434, null, metadata !"ap_bit_ref<32, false>", metadata !23, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!576 = metadata !{i32 786478, i32 0, metadata !22, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EEixEi", metadata !23, i32 2052, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2052} ; [ DW_TAG_subprogram ]
!577 = metadata !{i32 786478, i32 0, metadata !22, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE3bitEi", metadata !23, i32 2066, metadata !573, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2066} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786478, i32 0, metadata !22, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE3bitEi", metadata !23, i32 2080, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2080} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786478, i32 0, metadata !22, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10and_reduceEv", metadata !23, i32 2260, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2260} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!581 = metadata !{metadata !40, metadata !44}
!582 = metadata !{i32 786478, i32 0, metadata !22, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE11nand_reduceEv", metadata !23, i32 2263, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2263} ; [ DW_TAG_subprogram ]
!583 = metadata !{i32 786478, i32 0, metadata !22, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE9or_reduceEv", metadata !23, i32 2266, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2266} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786478, i32 0, metadata !22, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10nor_reduceEv", metadata !23, i32 2269, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2269} ; [ DW_TAG_subprogram ]
!585 = metadata !{i32 786478, i32 0, metadata !22, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE10xor_reduceEv", metadata !23, i32 2272, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2272} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786478, i32 0, metadata !22, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi32ELb0ELb1EE11xnor_reduceEv", metadata !23, i32 2275, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2275} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786478, i32 0, metadata !22, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10and_reduceEv", metadata !23, i32 2279, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2279} ; [ DW_TAG_subprogram ]
!588 = metadata !{i32 786478, i32 0, metadata !22, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE11nand_reduceEv", metadata !23, i32 2282, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2282} ; [ DW_TAG_subprogram ]
!589 = metadata !{i32 786478, i32 0, metadata !22, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9or_reduceEv", metadata !23, i32 2285, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2285} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786478, i32 0, metadata !22, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10nor_reduceEv", metadata !23, i32 2288, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2288} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786478, i32 0, metadata !22, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE10xor_reduceEv", metadata !23, i32 2291, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2291} ; [ DW_TAG_subprogram ]
!592 = metadata !{i32 786478, i32 0, metadata !22, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE11xnor_reduceEv", metadata !23, i32 2294, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2294} ; [ DW_TAG_subprogram ]
!593 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !23, i32 2301, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2301} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!595 = metadata !{null, metadata !169, metadata !490, metadata !12, metadata !491, metadata !40}
!596 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringE8BaseModeb", metadata !23, i32 2328, metadata !597, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2328} ; [ DW_TAG_subprogram ]
!597 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!598 = metadata !{metadata !490, metadata !169, metadata !491, metadata !40}
!599 = metadata !{i32 786478, i32 0, metadata !22, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb0ELb1EE9to_stringEab", metadata !23, i32 2332, metadata !600, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2332} ; [ DW_TAG_subprogram ]
!600 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!601 = metadata !{metadata !490, metadata !169, metadata !60, metadata !40}
!602 = metadata !{metadata !566, metadata !39, metadata !504}
!603 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 183, metadata !604, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 183} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !605, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!605 = metadata !{null, metadata !606}
!606 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !18} ; [ DW_TAG_pointer_type ]
!607 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint<32>", metadata !"ap_uint<32>", metadata !"", metadata !19, i32 185, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !612, i32 0, metadata !35, i32 185} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!609 = metadata !{null, metadata !606, metadata !610}
!610 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !611} ; [ DW_TAG_reference_type ]
!611 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ]
!612 = metadata !{metadata !51}
!613 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint<32>", metadata !"ap_uint<32>", metadata !"", metadata !19, i32 191, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !612, i32 0, metadata !35, i32 191} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint<32, false>", metadata !"ap_uint<32, false>", metadata !"", metadata !19, i32 226, metadata !615, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !50, i32 0, metadata !35, i32 226} ; [ DW_TAG_subprogram ]
!615 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!616 = metadata !{null, metadata !606, metadata !48}
!617 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 245, metadata !618, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 245} ; [ DW_TAG_subprogram ]
!618 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !619, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!619 = metadata !{null, metadata !606, metadata !40}
!620 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 246, metadata !621, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 246} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !622, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!622 = metadata !{null, metadata !606, metadata !60}
!623 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 247, metadata !624, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 247} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!625 = metadata !{null, metadata !606, metadata !64}
!626 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 248, metadata !627, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 248} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!628 = metadata !{null, metadata !606, metadata !68}
!629 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 249, metadata !630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 249} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!631 = metadata !{null, metadata !606, metadata !72}
!632 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 250, metadata !633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 250} ; [ DW_TAG_subprogram ]
!633 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !634, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!634 = metadata !{null, metadata !606, metadata !12}
!635 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 251, metadata !636, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 251} ; [ DW_TAG_subprogram ]
!636 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !637, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!637 = metadata !{null, metadata !606, metadata !79}
!638 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 252, metadata !639, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 252} ; [ DW_TAG_subprogram ]
!639 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !640, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!640 = metadata !{null, metadata !606, metadata !83}
!641 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 253, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 253} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!643 = metadata !{null, metadata !606, metadata !87}
!644 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 254, metadata !645, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 254} ; [ DW_TAG_subprogram ]
!645 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !646, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!646 = metadata !{null, metadata !606, metadata !97}
!647 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 255, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 255} ; [ DW_TAG_subprogram ]
!648 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !649, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!649 = metadata !{null, metadata !606, metadata !92}
!650 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 256, metadata !651, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 256} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!652 = metadata !{null, metadata !606, metadata !101}
!653 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 257, metadata !654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 257} ; [ DW_TAG_subprogram ]
!654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!655 = metadata !{null, metadata !606, metadata !105}
!656 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 259, metadata !657, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 259} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !658, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!658 = metadata !{null, metadata !606, metadata !109}
!659 = metadata !{i32 786478, i32 0, metadata !18, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 260, metadata !660, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 260} ; [ DW_TAG_subprogram ]
!660 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!661 = metadata !{null, metadata !606, metadata !109, metadata !60}
!662 = metadata !{i32 786478, i32 0, metadata !18, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi32EEaSERKS0_", metadata !19, i32 263, metadata !663, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 263} ; [ DW_TAG_subprogram ]
!663 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !664, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!664 = metadata !{null, metadata !665, metadata !610}
!665 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !666} ; [ DW_TAG_pointer_type ]
!666 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_volatile_type ]
!667 = metadata !{i32 786478, i32 0, metadata !18, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi32EEaSERVKS0_", metadata !19, i32 267, metadata !663, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 267} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786478, i32 0, metadata !18, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERVKS0_", metadata !19, i32 271, metadata !669, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 271} ; [ DW_TAG_subprogram ]
!669 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !670, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!670 = metadata !{metadata !671, metadata !606, metadata !610}
!671 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_reference_type ]
!672 = metadata !{i32 786478, i32 0, metadata !18, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi32EEaSERKS0_", metadata !19, i32 276, metadata !669, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 276} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786478, i32 0, metadata !18, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !19, i32 180, metadata !604, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !35, i32 180} ; [ DW_TAG_subprogram ]
!674 = metadata !{metadata !566}
!675 = metadata !{i32 786445, metadata !14, metadata !"keep", metadata !15, i32 103, i64 8, i64 8, i64 32, i32 0, metadata !676} ; [ DW_TAG_member ]
!676 = metadata !{i32 786434, null, metadata !"ap_uint<4>", metadata !19, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !677, i32 0, null, metadata !980} ; [ DW_TAG_class_type ]
!677 = metadata !{metadata !678, metadata !909, metadata !913, metadata !919, metadata !920, metadata !923, metadata !926, metadata !929, metadata !932, metadata !935, metadata !938, metadata !941, metadata !944, metadata !947, metadata !950, metadata !953, metadata !956, metadata !959, metadata !962, metadata !965, metadata !968, metadata !973, metadata !974, metadata !978, metadata !979}
!678 = metadata !{i32 786460, metadata !676, null, metadata !19, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !679} ; [ DW_TAG_inheritance ]
!679 = metadata !{i32 786434, null, metadata !"ap_int_base<4, false, true>", metadata !23, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !680, i32 0, null, metadata !907} ; [ DW_TAG_class_type ]
!680 = metadata !{metadata !681, metadata !690, metadata !694, metadata !701, metadata !702, metadata !705, metadata !708, metadata !711, metadata !714, metadata !717, metadata !720, metadata !723, metadata !726, metadata !729, metadata !732, metadata !735, metadata !738, metadata !741, metadata !744, metadata !747, metadata !752, metadata !755, metadata !756, metadata !757, metadata !761, metadata !762, metadata !765, metadata !768, metadata !771, metadata !774, metadata !777, metadata !780, metadata !783, metadata !786, metadata !789, metadata !792, metadata !801, metadata !804, metadata !807, metadata !810, metadata !813, metadata !816, metadata !819, metadata !822, metadata !825, metadata !826, metadata !831, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !842, metadata !843, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !854, metadata !855, metadata !856, metadata !859, metadata !860, metadata !863, metadata !864, metadata !868, metadata !872, metadata !873, metadata !876, metadata !877, metadata !881, metadata !882, metadata !883, metadata !884, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !901, metadata !904}
!681 = metadata !{i32 786460, metadata !679, null, metadata !23, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !682} ; [ DW_TAG_inheritance ]
!682 = metadata !{i32 786434, null, metadata !"ssdm_int<4 + 1024 * 0, false>", metadata !27, i32 6, i64 8, i64 8, i32 0, i32 0, null, metadata !683, i32 0, null, metadata !167} ; [ DW_TAG_class_type ]
!683 = metadata !{metadata !684, metadata !686}
!684 = metadata !{i32 786445, metadata !682, metadata !"V", metadata !27, i32 6, i64 4, i64 4, i64 0, i32 0, metadata !685} ; [ DW_TAG_member ]
!685 = metadata !{i32 786468, null, metadata !"uint4", null, i32 0, i64 4, i64 4, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!686 = metadata !{i32 786478, i32 0, metadata !682, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !27, i32 6, metadata !687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 6} ; [ DW_TAG_subprogram ]
!687 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!688 = metadata !{null, metadata !689}
!689 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !682} ; [ DW_TAG_pointer_type ]
!690 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1439, metadata !691, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1439} ; [ DW_TAG_subprogram ]
!691 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !692, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!692 = metadata !{null, metadata !693}
!693 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !679} ; [ DW_TAG_pointer_type ]
!694 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base<4, false>", metadata !"ap_int_base<4, false>", metadata !"", metadata !23, i32 1451, metadata !695, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !699, i32 0, metadata !35, i32 1451} ; [ DW_TAG_subprogram ]
!695 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!696 = metadata !{null, metadata !693, metadata !697}
!697 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !698} ; [ DW_TAG_reference_type ]
!698 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !679} ; [ DW_TAG_const_type ]
!699 = metadata !{metadata !700, metadata !52}
!700 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !12, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!701 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base<4, false>", metadata !"ap_int_base<4, false>", metadata !"", metadata !23, i32 1454, metadata !695, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !699, i32 0, metadata !35, i32 1454} ; [ DW_TAG_subprogram ]
!702 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1461, metadata !703, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1461} ; [ DW_TAG_subprogram ]
!703 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !704, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!704 = metadata !{null, metadata !693, metadata !40}
!705 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1462, metadata !706, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1462} ; [ DW_TAG_subprogram ]
!706 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!707 = metadata !{null, metadata !693, metadata !60}
!708 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1463, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1463} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!710 = metadata !{null, metadata !693, metadata !64}
!711 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1464, metadata !712, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1464} ; [ DW_TAG_subprogram ]
!712 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!713 = metadata !{null, metadata !693, metadata !68}
!714 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1465, metadata !715, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1465} ; [ DW_TAG_subprogram ]
!715 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !716, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!716 = metadata !{null, metadata !693, metadata !72}
!717 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1466, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1466} ; [ DW_TAG_subprogram ]
!718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!719 = metadata !{null, metadata !693, metadata !12}
!720 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1467, metadata !721, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1467} ; [ DW_TAG_subprogram ]
!721 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !722, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!722 = metadata !{null, metadata !693, metadata !79}
!723 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1468, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1468} ; [ DW_TAG_subprogram ]
!724 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!725 = metadata !{null, metadata !693, metadata !83}
!726 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1469, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1469} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{null, metadata !693, metadata !87}
!729 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1470, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1470} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{null, metadata !693, metadata !91}
!732 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1471, metadata !733, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1471} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!734 = metadata !{null, metadata !693, metadata !96}
!735 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1472, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1472} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{null, metadata !693, metadata !101}
!738 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1473, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1473} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!740 = metadata !{null, metadata !693, metadata !105}
!741 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1500, metadata !742, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1500} ; [ DW_TAG_subprogram ]
!742 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !743, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!743 = metadata !{null, metadata !693, metadata !109}
!744 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1507, metadata !745, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1507} ; [ DW_TAG_subprogram ]
!745 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!746 = metadata !{null, metadata !693, metadata !109, metadata !60}
!747 = metadata !{i32 786478, i32 0, metadata !679, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EE4readEv", metadata !23, i32 1528, metadata !748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1528} ; [ DW_TAG_subprogram ]
!748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!749 = metadata !{metadata !679, metadata !750}
!750 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !751} ; [ DW_TAG_pointer_type ]
!751 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !679} ; [ DW_TAG_volatile_type ]
!752 = metadata !{i32 786478, i32 0, metadata !679, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EE5writeERKS0_", metadata !23, i32 1534, metadata !753, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1534} ; [ DW_TAG_subprogram ]
!753 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !754, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!754 = metadata !{null, metadata !750, metadata !697}
!755 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EEaSERVKS0_", metadata !23, i32 1546, metadata !753, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1546} ; [ DW_TAG_subprogram ]
!756 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi4ELb0ELb1EEaSERKS0_", metadata !23, i32 1555, metadata !753, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1555} ; [ DW_TAG_subprogram ]
!757 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSERVKS0_", metadata !23, i32 1578, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1578} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!759 = metadata !{metadata !760, metadata !693, metadata !697}
!760 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !679} ; [ DW_TAG_reference_type ]
!761 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSERKS0_", metadata !23, i32 1583, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1583} ; [ DW_TAG_subprogram ]
!762 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEPKc", metadata !23, i32 1587, metadata !763, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1587} ; [ DW_TAG_subprogram ]
!763 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!764 = metadata !{metadata !760, metadata !693, metadata !109}
!765 = metadata !{i32 786478, i32 0, metadata !679, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3setEPKca", metadata !23, i32 1595, metadata !766, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1595} ; [ DW_TAG_subprogram ]
!766 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !767, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!767 = metadata !{metadata !760, metadata !693, metadata !109, metadata !60}
!768 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEc", metadata !23, i32 1609, metadata !769, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1609} ; [ DW_TAG_subprogram ]
!769 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !770, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!770 = metadata !{metadata !760, metadata !693, metadata !111}
!771 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEh", metadata !23, i32 1610, metadata !772, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1610} ; [ DW_TAG_subprogram ]
!772 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !773, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!773 = metadata !{metadata !760, metadata !693, metadata !64}
!774 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEs", metadata !23, i32 1611, metadata !775, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1611} ; [ DW_TAG_subprogram ]
!775 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!776 = metadata !{metadata !760, metadata !693, metadata !68}
!777 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEt", metadata !23, i32 1612, metadata !778, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1612} ; [ DW_TAG_subprogram ]
!778 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !779, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!779 = metadata !{metadata !760, metadata !693, metadata !72}
!780 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEi", metadata !23, i32 1613, metadata !781, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1613} ; [ DW_TAG_subprogram ]
!781 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!782 = metadata !{metadata !760, metadata !693, metadata !12}
!783 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEj", metadata !23, i32 1614, metadata !784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1614} ; [ DW_TAG_subprogram ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!785 = metadata !{metadata !760, metadata !693, metadata !79}
!786 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEx", metadata !23, i32 1615, metadata !787, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1615} ; [ DW_TAG_subprogram ]
!787 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !788, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!788 = metadata !{metadata !760, metadata !693, metadata !91}
!789 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEaSEy", metadata !23, i32 1616, metadata !790, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1616} ; [ DW_TAG_subprogram ]
!790 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !791, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!791 = metadata !{metadata !760, metadata !693, metadata !96}
!792 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEcvhEv", metadata !23, i32 1654, metadata !793, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1654} ; [ DW_TAG_subprogram ]
!793 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !794, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!794 = metadata !{metadata !795, metadata !800}
!795 = metadata !{i32 786454, metadata !679, metadata !"RetType", metadata !23, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !796} ; [ DW_TAG_typedef ]
!796 = metadata !{i32 786454, metadata !797, metadata !"Type", metadata !23, i32 1371, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ]
!797 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !23, i32 1370, i64 8, i64 8, i32 0, i32 0, null, metadata !166, i32 0, null, metadata !798} ; [ DW_TAG_class_type ]
!798 = metadata !{metadata !799, metadata !39}
!799 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !12, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!800 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !698} ; [ DW_TAG_pointer_type ]
!801 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7to_boolEv", metadata !23, i32 1660, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1660} ; [ DW_TAG_subprogram ]
!802 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !803, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!803 = metadata !{metadata !40, metadata !800}
!804 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE6to_intEv", metadata !23, i32 1661, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1661} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!806 = metadata !{metadata !12, metadata !800}
!807 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7to_uintEv", metadata !23, i32 1662, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1662} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!809 = metadata !{metadata !79, metadata !800}
!810 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7to_longEv", metadata !23, i32 1663, metadata !811, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1663} ; [ DW_TAG_subprogram ]
!811 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !812, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!812 = metadata !{metadata !83, metadata !800}
!813 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE8to_ulongEv", metadata !23, i32 1664, metadata !814, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1664} ; [ DW_TAG_subprogram ]
!814 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !815, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!815 = metadata !{metadata !87, metadata !800}
!816 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE8to_int64Ev", metadata !23, i32 1665, metadata !817, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1665} ; [ DW_TAG_subprogram ]
!817 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !818, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!818 = metadata !{metadata !91, metadata !800}
!819 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_uint64Ev", metadata !23, i32 1666, metadata !820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1666} ; [ DW_TAG_subprogram ]
!820 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !821, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!821 = metadata !{metadata !96, metadata !800}
!822 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_doubleEv", metadata !23, i32 1667, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1667} ; [ DW_TAG_subprogram ]
!823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!824 = metadata !{metadata !105, metadata !800}
!825 = metadata !{i32 786478, i32 0, metadata !679, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE6lengthEv", metadata !23, i32 1680, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1680} ; [ DW_TAG_subprogram ]
!826 = metadata !{i32 786478, i32 0, metadata !679, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi4ELb0ELb1EE6lengthEv", metadata !23, i32 1681, metadata !827, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1681} ; [ DW_TAG_subprogram ]
!827 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !828, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!828 = metadata !{metadata !12, metadata !829}
!829 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !830} ; [ DW_TAG_pointer_type ]
!830 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !751} ; [ DW_TAG_const_type ]
!831 = metadata !{i32 786478, i32 0, metadata !679, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7reverseEv", metadata !23, i32 1686, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1686} ; [ DW_TAG_subprogram ]
!832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!833 = metadata !{metadata !760, metadata !693}
!834 = metadata !{i32 786478, i32 0, metadata !679, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE6iszeroEv", metadata !23, i32 1692, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1692} ; [ DW_TAG_subprogram ]
!835 = metadata !{i32 786478, i32 0, metadata !679, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7is_zeroEv", metadata !23, i32 1697, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1697} ; [ DW_TAG_subprogram ]
!836 = metadata !{i32 786478, i32 0, metadata !679, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE4signEv", metadata !23, i32 1702, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1702} ; [ DW_TAG_subprogram ]
!837 = metadata !{i32 786478, i32 0, metadata !679, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE5clearEi", metadata !23, i32 1710, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1710} ; [ DW_TAG_subprogram ]
!838 = metadata !{i32 786478, i32 0, metadata !679, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE6invertEi", metadata !23, i32 1716, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1716} ; [ DW_TAG_subprogram ]
!839 = metadata !{i32 786478, i32 0, metadata !679, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE4testEi", metadata !23, i32 1724, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1724} ; [ DW_TAG_subprogram ]
!840 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!841 = metadata !{metadata !40, metadata !800, metadata !12}
!842 = metadata !{i32 786478, i32 0, metadata !679, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3setEi", metadata !23, i32 1730, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1730} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786478, i32 0, metadata !679, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3setEib", metadata !23, i32 1736, metadata !844, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1736} ; [ DW_TAG_subprogram ]
!844 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !845, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!845 = metadata !{null, metadata !693, metadata !12, metadata !40}
!846 = metadata !{i32 786478, i32 0, metadata !679, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7lrotateEi", metadata !23, i32 1743, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1743} ; [ DW_TAG_subprogram ]
!847 = metadata !{i32 786478, i32 0, metadata !679, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7rrotateEi", metadata !23, i32 1752, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1752} ; [ DW_TAG_subprogram ]
!848 = metadata !{i32 786478, i32 0, metadata !679, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE7set_bitEib", metadata !23, i32 1760, metadata !844, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1760} ; [ DW_TAG_subprogram ]
!849 = metadata !{i32 786478, i32 0, metadata !679, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE7get_bitEi", metadata !23, i32 1765, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1765} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786478, i32 0, metadata !679, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE5b_notEv", metadata !23, i32 1770, metadata !691, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1770} ; [ DW_TAG_subprogram ]
!851 = metadata !{i32 786478, i32 0, metadata !679, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE17countLeadingZerosEv", metadata !23, i32 1777, metadata !852, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1777} ; [ DW_TAG_subprogram ]
!852 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !853, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!853 = metadata !{metadata !12, metadata !693}
!854 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEppEv", metadata !23, i32 1834, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1834} ; [ DW_TAG_subprogram ]
!855 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEmmEv", metadata !23, i32 1838, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1838} ; [ DW_TAG_subprogram ]
!856 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEppEi", metadata !23, i32 1846, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1846} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !858, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!858 = metadata !{metadata !698, metadata !693, metadata !12}
!859 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEmmEi", metadata !23, i32 1851, metadata !857, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1851} ; [ DW_TAG_subprogram ]
!860 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEpsEv", metadata !23, i32 1860, metadata !861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1860} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !862, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!862 = metadata !{metadata !679, metadata !800}
!863 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEntEv", metadata !23, i32 1866, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1866} ; [ DW_TAG_subprogram ]
!864 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEngEv", metadata !23, i32 1871, metadata !865, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1871} ; [ DW_TAG_subprogram ]
!865 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !866, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!866 = metadata !{metadata !867, metadata !800}
!867 = metadata !{i32 786434, null, metadata !"ap_int_base<5, true, true>", metadata !23, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!868 = metadata !{i32 786478, i32 0, metadata !679, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE5rangeEii", metadata !23, i32 2001, metadata !869, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2001} ; [ DW_TAG_subprogram ]
!869 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !870, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!870 = metadata !{metadata !871, metadata !693, metadata !12, metadata !12}
!871 = metadata !{i32 786434, null, metadata !"ap_range_ref<4, false>", metadata !23, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!872 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEclEii", metadata !23, i32 2007, metadata !869, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2007} ; [ DW_TAG_subprogram ]
!873 = metadata !{i32 786478, i32 0, metadata !679, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE5rangeEii", metadata !23, i32 2013, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2013} ; [ DW_TAG_subprogram ]
!874 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!875 = metadata !{metadata !871, metadata !800, metadata !12, metadata !12}
!876 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEclEii", metadata !23, i32 2019, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2019} ; [ DW_TAG_subprogram ]
!877 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EEixEi", metadata !23, i32 2038, metadata !878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2038} ; [ DW_TAG_subprogram ]
!878 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !879, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!879 = metadata !{metadata !880, metadata !693, metadata !12}
!880 = metadata !{i32 786434, null, metadata !"ap_bit_ref<4, false>", metadata !23, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!881 = metadata !{i32 786478, i32 0, metadata !679, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EEixEi", metadata !23, i32 2052, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2052} ; [ DW_TAG_subprogram ]
!882 = metadata !{i32 786478, i32 0, metadata !679, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE3bitEi", metadata !23, i32 2066, metadata !878, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2066} ; [ DW_TAG_subprogram ]
!883 = metadata !{i32 786478, i32 0, metadata !679, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE3bitEi", metadata !23, i32 2080, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2080} ; [ DW_TAG_subprogram ]
!884 = metadata !{i32 786478, i32 0, metadata !679, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE10and_reduceEv", metadata !23, i32 2260, metadata !885, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2260} ; [ DW_TAG_subprogram ]
!885 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !886, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!886 = metadata !{metadata !40, metadata !693}
!887 = metadata !{i32 786478, i32 0, metadata !679, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE11nand_reduceEv", metadata !23, i32 2263, metadata !885, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2263} ; [ DW_TAG_subprogram ]
!888 = metadata !{i32 786478, i32 0, metadata !679, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE9or_reduceEv", metadata !23, i32 2266, metadata !885, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2266} ; [ DW_TAG_subprogram ]
!889 = metadata !{i32 786478, i32 0, metadata !679, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE10nor_reduceEv", metadata !23, i32 2269, metadata !885, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2269} ; [ DW_TAG_subprogram ]
!890 = metadata !{i32 786478, i32 0, metadata !679, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE10xor_reduceEv", metadata !23, i32 2272, metadata !885, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2272} ; [ DW_TAG_subprogram ]
!891 = metadata !{i32 786478, i32 0, metadata !679, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi4ELb0ELb1EE11xnor_reduceEv", metadata !23, i32 2275, metadata !885, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2275} ; [ DW_TAG_subprogram ]
!892 = metadata !{i32 786478, i32 0, metadata !679, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE10and_reduceEv", metadata !23, i32 2279, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2279} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786478, i32 0, metadata !679, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE11nand_reduceEv", metadata !23, i32 2282, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2282} ; [ DW_TAG_subprogram ]
!894 = metadata !{i32 786478, i32 0, metadata !679, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9or_reduceEv", metadata !23, i32 2285, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2285} ; [ DW_TAG_subprogram ]
!895 = metadata !{i32 786478, i32 0, metadata !679, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE10nor_reduceEv", metadata !23, i32 2288, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2288} ; [ DW_TAG_subprogram ]
!896 = metadata !{i32 786478, i32 0, metadata !679, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE10xor_reduceEv", metadata !23, i32 2291, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2291} ; [ DW_TAG_subprogram ]
!897 = metadata !{i32 786478, i32 0, metadata !679, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE11xnor_reduceEv", metadata !23, i32 2294, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2294} ; [ DW_TAG_subprogram ]
!898 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !23, i32 2301, metadata !899, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2301} ; [ DW_TAG_subprogram ]
!899 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !900, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!900 = metadata !{null, metadata !800, metadata !490, metadata !12, metadata !491, metadata !40}
!901 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_stringE8BaseModeb", metadata !23, i32 2328, metadata !902, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2328} ; [ DW_TAG_subprogram ]
!902 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!903 = metadata !{metadata !490, metadata !800, metadata !491, metadata !40}
!904 = metadata !{i32 786478, i32 0, metadata !679, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0ELb1EE9to_stringEab", metadata !23, i32 2332, metadata !905, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2332} ; [ DW_TAG_subprogram ]
!905 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !906, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!906 = metadata !{metadata !490, metadata !800, metadata !60, metadata !40}
!907 = metadata !{metadata !908, metadata !39, metadata !504}
!908 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !12, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!909 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 183, metadata !910, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 183} ; [ DW_TAG_subprogram ]
!910 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !911, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!911 = metadata !{null, metadata !912}
!912 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !676} ; [ DW_TAG_pointer_type ]
!913 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"", metadata !19, i32 185, metadata !914, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !918, i32 0, metadata !35, i32 185} ; [ DW_TAG_subprogram ]
!914 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !915, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!915 = metadata !{null, metadata !912, metadata !916}
!916 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !917} ; [ DW_TAG_reference_type ]
!917 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_const_type ]
!918 = metadata !{metadata !700}
!919 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint<4>", metadata !"ap_uint<4>", metadata !"", metadata !19, i32 191, metadata !914, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !918, i32 0, metadata !35, i32 191} ; [ DW_TAG_subprogram ]
!920 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint<4, false>", metadata !"ap_uint<4, false>", metadata !"", metadata !19, i32 226, metadata !921, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !699, i32 0, metadata !35, i32 226} ; [ DW_TAG_subprogram ]
!921 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !922, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!922 = metadata !{null, metadata !912, metadata !697}
!923 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 245, metadata !924, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 245} ; [ DW_TAG_subprogram ]
!924 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !925, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!925 = metadata !{null, metadata !912, metadata !40}
!926 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 246, metadata !927, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 246} ; [ DW_TAG_subprogram ]
!927 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !928, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!928 = metadata !{null, metadata !912, metadata !60}
!929 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 247, metadata !930, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 247} ; [ DW_TAG_subprogram ]
!930 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !931, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!931 = metadata !{null, metadata !912, metadata !64}
!932 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 248, metadata !933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 248} ; [ DW_TAG_subprogram ]
!933 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !934, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!934 = metadata !{null, metadata !912, metadata !68}
!935 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 249, metadata !936, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 249} ; [ DW_TAG_subprogram ]
!936 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !937, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!937 = metadata !{null, metadata !912, metadata !72}
!938 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 250, metadata !939, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 250} ; [ DW_TAG_subprogram ]
!939 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !940, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!940 = metadata !{null, metadata !912, metadata !12}
!941 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 251, metadata !942, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 251} ; [ DW_TAG_subprogram ]
!942 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !943, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!943 = metadata !{null, metadata !912, metadata !79}
!944 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 252, metadata !945, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 252} ; [ DW_TAG_subprogram ]
!945 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !946, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!946 = metadata !{null, metadata !912, metadata !83}
!947 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 253, metadata !948, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 253} ; [ DW_TAG_subprogram ]
!948 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !949, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!949 = metadata !{null, metadata !912, metadata !87}
!950 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 254, metadata !951, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 254} ; [ DW_TAG_subprogram ]
!951 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !952, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!952 = metadata !{null, metadata !912, metadata !97}
!953 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 255, metadata !954, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 255} ; [ DW_TAG_subprogram ]
!954 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !955, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!955 = metadata !{null, metadata !912, metadata !92}
!956 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 256, metadata !957, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 256} ; [ DW_TAG_subprogram ]
!957 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !958, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!958 = metadata !{null, metadata !912, metadata !101}
!959 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 257, metadata !960, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 257} ; [ DW_TAG_subprogram ]
!960 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !961, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!961 = metadata !{null, metadata !912, metadata !105}
!962 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 259, metadata !963, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 259} ; [ DW_TAG_subprogram ]
!963 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !964, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!964 = metadata !{null, metadata !912, metadata !109}
!965 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 260, metadata !966, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 260} ; [ DW_TAG_subprogram ]
!966 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !967, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!967 = metadata !{null, metadata !912, metadata !109, metadata !60}
!968 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi4EEaSERKS0_", metadata !19, i32 263, metadata !969, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 263} ; [ DW_TAG_subprogram ]
!969 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !970, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!970 = metadata !{null, metadata !971, metadata !916}
!971 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !972} ; [ DW_TAG_pointer_type ]
!972 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_volatile_type ]
!973 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi4EEaSERVKS0_", metadata !19, i32 267, metadata !969, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 267} ; [ DW_TAG_subprogram ]
!974 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi4EEaSERVKS0_", metadata !19, i32 271, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 271} ; [ DW_TAG_subprogram ]
!975 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!976 = metadata !{metadata !977, metadata !912, metadata !916}
!977 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_reference_type ]
!978 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi4EEaSERKS0_", metadata !19, i32 276, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 276} ; [ DW_TAG_subprogram ]
!979 = metadata !{i32 786478, i32 0, metadata !676, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !19, i32 180, metadata !910, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !35, i32 180} ; [ DW_TAG_subprogram ]
!980 = metadata !{metadata !908}
!981 = metadata !{i32 786445, metadata !14, metadata !"strb", metadata !15, i32 104, i64 8, i64 8, i64 40, i32 0, metadata !676} ; [ DW_TAG_member ]
!982 = metadata !{i32 786445, metadata !14, metadata !"user", metadata !15, i32 105, i64 8, i64 8, i64 48, i32 0, metadata !983} ; [ DW_TAG_member ]
!983 = metadata !{i32 786434, null, metadata !"ap_uint<1>", metadata !19, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !984, i32 0, null, metadata !1283} ; [ DW_TAG_class_type ]
!984 = metadata !{metadata !985, metadata !1212, metadata !1216, metadata !1222, metadata !1223, metadata !1226, metadata !1229, metadata !1232, metadata !1235, metadata !1238, metadata !1241, metadata !1244, metadata !1247, metadata !1250, metadata !1253, metadata !1256, metadata !1259, metadata !1262, metadata !1265, metadata !1268, metadata !1271, metadata !1276, metadata !1277, metadata !1281, metadata !1282}
!985 = metadata !{i32 786460, metadata !983, null, metadata !19, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_inheritance ]
!986 = metadata !{i32 786434, null, metadata !"ap_int_base<1, false, true>", metadata !23, i32 1398, i64 8, i64 8, i32 0, i32 0, null, metadata !987, i32 0, null, metadata !1210} ; [ DW_TAG_class_type ]
!987 = metadata !{metadata !988, metadata !997, metadata !1001, metadata !1008, metadata !1009, metadata !1012, metadata !1015, metadata !1018, metadata !1021, metadata !1024, metadata !1027, metadata !1030, metadata !1033, metadata !1036, metadata !1039, metadata !1042, metadata !1045, metadata !1048, metadata !1051, metadata !1054, metadata !1059, metadata !1062, metadata !1063, metadata !1064, metadata !1068, metadata !1069, metadata !1072, metadata !1075, metadata !1078, metadata !1081, metadata !1084, metadata !1087, metadata !1090, metadata !1093, metadata !1096, metadata !1099, metadata !1104, metadata !1107, metadata !1110, metadata !1113, metadata !1116, metadata !1119, metadata !1122, metadata !1125, metadata !1128, metadata !1129, metadata !1134, metadata !1137, metadata !1138, metadata !1139, metadata !1140, metadata !1141, metadata !1142, metadata !1145, metadata !1146, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1157, metadata !1158, metadata !1159, metadata !1162, metadata !1163, metadata !1166, metadata !1167, metadata !1171, metadata !1175, metadata !1176, metadata !1179, metadata !1180, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1190, metadata !1191, metadata !1192, metadata !1193, metadata !1194, metadata !1195, metadata !1196, metadata !1197, metadata !1198, metadata !1199, metadata !1200, metadata !1201, metadata !1204, metadata !1207}
!988 = metadata !{i32 786460, metadata !986, null, metadata !23, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !989} ; [ DW_TAG_inheritance ]
!989 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !27, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !990, i32 0, null, metadata !798} ; [ DW_TAG_class_type ]
!990 = metadata !{metadata !991, metadata !993}
!991 = metadata !{i32 786445, metadata !989, metadata !"V", metadata !27, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !992} ; [ DW_TAG_member ]
!992 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!993 = metadata !{i32 786478, i32 0, metadata !989, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !27, i32 3, metadata !994, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 3} ; [ DW_TAG_subprogram ]
!994 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !995, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!995 = metadata !{null, metadata !996}
!996 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !989} ; [ DW_TAG_pointer_type ]
!997 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1439, metadata !998, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1439} ; [ DW_TAG_subprogram ]
!998 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !999, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!999 = metadata !{null, metadata !1000}
!1000 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !986} ; [ DW_TAG_pointer_type ]
!1001 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base<1, false>", metadata !"ap_int_base<1, false>", metadata !"", metadata !23, i32 1451, metadata !1002, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1006, i32 0, metadata !35, i32 1451} ; [ DW_TAG_subprogram ]
!1002 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1003, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1003 = metadata !{null, metadata !1000, metadata !1004}
!1004 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1005} ; [ DW_TAG_reference_type ]
!1005 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_const_type ]
!1006 = metadata !{metadata !1007, metadata !52}
!1007 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !12, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1008 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base<1, false>", metadata !"ap_int_base<1, false>", metadata !"", metadata !23, i32 1454, metadata !1002, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1006, i32 0, metadata !35, i32 1454} ; [ DW_TAG_subprogram ]
!1009 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1461, metadata !1010, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1461} ; [ DW_TAG_subprogram ]
!1010 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1011, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1011 = metadata !{null, metadata !1000, metadata !40}
!1012 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1462, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1462} ; [ DW_TAG_subprogram ]
!1013 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1014, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1014 = metadata !{null, metadata !1000, metadata !60}
!1015 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1463, metadata !1016, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1463} ; [ DW_TAG_subprogram ]
!1016 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1017, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1017 = metadata !{null, metadata !1000, metadata !64}
!1018 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1464, metadata !1019, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1464} ; [ DW_TAG_subprogram ]
!1019 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1020, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1020 = metadata !{null, metadata !1000, metadata !68}
!1021 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1465, metadata !1022, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1465} ; [ DW_TAG_subprogram ]
!1022 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1023, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1023 = metadata !{null, metadata !1000, metadata !72}
!1024 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1466, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1466} ; [ DW_TAG_subprogram ]
!1025 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1026, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1026 = metadata !{null, metadata !1000, metadata !12}
!1027 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1467, metadata !1028, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1467} ; [ DW_TAG_subprogram ]
!1028 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1029, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1029 = metadata !{null, metadata !1000, metadata !79}
!1030 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1468, metadata !1031, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1468} ; [ DW_TAG_subprogram ]
!1031 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1032, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1032 = metadata !{null, metadata !1000, metadata !83}
!1033 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1469, metadata !1034, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1469} ; [ DW_TAG_subprogram ]
!1034 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1035, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1035 = metadata !{null, metadata !1000, metadata !87}
!1036 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1470, metadata !1037, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1470} ; [ DW_TAG_subprogram ]
!1037 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1038, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1038 = metadata !{null, metadata !1000, metadata !91}
!1039 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1471, metadata !1040, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1471} ; [ DW_TAG_subprogram ]
!1040 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1041, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1041 = metadata !{null, metadata !1000, metadata !96}
!1042 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1472, metadata !1043, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1472} ; [ DW_TAG_subprogram ]
!1043 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1044, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1044 = metadata !{null, metadata !1000, metadata !101}
!1045 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1473, metadata !1046, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !35, i32 1473} ; [ DW_TAG_subprogram ]
!1046 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1047, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1047 = metadata !{null, metadata !1000, metadata !105}
!1048 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1500, metadata !1049, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1500} ; [ DW_TAG_subprogram ]
!1049 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1050, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1050 = metadata !{null, metadata !1000, metadata !109}
!1051 = metadata !{i32 786478, i32 0, metadata !986, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !23, i32 1507, metadata !1052, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1507} ; [ DW_TAG_subprogram ]
!1052 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1053, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1053 = metadata !{null, metadata !1000, metadata !109, metadata !60}
!1054 = metadata !{i32 786478, i32 0, metadata !986, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE4readEv", metadata !23, i32 1528, metadata !1055, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1528} ; [ DW_TAG_subprogram ]
!1055 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1056, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1056 = metadata !{metadata !986, metadata !1057}
!1057 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1058} ; [ DW_TAG_pointer_type ]
!1058 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_volatile_type ]
!1059 = metadata !{i32 786478, i32 0, metadata !986, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE5writeERKS0_", metadata !23, i32 1534, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1534} ; [ DW_TAG_subprogram ]
!1060 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1061, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1061 = metadata !{null, metadata !1057, metadata !1004}
!1062 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !23, i32 1546, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1546} ; [ DW_TAG_subprogram ]
!1063 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !23, i32 1555, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1555} ; [ DW_TAG_subprogram ]
!1064 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !23, i32 1578, metadata !1065, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1578} ; [ DW_TAG_subprogram ]
!1065 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1066, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1066 = metadata !{metadata !1067, metadata !1000, metadata !1004}
!1067 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_reference_type ]
!1068 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !23, i32 1583, metadata !1065, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1583} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEPKc", metadata !23, i32 1587, metadata !1070, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1587} ; [ DW_TAG_subprogram ]
!1070 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1071, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1071 = metadata !{metadata !1067, metadata !1000, metadata !109}
!1072 = metadata !{i32 786478, i32 0, metadata !986, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEPKca", metadata !23, i32 1595, metadata !1073, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1595} ; [ DW_TAG_subprogram ]
!1073 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1074, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1074 = metadata !{metadata !1067, metadata !1000, metadata !109, metadata !60}
!1075 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEc", metadata !23, i32 1609, metadata !1076, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1609} ; [ DW_TAG_subprogram ]
!1076 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1077, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1077 = metadata !{metadata !1067, metadata !1000, metadata !111}
!1078 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEh", metadata !23, i32 1610, metadata !1079, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1610} ; [ DW_TAG_subprogram ]
!1079 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1080, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1080 = metadata !{metadata !1067, metadata !1000, metadata !64}
!1081 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEs", metadata !23, i32 1611, metadata !1082, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1611} ; [ DW_TAG_subprogram ]
!1082 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1083, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1083 = metadata !{metadata !1067, metadata !1000, metadata !68}
!1084 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEt", metadata !23, i32 1612, metadata !1085, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1612} ; [ DW_TAG_subprogram ]
!1085 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1086, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1086 = metadata !{metadata !1067, metadata !1000, metadata !72}
!1087 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEi", metadata !23, i32 1613, metadata !1088, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1613} ; [ DW_TAG_subprogram ]
!1088 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1089, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1089 = metadata !{metadata !1067, metadata !1000, metadata !12}
!1090 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEj", metadata !23, i32 1614, metadata !1091, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1614} ; [ DW_TAG_subprogram ]
!1091 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1092, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1092 = metadata !{metadata !1067, metadata !1000, metadata !79}
!1093 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEx", metadata !23, i32 1615, metadata !1094, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1615} ; [ DW_TAG_subprogram ]
!1094 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1095, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1095 = metadata !{metadata !1067, metadata !1000, metadata !91}
!1096 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEy", metadata !23, i32 1616, metadata !1097, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1616} ; [ DW_TAG_subprogram ]
!1097 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1098, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1098 = metadata !{metadata !1067, metadata !1000, metadata !96}
!1099 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEcvhEv", metadata !23, i32 1654, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1654} ; [ DW_TAG_subprogram ]
!1100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1101 = metadata !{metadata !1102, metadata !1103}
!1102 = metadata !{i32 786454, metadata !986, metadata !"RetType", metadata !23, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !796} ; [ DW_TAG_typedef ]
!1103 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1005} ; [ DW_TAG_pointer_type ]
!1104 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_boolEv", metadata !23, i32 1660, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1660} ; [ DW_TAG_subprogram ]
!1105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1106 = metadata !{metadata !40, metadata !1103}
!1107 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6to_intEv", metadata !23, i32 1661, metadata !1108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1661} ; [ DW_TAG_subprogram ]
!1108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1109 = metadata !{metadata !12, metadata !1103}
!1110 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_uintEv", metadata !23, i32 1662, metadata !1111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1662} ; [ DW_TAG_subprogram ]
!1111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1112 = metadata !{metadata !79, metadata !1103}
!1113 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_longEv", metadata !23, i32 1663, metadata !1114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1663} ; [ DW_TAG_subprogram ]
!1114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1115 = metadata !{metadata !83, metadata !1103}
!1116 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ulongEv", metadata !23, i32 1664, metadata !1117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1664} ; [ DW_TAG_subprogram ]
!1117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1118 = metadata !{metadata !87, metadata !1103}
!1119 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_int64Ev", metadata !23, i32 1665, metadata !1120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1665} ; [ DW_TAG_subprogram ]
!1120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1121 = metadata !{metadata !91, metadata !1103}
!1122 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_uint64Ev", metadata !23, i32 1666, metadata !1123, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1666} ; [ DW_TAG_subprogram ]
!1123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1124 = metadata !{metadata !96, metadata !1103}
!1125 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_doubleEv", metadata !23, i32 1667, metadata !1126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1667} ; [ DW_TAG_subprogram ]
!1126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1127 = metadata !{metadata !105, metadata !1103}
!1128 = metadata !{i32 786478, i32 0, metadata !986, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !23, i32 1680, metadata !1108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1680} ; [ DW_TAG_subprogram ]
!1129 = metadata !{i32 786478, i32 0, metadata !986, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !23, i32 1681, metadata !1130, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1681} ; [ DW_TAG_subprogram ]
!1130 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1131 = metadata !{metadata !12, metadata !1132}
!1132 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1133} ; [ DW_TAG_pointer_type ]
!1133 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1058} ; [ DW_TAG_const_type ]
!1134 = metadata !{i32 786478, i32 0, metadata !986, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7reverseEv", metadata !23, i32 1686, metadata !1135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1686} ; [ DW_TAG_subprogram ]
!1135 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1136 = metadata !{metadata !1067, metadata !1000}
!1137 = metadata !{i32 786478, i32 0, metadata !986, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6iszeroEv", metadata !23, i32 1692, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1692} ; [ DW_TAG_subprogram ]
!1138 = metadata !{i32 786478, i32 0, metadata !986, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7is_zeroEv", metadata !23, i32 1697, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1697} ; [ DW_TAG_subprogram ]
!1139 = metadata !{i32 786478, i32 0, metadata !986, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4signEv", metadata !23, i32 1702, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1702} ; [ DW_TAG_subprogram ]
!1140 = metadata !{i32 786478, i32 0, metadata !986, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5clearEi", metadata !23, i32 1710, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1710} ; [ DW_TAG_subprogram ]
!1141 = metadata !{i32 786478, i32 0, metadata !986, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE6invertEi", metadata !23, i32 1716, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1716} ; [ DW_TAG_subprogram ]
!1142 = metadata !{i32 786478, i32 0, metadata !986, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4testEi", metadata !23, i32 1724, metadata !1143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1724} ; [ DW_TAG_subprogram ]
!1143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1144 = metadata !{metadata !40, metadata !1103, metadata !12}
!1145 = metadata !{i32 786478, i32 0, metadata !986, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEi", metadata !23, i32 1730, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1730} ; [ DW_TAG_subprogram ]
!1146 = metadata !{i32 786478, i32 0, metadata !986, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEib", metadata !23, i32 1736, metadata !1147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1736} ; [ DW_TAG_subprogram ]
!1147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1148 = metadata !{null, metadata !1000, metadata !12, metadata !40}
!1149 = metadata !{i32 786478, i32 0, metadata !986, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7lrotateEi", metadata !23, i32 1743, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1743} ; [ DW_TAG_subprogram ]
!1150 = metadata !{i32 786478, i32 0, metadata !986, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7rrotateEi", metadata !23, i32 1752, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1752} ; [ DW_TAG_subprogram ]
!1151 = metadata !{i32 786478, i32 0, metadata !986, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7set_bitEib", metadata !23, i32 1760, metadata !1147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1760} ; [ DW_TAG_subprogram ]
!1152 = metadata !{i32 786478, i32 0, metadata !986, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7get_bitEi", metadata !23, i32 1765, metadata !1143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1765} ; [ DW_TAG_subprogram ]
!1153 = metadata !{i32 786478, i32 0, metadata !986, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5b_notEv", metadata !23, i32 1770, metadata !998, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1770} ; [ DW_TAG_subprogram ]
!1154 = metadata !{i32 786478, i32 0, metadata !986, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE17countLeadingZerosEv", metadata !23, i32 1777, metadata !1155, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1777} ; [ DW_TAG_subprogram ]
!1155 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1156, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1156 = metadata !{metadata !12, metadata !1000}
!1157 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEv", metadata !23, i32 1834, metadata !1135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1834} ; [ DW_TAG_subprogram ]
!1158 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEv", metadata !23, i32 1838, metadata !1135, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1838} ; [ DW_TAG_subprogram ]
!1159 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEi", metadata !23, i32 1846, metadata !1160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1846} ; [ DW_TAG_subprogram ]
!1160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1161 = metadata !{metadata !1005, metadata !1000, metadata !12}
!1162 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEi", metadata !23, i32 1851, metadata !1160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1851} ; [ DW_TAG_subprogram ]
!1163 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEpsEv", metadata !23, i32 1860, metadata !1164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1860} ; [ DW_TAG_subprogram ]
!1164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1165 = metadata !{metadata !986, metadata !1103}
!1166 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEntEv", metadata !23, i32 1866, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1866} ; [ DW_TAG_subprogram ]
!1167 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEngEv", metadata !23, i32 1871, metadata !1168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 1871} ; [ DW_TAG_subprogram ]
!1168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1169 = metadata !{metadata !1170, metadata !1103}
!1170 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !23, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1171 = metadata !{i32 786478, i32 0, metadata !986, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !23, i32 2001, metadata !1172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2001} ; [ DW_TAG_subprogram ]
!1172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1173 = metadata !{metadata !1174, metadata !1000, metadata !12, metadata !12}
!1174 = metadata !{i32 786434, null, metadata !"ap_range_ref<1, false>", metadata !23, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1175 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEclEii", metadata !23, i32 2007, metadata !1172, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2007} ; [ DW_TAG_subprogram ]
!1176 = metadata !{i32 786478, i32 0, metadata !986, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !23, i32 2013, metadata !1177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2013} ; [ DW_TAG_subprogram ]
!1177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1178 = metadata !{metadata !1174, metadata !1103, metadata !12, metadata !12}
!1179 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEclEii", metadata !23, i32 2019, metadata !1177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2019} ; [ DW_TAG_subprogram ]
!1180 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEixEi", metadata !23, i32 2038, metadata !1181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2038} ; [ DW_TAG_subprogram ]
!1181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1182 = metadata !{metadata !1183, metadata !1000, metadata !12}
!1183 = metadata !{i32 786434, null, metadata !"ap_bit_ref<1, false>", metadata !23, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1184 = metadata !{i32 786478, i32 0, metadata !986, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEixEi", metadata !23, i32 2052, metadata !1143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2052} ; [ DW_TAG_subprogram ]
!1185 = metadata !{i32 786478, i32 0, metadata !986, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !23, i32 2066, metadata !1181, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2066} ; [ DW_TAG_subprogram ]
!1186 = metadata !{i32 786478, i32 0, metadata !986, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !23, i32 2080, metadata !1143, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2080} ; [ DW_TAG_subprogram ]
!1187 = metadata !{i32 786478, i32 0, metadata !986, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !23, i32 2260, metadata !1188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2260} ; [ DW_TAG_subprogram ]
!1188 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1189 = metadata !{metadata !40, metadata !1000}
!1190 = metadata !{i32 786478, i32 0, metadata !986, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !23, i32 2263, metadata !1188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2263} ; [ DW_TAG_subprogram ]
!1191 = metadata !{i32 786478, i32 0, metadata !986, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !23, i32 2266, metadata !1188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2266} ; [ DW_TAG_subprogram ]
!1192 = metadata !{i32 786478, i32 0, metadata !986, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !23, i32 2269, metadata !1188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2269} ; [ DW_TAG_subprogram ]
!1193 = metadata !{i32 786478, i32 0, metadata !986, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !23, i32 2272, metadata !1188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2272} ; [ DW_TAG_subprogram ]
!1194 = metadata !{i32 786478, i32 0, metadata !986, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !23, i32 2275, metadata !1188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2275} ; [ DW_TAG_subprogram ]
!1195 = metadata !{i32 786478, i32 0, metadata !986, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !23, i32 2279, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2279} ; [ DW_TAG_subprogram ]
!1196 = metadata !{i32 786478, i32 0, metadata !986, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !23, i32 2282, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2282} ; [ DW_TAG_subprogram ]
!1197 = metadata !{i32 786478, i32 0, metadata !986, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !23, i32 2285, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2285} ; [ DW_TAG_subprogram ]
!1198 = metadata !{i32 786478, i32 0, metadata !986, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !23, i32 2288, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2288} ; [ DW_TAG_subprogram ]
!1199 = metadata !{i32 786478, i32 0, metadata !986, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !23, i32 2291, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2291} ; [ DW_TAG_subprogram ]
!1200 = metadata !{i32 786478, i32 0, metadata !986, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !23, i32 2294, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2294} ; [ DW_TAG_subprogram ]
!1201 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !23, i32 2301, metadata !1202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2301} ; [ DW_TAG_subprogram ]
!1202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1203 = metadata !{null, metadata !1103, metadata !490, metadata !12, metadata !491, metadata !40}
!1204 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringE8BaseModeb", metadata !23, i32 2328, metadata !1205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2328} ; [ DW_TAG_subprogram ]
!1205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1206 = metadata !{metadata !490, metadata !1103, metadata !491, metadata !40}
!1207 = metadata !{i32 786478, i32 0, metadata !986, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEab", metadata !23, i32 2332, metadata !1208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 2332} ; [ DW_TAG_subprogram ]
!1208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1209 = metadata !{metadata !490, metadata !1103, metadata !60, metadata !40}
!1210 = metadata !{metadata !1211, metadata !39, metadata !504}
!1211 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !12, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1212 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 183, metadata !1213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 183} ; [ DW_TAG_subprogram ]
!1213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1214 = metadata !{null, metadata !1215}
!1215 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !983} ; [ DW_TAG_pointer_type ]
!1216 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint<1>", metadata !"ap_uint<1>", metadata !"", metadata !19, i32 185, metadata !1217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1221, i32 0, metadata !35, i32 185} ; [ DW_TAG_subprogram ]
!1217 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1218, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1218 = metadata !{null, metadata !1215, metadata !1219}
!1219 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1220} ; [ DW_TAG_reference_type ]
!1220 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !983} ; [ DW_TAG_const_type ]
!1221 = metadata !{metadata !1007}
!1222 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint<1>", metadata !"ap_uint<1>", metadata !"", metadata !19, i32 191, metadata !1217, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1221, i32 0, metadata !35, i32 191} ; [ DW_TAG_subprogram ]
!1223 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint<1, false>", metadata !"ap_uint<1, false>", metadata !"", metadata !19, i32 226, metadata !1224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1006, i32 0, metadata !35, i32 226} ; [ DW_TAG_subprogram ]
!1224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1225 = metadata !{null, metadata !1215, metadata !1004}
!1226 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 245, metadata !1227, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 245} ; [ DW_TAG_subprogram ]
!1227 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1228, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1228 = metadata !{null, metadata !1215, metadata !40}
!1229 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 246, metadata !1230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 246} ; [ DW_TAG_subprogram ]
!1230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1231 = metadata !{null, metadata !1215, metadata !60}
!1232 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 247, metadata !1233, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 247} ; [ DW_TAG_subprogram ]
!1233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1234 = metadata !{null, metadata !1215, metadata !64}
!1235 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 248, metadata !1236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 248} ; [ DW_TAG_subprogram ]
!1236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1237 = metadata !{null, metadata !1215, metadata !68}
!1238 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 249, metadata !1239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 249} ; [ DW_TAG_subprogram ]
!1239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1240 = metadata !{null, metadata !1215, metadata !72}
!1241 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 250, metadata !1242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 250} ; [ DW_TAG_subprogram ]
!1242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1243 = metadata !{null, metadata !1215, metadata !12}
!1244 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 251, metadata !1245, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 251} ; [ DW_TAG_subprogram ]
!1245 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1246, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1246 = metadata !{null, metadata !1215, metadata !79}
!1247 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 252, metadata !1248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 252} ; [ DW_TAG_subprogram ]
!1248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1249 = metadata !{null, metadata !1215, metadata !83}
!1250 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 253, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 253} ; [ DW_TAG_subprogram ]
!1251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1252 = metadata !{null, metadata !1215, metadata !87}
!1253 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 254, metadata !1254, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 254} ; [ DW_TAG_subprogram ]
!1254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1255 = metadata !{null, metadata !1215, metadata !97}
!1256 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 255, metadata !1257, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 255} ; [ DW_TAG_subprogram ]
!1257 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1258, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1258 = metadata !{null, metadata !1215, metadata !92}
!1259 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 256, metadata !1260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 256} ; [ DW_TAG_subprogram ]
!1260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1261 = metadata !{null, metadata !1215, metadata !101}
!1262 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 257, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 257} ; [ DW_TAG_subprogram ]
!1263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1264 = metadata !{null, metadata !1215, metadata !105}
!1265 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 259, metadata !1266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 259} ; [ DW_TAG_subprogram ]
!1266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1267 = metadata !{null, metadata !1215, metadata !109}
!1268 = metadata !{i32 786478, i32 0, metadata !983, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !19, i32 260, metadata !1269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 260} ; [ DW_TAG_subprogram ]
!1269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1270 = metadata !{null, metadata !1215, metadata !109, metadata !60}
!1271 = metadata !{i32 786478, i32 0, metadata !983, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !19, i32 263, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 263} ; [ DW_TAG_subprogram ]
!1272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1273 = metadata !{null, metadata !1274, metadata !1219}
!1274 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1275} ; [ DW_TAG_pointer_type ]
!1275 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !983} ; [ DW_TAG_volatile_type ]
!1276 = metadata !{i32 786478, i32 0, metadata !983, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERVKS0_", metadata !19, i32 267, metadata !1272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 267} ; [ DW_TAG_subprogram ]
!1277 = metadata !{i32 786478, i32 0, metadata !983, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERVKS0_", metadata !19, i32 271, metadata !1278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 271} ; [ DW_TAG_subprogram ]
!1278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1279 = metadata !{metadata !1280, metadata !1215, metadata !1219}
!1280 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !983} ; [ DW_TAG_reference_type ]
!1281 = metadata !{i32 786478, i32 0, metadata !983, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi1EEaSERKS0_", metadata !19, i32 276, metadata !1278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !35, i32 276} ; [ DW_TAG_subprogram ]
!1282 = metadata !{i32 786478, i32 0, metadata !983, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !19, i32 180, metadata !1213, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !35, i32 180} ; [ DW_TAG_subprogram ]
!1283 = metadata !{metadata !1211}
!1284 = metadata !{i32 786445, metadata !14, metadata !"last", metadata !15, i32 106, i64 8, i64 8, i64 56, i32 0, metadata !983} ; [ DW_TAG_member ]
!1285 = metadata !{i32 786445, metadata !14, metadata !"id", metadata !15, i32 107, i64 8, i64 8, i64 64, i32 0, metadata !983} ; [ DW_TAG_member ]
!1286 = metadata !{i32 786445, metadata !14, metadata !"dest", metadata !15, i32 108, i64 8, i64 8, i64 72, i32 0, metadata !983} ; [ DW_TAG_member ]
!1287 = metadata !{i32 786478, i32 0, metadata !14, metadata !"ap_axiu", metadata !"ap_axiu", metadata !"", metadata !15, i32 101, metadata !1288, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !35, i32 101} ; [ DW_TAG_subprogram ]
!1288 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1289, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1289 = metadata !{null, metadata !1290}
!1290 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !14} ; [ DW_TAG_pointer_type ]
!1291 = metadata !{metadata !1292, metadata !1293, metadata !1294, metadata !1295}
!1292 = metadata !{i32 786480, null, metadata !"D", metadata !12, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1293 = metadata !{i32 786480, null, metadata !"U", metadata !12, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1294 = metadata !{i32 786480, null, metadata !"TI", metadata !12, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1295 = metadata !{i32 786480, null, metadata !"TD", metadata !12, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1296 = metadata !{i32 37, i32 13, metadata !8, null}
!1297 = metadata !{i32 786689, metadata !8, metadata !"number_of_days", metadata !9, i32 16777252, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1298 = metadata !{i32 36, i32 32, metadata !8, null}
!1299 = metadata !{i32 786689, metadata !1300, metadata !"NUMBER_OF_DAYS", metadata !9, i32 33554800, metadata !12, i32 0, metadata !1304} ; [ DW_TAG_arg_variable ]
!1300 = metadata !{i32 786478, i32 0, metadata !9, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", metadata !9, i32 366, metadata !1301, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !35, i32 369} ; [ DW_TAG_subprogram ]
!1301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1302 = metadata !{null, metadata !1303, metadata !12}
!1303 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ]
!1304 = metadata !{i32 81, i32 2, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !8, i32 56, i32 1, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!1306 = metadata !{i32 368, i32 7, metadata !1300, metadata !1304}
!1307 = metadata !{metadata !1308}
!1308 = metadata !{i32 0, i32 31, metadata !1309}
!1309 = metadata !{metadata !1310}
!1310 = metadata !{metadata !"number_of_days", metadata !1311, metadata !"int", i32 0, i32 31}
!1311 = metadata !{metadata !1312}
!1312 = metadata !{i32 0, i32 0, i32 0}
!1313 = metadata !{metadata !1314}
!1314 = metadata !{i32 0, i32 31, metadata !1315}
!1315 = metadata !{metadata !1316}
!1316 = metadata !{metadata !"number_of_indices", metadata !1311, metadata !"int", i32 0, i32 31}
!1317 = metadata !{metadata !1318}
!1318 = metadata !{i32 0, i32 31, metadata !1319}
!1319 = metadata !{metadata !1320}
!1320 = metadata !{metadata !"in_indices.data.V", metadata !1321, metadata !"uint32", i32 0, i32 31}
!1321 = metadata !{metadata !1322}
!1322 = metadata !{i32 0, i32 2519999, i32 1}
!1323 = metadata !{metadata !1324}
!1324 = metadata !{i32 0, i32 3, metadata !1325}
!1325 = metadata !{metadata !1326}
!1326 = metadata !{metadata !"in_indices.keep.V", metadata !1321, metadata !"uint4", i32 0, i32 3}
!1327 = metadata !{metadata !1328}
!1328 = metadata !{i32 0, i32 3, metadata !1329}
!1329 = metadata !{metadata !1330}
!1330 = metadata !{metadata !"in_indices.strb.V", metadata !1321, metadata !"uint4", i32 0, i32 3}
!1331 = metadata !{metadata !1332}
!1332 = metadata !{i32 0, i32 0, metadata !1333}
!1333 = metadata !{metadata !1334}
!1334 = metadata !{metadata !"in_indices.user.V", metadata !1321, metadata !"uint1", i32 0, i32 0}
!1335 = metadata !{metadata !1336}
!1336 = metadata !{i32 0, i32 0, metadata !1337}
!1337 = metadata !{metadata !1338}
!1338 = metadata !{metadata !"in_indices.last.V", metadata !1321, metadata !"uint1", i32 0, i32 0}
!1339 = metadata !{metadata !1340}
!1340 = metadata !{i32 0, i32 0, metadata !1341}
!1341 = metadata !{metadata !1342}
!1342 = metadata !{metadata !"in_indices.id.V", metadata !1321, metadata !"uint1", i32 0, i32 0}
!1343 = metadata !{metadata !1344}
!1344 = metadata !{i32 0, i32 0, metadata !1345}
!1345 = metadata !{metadata !1346}
!1346 = metadata !{metadata !"in_indices.dest.V", metadata !1321, metadata !"uint1", i32 0, i32 0}
!1347 = metadata !{metadata !1348}
!1348 = metadata !{i32 0, i32 31, metadata !1349}
!1349 = metadata !{metadata !1350}
!1350 = metadata !{metadata !"out_correlation.data.V", metadata !1351, metadata !"uint32", i32 0, i32 31}
!1351 = metadata !{metadata !1352}
!1352 = metadata !{i32 0, i32 49994999, i32 1}
!1353 = metadata !{metadata !1354}
!1354 = metadata !{i32 0, i32 3, metadata !1355}
!1355 = metadata !{metadata !1356}
!1356 = metadata !{metadata !"out_correlation.keep.V", metadata !1351, metadata !"uint4", i32 0, i32 3}
!1357 = metadata !{metadata !1358}
!1358 = metadata !{i32 0, i32 3, metadata !1359}
!1359 = metadata !{metadata !1360}
!1360 = metadata !{metadata !"out_correlation.strb.V", metadata !1351, metadata !"uint4", i32 0, i32 3}
!1361 = metadata !{metadata !1362}
!1362 = metadata !{i32 0, i32 0, metadata !1363}
!1363 = metadata !{metadata !1364}
!1364 = metadata !{metadata !"out_correlation.user.V", metadata !1351, metadata !"uint1", i32 0, i32 0}
!1365 = metadata !{metadata !1366}
!1366 = metadata !{i32 0, i32 0, metadata !1367}
!1367 = metadata !{metadata !1368}
!1368 = metadata !{metadata !"out_correlation.last.V", metadata !1351, metadata !"uint1", i32 0, i32 0}
!1369 = metadata !{metadata !1370}
!1370 = metadata !{i32 0, i32 0, metadata !1371}
!1371 = metadata !{metadata !1372}
!1372 = metadata !{metadata !"out_correlation.id.V", metadata !1351, metadata !"uint1", i32 0, i32 0}
!1373 = metadata !{metadata !1374}
!1374 = metadata !{i32 0, i32 0, metadata !1375}
!1375 = metadata !{metadata !1376}
!1376 = metadata !{metadata !"out_correlation.dest.V", metadata !1351, metadata !"uint1", i32 0, i32 0}
!1377 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.data.V", null, i32 39, metadata !1379, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1378 = metadata !{i32 786689, metadata !8, metadata !"in_indices", metadata !9, i32 50331687, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1379 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80640000, i64 32, i32 0, i32 0, metadata !1380, metadata !1388, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1380 = metadata !{i32 786438, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !15, i32 101, i64 32, i64 32, i32 0, i32 0, null, metadata !1381, i32 0, null, metadata !1291} ; [ DW_TAG_class_field_type ]
!1381 = metadata !{metadata !1382}
!1382 = metadata !{i32 786438, null, metadata !"ap_uint<32>", metadata !19, i32 180, i64 32, i64 32, i32 0, i32 0, null, metadata !1383, i32 0, null, metadata !674} ; [ DW_TAG_class_field_type ]
!1383 = metadata !{metadata !1384}
!1384 = metadata !{i32 786438, null, metadata !"ap_int_base<32, false, true>", metadata !23, i32 1398, i64 32, i64 32, i32 0, i32 0, null, metadata !1385, i32 0, null, metadata !602} ; [ DW_TAG_class_field_type ]
!1385 = metadata !{metadata !1386}
!1386 = metadata !{i32 786438, null, metadata !"ssdm_int<32 + 1024 * 0, false>", metadata !27, i32 34, i64 32, i64 32, i32 0, i32 0, null, metadata !1387, i32 0, null, metadata !37} ; [ DW_TAG_class_field_type ]
!1387 = metadata !{metadata !29}
!1388 = metadata !{metadata !1389}
!1389 = metadata !{i32 786465, i64 0, i64 2519999} ; [ DW_TAG_subrange_type ]
!1390 = metadata !{i32 39, i32 27, metadata !8, null}
!1391 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.keep.V", null, i32 39, metadata !1392, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1392 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 10080000, i64 32, i32 0, i32 0, metadata !1393, metadata !1388, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1393 = metadata !{i32 786438, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !15, i32 101, i64 4, i64 32, i32 0, i32 0, null, metadata !1394, i32 0, null, metadata !1291} ; [ DW_TAG_class_field_type ]
!1394 = metadata !{metadata !1395}
!1395 = metadata !{i32 786438, null, metadata !"ap_uint<4>", metadata !19, i32 180, i64 4, i64 8, i32 0, i32 0, null, metadata !1396, i32 0, null, metadata !980} ; [ DW_TAG_class_field_type ]
!1396 = metadata !{metadata !1397}
!1397 = metadata !{i32 786438, null, metadata !"ap_int_base<4, false, true>", metadata !23, i32 1398, i64 4, i64 8, i32 0, i32 0, null, metadata !1398, i32 0, null, metadata !907} ; [ DW_TAG_class_field_type ]
!1398 = metadata !{metadata !1399}
!1399 = metadata !{i32 786438, null, metadata !"ssdm_int<4 + 1024 * 0, false>", metadata !27, i32 6, i64 4, i64 8, i32 0, i32 0, null, metadata !1400, i32 0, null, metadata !167} ; [ DW_TAG_class_field_type ]
!1400 = metadata !{metadata !684}
!1401 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.strb.V", null, i32 39, metadata !1392, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1402 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.user.V", null, i32 39, metadata !1403, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1403 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2520000, i64 32, i32 0, i32 0, metadata !1404, metadata !1388, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1404 = metadata !{i32 786438, null, metadata !"ap_axiu<32, 1, 1, 1>", metadata !15, i32 101, i64 1, i64 32, i32 0, i32 0, null, metadata !1405, i32 0, null, metadata !1291} ; [ DW_TAG_class_field_type ]
!1405 = metadata !{metadata !1406}
!1406 = metadata !{i32 786438, null, metadata !"ap_uint<1>", metadata !19, i32 180, i64 1, i64 8, i32 0, i32 0, null, metadata !1407, i32 0, null, metadata !1283} ; [ DW_TAG_class_field_type ]
!1407 = metadata !{metadata !1408}
!1408 = metadata !{i32 786438, null, metadata !"ap_int_base<1, false, true>", metadata !23, i32 1398, i64 1, i64 8, i32 0, i32 0, null, metadata !1409, i32 0, null, metadata !1210} ; [ DW_TAG_class_field_type ]
!1409 = metadata !{metadata !1410}
!1410 = metadata !{i32 786438, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !27, i32 3, i64 1, i64 8, i32 0, i32 0, null, metadata !1411, i32 0, null, metadata !798} ; [ DW_TAG_class_field_type ]
!1411 = metadata !{metadata !991}
!1412 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.last.V", null, i32 39, metadata !1403, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1413 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.id.V", null, i32 39, metadata !1403, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1414 = metadata !{i32 790531, metadata !1378, metadata !"in_indices.dest.V", null, i32 39, metadata !1403, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1415 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.data.V", null, i32 40, metadata !1417, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1416 = metadata !{i32 786689, metadata !8, metadata !"out_correlation", metadata !9, i32 67108904, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1417 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1599840000, i64 32, i32 0, i32 0, metadata !1380, metadata !1418, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1418 = metadata !{metadata !1419}
!1419 = metadata !{i32 786465, i64 0, i64 49994999} ; [ DW_TAG_subrange_type ]
!1420 = metadata !{i32 40, i32 36, metadata !8, null}
!1421 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.keep.V", null, i32 40, metadata !1422, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1422 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 199980000, i64 32, i32 0, i32 0, metadata !1393, metadata !1418, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1423 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.strb.V", null, i32 40, metadata !1422, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1424 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.user.V", null, i32 40, metadata !1425, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1425 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 49995000, i64 32, i32 0, i32 0, metadata !1404, metadata !1418, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1426 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.last.V", null, i32 40, metadata !1425, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1427 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.id.V", null, i32 40, metadata !1425, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1428 = metadata !{i32 790531, metadata !1416, metadata !"out_correlation.dest.V", null, i32 40, metadata !1425, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1429 = metadata !{i32 58, i32 1, metadata !1305, null}
!1430 = metadata !{i32 65, i32 1, metadata !1305, null}
!1431 = metadata !{i32 786688, metadata !1305, metadata !"NUMBER_OF_DAYS", metadata !9, i32 74, metadata !1432, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1432 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ]
!1433 = metadata !{i32 74, i32 43, metadata !1305, null}
!1434 = metadata !{i32 786688, metadata !1305, metadata !"NUMBER_OF_INDICES", metadata !9, i32 75, metadata !1432, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1435 = metadata !{i32 75, i32 49, metadata !1305, null}
!1436 = metadata !{i32 371, i32 2, metadata !1437, metadata !1304}
!1437 = metadata !{i32 786443, metadata !1300, i32 369, i32 1, metadata !9, i32 34} ; [ DW_TAG_lexical_block ]
!1438 = metadata !{i32 372, i32 2, metadata !1437, metadata !1304}
!1439 = metadata !{i32 375, i32 15, metadata !1440, metadata !1304}
!1440 = metadata !{i32 786443, metadata !1437, i32 375, i32 2, metadata !9, i32 35} ; [ DW_TAG_lexical_block ]
!1441 = metadata !{i32 375, i32 46, metadata !1442, metadata !1304}
!1442 = metadata !{i32 786443, metadata !1440, i32 375, i32 45, metadata !9, i32 36} ; [ DW_TAG_lexical_block ]
!1443 = metadata !{i32 376, i32 3, metadata !1442, metadata !1304}
!1444 = metadata !{i32 375, i32 40, metadata !1440, metadata !1304}
!1445 = metadata !{i32 786688, metadata !1440, metadata !"i", metadata !9, i32 375, metadata !12, i32 0, metadata !1304} ; [ DW_TAG_auto_variable ]
!1446 = metadata !{i32 380, i32 15, metadata !1447, metadata !1304}
!1447 = metadata !{i32 786443, metadata !1437, i32 380, i32 2, metadata !9, i32 37} ; [ DW_TAG_lexical_block ]
!1448 = metadata !{i32 380, i32 42, metadata !1449, metadata !1304}
!1449 = metadata !{i32 786443, metadata !1447, i32 380, i32 41, metadata !9, i32 38} ; [ DW_TAG_lexical_block ]
!1450 = metadata !{i32 381, i32 3, metadata !1449, metadata !1304}
!1451 = metadata !{i32 380, i32 37, metadata !1447, metadata !1304}
!1452 = metadata !{i32 786688, metadata !1447, metadata !"i", metadata !9, i32 380, metadata !12, i32 0, metadata !1304} ; [ DW_TAG_auto_variable ]
!1453 = metadata !{i32 82, i32 34, metadata !1305, null}
!1454 = metadata !{i32 786688, metadata !1305, metadata !"sum_weight", metadata !9, i32 82, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1455 = metadata !{i32 786688, metadata !1305, metadata !"acc_return", metadata !9, i32 91, metadata !1456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1456 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 192, i64 32, i32 0, i32 0, metadata !101, metadata !1457, i32 0, i32 0} ; [ DW_TAG_array_type ]
!1457 = metadata !{metadata !1458}
!1458 = metadata !{i32 786465, i64 0, i64 5}      ; [ DW_TAG_subrange_type ]
!1459 = metadata !{i32 91, i32 8, metadata !1305, null}
!1460 = metadata !{i32 786688, metadata !1305, metadata !"acc_weight_returnSquare", metadata !9, i32 92, metadata !1456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1461 = metadata !{i32 92, i32 8, metadata !1305, null}
!1462 = metadata !{i32 786688, metadata !1305, metadata !"acc_weight_return", metadata !9, i32 93, metadata !1456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1463 = metadata !{i32 93, i32 8, metadata !1305, null}
!1464 = metadata !{i32 786688, metadata !1305, metadata !"acc_weight_returnA_returnB", metadata !9, i32 94, metadata !1456, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1465 = metadata !{i32 94, i32 8, metadata !1305, null}
!1466 = metadata !{i32 116, i32 2, metadata !1467, null}
!1467 = metadata !{i32 786443, metadata !1468, i32 112, i32 29, metadata !9, i32 2} ; [ DW_TAG_lexical_block ]
!1468 = metadata !{i32 786443, metadata !1305, i32 112, i32 3, metadata !9, i32 1} ; [ DW_TAG_lexical_block ]
!1469 = metadata !{i32 117, i32 4, metadata !1467, null}
!1470 = metadata !{i32 118, i32 4, metadata !1467, null}
!1471 = metadata !{i32 119, i32 4, metadata !1467, null}
!1472 = metadata !{i32 125, i32 12, metadata !1305, null}
!1473 = metadata !{i32 790529, metadata !1474, metadata !"tmp1.keep.V", null, i32 67, metadata !1393, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1474 = metadata !{i32 786688, metadata !1305, metadata !"tmp1", metadata !9, i32 67, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1475 = metadata !{i32 264, i32 10, metadata !1476, metadata !1478}
!1476 = metadata !{i32 786443, metadata !1477, i32 263, i32 97, metadata !19, i32 32} ; [ DW_TAG_lexical_block ]
!1477 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi4EEaSERKS0_", metadata !19, i32 263, metadata !969, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !968, metadata !35, i32 263} ; [ DW_TAG_subprogram ]
!1478 = metadata !{i32 126, i32 12, metadata !1305, null}
!1479 = metadata !{i32 790529, metadata !1474, metadata !"tmp1.strb.V", null, i32 67, metadata !1393, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1480 = metadata !{i32 264, i32 10, metadata !1476, metadata !1481}
!1481 = metadata !{i32 127, i32 12, metadata !1305, null}
!1482 = metadata !{i32 790529, metadata !1474, metadata !"tmp1.user.V", null, i32 67, metadata !1404, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1483 = metadata !{i32 264, i32 10, metadata !1484, metadata !1486}
!1484 = metadata !{i32 786443, metadata !1485, i32 263, i32 97, metadata !19, i32 31} ; [ DW_TAG_lexical_block ]
!1485 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi1EEaSERKS0_", metadata !19, i32 263, metadata !1272, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1271, metadata !35, i32 263} ; [ DW_TAG_subprogram ]
!1486 = metadata !{i32 128, i32 12, metadata !1305, null}
!1487 = metadata !{i32 790529, metadata !1474, metadata !"tmp1.last.V", null, i32 67, metadata !1404, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1488 = metadata !{i32 264, i32 10, metadata !1484, metadata !1489}
!1489 = metadata !{i32 129, i32 12, metadata !1305, null}
!1490 = metadata !{i32 790529, metadata !1474, metadata !"tmp1.id.V", null, i32 67, metadata !1404, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1491 = metadata !{i32 264, i32 10, metadata !1484, metadata !1492}
!1492 = metadata !{i32 130, i32 12, metadata !1305, null}
!1493 = metadata !{i32 790529, metadata !1474, metadata !"tmp1.dest.V", null, i32 67, metadata !1404, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1494 = metadata !{i32 264, i32 10, metadata !1484, metadata !1495}
!1495 = metadata !{i32 131, i32 12, metadata !1305, null}
!1496 = metadata !{i32 137, i32 16, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1305, i32 137, i32 3, metadata !9, i32 3} ; [ DW_TAG_lexical_block ]
!1498 = metadata !{i32 137, i32 48, metadata !1499, null}
!1499 = metadata !{i32 786443, metadata !1497, i32 137, i32 47, metadata !9, i32 4} ; [ DW_TAG_lexical_block ]
!1500 = metadata !{i32 137, i32 103, metadata !1499, null}
!1501 = metadata !{i32 139, i32 1, metadata !1499, null}
!1502 = metadata !{i32 140, i32 2, metadata !1499, null}
!1503 = metadata !{i32 264, i32 10, metadata !1476, metadata !1504}
!1504 = metadata !{i32 143, i32 16, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !1499, i32 140, i32 12, metadata !9, i32 5} ; [ DW_TAG_lexical_block ]
!1506 = metadata !{i32 264, i32 10, metadata !1476, metadata !1507}
!1507 = metadata !{i32 144, i32 16, metadata !1505, null}
!1508 = metadata !{i32 264, i32 10, metadata !1484, metadata !1509}
!1509 = metadata !{i32 145, i32 16, metadata !1505, null}
!1510 = metadata !{i32 264, i32 10, metadata !1484, metadata !1511}
!1511 = metadata !{i32 146, i32 16, metadata !1505, null}
!1512 = metadata !{i32 264, i32 10, metadata !1484, metadata !1513}
!1513 = metadata !{i32 147, i32 16, metadata !1505, null}
!1514 = metadata !{i32 264, i32 10, metadata !1484, metadata !1515}
!1515 = metadata !{i32 148, i32 16, metadata !1505, null}
!1516 = metadata !{i32 142, i32 16, metadata !1505, null}
!1517 = metadata !{i32 173, i32 21, metadata !1499, null}
!1518 = metadata !{i32 786688, metadata !1499, metadata !"lnReturn", metadata !9, i32 173, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1519 = metadata !{i32 174, i32 32, metadata !1499, null}
!1520 = metadata !{i32 786688, metadata !1499, metadata !"weight", metadata !9, i32 174, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1521 = metadata !{i32 177, i32 21, metadata !1499, null}
!1522 = metadata !{i32 786688, metadata !1499, metadata !"channel", metadata !9, i32 177, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1523 = metadata !{i32 179, i32 4, metadata !1499, null}
!1524 = metadata !{i32 182, i32 4, metadata !1499, null}
!1525 = metadata !{i32 185, i32 4, metadata !1499, null}
!1526 = metadata !{i32 188, i32 4, metadata !1499, null}
!1527 = metadata !{i32 189, i32 3, metadata !1499, null}
!1528 = metadata !{i32 137, i32 43, metadata !1497, null}
!1529 = metadata !{i32 786688, metadata !1497, metadata !"i", metadata !9, i32 137, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1530 = metadata !{i32 193, i32 15, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !1305, i32 193, i32 2, metadata !9, i32 7} ; [ DW_TAG_lexical_block ]
!1532 = metadata !{i32 193, i32 24, metadata !1531, null}
!1533 = metadata !{i32 308, i32 62, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !1535, i32 205, i32 78, metadata !9, i32 10} ; [ DW_TAG_lexical_block ]
!1535 = metadata !{i32 786443, metadata !1305, i32 205, i32 2, metadata !9, i32 9} ; [ DW_TAG_lexical_block ]
!1536 = metadata !{i32 311, i32 23, metadata !1534, null}
!1537 = metadata !{i32 332, i32 16, metadata !1534, null}
!1538 = metadata !{i32 216, i32 5, metadata !1539, null}
!1539 = metadata !{i32 786443, metadata !1540, i32 208, i32 30, metadata !9, i32 12} ; [ DW_TAG_lexical_block ]
!1540 = metadata !{i32 786443, metadata !1534, i32 208, i32 4, metadata !9, i32 11} ; [ DW_TAG_lexical_block ]
!1541 = metadata !{i32 205, i32 26, metadata !1535, null}
!1542 = metadata !{i32 193, i32 29, metadata !1543, null}
!1543 = metadata !{i32 786443, metadata !1531, i32 193, i32 28, metadata !9, i32 8} ; [ DW_TAG_lexical_block ]
!1544 = metadata !{i32 193, i32 82, metadata !1543, null}
!1545 = metadata !{i32 195, i32 1, metadata !1543, null}
!1546 = metadata !{i32 197, i32 2, metadata !1543, null}
!1547 = metadata !{i32 786688, metadata !1305, metadata !"sum_returnA", metadata !9, i32 103, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1548 = metadata !{i32 198, i32 3, metadata !1543, null}
!1549 = metadata !{i32 786688, metadata !1305, metadata !"sum_weight_returnSquareA", metadata !9, i32 104, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1550 = metadata !{i32 199, i32 3, metadata !1543, null}
!1551 = metadata !{i32 786688, metadata !1305, metadata !"sum_weight_returnA", metadata !9, i32 105, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1552 = metadata !{i32 200, i32 2, metadata !1543, null}
!1553 = metadata !{i32 786688, metadata !1531, metadata !"i", metadata !9, i32 193, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1554 = metadata !{i32 205, i32 79, metadata !1534, null}
!1555 = metadata !{i32 212, i32 2, metadata !1539, null}
!1556 = metadata !{i32 214, i32 5, metadata !1539, null}
!1557 = metadata !{i32 215, i32 5, metadata !1539, null}
!1558 = metadata !{i32 224, i32 12, metadata !1534, null}
!1559 = metadata !{i32 264, i32 10, metadata !1476, metadata !1560}
!1560 = metadata !{i32 225, i32 12, metadata !1534, null}
!1561 = metadata !{i32 264, i32 10, metadata !1476, metadata !1562}
!1562 = metadata !{i32 226, i32 12, metadata !1534, null}
!1563 = metadata !{i32 264, i32 10, metadata !1484, metadata !1564}
!1564 = metadata !{i32 227, i32 12, metadata !1534, null}
!1565 = metadata !{i32 264, i32 10, metadata !1484, metadata !1566}
!1566 = metadata !{i32 228, i32 12, metadata !1534, null}
!1567 = metadata !{i32 264, i32 10, metadata !1484, metadata !1568}
!1568 = metadata !{i32 229, i32 12, metadata !1534, null}
!1569 = metadata !{i32 264, i32 10, metadata !1484, metadata !1570}
!1570 = metadata !{i32 230, i32 12, metadata !1534, null}
!1571 = metadata !{i32 236, i32 17, metadata !1572, null}
!1572 = metadata !{i32 786443, metadata !1534, i32 236, i32 4, metadata !9, i32 13} ; [ DW_TAG_lexical_block ]
!1573 = metadata !{i32 236, i32 49, metadata !1574, null}
!1574 = metadata !{i32 786443, metadata !1572, i32 236, i32 48, metadata !9, i32 14} ; [ DW_TAG_lexical_block ]
!1575 = metadata !{i32 236, i32 107, metadata !1574, null}
!1576 = metadata !{i32 238, i32 1, metadata !1574, null}
!1577 = metadata !{i32 239, i32 2, metadata !1574, null}
!1578 = metadata !{i32 264, i32 10, metadata !1476, metadata !1579}
!1579 = metadata !{i32 242, i32 17, metadata !1580, null}
!1580 = metadata !{i32 786443, metadata !1574, i32 239, i32 12, metadata !9, i32 15} ; [ DW_TAG_lexical_block ]
!1581 = metadata !{i32 264, i32 10, metadata !1476, metadata !1582}
!1582 = metadata !{i32 243, i32 17, metadata !1580, null}
!1583 = metadata !{i32 264, i32 10, metadata !1484, metadata !1584}
!1584 = metadata !{i32 244, i32 17, metadata !1580, null}
!1585 = metadata !{i32 264, i32 10, metadata !1484, metadata !1586}
!1586 = metadata !{i32 245, i32 17, metadata !1580, null}
!1587 = metadata !{i32 264, i32 10, metadata !1484, metadata !1588}
!1588 = metadata !{i32 246, i32 17, metadata !1580, null}
!1589 = metadata !{i32 264, i32 10, metadata !1484, metadata !1590}
!1590 = metadata !{i32 247, i32 17, metadata !1580, null}
!1591 = metadata !{i32 241, i32 17, metadata !1580, null}
!1592 = metadata !{i32 271, i32 19, metadata !1574, null}
!1593 = metadata !{i32 786688, metadata !1574, metadata !"lnReturn", metadata !9, i32 271, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1594 = metadata !{i32 272, i32 33, metadata !1574, null}
!1595 = metadata !{i32 786688, metadata !1574, metadata !"weight", metadata !9, i32 272, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1596 = metadata !{i32 275, i32 22, metadata !1574, null}
!1597 = metadata !{i32 786688, metadata !1574, metadata !"channel", metadata !9, i32 275, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1598 = metadata !{i32 278, i32 5, metadata !1574, null}
!1599 = metadata !{i32 281, i32 5, metadata !1574, null}
!1600 = metadata !{i32 284, i32 5, metadata !1574, null}
!1601 = metadata !{i32 287, i32 5, metadata !1574, null}
!1602 = metadata !{i32 288, i32 4, metadata !1574, null}
!1603 = metadata !{i32 236, i32 44, metadata !1572, null}
!1604 = metadata !{i32 786688, metadata !1572, metadata !"i", metadata !9, i32 236, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1605 = metadata !{i32 301, i32 2, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !1607, i32 297, i32 29, metadata !9, i32 18} ; [ DW_TAG_lexical_block ]
!1607 = metadata !{i32 786443, metadata !1534, i32 297, i32 3, metadata !9, i32 17} ; [ DW_TAG_lexical_block ]
!1608 = metadata !{i32 302, i32 4, metadata !1606, null}
!1609 = metadata !{i32 303, i32 4, metadata !1606, null}
!1610 = metadata !{i32 304, i32 4, metadata !1606, null}
!1611 = metadata !{i32 786688, metadata !1534, metadata !"meanReturnA", metadata !9, i32 308, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1612 = metadata !{i32 309, i32 61, metadata !1534, null}
!1613 = metadata !{i32 786688, metadata !1534, metadata !"meanReturnB", metadata !9, i32 309, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1614 = metadata !{i32 786688, metadata !1534, metadata !"volatilityA", metadata !9, i32 311, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1615 = metadata !{i32 314, i32 23, metadata !1534, null}
!1616 = metadata !{i32 786688, metadata !1534, metadata !"volatilityB", metadata !9, i32 314, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1617 = metadata !{i32 317, i32 159, metadata !1534, null}
!1618 = metadata !{i32 786688, metadata !1534, metadata !"covariance", metadata !9, i32 317, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1619 = metadata !{i32 321, i32 61, metadata !1534, null}
!1620 = metadata !{i32 786688, metadata !1534, metadata !"corr_temp", metadata !9, i32 321, metadata !101, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1621 = metadata !{i32 326, i32 1, metadata !1534, null}
!1622 = metadata !{i32 327, i32 2, metadata !1534, null}
!1623 = metadata !{i32 786689, metadata !1624, metadata !"val", metadata !19, i32 33554682, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1624 = metadata !{i32 786478, i32 0, null, metadata !"ap_uint", metadata !"ap_uint", metadata !"_ZN7ap_uintILi32EEC1Ei", metadata !19, i32 250, metadata !633, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !632, metadata !35, i32 250} ; [ DW_TAG_subprogram ]
!1625 = metadata !{i32 250, i32 55, metadata !1624, metadata !1626}
!1626 = metadata !{i32 328, i32 16, metadata !1534, null}
!1627 = metadata !{i32 786689, metadata !1628, metadata !"val", metadata !19, i32 33554682, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1628 = metadata !{i32 786478, i32 0, null, metadata !"ap_uint", metadata !"ap_uint", metadata !"_ZN7ap_uintILi32EEC2Ei", metadata !19, i32 250, metadata !633, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !632, metadata !35, i32 250} ; [ DW_TAG_subprogram ]
!1629 = metadata !{i32 250, i32 55, metadata !1628, metadata !1630}
!1630 = metadata !{i32 250, i32 77, metadata !1624, metadata !1626}
!1631 = metadata !{i32 338, i32 2, metadata !1534, null}
!1632 = metadata !{i32 205, i32 62, metadata !1535, null}
!1633 = metadata !{i32 786688, metadata !1535, metadata !"column_index", metadata !9, i32 205, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1634 = metadata !{i32 340, i32 1, metadata !1305, null}
