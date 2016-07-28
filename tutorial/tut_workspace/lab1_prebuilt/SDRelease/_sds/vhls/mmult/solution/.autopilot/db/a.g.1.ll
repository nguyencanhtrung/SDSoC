; ModuleID = 'C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@str = internal constant [6 x i8] c"mmult\00"     ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecArrayPartition(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=0]
define void @mmult(float* %in_A, float* %in_B, float* %out_C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  %a_buf = alloca [32 x [32 x float]], align 16   ; [#uses=3 type=[32 x [32 x float]]*]
  %b_buf = alloca [32 x [32 x float]], align 16   ; [#uses=3 type=[32 x [32 x float]]*]
  call void @llvm.dbg.value(metadata !{float* %in_A}, i64 0, metadata !25), !dbg !26 ; [debug line = 31:18] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{float* %in_B}, i64 0, metadata !27), !dbg !28 ; [debug line = 32:18] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !29), !dbg !30 ; [debug line = 33:18] [debug variable = out_C]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %out_C, i32 1024) nounwind, !dbg !31 ; [debug line = 34:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_A, i32 1024) nounwind, !dbg !33 ; [debug line = 34:38]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %in_B, i32 1024) nounwind, !dbg !34 ; [debug line = 34:73]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !35 ; [debug line = 36:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_A, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !36 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %in_B, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !37 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %out_C, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !38 ; [debug line = 41:1]
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %a_buf}, metadata !39), !dbg !42 ; [debug line = 44:9] [debug variable = a_buf]
  call void @llvm.dbg.declare(metadata !{[32 x [32 x float]]* %b_buf}, metadata !43), !dbg !44 ; [debug line = 45:9] [debug variable = b_buf]
  br label %1, !dbg !45                           ; [debug line = 48:7]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %3 ]            ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %i, 32, !dbg !45       ; [#uses=1 type=i1] [debug line = 48:7]
  br i1 %exitcond3, label %.preheader4.preheader, label %.preheader5.preheader, !dbg !45 ; [debug line = 48:7]

.preheader4.preheader:                            ; preds = %1
  br label %.preheader4, !dbg !47                 ; [debug line = 56:7]

.preheader5.preheader:                            ; preds = %1
  %tmp = mul i32 %i, 32, !dbg !49                 ; [#uses=1 type=i32] [debug line = 51:2]
  %tmp.1 = sext i32 %i to i64, !dbg !49           ; [#uses=1 type=i64] [debug line = 51:2]
  br label %.preheader5, !dbg !53                 ; [debug line = 49:9]

.preheader5:                                      ; preds = %2, %.preheader5.preheader
  %j = phi i32 [ %j.2, %2 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j, 32, !dbg !53       ; [#uses=1 type=i1] [debug line = 49:9]
  br i1 %exitcond2, label %3, label %2, !dbg !53  ; [debug line = 49:9]

; <label>:2                                       ; preds = %.preheader5
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !54 ; [#uses=1 type=i32] [debug line = 49:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !55 ; [debug line = 50:1]
  %tmp.5 = add nsw i32 %j, %tmp, !dbg !49         ; [#uses=1 type=i32] [debug line = 51:2]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !49       ; [#uses=1 type=i64] [debug line = 51:2]
  %in_A.addr = getelementptr inbounds float* %in_A, i64 %tmp.6, !dbg !49 ; [#uses=1 type=float*] [debug line = 51:2]
  %in_A.load = load float* %in_A.addr, align 4, !dbg !49 ; [#uses=2 type=float] [debug line = 51:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in_A.load) nounwind
  %tmp.7 = sext i32 %j to i64, !dbg !49           ; [#uses=1 type=i64] [debug line = 51:2]
  %a_buf.addr = getelementptr inbounds [32 x [32 x float]]* %a_buf, i64 0, i64 %tmp.1, i64 %tmp.7, !dbg !49 ; [#uses=1 type=float*] [debug line = 51:2]
  store float %in_A.load, float* %a_buf.addr, align 4, !dbg !49 ; [debug line = 51:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !56 ; [#uses=0 type=i32] [debug line = 52:5]
  %j.2 = add nsw i32 %j, 1, !dbg !57              ; [#uses=1 type=i32] [debug line = 49:20]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !58), !dbg !57 ; [debug line = 49:20] [debug variable = j]
  br label %.preheader5, !dbg !57                 ; [debug line = 49:20]

; <label>:3                                       ; preds = %.preheader5
  %i.2 = add nsw i32 %i, 1, !dbg !59              ; [#uses=1 type=i32] [debug line = 48:18]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !60), !dbg !59 ; [debug line = 48:18] [debug variable = i]
  br label %1, !dbg !59                           ; [debug line = 48:18]

.preheader4:                                      ; preds = %5, %.preheader4.preheader
  %i.1 = phi i32 [ %i.3, %5 ], [ 0, %.preheader4.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i.1, 32, !dbg !47     ; [#uses=1 type=i1] [debug line = 56:7]
  br i1 %exitcond1, label %6, label %.preheader.preheader, !dbg !47 ; [debug line = 56:7]

.preheader.preheader:                             ; preds = %.preheader4
  %tmp.2 = mul i32 %i.1, 32, !dbg !61             ; [#uses=1 type=i32] [debug line = 59:2]
  %tmp.3 = sext i32 %i.1 to i64, !dbg !61         ; [#uses=1 type=i64] [debug line = 59:2]
  br label %.preheader, !dbg !65                  ; [debug line = 57:9]

.preheader:                                       ; preds = %4, %.preheader.preheader
  %j.1 = phi i32 [ %j.3, %4 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %j.1, 32, !dbg !65      ; [#uses=1 type=i1] [debug line = 57:9]
  br i1 %exitcond, label %5, label %4, !dbg !65   ; [debug line = 57:9]

; <label>:4                                       ; preds = %.preheader
  %rbegin6 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !66 ; [#uses=1 type=i32] [debug line = 57:26]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !67 ; [debug line = 58:1]
  %tmp.12 = add nsw i32 %j.1, %tmp.2, !dbg !61    ; [#uses=1 type=i32] [debug line = 59:2]
  %tmp.13 = sext i32 %tmp.12 to i64, !dbg !61     ; [#uses=1 type=i64] [debug line = 59:2]
  %in_B.addr = getelementptr inbounds float* %in_B, i64 %tmp.13, !dbg !61 ; [#uses=1 type=float*] [debug line = 59:2]
  %in_B.load = load float* %in_B.addr, align 4, !dbg !61 ; [#uses=2 type=float] [debug line = 59:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %in_B.load) nounwind
  %tmp.14 = sext i32 %j.1 to i64, !dbg !61        ; [#uses=1 type=i64] [debug line = 59:2]
  %b_buf.addr = getelementptr inbounds [32 x [32 x float]]* %b_buf, i64 0, i64 %tmp.3, i64 %tmp.14, !dbg !61 ; [#uses=1 type=float*] [debug line = 59:2]
  store float %in_B.load, float* %b_buf.addr, align 4, !dbg !61 ; [debug line = 59:2]
  %rend7 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin6) nounwind, !dbg !68 ; [#uses=0 type=i32] [debug line = 60:5]
  %j.3 = add nsw i32 %j.1, 1, !dbg !69            ; [#uses=1 type=i32] [debug line = 57:20]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !58), !dbg !69 ; [debug line = 57:20] [debug variable = j]
  br label %.preheader, !dbg !69                  ; [debug line = 57:20]

; <label>:5                                       ; preds = %.preheader
  %i.3 = add nsw i32 %i.1, 1, !dbg !70            ; [#uses=1 type=i32] [debug line = 56:18]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !60), !dbg !70 ; [debug line = 56:18] [debug variable = i]
  br label %.preheader4, !dbg !70                 ; [debug line = 56:18]

; <label>:6                                       ; preds = %.preheader4
  %in_A.assign = getelementptr inbounds [32 x [32 x float]]* %a_buf, i64 0, i64 0, !dbg !71 ; [#uses=1 type=[32 x float]*] [debug line = 64:3]
  %in_B.assign = getelementptr inbounds [32 x [32 x float]]* %b_buf, i64 0, i64 0, !dbg !71 ; [#uses=1 type=[32 x float]*] [debug line = 64:3]
  call void @llvm.dbg.value(metadata !{[32 x float]* %in_A.assign}, i64 0, metadata !72) nounwind, !dbg !73 ; [debug line = 6:25@64:3] [debug variable = in_A]
  call void @llvm.dbg.value(metadata !{[32 x float]* %in_B.assign}, i64 0, metadata !74) nounwind, !dbg !75 ; [debug line = 7:25@64:3] [debug variable = in_B]
  call void @llvm.dbg.value(metadata !{float* %out_C}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 8:25@64:3] [debug variable = out_C]
  call void (...)* @_ssdm_SpecArrayPartition([32 x float]* %in_A.assign, i32 2, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 11:1@64:3]
  call void (...)* @_ssdm_SpecArrayPartition([32 x float]* %in_B.assign, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !80 ; [debug line = 12:1@64:3]
  br label %7, !dbg !81                           ; [debug line = 16:8@64:3]

; <label>:7                                       ; preds = %12, %6
  %index_a.0.i = phi i32 [ 0, %6 ], [ %index_a, %12 ] ; [#uses=4 type=i32]
  %exitcond2.i = icmp eq i32 %index_a.0.i, 32, !dbg !81 ; [#uses=1 type=i1] [debug line = 16:8@64:3]
  br i1 %exitcond2.i, label %mmult_kernel.exit, label %.preheader.preheader.i, !dbg !81 ; [debug line = 16:8@64:3]

.preheader.preheader.i:                           ; preds = %7
  %tmp.9 = sext i32 %index_a.0.i to i64, !dbg !83 ; [#uses=1 type=i64] [debug line = 23:77@64:3]
  %tmp.10 = mul i32 %index_a.0.i, 32, !dbg !89    ; [#uses=1 type=i32] [debug line = 26:7@64:3]
  br label %.preheader.i, !dbg !90                ; [debug line = 17:10@64:3]

.preheader.i:                                     ; preds = %11, %.preheader.preheader.i
  %index_b.0.i = phi i32 [ %index_b, %11 ], [ 0, %.preheader.preheader.i ] ; [#uses=4 type=i32]
  %exitcond1.i = icmp eq i32 %index_b.0.i, 32, !dbg !90 ; [#uses=1 type=i1] [debug line = 17:10@64:3]
  br i1 %exitcond1.i, label %12, label %8, !dbg !90 ; [debug line = 17:10@64:3]

; <label>:8                                       ; preds = %.preheader.i
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !91 ; [#uses=1 type=i32] [debug line = 17:49@64:3]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !92 ; [debug line = 18:1@64:3]
  %tmp.17 = sext i32 %index_b.0.i to i64, !dbg !83 ; [#uses=1 type=i64] [debug line = 23:77@64:3]
  br label %9, !dbg !93                           ; [debug line = 20:12@64:3]

; <label>:9                                       ; preds = %10, %8
  %index_d.0.i = phi i32 [ 0, %8 ], [ %index_d, %10 ] ; [#uses=3 type=i32]
  %result.0.i = phi float [ 0.000000e+00, %8 ], [ %result, %10 ] ; [#uses=2 type=float]
  %exitcond.i = icmp eq i32 %index_d.0.i, 32, !dbg !93 ; [#uses=1 type=i1] [debug line = 20:12@64:3]
  br i1 %exitcond.i, label %11, label %10, !dbg !93 ; [debug line = 20:12@64:3]

; <label>:10                                      ; preds = %9
  %tmp.21 = sext i32 %index_d.0.i to i64, !dbg !83 ; [#uses=2 type=i64] [debug line = 23:77@64:3]
  %a_buf.addr.1 = getelementptr inbounds [32 x [32 x float]]* %a_buf, i64 0, i64 %tmp.9, i64 %tmp.21, !dbg !83 ; [#uses=1 type=float*] [debug line = 23:77@64:3]
  %a_buf.load = load float* %a_buf.addr.1, align 4, !dbg !83 ; [#uses=2 type=float] [debug line = 23:77@64:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %a_buf.load) nounwind
  %b_buf.addr.1 = getelementptr inbounds [32 x [32 x float]]* %b_buf, i64 0, i64 %tmp.21, i64 %tmp.17, !dbg !83 ; [#uses=1 type=float*] [debug line = 23:77@64:3]
  %b_buf.load = load float* %b_buf.addr.1, align 4, !dbg !83 ; [#uses=2 type=float] [debug line = 23:77@64:3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %b_buf.load) nounwind
  %product_term = fmul float %a_buf.load, %b_buf.load, !dbg !83 ; [#uses=1 type=float] [debug line = 23:77@64:3]
  call void @llvm.dbg.value(metadata !{float %product_term}, i64 0, metadata !94) nounwind, !dbg !83 ; [debug line = 23:77@64:3] [debug variable = product_term]
  %result = fadd float %result.0.i, %product_term, !dbg !95 ; [#uses=1 type=float] [debug line = 24:9@64:3]
  call void @llvm.dbg.value(metadata !{float %result}, i64 0, metadata !96) nounwind, !dbg !95 ; [debug line = 24:9@64:3] [debug variable = result]
  %index_d = add nsw i32 %index_d.0.i, 1, !dbg !97 ; [#uses=1 type=i32] [debug line = 20:39@64:3]
  call void @llvm.dbg.value(metadata !{i32 %index_d}, i64 0, metadata !98) nounwind, !dbg !97 ; [debug line = 20:39@64:3] [debug variable = index_d]
  br label %9, !dbg !97                           ; [debug line = 20:39@64:3]

; <label>:11                                      ; preds = %9
  %result.0.i.lcssa = phi float [ %result.0.i, %9 ] ; [#uses=1 type=float]
  %tmp.18 = add nsw i32 %index_b.0.i, %tmp.10, !dbg !89 ; [#uses=1 type=i32] [debug line = 26:7@64:3]
  %tmp.19 = sext i32 %tmp.18 to i64, !dbg !89     ; [#uses=1 type=i64] [debug line = 26:7@64:3]
  %out_C.addr = getelementptr inbounds float* %out_C, i64 %tmp.19, !dbg !89 ; [#uses=1 type=float*] [debug line = 26:7@64:3]
  store float %result.0.i.lcssa, float* %out_C.addr, align 4, !dbg !89 ; [debug line = 26:7@64:3]
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !99 ; [#uses=0 type=i32] [debug line = 27:5@64:3]
  %index_b = add nsw i32 %index_b.0.i, 1, !dbg !100 ; [#uses=1 type=i32] [debug line = 17:37@64:3]
  call void @llvm.dbg.value(metadata !{i32 %index_b}, i64 0, metadata !101) nounwind, !dbg !100 ; [debug line = 17:37@64:3] [debug variable = index_b]
  br label %.preheader.i, !dbg !100               ; [debug line = 17:37@64:3]

; <label>:12                                      ; preds = %.preheader.i
  %index_a = add nsw i32 %index_a.0.i, 1, !dbg !102 ; [#uses=1 type=i32] [debug line = 16:35@64:3]
  call void @llvm.dbg.value(metadata !{i32 %index_a}, i64 0, metadata !103) nounwind, !dbg !102 ; [debug line = 16:35@64:3] [debug variable = index_a]
  br label %7, !dbg !102                          ; [debug line = 16:35@64:3]

mmult_kernel.exit:                                ; preds = %7
  ret void, !dbg !104                             ; [debug line = 65:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=15]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/mmult/solution/.autopilot/db/mmult.pragma.2.cpp", metadata !"c:/labs/lab1_prebuilt/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !20} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !17}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA32_fS0_Pf", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !15, i32 9} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/src/mmult.cpp", metadata !"c:/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mmult", metadata !"mmult", metadata !"_Z5mmultPfS_S_", metadata !6, i32 31, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @mmult, null, null, metadata !15, i32 34} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !14, metadata !14, metadata !14}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !23, i32 157, metadata !24, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786473, metadata !"C:/Xilinx/SDSoC/2014.4/VIVADO~1/2014.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"c:/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786689, metadata !17, metadata !"in_A", metadata !6, i32 16777247, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 31, i32 18, metadata !17, null}
!27 = metadata !{i32 786689, metadata !17, metadata !"in_B", metadata !6, i32 33554464, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 32, i32 18, metadata !17, null}
!29 = metadata !{i32 786689, metadata !17, metadata !"out_C", metadata !6, i32 50331681, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 33, i32 18, metadata !17, null}
!31 = metadata !{i32 34, i32 2, metadata !32, null}
!32 = metadata !{i32 786443, metadata !17, i32 34, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 34, i32 38, metadata !32, null}
!34 = metadata !{i32 34, i32 73, metadata !32, null}
!35 = metadata !{i32 36, i32 1, metadata !32, null}
!36 = metadata !{i32 39, i32 1, metadata !32, null}
!37 = metadata !{i32 40, i32 1, metadata !32, null}
!38 = metadata !{i32 41, i32 1, metadata !32, null}
!39 = metadata !{i32 786688, metadata !32, metadata !"a_buf", metadata !6, i32 44, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !11, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !13, metadata !13}
!42 = metadata !{i32 44, i32 9, metadata !32, null}
!43 = metadata !{i32 786688, metadata !32, metadata !"b_buf", metadata !6, i32 45, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 45, i32 9, metadata !32, null}
!45 = metadata !{i32 48, i32 7, metadata !46, null}
!46 = metadata !{i32 786443, metadata !32, i32 48, i32 3, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 56, i32 7, metadata !48, null}
!48 = metadata !{i32 786443, metadata !32, i32 56, i32 3, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 51, i32 2, metadata !50, null}
!50 = metadata !{i32 786443, metadata !51, i32 49, i32 25, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 786443, metadata !52, i32 49, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !46, i32 48, i32 23, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 49, i32 9, metadata !51, null}
!54 = metadata !{i32 49, i32 26, metadata !50, null}
!55 = metadata !{i32 50, i32 1, metadata !50, null}
!56 = metadata !{i32 52, i32 5, metadata !50, null}
!57 = metadata !{i32 49, i32 20, metadata !51, null}
!58 = metadata !{i32 786688, metadata !32, metadata !"j", metadata !6, i32 43, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!59 = metadata !{i32 48, i32 18, metadata !46, null}
!60 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !6, i32 43, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!61 = metadata !{i32 59, i32 2, metadata !62, null}
!62 = metadata !{i32 786443, metadata !63, i32 57, i32 25, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 786443, metadata !64, i32 57, i32 5, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !48, i32 56, i32 23, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 57, i32 9, metadata !63, null}
!66 = metadata !{i32 57, i32 26, metadata !62, null}
!67 = metadata !{i32 58, i32 1, metadata !62, null}
!68 = metadata !{i32 60, i32 5, metadata !62, null}
!69 = metadata !{i32 57, i32 20, metadata !63, null}
!70 = metadata !{i32 56, i32 18, metadata !48, null}
!71 = metadata !{i32 64, i32 3, metadata !32, null}
!72 = metadata !{i32 786689, metadata !5, metadata !"in_A", metadata !6, i32 16777222, metadata !9, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 6, i32 25, metadata !5, metadata !71}
!74 = metadata !{i32 786689, metadata !5, metadata !"in_B", metadata !6, i32 33554439, metadata !9, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 7, i32 25, metadata !5, metadata !71}
!76 = metadata !{i32 786689, metadata !5, metadata !"out_C", metadata !6, i32 50331656, metadata !14, i32 0, metadata !71} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 8, i32 25, metadata !5, metadata !71}
!78 = metadata !{i32 11, i32 1, metadata !79, metadata !71}
!79 = metadata !{i32 786443, metadata !5, i32 9, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 12, i32 1, metadata !79, metadata !71}
!81 = metadata !{i32 16, i32 8, metadata !82, metadata !71}
!82 = metadata !{i32 786443, metadata !79, i32 16, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 23, i32 77, metadata !84, metadata !71}
!84 = metadata !{i32 786443, metadata !85, i32 20, i32 50, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 20, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 17, i32 48, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !88, i32 17, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !82, i32 16, i32 46, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 26, i32 7, metadata !86, metadata !71}
!90 = metadata !{i32 17, i32 10, metadata !87, metadata !71}
!91 = metadata !{i32 17, i32 49, metadata !86, metadata !71}
!92 = metadata !{i32 18, i32 1, metadata !86, metadata !71}
!93 = metadata !{i32 20, i32 12, metadata !85, metadata !71}
!94 = metadata !{i32 786688, metadata !84, metadata !"product_term", metadata !6, i32 23, metadata !11, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 24, i32 9, metadata !84, metadata !71}
!96 = metadata !{i32 786688, metadata !86, metadata !"result", metadata !6, i32 19, metadata !11, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 20, i32 39, metadata !85, metadata !71}
!98 = metadata !{i32 786688, metadata !79, metadata !"index_d", metadata !6, i32 14, metadata !24, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 27, i32 5, metadata !86, metadata !71}
!100 = metadata !{i32 17, i32 37, metadata !87, metadata !71}
!101 = metadata !{i32 786688, metadata !79, metadata !"index_b", metadata !6, i32 14, metadata !24, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 16, i32 35, metadata !82, metadata !71}
!103 = metadata !{i32 786688, metadata !79, metadata !"index_a", metadata !6, i32 14, metadata !24, i32 0, metadata !71} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 65, i32 1, metadata !32, null}
