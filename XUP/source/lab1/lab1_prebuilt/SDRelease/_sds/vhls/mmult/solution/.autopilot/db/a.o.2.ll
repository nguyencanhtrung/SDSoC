; ModuleID = 'C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mmult.str = internal unnamed_addr constant [6 x i8] c"mmult\00" ; [#uses=1 type=[6 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=16 type=[1 x i8]*]

; [#uses=0]
define void @mmult(float* %in_A, float* %in_B, float* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_A) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_B) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_C) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @mmult.str) nounwind
  %"a_buf[0]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[1]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[2]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[3]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[4]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[5]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[6]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[7]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[8]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[9]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[10]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[11]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[12]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[13]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[14]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"a_buf[15]" = alloca [32 x [2 x float]], align 4 ; [#uses=3 type=[32 x [2 x float]]*]
  %"b_buf[0]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[1]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[2]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[3]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[4]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[5]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[6]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[7]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[8]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[9]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[10]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[11]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[12]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[13]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[14]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  %"b_buf[15]" = alloca [2 x [32 x float]], align 4 ; [#uses=3 type=[2 x [32 x float]]*]
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !39), !dbg !43 ; [debug line = 31:18] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !44), !dbg !45 ; [debug line = 32:18] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !46), !dbg !47 ; [debug line = 33:18] [debug variable = out_C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !48 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, [8 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, [8 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, [8 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str)
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[0]"}, metadata !50), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[0]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[1]"}, metadata !56), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[1]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[2]"}, metadata !57), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[2]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[3]"}, metadata !58), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[3]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[4]"}, metadata !59), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[4]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[5]"}, metadata !60), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[5]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[6]"}, metadata !61), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[6]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[7]"}, metadata !62), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[7]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[8]"}, metadata !63), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[8]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[9]"}, metadata !64), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[9]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[10]"}, metadata !65), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[10]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[11]"}, metadata !66), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[11]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[12]"}, metadata !67), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[12]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[13]"}, metadata !68), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[13]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[14]"}, metadata !69), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[14]]
  call void @llvm.dbg.declare(metadata !{[32 x [2 x float]]* %"a_buf[15]"}, metadata !70), !dbg !55 ; [debug line = 36:9] [debug variable = a_buf[15]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[0]"}, metadata !71), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[0]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[1]"}, metadata !74), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[1]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[2]"}, metadata !75), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[2]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[3]"}, metadata !76), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[3]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[4]"}, metadata !77), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[4]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[5]"}, metadata !78), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[5]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[6]"}, metadata !79), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[6]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[7]"}, metadata !80), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[7]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[8]"}, metadata !81), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[8]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[9]"}, metadata !82), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[9]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[10]"}, metadata !83), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[10]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[11]"}, metadata !84), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[11]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[12]"}, metadata !85), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[12]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[13]"}, metadata !86), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[13]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[14]"}, metadata !87), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[14]]
  call void @llvm.dbg.declare(metadata !{[2 x [32 x float]]* %"b_buf[15]"}, metadata !88), !dbg !73 ; [debug line = 37:9] [debug variable = b_buf[15]]
  br label %1, !dbg !89                           ; [debug line = 40:7]

; <label>:1                                       ; preds = %7, %0
  %i = phi i6 [ 0, %0 ], [ %i.2, %7 ]             ; [#uses=3 type=i6]
  %exitcond3 = icmp eq i6 %i, -32, !dbg !89       ; [#uses=1 type=i1] [debug line = 40:7]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %.preheader4, label %.preheader5.preheader, !dbg !89 ; [debug line = 40:7]

.preheader5.preheader:                            ; preds = %1
  %tmp.1 = zext i6 %i to i64, !dbg !91            ; [#uses=16 type=i64] [debug line = 43:2]
  br label %.preheader5, !dbg !95                 ; [debug line = 41:9]

.preheader5:                                      ; preds = %5, %.preheader5.preheader
  %j = phi i6 [ %j.2, %5 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i6]
  %exitcond2 = icmp eq i6 %j, -32, !dbg !95       ; [#uses=1 type=i1] [debug line = 41:9]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2, label %7, label %4, !dbg !95  ; [debug line = 41:9]

; <label>:4                                       ; preds = %.preheader5
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str4) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 41:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !97 ; [debug line = 42:1]
  %in_A.load = load volatile float* %in_A, align 4, !dbg !91 ; [#uses=16 type=float] [debug line = 43:2]
  %arrayNo = lshr i6 %j, 1                        ; [#uses=1 type=i6]
  %arrayNo.cast = trunc i6 %arrayNo to i5         ; [#uses=1 type=i5]
  %newIndex = trunc i6 %j to i1                   ; [#uses=1 type=i1]
  %newIndex1 = zext i1 %newIndex to i64           ; [#uses=16 type=i64]
  %"a_buf[0].addr" = getelementptr [32 x [2 x float]]* %"a_buf[0]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[1].addr" = getelementptr [32 x [2 x float]]* %"a_buf[1]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[2].addr" = getelementptr [32 x [2 x float]]* %"a_buf[2]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[3].addr" = getelementptr [32 x [2 x float]]* %"a_buf[3]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[4].addr" = getelementptr [32 x [2 x float]]* %"a_buf[4]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[5].addr" = getelementptr [32 x [2 x float]]* %"a_buf[5]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[6].addr" = getelementptr [32 x [2 x float]]* %"a_buf[6]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[7].addr" = getelementptr [32 x [2 x float]]* %"a_buf[7]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[8].addr" = getelementptr [32 x [2 x float]]* %"a_buf[8]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[9].addr" = getelementptr [32 x [2 x float]]* %"a_buf[9]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[10].addr" = getelementptr [32 x [2 x float]]* %"a_buf[10]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[11].addr" = getelementptr [32 x [2 x float]]* %"a_buf[11]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[12].addr" = getelementptr [32 x [2 x float]]* %"a_buf[12]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[13].addr" = getelementptr [32 x [2 x float]]* %"a_buf[13]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[14].addr" = getelementptr [32 x [2 x float]]* %"a_buf[14]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  %"a_buf[15].addr" = getelementptr [32 x [2 x float]]* %"a_buf[15]", i64 0, i64 %tmp.1, i64 %newIndex1, !dbg !91 ; [#uses=1 type=float*] [debug line = 43:2]
  switch i5 %arrayNo.cast, label %branch15 [
    i5 0, label %branch0
    i5 1, label %branch1
    i5 2, label %branch2
    i5 3, label %branch3
    i5 4, label %branch4
    i5 5, label %branch5
    i5 6, label %branch6
    i5 7, label %branch7
    i5 8, label %branch8
    i5 9, label %branch9
    i5 10, label %branch10
    i5 11, label %branch11
    i5 12, label %branch12
    i5 13, label %branch13
    i5 14, label %branch14
  ], !dbg !91                                     ; [debug line = 43:2]

; <label>:5                                       ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str4, i32 %tmp.3) nounwind, !dbg !98 ; [#uses=0 type=i32] [debug line = 44:5]
  %j.2 = add i6 %j, 1, !dbg !99                   ; [#uses=1 type=i6] [debug line = 41:20]
  call void @llvm.dbg.value(metadata !{i6 %j.2}, i64 0, metadata !100), !dbg !99 ; [debug line = 41:20] [debug variable = j]
  br label %.preheader5, !dbg !99                 ; [debug line = 41:20]

; <label>:7                                       ; preds = %.preheader5
  %i.2 = add i6 %i, 1, !dbg !101                  ; [#uses=1 type=i6] [debug line = 40:18]
  call void @llvm.dbg.value(metadata !{i6 %i.2}, i64 0, metadata !102), !dbg !101 ; [debug line = 40:18] [debug variable = i]
  br label %1, !dbg !101                          ; [debug line = 40:18]

.preheader4:                                      ; preds = %13, %1
  %i.1 = phi i6 [ %i.3, %13 ], [ 0, %1 ]          ; [#uses=4 type=i6]
  %exitcond1 = icmp eq i6 %i.1, -32, !dbg !103    ; [#uses=1 type=i1] [debug line = 48:7]
  %8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.preheader1131, label %.preheader.preheader, !dbg !103 ; [debug line = 48:7]

.preheader.preheader:                             ; preds = %.preheader4
  %arrayNo1 = lshr i6 %i.1, 1                     ; [#uses=1 type=i6]
  %arrayNo1.cast = trunc i6 %arrayNo1 to i5       ; [#uses=1 type=i5]
  %newIndex2 = trunc i6 %i.1 to i1                ; [#uses=1 type=i1]
  %newIndex3 = zext i1 %newIndex2 to i64          ; [#uses=16 type=i64]
  br label %.preheader, !dbg !105                 ; [debug line = 49:9]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %j.1 = phi i6 [ %j.3, %11 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i6]
  %exitcond = icmp eq i6 %j.1, -32, !dbg !105     ; [#uses=1 type=i1] [debug line = 49:9]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %13, label %10, !dbg !105 ; [debug line = 49:9]

; <label>:10                                      ; preds = %.preheader
  %tmp.7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str5) nounwind, !dbg !108 ; [#uses=1 type=i32] [debug line = 49:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !110 ; [debug line = 50:1]
  %in_B.load = load volatile float* %in_B, align 4, !dbg !111 ; [#uses=16 type=float] [debug line = 51:2]
  %tmp. = zext i6 %j.1 to i64, !dbg !111          ; [#uses=16 type=i64] [debug line = 51:2]
  %"b_buf[0].addr" = getelementptr [2 x [32 x float]]* %"b_buf[0]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[1].addr" = getelementptr [2 x [32 x float]]* %"b_buf[1]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[2].addr" = getelementptr [2 x [32 x float]]* %"b_buf[2]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[3].addr" = getelementptr [2 x [32 x float]]* %"b_buf[3]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[4].addr" = getelementptr [2 x [32 x float]]* %"b_buf[4]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[5].addr" = getelementptr [2 x [32 x float]]* %"b_buf[5]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[6].addr" = getelementptr [2 x [32 x float]]* %"b_buf[6]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[7].addr" = getelementptr [2 x [32 x float]]* %"b_buf[7]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[8].addr" = getelementptr [2 x [32 x float]]* %"b_buf[8]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[9].addr" = getelementptr [2 x [32 x float]]* %"b_buf[9]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[10].addr" = getelementptr [2 x [32 x float]]* %"b_buf[10]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[11].addr" = getelementptr [2 x [32 x float]]* %"b_buf[11]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[12].addr" = getelementptr [2 x [32 x float]]* %"b_buf[12]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[13].addr" = getelementptr [2 x [32 x float]]* %"b_buf[13]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[14].addr" = getelementptr [2 x [32 x float]]* %"b_buf[14]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  %"b_buf[15].addr" = getelementptr [2 x [32 x float]]* %"b_buf[15]", i64 0, i64 %newIndex3, i64 %tmp., !dbg !111 ; [#uses=1 type=float*] [debug line = 51:2]
  switch i5 %arrayNo1.cast, label %branch31 [
    i5 0, label %branch16
    i5 1, label %branch17
    i5 2, label %branch18
    i5 3, label %branch19
    i5 4, label %branch20
    i5 5, label %branch21
    i5 6, label %branch22
    i5 7, label %branch23
    i5 8, label %branch24
    i5 9, label %branch25
    i5 10, label %branch26
    i5 11, label %branch27
    i5 12, label %branch28
    i5 13, label %branch29
    i5 14, label %branch30
  ], !dbg !111                                    ; [debug line = 51:2]

; <label>:11                                      ; preds = %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24, %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16
  %12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str5, i32 %tmp.7) nounwind, !dbg !112 ; [#uses=0 type=i32] [debug line = 52:5]
  %j.3 = add i6 %j.1, 1, !dbg !113                ; [#uses=1 type=i6] [debug line = 49:20]
  call void @llvm.dbg.value(metadata !{i6 %j.3}, i64 0, metadata !100), !dbg !113 ; [debug line = 49:20] [debug variable = j]
  br label %.preheader, !dbg !113                 ; [debug line = 49:20]

; <label>:13                                      ; preds = %.preheader
  %i.3 = add i6 %i.1, 1, !dbg !114                ; [#uses=1 type=i6] [debug line = 48:18]
  call void @llvm.dbg.value(metadata !{i6 %i.3}, i64 0, metadata !102), !dbg !114 ; [debug line = 48:18] [debug variable = i]
  br label %.preheader4, !dbg !114                ; [debug line = 48:18]

.preheader1131:                                   ; preds = %18, %.preheader4
  %index_a.0.i = phi i6 [ %index_a, %18 ], [ 0, %.preheader4 ] ; [#uses=3 type=i6]
  %exitcond2.i = icmp eq i6 %index_a.0.i, -32, !dbg !115 ; [#uses=1 type=i1] [debug line = 16:8@56:3]
  %14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond2.i, label %mmult_kernel.exit, label %.preheader.preheader.i, !dbg !115 ; [debug line = 16:8@56:3]

.preheader.preheader.i:                           ; preds = %.preheader1131
  %tmp.9 = zext i6 %index_a.0.i to i64, !dbg !119 ; [#uses=32 type=i64] [debug line = 23:77@56:3]
  %"a_buf[0].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[0]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[0].load" = load float* %"a_buf[0].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[0].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[0]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[0].load.1" = load float* %"a_buf[0].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[1].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[1]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[1].load" = load float* %"a_buf[1].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[1].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[1]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[1].load.1" = load float* %"a_buf[1].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[2].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[2]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[2].load" = load float* %"a_buf[2].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[2].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[2]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[2].load.1" = load float* %"a_buf[2].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[3].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[3]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[3].load" = load float* %"a_buf[3].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[3].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[3]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[3].load.1" = load float* %"a_buf[3].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[4].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[4]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[4].load" = load float* %"a_buf[4].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[4].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[4]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[4].load.1" = load float* %"a_buf[4].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[5].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[5]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[5].load" = load float* %"a_buf[5].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[5].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[5]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[5].load.1" = load float* %"a_buf[5].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[6].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[6]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[6].load" = load float* %"a_buf[6].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[6].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[6]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[6].load.1" = load float* %"a_buf[6].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[7].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[7]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[7].load" = load float* %"a_buf[7].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[7].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[7]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[7].load.1" = load float* %"a_buf[7].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[8].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[8]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[8].load" = load float* %"a_buf[8].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[8].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[8]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[8].load.1" = load float* %"a_buf[8].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[9].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[9]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[9].load" = load float* %"a_buf[9].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[9].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[9]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[9].load.1" = load float* %"a_buf[9].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[10].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[10]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[10].load" = load float* %"a_buf[10].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[10].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[10]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[10].load.1" = load float* %"a_buf[10].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[11].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[11]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[11].load" = load float* %"a_buf[11].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[11].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[11]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[11].load.1" = load float* %"a_buf[11].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[12].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[12]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[12].load" = load float* %"a_buf[12].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[12].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[12]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[12].load.1" = load float* %"a_buf[12].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[13].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[13]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[13].load" = load float* %"a_buf[13].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[13].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[13]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[13].load.1" = load float* %"a_buf[13].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[14].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[14]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[14].load" = load float* %"a_buf[14].addr.1", align 16, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[14].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[14]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[14].load.1" = load float* %"a_buf[14].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[15].addr.1" = getelementptr [32 x [2 x float]]* %"a_buf[15]", i64 0, i64 %tmp.9, i64 0 ; [#uses=1 type=float*]
  %"a_buf[15].load" = load float* %"a_buf[15].addr.1", align 8, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %"a_buf[15].addr.2" = getelementptr [32 x [2 x float]]* %"a_buf[15]", i64 0, i64 %tmp.9, i64 1 ; [#uses=1 type=float*]
  %"a_buf[15].load.1" = load float* %"a_buf[15].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  br label %.preheader.i, !dbg !125               ; [debug line = 17:10@56:3]

.preheader.i:                                     ; preds = %16, %.preheader.preheader.i
  %index_b.0.i = phi i6 [ %index_b, %16 ], [ 0, %.preheader.preheader.i ] ; [#uses=3 type=i6]
  %exitcond1.i = icmp eq i6 %index_b.0.i, -32, !dbg !125 ; [#uses=1 type=i1] [debug line = 17:10@56:3]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %18, label %16, !dbg !125 ; [debug line = 17:10@56:3]

; <label>:16                                      ; preds = %.preheader.i
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !126 ; [#uses=1 type=i32] [debug line = 17:49@56:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !127 ; [debug line = 18:1@56:3]
  %tmp.4 = zext i6 %index_b.0.i to i64, !dbg !119 ; [#uses=32 type=i64] [debug line = 23:77@56:3]
  %"b_buf[0].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[0]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[0].load" = load float* %"b_buf[0].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term = fmul float %"a_buf[0].load", %"b_buf[0].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result = fadd float %product_term, 0.000000e+00, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[0].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[0]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[0].load.1" = load float* %"b_buf[0].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.1 = fmul float %"a_buf[0].load.1", %"b_buf[0].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.1 = fadd float %result, %product_term.1, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[1].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[1]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[1].load" = load float* %"b_buf[1].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.2 = fmul float %"a_buf[1].load", %"b_buf[1].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.2 = fadd float %result.1, %product_term.2, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[1].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[1]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[1].load.1" = load float* %"b_buf[1].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.3 = fmul float %"a_buf[1].load.1", %"b_buf[1].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.3 = fadd float %result.2, %product_term.3, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[2].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[2]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[2].load" = load float* %"b_buf[2].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.4 = fmul float %"a_buf[2].load", %"b_buf[2].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.4 = fadd float %result.3, %product_term.4, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[2].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[2]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[2].load.1" = load float* %"b_buf[2].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.5 = fmul float %"a_buf[2].load.1", %"b_buf[2].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.5 = fadd float %result.4, %product_term.5, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[3].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[3]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[3].load" = load float* %"b_buf[3].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.6 = fmul float %"a_buf[3].load", %"b_buf[3].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.6 = fadd float %result.5, %product_term.6, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[3].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[3]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[3].load.1" = load float* %"b_buf[3].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.7 = fmul float %"a_buf[3].load.1", %"b_buf[3].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.7 = fadd float %result.6, %product_term.7, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[4].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[4]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[4].load" = load float* %"b_buf[4].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.8 = fmul float %"a_buf[4].load", %"b_buf[4].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.8 = fadd float %result.7, %product_term.8, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[4].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[4]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[4].load.1" = load float* %"b_buf[4].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.9 = fmul float %"a_buf[4].load.1", %"b_buf[4].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.9 = fadd float %result.8, %product_term.9, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[5].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[5]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[5].load" = load float* %"b_buf[5].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term. = fmul float %"a_buf[5].load", %"b_buf[5].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result. = fadd float %result.9, %product_term., !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[5].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[5]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[5].load.1" = load float* %"b_buf[5].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.10 = fmul float %"a_buf[5].load.1", %"b_buf[5].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.10 = fadd float %result., %product_term.10, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[6].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[6]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[6].load" = load float* %"b_buf[6].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.11 = fmul float %"a_buf[6].load", %"b_buf[6].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.11 = fadd float %result.10, %product_term.11, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[6].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[6]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[6].load.1" = load float* %"b_buf[6].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.12 = fmul float %"a_buf[6].load.1", %"b_buf[6].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.12 = fadd float %result.11, %product_term.12, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[7].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[7]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[7].load" = load float* %"b_buf[7].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.13 = fmul float %"a_buf[7].load", %"b_buf[7].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.13 = fadd float %result.12, %product_term.13, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[7].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[7]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[7].load.1" = load float* %"b_buf[7].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.14 = fmul float %"a_buf[7].load.1", %"b_buf[7].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.14 = fadd float %result.13, %product_term.14, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[8].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[8]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[8].load" = load float* %"b_buf[8].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.15 = fmul float %"a_buf[8].load", %"b_buf[8].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.15 = fadd float %result.14, %product_term.15, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[8].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[8]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[8].load.1" = load float* %"b_buf[8].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.16 = fmul float %"a_buf[8].load.1", %"b_buf[8].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.16 = fadd float %result.15, %product_term.16, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[9].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[9]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[9].load" = load float* %"b_buf[9].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.17 = fmul float %"a_buf[9].load", %"b_buf[9].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.17 = fadd float %result.16, %product_term.17, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[9].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[9]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[9].load.1" = load float* %"b_buf[9].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.18 = fmul float %"a_buf[9].load.1", %"b_buf[9].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.18 = fadd float %result.17, %product_term.18, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[10].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[10]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[10].load" = load float* %"b_buf[10].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.19 = fmul float %"a_buf[10].load", %"b_buf[10].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.19 = fadd float %result.18, %product_term.19, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[10].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[10]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[10].load.1" = load float* %"b_buf[10].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.20 = fmul float %"a_buf[10].load.1", %"b_buf[10].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.20 = fadd float %result.19, %product_term.20, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[11].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[11]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[11].load" = load float* %"b_buf[11].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.21 = fmul float %"a_buf[11].load", %"b_buf[11].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.21 = fadd float %result.20, %product_term.21, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[11].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[11]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[11].load.1" = load float* %"b_buf[11].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.22 = fmul float %"a_buf[11].load.1", %"b_buf[11].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.22 = fadd float %result.21, %product_term.22, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[12].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[12]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[12].load" = load float* %"b_buf[12].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.23 = fmul float %"a_buf[12].load", %"b_buf[12].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.23 = fadd float %result.22, %product_term.23, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[12].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[12]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[12].load.1" = load float* %"b_buf[12].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.24 = fmul float %"a_buf[12].load.1", %"b_buf[12].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.24 = fadd float %result.23, %product_term.24, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[13].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[13]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[13].load" = load float* %"b_buf[13].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.25 = fmul float %"a_buf[13].load", %"b_buf[13].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.25 = fadd float %result.24, %product_term.25, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[13].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[13]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[13].load.1" = load float* %"b_buf[13].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.26 = fmul float %"a_buf[13].load.1", %"b_buf[13].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.26 = fadd float %result.25, %product_term.26, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[14].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[14]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[14].load" = load float* %"b_buf[14].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.27 = fmul float %"a_buf[14].load", %"b_buf[14].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.27 = fadd float %result.26, %product_term.27, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[14].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[14]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[14].load.1" = load float* %"b_buf[14].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.28 = fmul float %"a_buf[14].load.1", %"b_buf[14].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.28 = fadd float %result.27, %product_term.28, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[15].addr.1" = getelementptr [2 x [32 x float]]* %"b_buf[15]", i64 0, i64 0, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[15].load" = load float* %"b_buf[15].addr.1", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.29 = fmul float %"a_buf[15].load", %"b_buf[15].load", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.29 = fadd float %result.28, %product_term.29, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  %"b_buf[15].addr.2" = getelementptr [2 x [32 x float]]* %"b_buf[15]", i64 0, i64 1, i64 %tmp.4 ; [#uses=1 type=float*]
  %"b_buf[15].load.1" = load float* %"b_buf[15].addr.2", align 4, !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %product_term.30 = fmul float %"a_buf[15].load.1", %"b_buf[15].load.1", !dbg !119 ; [#uses=1 type=float] [debug line = 23:77@56:3]
  %result.30 = fadd float %result.29, %product_term.30, !dbg !128 ; [#uses=1 type=float] [debug line = 24:9@56:3]
  store volatile float %result.30, float* %out_C, align 4, !dbg !129 ; [debug line = 26:7@56:3]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.2) nounwind, !dbg !130 ; [#uses=0 type=i32] [debug line = 27:5@56:3]
  %index_b = add i6 %index_b.0.i, 1, !dbg !131    ; [#uses=1 type=i6] [debug line = 17:37@56:3]
  call void @llvm.dbg.value(metadata !{i6 %index_b}, i64 0, metadata !132) nounwind, !dbg !131 ; [debug line = 17:37@56:3] [debug variable = index_b]
  br label %.preheader.i, !dbg !131               ; [debug line = 17:37@56:3]

; <label>:18                                      ; preds = %.preheader.i
  %index_a = add i6 %index_a.0.i, 1, !dbg !133    ; [#uses=1 type=i6] [debug line = 16:35@56:3]
  call void @llvm.dbg.value(metadata !{i6 %index_a}, i64 0, metadata !134) nounwind, !dbg !133 ; [debug line = 16:35@56:3] [debug variable = index_a]
  br label %.preheader1131, !dbg !133             ; [debug line = 16:35@56:3]

mmult_kernel.exit:                                ; preds = %.preheader1131
  ret void, !dbg !135                             ; [debug line = 57:1]

branch0:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[0].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch1:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[1].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch2:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[2].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch3:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[3].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch4:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[4].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch5:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[5].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch6:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[6].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch7:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[7].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch8:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[8].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch9:                                          ; preds = %4
  store float %in_A.load, float* %"a_buf[9].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch10:                                         ; preds = %4
  store float %in_A.load, float* %"a_buf[10].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch11:                                         ; preds = %4
  store float %in_A.load, float* %"a_buf[11].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch12:                                         ; preds = %4
  store float %in_A.load, float* %"a_buf[12].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch13:                                         ; preds = %4
  store float %in_A.load, float* %"a_buf[13].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch14:                                         ; preds = %4
  store float %in_A.load, float* %"a_buf[14].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch15:                                         ; preds = %4
  store float %in_A.load, float* %"a_buf[15].addr", align 4, !dbg !91 ; [debug line = 43:2]
  br label %5, !dbg !91                           ; [debug line = 43:2]

branch16:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[0].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch17:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[1].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch18:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[2].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch19:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[3].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch20:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[4].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch21:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[5].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch22:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[6].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch23:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[7].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch24:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[8].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch25:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[9].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch26:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[10].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch27:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[11].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch28:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[12].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch29:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[13].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch30:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[14].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]

branch31:                                         ; preds = %10
  store float %in_B.load, float* %"b_buf[15].addr", align 4, !dbg !111 ; [debug line = 51:2]
  br label %11, !dbg !111                         ; [debug line = 51:2]
}

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=32]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=6]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/mmult.pragma.2.cpp", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !20} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA32_fS0_Pf", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/mmult.cpp", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !14}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !11, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult", metadata !"mmult", metadata !"_Z5mmultPfS_S_", metadata !6, i32 31, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 34} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !14, metadata !14, metadata !14}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !23, i32 157, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"c:/xup/SDSoC/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"in_A", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 1023, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"in_B", metadata !29, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"out_C", metadata !29, metadata !"float", i32 0, i32 31}
!39 = metadata !{i32 786689, metadata !17, metadata !"in_A", null, i32 31, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !11, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!43 = metadata !{i32 31, i32 18, metadata !17, null}
!44 = metadata !{i32 786689, metadata !17, metadata !"in_B", null, i32 32, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 32, i32 18, metadata !17, null}
!46 = metadata !{i32 786689, metadata !17, metadata !"out_C", null, i32 33, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 33, i32 18, metadata !17, null}
!48 = metadata !{i32 35, i32 1, metadata !49, null}
!49 = metadata !{i32 786443, metadata !17, i32 34, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 790529, metadata !51, metadata !"a_buf[0]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!51 = metadata !{i32 786688, metadata !49, metadata !"a_buf", metadata !6, i32 36, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !11, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{metadata !13, metadata !13}
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !11, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 36, i32 9, metadata !49, null}
!56 = metadata !{i32 790529, metadata !51, metadata !"a_buf[1]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!57 = metadata !{i32 790529, metadata !51, metadata !"a_buf[2]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!58 = metadata !{i32 790529, metadata !51, metadata !"a_buf[3]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!59 = metadata !{i32 790529, metadata !51, metadata !"a_buf[4]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!60 = metadata !{i32 790529, metadata !51, metadata !"a_buf[5]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!61 = metadata !{i32 790529, metadata !51, metadata !"a_buf[6]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!62 = metadata !{i32 790529, metadata !51, metadata !"a_buf[7]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!63 = metadata !{i32 790529, metadata !51, metadata !"a_buf[8]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!64 = metadata !{i32 790529, metadata !51, metadata !"a_buf[9]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!65 = metadata !{i32 790529, metadata !51, metadata !"a_buf[10]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!66 = metadata !{i32 790529, metadata !51, metadata !"a_buf[11]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!67 = metadata !{i32 790529, metadata !51, metadata !"a_buf[12]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!68 = metadata !{i32 790529, metadata !51, metadata !"a_buf[13]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!69 = metadata !{i32 790529, metadata !51, metadata !"a_buf[14]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!70 = metadata !{i32 790529, metadata !51, metadata !"a_buf[15]", null, i32 36, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!71 = metadata !{i32 790529, metadata !72, metadata !"b_buf[0]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!72 = metadata !{i32 786688, metadata !49, metadata !"b_buf", metadata !6, i32 37, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 37, i32 9, metadata !49, null}
!74 = metadata !{i32 790529, metadata !72, metadata !"b_buf[1]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!75 = metadata !{i32 790529, metadata !72, metadata !"b_buf[2]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!76 = metadata !{i32 790529, metadata !72, metadata !"b_buf[3]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!77 = metadata !{i32 790529, metadata !72, metadata !"b_buf[4]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!78 = metadata !{i32 790529, metadata !72, metadata !"b_buf[5]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!79 = metadata !{i32 790529, metadata !72, metadata !"b_buf[6]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!80 = metadata !{i32 790529, metadata !72, metadata !"b_buf[7]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!81 = metadata !{i32 790529, metadata !72, metadata !"b_buf[8]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!82 = metadata !{i32 790529, metadata !72, metadata !"b_buf[9]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!83 = metadata !{i32 790529, metadata !72, metadata !"b_buf[10]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!84 = metadata !{i32 790529, metadata !72, metadata !"b_buf[11]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!85 = metadata !{i32 790529, metadata !72, metadata !"b_buf[12]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!86 = metadata !{i32 790529, metadata !72, metadata !"b_buf[13]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!87 = metadata !{i32 790529, metadata !72, metadata !"b_buf[14]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!88 = metadata !{i32 790529, metadata !72, metadata !"b_buf[15]", null, i32 37, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!89 = metadata !{i32 40, i32 7, metadata !90, null}
!90 = metadata !{i32 786443, metadata !49, i32 40, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 43, i32 2, metadata !92, null}
!92 = metadata !{i32 786443, metadata !93, i32 41, i32 25, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 41, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !90, i32 40, i32 23, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 41, i32 9, metadata !93, null}
!96 = metadata !{i32 41, i32 26, metadata !92, null}
!97 = metadata !{i32 42, i32 1, metadata !92, null}
!98 = metadata !{i32 44, i32 5, metadata !92, null}
!99 = metadata !{i32 41, i32 20, metadata !93, null}
!100 = metadata !{i32 786688, metadata !49, metadata !"j", metadata !6, i32 35, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 40, i32 18, metadata !90, null}
!102 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 35, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 48, i32 7, metadata !104, null}
!104 = metadata !{i32 786443, metadata !49, i32 48, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 49, i32 9, metadata !106, null}
!106 = metadata !{i32 786443, metadata !107, i32 49, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !104, i32 48, i32 23, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 49, i32 26, metadata !109, null}
!109 = metadata !{i32 786443, metadata !106, i32 49, i32 25, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 50, i32 1, metadata !109, null}
!111 = metadata !{i32 51, i32 2, metadata !109, null}
!112 = metadata !{i32 52, i32 5, metadata !109, null}
!113 = metadata !{i32 49, i32 20, metadata !106, null}
!114 = metadata !{i32 48, i32 18, metadata !104, null}
!115 = metadata !{i32 16, i32 8, metadata !116, metadata !118}
!116 = metadata !{i32 786443, metadata !117, i32 16, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!117 = metadata !{i32 786443, metadata !5, i32 9, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 56, i32 3, metadata !49, null}
!119 = metadata !{i32 23, i32 77, metadata !120, metadata !118}
!120 = metadata !{i32 786443, metadata !121, i32 20, i32 50, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !122, i32 20, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 17, i32 48, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !124, i32 17, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 786443, metadata !116, i32 16, i32 46, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 17, i32 10, metadata !123, metadata !118}
!126 = metadata !{i32 17, i32 49, metadata !122, metadata !118}
!127 = metadata !{i32 18, i32 1, metadata !122, metadata !118}
!128 = metadata !{i32 24, i32 9, metadata !120, metadata !118}
!129 = metadata !{i32 26, i32 7, metadata !122, metadata !118}
!130 = metadata !{i32 27, i32 5, metadata !122, metadata !118}
!131 = metadata !{i32 17, i32 37, metadata !123, metadata !118}
!132 = metadata !{i32 786688, metadata !117, metadata !"index_b", metadata !6, i32 14, metadata !24, i32 0, metadata !118} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 16, i32 35, metadata !116, metadata !118}
!134 = metadata !{i32 786688, metadata !117, metadata !"index_a", metadata !6, i32 14, metadata !24, i32 0, metadata !118} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 57, i32 1, metadata !49, null}
