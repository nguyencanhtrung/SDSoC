; ModuleID = '/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=13 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@str = internal constant [6 x i8] c"mmult\00"     ; [#uses=1 type=[6 x i8]*]

; [#uses=32]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

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

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define void @mmult(float* %in_A, float* %in_B, float* %out_C) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_A), !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(float* %in_B), !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float* %out_C), !map !10
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  %a_buf_0 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_1 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_2 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_3 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_4 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_5 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_6 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_7 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_8 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_9 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %a_buf_10 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %a_buf_11 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %a_buf_12 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %a_buf_13 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %a_buf_14 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %a_buf_15 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %b_buf_0 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_1 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_2 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_3 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_4 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_5 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_6 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_7 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_8 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_9 = alloca [64 x float], align 4         ; [#uses=3 type=[64 x float]*]
  %b_buf_10 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %b_buf_11 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %b_buf_12 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %b_buf_13 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %b_buf_14 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  %b_buf_15 = alloca [64 x float], align 4        ; [#uses=3 type=[64 x float]*]
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !14), !dbg !26 ; [debug line = 31:18] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !27), !dbg !28 ; [debug line = 32:18] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !29), !dbg !30 ; [debug line = 33:18] [debug variable = out_C]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !31 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_0}, metadata !33), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[0]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_1}, metadata !40), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[1]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_2}, metadata !41), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[2]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_3}, metadata !42), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[3]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_4}, metadata !43), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[4]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_5}, metadata !44), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[5]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_6}, metadata !45), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[6]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_7}, metadata !46), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[7]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_8}, metadata !47), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[8]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_9}, metadata !48), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[9]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_10}, metadata !49), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[10]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_11}, metadata !50), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[11]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_12}, metadata !51), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[12]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_13}, metadata !52), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[13]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_14}, metadata !53), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[14]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %a_buf_15}, metadata !54), !dbg !39 ; [debug line = 44:9] [debug variable = a_buf[15]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_0}, metadata !55), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[0]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_1}, metadata !58), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[1]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_2}, metadata !59), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[2]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_3}, metadata !60), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[3]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_4}, metadata !61), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[4]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_5}, metadata !62), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[5]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_6}, metadata !63), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[6]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_7}, metadata !64), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[7]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_8}, metadata !65), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[8]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_9}, metadata !66), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[9]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_10}, metadata !67), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[10]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_11}, metadata !68), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[11]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_12}, metadata !69), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[12]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_13}, metadata !70), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[13]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_14}, metadata !71), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[14]]
  call void @llvm.dbg.declare(metadata !{[64 x float]* %b_buf_15}, metadata !72), !dbg !57 ; [debug line = 45:9] [debug variable = b_buf[15]]
  br label %.preheader5, !dbg !73                 ; [debug line = 48:7]

.preheader5:                                      ; preds = %1, %0
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %1 ] ; [#uses=2 type=i11]
  %i = phi i6 [ 0, %0 ], [ %i_mid2, %1 ]          ; [#uses=2 type=i6]
  %j = phi i6 [ 0, %0 ], [ %j_2, %1 ]             ; [#uses=2 type=i6]
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -1024 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i11 %indvar_flatten, 1 ; [#uses=1 type=i11]
  br i1 %exitcond_flatten, label %.preheader, label %.preheader5.preheader

; <label>:1                                       ; preds = %branch15, %branch14, %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7, %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3) nounwind, !dbg !75 ; [#uses=0 type=i32] [debug line = 52:5]
  %j_2 = add i6 %j_mid2, 1, !dbg !79              ; [#uses=1 type=i6] [debug line = 49:20]
  call void @llvm.dbg.value(metadata !{i6 %j_2}, i64 0, metadata !80), !dbg !79 ; [debug line = 49:20] [debug variable = j]
  br label %.preheader5, !dbg !79                 ; [debug line = 49:20]

.preheader5.preheader:                            ; preds = %.preheader5
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) ; [#uses=0 type=i32]
  %exitcond = icmp eq i6 %j, -32, !dbg !82        ; [#uses=2 type=i1] [debug line = 49:9]
  %j_mid2 = select i1 %exitcond, i6 0, i6 %j      ; [#uses=3 type=i6]
  %i_s = add i6 %i, 1, !dbg !83                   ; [#uses=1 type=i6] [debug line = 48:18]
  %i_mid2 = select i1 %exitcond, i6 %i_s, i6 %i   ; [#uses=2 type=i6]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !84 ; [#uses=1 type=i32] [debug line = 49:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !85 ; [debug line = 50:1]
  %in_A_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_A), !dbg !86 ; [#uses=16 type=float] [debug line = 51:2]
  %arrayNo_cast = call i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6 %j_mid2, i32 1, i32 5) ; [#uses=1 type=i5]
  %tmp_4 = trunc i6 %j_mid2 to i1                 ; [#uses=1 type=i1]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %i_mid2, i1 %tmp_4) ; [#uses=1 type=i7]
  %tmp_1 = zext i7 %tmp to i64, !dbg !86          ; [#uses=16 type=i64] [debug line = 51:2]
  %a_buf_0_addr = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_1_addr = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_2_addr = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_3_addr = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_4_addr = getelementptr [64 x float]* %a_buf_4, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_5_addr = getelementptr [64 x float]* %a_buf_5, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_6_addr = getelementptr [64 x float]* %a_buf_6, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_7_addr = getelementptr [64 x float]* %a_buf_7, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_8_addr = getelementptr [64 x float]* %a_buf_8, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_9_addr = getelementptr [64 x float]* %a_buf_9, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_10_addr = getelementptr [64 x float]* %a_buf_10, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_11_addr = getelementptr [64 x float]* %a_buf_11, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_12_addr = getelementptr [64 x float]* %a_buf_12, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_13_addr = getelementptr [64 x float]* %a_buf_13, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_14_addr = getelementptr [64 x float]* %a_buf_14, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  %a_buf_15_addr = getelementptr [64 x float]* %a_buf_15, i64 0, i64 %tmp_1, !dbg !86 ; [#uses=1 type=float*] [debug line = 51:2]
  switch i5 %arrayNo_cast, label %branch15 [
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
  ], !dbg !86                                     ; [debug line = 51:2]

.preheader:                                       ; preds = %2, %.preheader5
  %indvar_flatten6 = phi i11 [ %indvar_flatten_next7, %2 ], [ 0, %.preheader5 ] ; [#uses=2 type=i11]
  %i_1 = phi i6 [ %i_1_mid2, %2 ], [ 0, %.preheader5 ] ; [#uses=2 type=i6]
  %j_1 = phi i6 [ %j_3, %2 ], [ 0, %.preheader5 ] ; [#uses=2 type=i6]
  %exitcond_flatten8 = icmp eq i11 %indvar_flatten6, -1024 ; [#uses=1 type=i1]
  %indvar_flatten_next7 = add i11 %indvar_flatten6, 1 ; [#uses=1 type=i11]
  br i1 %exitcond_flatten8, label %.preheader.i, label %.preheader4

; <label>:2                                       ; preds = %branch31, %branch30, %branch29, %branch28, %branch27, %branch26, %branch25, %branch24, %branch23, %branch22, %branch21, %branch20, %branch19, %branch18, %branch17, %branch16
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_7) nounwind, !dbg !87 ; [#uses=0 type=i32] [debug line = 60:5]
  %j_3 = add i6 %j_1_mid2, 1, !dbg !92            ; [#uses=1 type=i6] [debug line = 57:20]
  call void @llvm.dbg.value(metadata !{i6 %j_3}, i64 0, metadata !80), !dbg !92 ; [debug line = 57:20] [debug variable = j]
  br label %.preheader, !dbg !92                  ; [debug line = 57:20]

.preheader4:                                      ; preds = %.preheader
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i6 %j_1, -32, !dbg !93     ; [#uses=2 type=i1] [debug line = 57:9]
  %j_1_mid2 = select i1 %exitcond1, i6 0, i6 %j_1 ; [#uses=2 type=i6]
  %i_2 = add i6 %i_1, 1, !dbg !94                 ; [#uses=1 type=i6] [debug line = 56:18]
  %i_1_mid2 = select i1 %exitcond1, i6 %i_2, i6 %i_1 ; [#uses=3 type=i6]
  %arrayNo1_cast = call i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6 %i_1_mid2, i32 1, i32 5) ; [#uses=1 type=i5]
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 57:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !96 ; [debug line = 58:1]
  %in_B_read = call float @_ssdm_op_Read.ap_fifo.volatile.floatP(float* %in_B), !dbg !97 ; [#uses=16 type=float] [debug line = 59:2]
  %tmp_trn_cast = zext i6 %j_1_mid2 to i7         ; [#uses=1 type=i7]
  %tmp_5 = shl i6 %i_1_mid2, 5                    ; [#uses=1 type=i6]
  %p_addr_cast = zext i6 %tmp_5 to i7, !dbg !97   ; [#uses=1 type=i7] [debug line = 59:2]
  %p_addr1 = add i7 %p_addr_cast, %tmp_trn_cast, !dbg !97 ; [#uses=1 type=i7] [debug line = 59:2]
  %tmp_6 = zext i7 %p_addr1 to i64, !dbg !97      ; [#uses=16 type=i64] [debug line = 59:2]
  %b_buf_0_addr = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_1_addr = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_2_addr = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_3_addr = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_4_addr = getelementptr [64 x float]* %b_buf_4, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_5_addr = getelementptr [64 x float]* %b_buf_5, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_6_addr = getelementptr [64 x float]* %b_buf_6, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_7_addr = getelementptr [64 x float]* %b_buf_7, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_8_addr = getelementptr [64 x float]* %b_buf_8, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_9_addr = getelementptr [64 x float]* %b_buf_9, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_10_addr = getelementptr [64 x float]* %b_buf_10, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_11_addr = getelementptr [64 x float]* %b_buf_11, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_12_addr = getelementptr [64 x float]* %b_buf_12, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_13_addr = getelementptr [64 x float]* %b_buf_13, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_14_addr = getelementptr [64 x float]* %b_buf_14, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  %b_buf_15_addr = getelementptr [64 x float]* %b_buf_15, i64 0, i64 %tmp_6, !dbg !97 ; [#uses=1 type=float*] [debug line = 59:2]
  switch i5 %arrayNo1_cast, label %branch31 [
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
  ], !dbg !97                                     ; [debug line = 59:2]

.preheader.i:                                     ; preds = %.preheader1131, %.preheader
  %indvar_flatten1 = phi i11 [ %indvar_flatten_next1, %.preheader1131 ], [ 0, %.preheader ] ; [#uses=2 type=i11]
  %index_a_0_i = phi i6 [ %index_a_0_i_mid2, %.preheader1131 ], [ 0, %.preheader ] ; [#uses=2 type=i6]
  %index_b_0_i = phi i6 [ %index_b, %.preheader1131 ], [ 0, %.preheader ] ; [#uses=2 type=i6]
  %exitcond_flatten1 = icmp eq i11 %indvar_flatten1, -1024 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i11 %indvar_flatten1, 1 ; [#uses=1 type=i11]
  br i1 %exitcond_flatten1, label %mmult_kernel.exit, label %.preheader1131

.preheader1131:                                   ; preds = %.preheader.i
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024) ; [#uses=0 type=i32]
  %exitcond1_i = icmp eq i6 %index_b_0_i, -32, !dbg !98 ; [#uses=2 type=i1] [debug line = 17:10@64:3]
  %index_b_0_i_mid2 = select i1 %exitcond1_i, i6 0, i6 %index_b_0_i ; [#uses=3 type=i6]
  %index_a = add i6 %index_a_0_i, 1, !dbg !110    ; [#uses=1 type=i6] [debug line = 16:35@64:3]
  %index_a_0_i_mid2 = select i1 %exitcond1_i, i6 %index_a, i6 %index_a_0_i ; [#uses=2 type=i6]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %index_a_0_i_mid2, i1 false) ; [#uses=2 type=i7]
  %tmp_9 = zext i7 %tmp_8 to i64                  ; [#uses=16 type=i64]
  %a_buf_0_addr_1 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_0_load = load float* %a_buf_0_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %tmp_s = or i7 %tmp_8, 1                        ; [#uses=1 type=i7]
  %p_addr2 = call i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25 0, i7 %tmp_s) ; [#uses=1 type=i32]
  %tmp_10 = zext i32 %p_addr2 to i64              ; [#uses=16 type=i64]
  %a_buf_0_addr_2 = getelementptr [64 x float]* %a_buf_0, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_0_load_1 = load float* %a_buf_0_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_1_addr_1 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_1_load = load float* %a_buf_1_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_1_addr_2 = getelementptr [64 x float]* %a_buf_1, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_1_load_1 = load float* %a_buf_1_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_2_addr_1 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_2_load = load float* %a_buf_2_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_2_addr_2 = getelementptr [64 x float]* %a_buf_2, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_2_load_1 = load float* %a_buf_2_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_3_addr_1 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_3_load = load float* %a_buf_3_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_3_addr_2 = getelementptr [64 x float]* %a_buf_3, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_3_load_1 = load float* %a_buf_3_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_4_addr_1 = getelementptr [64 x float]* %a_buf_4, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_4_load = load float* %a_buf_4_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_4_addr_2 = getelementptr [64 x float]* %a_buf_4, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_4_load_1 = load float* %a_buf_4_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_5_addr_1 = getelementptr [64 x float]* %a_buf_5, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_5_load = load float* %a_buf_5_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_5_addr_2 = getelementptr [64 x float]* %a_buf_5, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_5_load_1 = load float* %a_buf_5_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_6_addr_1 = getelementptr [64 x float]* %a_buf_6, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_6_load = load float* %a_buf_6_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_6_addr_2 = getelementptr [64 x float]* %a_buf_6, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_6_load_1 = load float* %a_buf_6_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_7_addr_1 = getelementptr [64 x float]* %a_buf_7, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_7_load = load float* %a_buf_7_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_7_addr_2 = getelementptr [64 x float]* %a_buf_7, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_7_load_1 = load float* %a_buf_7_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_8_addr_1 = getelementptr [64 x float]* %a_buf_8, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_8_load = load float* %a_buf_8_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_8_addr_2 = getelementptr [64 x float]* %a_buf_8, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_8_load_1 = load float* %a_buf_8_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_9_addr_1 = getelementptr [64 x float]* %a_buf_9, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_9_load = load float* %a_buf_9_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_9_addr_2 = getelementptr [64 x float]* %a_buf_9, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_9_load_1 = load float* %a_buf_9_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_10_addr_1 = getelementptr [64 x float]* %a_buf_10, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_10_load = load float* %a_buf_10_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_10_addr_2 = getelementptr [64 x float]* %a_buf_10, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_10_load_1 = load float* %a_buf_10_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_11_addr_1 = getelementptr [64 x float]* %a_buf_11, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_11_load = load float* %a_buf_11_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_11_addr_2 = getelementptr [64 x float]* %a_buf_11, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_11_load_1 = load float* %a_buf_11_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_12_addr_1 = getelementptr [64 x float]* %a_buf_12, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_12_load = load float* %a_buf_12_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_12_addr_2 = getelementptr [64 x float]* %a_buf_12, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_12_load_1 = load float* %a_buf_12_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_13_addr_1 = getelementptr [64 x float]* %a_buf_13, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_13_load = load float* %a_buf_13_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_13_addr_2 = getelementptr [64 x float]* %a_buf_13, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_13_load_1 = load float* %a_buf_13_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_14_addr_1 = getelementptr [64 x float]* %a_buf_14, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_14_load = load float* %a_buf_14_addr_1, align 16, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_14_addr_2 = getelementptr [64 x float]* %a_buf_14, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_14_load_1 = load float* %a_buf_14_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_15_addr_1 = getelementptr [64 x float]* %a_buf_15, i64 0, i64 %tmp_9 ; [#uses=1 type=float*]
  %a_buf_15_load = load float* %a_buf_15_addr_1, align 8, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %a_buf_15_addr_2 = getelementptr [64 x float]* %a_buf_15, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %a_buf_15_load_1 = load float* %a_buf_15_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2) nounwind, !dbg !115 ; [#uses=1 type=i32] [debug line = 17:49@64:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !116 ; [debug line = 18:1@64:3]
  %tmp_4_trn_cast = zext i6 %index_b_0_i_mid2 to i7 ; [#uses=1 type=i7]
  %tmp_11 = zext i6 %index_b_0_i_mid2 to i64      ; [#uses=16 type=i64]
  %b_buf_0_addr_1 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_0_load = load float* %b_buf_0_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term = fmul float %a_buf_0_load, %b_buf_0_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result = fadd float %product_term, 0.000000e+00, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %p_addr3 = add i7 %tmp_4_trn_cast, 32           ; [#uses=1 type=i7]
  %tmp_12 = zext i7 %p_addr3 to i64               ; [#uses=16 type=i64]
  %b_buf_0_addr_2 = getelementptr [64 x float]* %b_buf_0, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_0_load_1 = load float* %b_buf_0_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_1 = fmul float %a_buf_0_load_1, %b_buf_0_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_1 = fadd float %result, %product_term_1, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_1_addr_1 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_1_load = load float* %b_buf_1_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_2 = fmul float %a_buf_1_load, %b_buf_1_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_2 = fadd float %result_1, %product_term_2, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_1_addr_2 = getelementptr [64 x float]* %b_buf_1, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_1_load_1 = load float* %b_buf_1_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_3 = fmul float %a_buf_1_load_1, %b_buf_1_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_3 = fadd float %result_2, %product_term_3, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_2_addr_1 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_2_load = load float* %b_buf_2_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_4 = fmul float %a_buf_2_load, %b_buf_2_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_4 = fadd float %result_3, %product_term_4, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_2_addr_2 = getelementptr [64 x float]* %b_buf_2, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_2_load_1 = load float* %b_buf_2_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_5 = fmul float %a_buf_2_load_1, %b_buf_2_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_5 = fadd float %result_4, %product_term_5, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_3_addr_1 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_3_load = load float* %b_buf_3_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_6 = fmul float %a_buf_3_load, %b_buf_3_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_6 = fadd float %result_5, %product_term_6, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_3_addr_2 = getelementptr [64 x float]* %b_buf_3, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_3_load_1 = load float* %b_buf_3_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_7 = fmul float %a_buf_3_load_1, %b_buf_3_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_7 = fadd float %result_6, %product_term_7, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_4_addr_1 = getelementptr [64 x float]* %b_buf_4, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_4_load = load float* %b_buf_4_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_8 = fmul float %a_buf_4_load, %b_buf_4_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_8 = fadd float %result_7, %product_term_8, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_4_addr_2 = getelementptr [64 x float]* %b_buf_4, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_4_load_1 = load float* %b_buf_4_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_9 = fmul float %a_buf_4_load_1, %b_buf_4_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_9 = fadd float %result_8, %product_term_9, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_5_addr_1 = getelementptr [64 x float]* %b_buf_5, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_5_load = load float* %b_buf_5_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_s = fmul float %a_buf_5_load, %b_buf_5_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_s = fadd float %result_9, %product_term_s, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_5_addr_2 = getelementptr [64 x float]* %b_buf_5, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_5_load_1 = load float* %b_buf_5_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_10 = fmul float %a_buf_5_load_1, %b_buf_5_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_10 = fadd float %result_s, %product_term_10, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_6_addr_1 = getelementptr [64 x float]* %b_buf_6, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_6_load = load float* %b_buf_6_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_11 = fmul float %a_buf_6_load, %b_buf_6_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_11 = fadd float %result_10, %product_term_11, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_6_addr_2 = getelementptr [64 x float]* %b_buf_6, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_6_load_1 = load float* %b_buf_6_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_12 = fmul float %a_buf_6_load_1, %b_buf_6_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_12 = fadd float %result_11, %product_term_12, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_7_addr_1 = getelementptr [64 x float]* %b_buf_7, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_7_load = load float* %b_buf_7_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_13 = fmul float %a_buf_7_load, %b_buf_7_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_13 = fadd float %result_12, %product_term_13, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_7_addr_2 = getelementptr [64 x float]* %b_buf_7, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_7_load_1 = load float* %b_buf_7_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_14 = fmul float %a_buf_7_load_1, %b_buf_7_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_14 = fadd float %result_13, %product_term_14, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_8_addr_1 = getelementptr [64 x float]* %b_buf_8, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_8_load = load float* %b_buf_8_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_15 = fmul float %a_buf_8_load, %b_buf_8_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_15 = fadd float %result_14, %product_term_15, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_8_addr_2 = getelementptr [64 x float]* %b_buf_8, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_8_load_1 = load float* %b_buf_8_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_16 = fmul float %a_buf_8_load_1, %b_buf_8_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_16 = fadd float %result_15, %product_term_16, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_9_addr_1 = getelementptr [64 x float]* %b_buf_9, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_9_load = load float* %b_buf_9_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_17 = fmul float %a_buf_9_load, %b_buf_9_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_17 = fadd float %result_16, %product_term_17, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_9_addr_2 = getelementptr [64 x float]* %b_buf_9, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_9_load_1 = load float* %b_buf_9_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_18 = fmul float %a_buf_9_load_1, %b_buf_9_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_18 = fadd float %result_17, %product_term_18, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_10_addr_1 = getelementptr [64 x float]* %b_buf_10, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_10_load = load float* %b_buf_10_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_19 = fmul float %a_buf_10_load, %b_buf_10_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_19 = fadd float %result_18, %product_term_19, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_10_addr_2 = getelementptr [64 x float]* %b_buf_10, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_10_load_1 = load float* %b_buf_10_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_20 = fmul float %a_buf_10_load_1, %b_buf_10_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_20 = fadd float %result_19, %product_term_20, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_11_addr_1 = getelementptr [64 x float]* %b_buf_11, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_11_load = load float* %b_buf_11_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_21 = fmul float %a_buf_11_load, %b_buf_11_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_21 = fadd float %result_20, %product_term_21, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_11_addr_2 = getelementptr [64 x float]* %b_buf_11, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_11_load_1 = load float* %b_buf_11_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_22 = fmul float %a_buf_11_load_1, %b_buf_11_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_22 = fadd float %result_21, %product_term_22, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_12_addr_1 = getelementptr [64 x float]* %b_buf_12, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_12_load = load float* %b_buf_12_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_23 = fmul float %a_buf_12_load, %b_buf_12_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_23 = fadd float %result_22, %product_term_23, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_12_addr_2 = getelementptr [64 x float]* %b_buf_12, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_12_load_1 = load float* %b_buf_12_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_24 = fmul float %a_buf_12_load_1, %b_buf_12_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_24 = fadd float %result_23, %product_term_24, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_13_addr_1 = getelementptr [64 x float]* %b_buf_13, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_13_load = load float* %b_buf_13_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_25 = fmul float %a_buf_13_load, %b_buf_13_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_25 = fadd float %result_24, %product_term_25, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_13_addr_2 = getelementptr [64 x float]* %b_buf_13, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_13_load_1 = load float* %b_buf_13_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_26 = fmul float %a_buf_13_load_1, %b_buf_13_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_26 = fadd float %result_25, %product_term_26, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_14_addr_1 = getelementptr [64 x float]* %b_buf_14, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_14_load = load float* %b_buf_14_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_27 = fmul float %a_buf_14_load, %b_buf_14_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_27 = fadd float %result_26, %product_term_27, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_14_addr_2 = getelementptr [64 x float]* %b_buf_14, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_14_load_1 = load float* %b_buf_14_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_28 = fmul float %a_buf_14_load_1, %b_buf_14_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_28 = fadd float %result_27, %product_term_28, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_15_addr_1 = getelementptr [64 x float]* %b_buf_15, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %b_buf_15_load = load float* %b_buf_15_addr_1, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_29 = fmul float %a_buf_15_load, %b_buf_15_load, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_29 = fadd float %result_28, %product_term_29, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  %b_buf_15_addr_2 = getelementptr [64 x float]* %b_buf_15, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %b_buf_15_load_1 = load float* %b_buf_15_addr_2, align 4, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %product_term_30 = fmul float %a_buf_15_load_1, %b_buf_15_load_1, !dbg !111 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  %result_30 = fadd float %result_29, %product_term_30, !dbg !117 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  call void @_ssdm_op_Write.ap_fifo.volatile.floatP(float* %out_C, float %result_30), !dbg !118 ; [debug line = 26:7@64:3]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_2) nounwind, !dbg !119 ; [#uses=0 type=i32] [debug line = 27:5@64:3]
  %index_b = add i6 %index_b_0_i_mid2, 1, !dbg !120 ; [#uses=1 type=i6] [debug line = 17:37@64:3]
  call void @llvm.dbg.value(metadata !{i6 %index_b}, i64 0, metadata !121) nounwind, !dbg !120 ; [debug line = 17:37@64:3] [debug variable = index_b]
  br label %.preheader.i, !dbg !120               ; [debug line = 17:37@64:3]

mmult_kernel.exit:                                ; preds = %.preheader.i
  ret void, !dbg !122                             ; [debug line = 65:1]

branch0:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_0_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch1:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_1_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch2:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_2_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch3:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_3_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch4:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_4_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch5:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_5_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch6:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_6_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch7:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_7_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch8:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_8_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch9:                                          ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_9_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch10:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_10_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch11:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_11_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch12:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_12_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch13:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_13_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch14:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_14_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch15:                                         ; preds = %.preheader5.preheader
  store float %in_A_read, float* %a_buf_15_addr, align 4, !dbg !86 ; [debug line = 51:2]
  br label %1, !dbg !86                           ; [debug line = 51:2]

branch16:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_0_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch17:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_1_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch18:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_2_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch19:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_3_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch20:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_4_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch21:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_5_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch22:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_6_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch23:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_7_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch24:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_8_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch25:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_9_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch26:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_10_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch27:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_11_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch28:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_12_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch29:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_13_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch30:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_14_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]

branch31:                                         ; preds = %.preheader4
  store float %in_B_read, float* %b_buf_15_addr, align 4, !dbg !97 ; [debug line = 59:2]
  br label %2, !dbg !97                           ; [debug line = 59:2]
}

; [#uses=2]
define weak i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone {
entry:
  %empty = call i6 @llvm.part.select.i6(i6 %0, i32 %1, i32 %2) ; [#uses=1 type=i6]
  %empty_11 = trunc i6 %empty to i5               ; [#uses=1 type=i5]
  ret i5 %empty_11
}

; [#uses=2]
define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7                       ; [#uses=1 type=i7]
  %empty_12 = zext i1 %1 to i7                    ; [#uses=1 type=i7]
  %empty_13 = shl i7 %empty, 1                    ; [#uses=1 type=i7]
  %empty_14 = or i7 %empty_13, %empty_12          ; [#uses=1 type=i7]
  ret i7 %empty_14
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i25.i7(i25, i7) nounwind readnone {
entry:
  %empty = zext i25 %0 to i32                     ; [#uses=1 type=i32]
  %empty_15 = zext i7 %1 to i32                   ; [#uses=1 type=i32]
  %empty_16 = shl i32 %empty, 7                   ; [#uses=1 type=i32]
  %empty_17 = or i32 %empty_16, %empty_15         ; [#uses=1 type=i32]
  ret i32 %empty_17
}

; [#uses=2]
define weak float @_ssdm_op_Read.ap_fifo.volatile.floatP(float*) {
entry:
  %empty = call float @_autotb_FifoRead_float(float* %0) ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_fifo.volatile.floatP(float*, float) {
entry:
  %empty = call float @_autotb_FifoWrite_float(float* %0, float %1) ; [#uses=0 type=float]
  ret void
}

; [#uses=1]
declare float @_autotb_FifoRead_float(float*)

; [#uses=1]
declare float @_autotb_FifoWrite_float(float*, float)

; [#uses=1]
declare i6 @llvm.part.select.i6(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i6 @_ssdm_op_BitConcatenate.i6.i1.i5(i1, i5) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in_A", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1023, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"in_B", metadata !4, metadata !"float", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out_C", metadata !4, metadata !"float", i32 0, i32 31}
!14 = metadata !{i32 786689, metadata !15, metadata !"in_A", null, i32 31, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"mmult", metadata !"mmult", metadata !"_Z5mmultPfS_S_", metadata !16, i32 31, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 34} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls/src/mmult.cpp", metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab1/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19, metadata !19, metadata !19}
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ]
!20 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !20, metadata !24, i32 0, i32 0} ; [ DW_TAG_array_type ]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 1023}     ; [ DW_TAG_subrange_type ]
!26 = metadata !{i32 31, i32 18, metadata !15, null}
!27 = metadata !{i32 786689, metadata !15, metadata !"in_B", null, i32 32, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 32, i32 18, metadata !15, null}
!29 = metadata !{i32 786689, metadata !15, metadata !"out_C", null, i32 33, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 33, i32 18, metadata !15, null}
!31 = metadata !{i32 36, i32 1, metadata !32, null}
!32 = metadata !{i32 786443, metadata !15, i32 34, i32 1, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 790529, metadata !34, metadata !"a_buf[0]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!34 = metadata !{i32 786688, metadata !32, metadata !"a_buf", metadata !16, i32 44, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !20, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37, metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !20, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{i32 44, i32 9, metadata !32, null}
!40 = metadata !{i32 790529, metadata !34, metadata !"a_buf[1]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!41 = metadata !{i32 790529, metadata !34, metadata !"a_buf[2]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!42 = metadata !{i32 790529, metadata !34, metadata !"a_buf[3]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!43 = metadata !{i32 790529, metadata !34, metadata !"a_buf[4]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!44 = metadata !{i32 790529, metadata !34, metadata !"a_buf[5]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!45 = metadata !{i32 790529, metadata !34, metadata !"a_buf[6]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!46 = metadata !{i32 790529, metadata !34, metadata !"a_buf[7]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!47 = metadata !{i32 790529, metadata !34, metadata !"a_buf[8]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!48 = metadata !{i32 790529, metadata !34, metadata !"a_buf[9]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!49 = metadata !{i32 790529, metadata !34, metadata !"a_buf[10]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!50 = metadata !{i32 790529, metadata !34, metadata !"a_buf[11]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!51 = metadata !{i32 790529, metadata !34, metadata !"a_buf[12]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!52 = metadata !{i32 790529, metadata !34, metadata !"a_buf[13]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!53 = metadata !{i32 790529, metadata !34, metadata !"a_buf[14]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!54 = metadata !{i32 790529, metadata !34, metadata !"a_buf[15]", null, i32 44, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!55 = metadata !{i32 790529, metadata !56, metadata !"b_buf[0]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!56 = metadata !{i32 786688, metadata !32, metadata !"b_buf", metadata !16, i32 45, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 45, i32 9, metadata !32, null}
!58 = metadata !{i32 790529, metadata !56, metadata !"b_buf[1]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!59 = metadata !{i32 790529, metadata !56, metadata !"b_buf[2]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!60 = metadata !{i32 790529, metadata !56, metadata !"b_buf[3]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!61 = metadata !{i32 790529, metadata !56, metadata !"b_buf[4]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!62 = metadata !{i32 790529, metadata !56, metadata !"b_buf[5]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!63 = metadata !{i32 790529, metadata !56, metadata !"b_buf[6]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!64 = metadata !{i32 790529, metadata !56, metadata !"b_buf[7]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!65 = metadata !{i32 790529, metadata !56, metadata !"b_buf[8]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!66 = metadata !{i32 790529, metadata !56, metadata !"b_buf[9]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!67 = metadata !{i32 790529, metadata !56, metadata !"b_buf[10]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!68 = metadata !{i32 790529, metadata !56, metadata !"b_buf[11]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!69 = metadata !{i32 790529, metadata !56, metadata !"b_buf[12]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!70 = metadata !{i32 790529, metadata !56, metadata !"b_buf[13]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!71 = metadata !{i32 790529, metadata !56, metadata !"b_buf[14]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!72 = metadata !{i32 790529, metadata !56, metadata !"b_buf[15]", null, i32 45, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!73 = metadata !{i32 48, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !32, i32 48, i32 3, metadata !16, i32 8} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 52, i32 5, metadata !76, null}
!76 = metadata !{i32 786443, metadata !77, i32 49, i32 25, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786443, metadata !78, i32 49, i32 5, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !74, i32 48, i32 23, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 49, i32 20, metadata !77, null}
!80 = metadata !{i32 786688, metadata !32, metadata !"j", metadata !16, i32 43, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!82 = metadata !{i32 49, i32 9, metadata !77, null}
!83 = metadata !{i32 48, i32 18, metadata !74, null}
!84 = metadata !{i32 49, i32 26, metadata !76, null}
!85 = metadata !{i32 50, i32 1, metadata !76, null}
!86 = metadata !{i32 51, i32 2, metadata !76, null}
!87 = metadata !{i32 60, i32 5, metadata !88, null}
!88 = metadata !{i32 786443, metadata !89, i32 57, i32 25, metadata !16, i32 15} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !90, i32 57, i32 5, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !91, i32 56, i32 23, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !32, i32 56, i32 3, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 57, i32 20, metadata !89, null}
!93 = metadata !{i32 57, i32 9, metadata !89, null}
!94 = metadata !{i32 56, i32 18, metadata !91, null}
!95 = metadata !{i32 57, i32 26, metadata !88, null}
!96 = metadata !{i32 58, i32 1, metadata !88, null}
!97 = metadata !{i32 59, i32 2, metadata !88, null}
!98 = metadata !{i32 17, i32 10, metadata !99, metadata !109}
!99 = metadata !{i32 786443, metadata !100, i32 17, i32 5, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !101, i32 16, i32 46, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !102, i32 16, i32 3, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !103, i32 9, i32 1, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786478, i32 0, metadata !16, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA32_fS0_Pf", metadata !16, i32 6, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !21, i32 9} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !106, metadata !106, metadata !19}
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ]
!107 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !20, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ]
!108 = metadata !{metadata !37}
!109 = metadata !{i32 64, i32 3, metadata !32, null}
!110 = metadata !{i32 16, i32 35, metadata !101, metadata !109}
!111 = metadata !{i32 23, i32 77, metadata !112, metadata !109}
!112 = metadata !{i32 786443, metadata !113, i32 20, i32 50, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 786443, metadata !114, i32 20, i32 7, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!114 = metadata !{i32 786443, metadata !99, i32 17, i32 48, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 17, i32 49, metadata !114, metadata !109}
!116 = metadata !{i32 18, i32 1, metadata !114, metadata !109}
!117 = metadata !{i32 24, i32 9, metadata !112, metadata !109}
!118 = metadata !{i32 26, i32 7, metadata !114, metadata !109}
!119 = metadata !{i32 27, i32 5, metadata !114, metadata !109}
!120 = metadata !{i32 17, i32 37, metadata !99, metadata !109}
!121 = metadata !{i32 786688, metadata !102, metadata !"index_b", metadata !16, i32 14, metadata !81, i32 0, metadata !109} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 65, i32 1, metadata !32, null}
