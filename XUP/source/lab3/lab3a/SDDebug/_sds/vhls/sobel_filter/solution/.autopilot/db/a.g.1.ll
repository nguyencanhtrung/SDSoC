; ModuleID = 'C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls/sobel_filter/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@y_op = internal unnamed_addr constant [3 x [3 x i16]] [[3 x i16] [i16 1, i16 2, i16 1], [3 x i16] zeroinitializer, [3 x i16] [i16 -1, i16 -2, i16 -1]], align 16 ; [#uses=1 type=[3 x [3 x i16]]*]
@x_op = internal unnamed_addr constant [3 x [3 x i16]] [[3 x i16] [i16 -1, i16 0, i16 1], [3 x i16] [i16 -2, i16 0, i16 2], [3 x i16] [i16 -1, i16 0, i16 1]], align 16 ; [#uses=1 type=[3 x [3 x i16]]*]
@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=1]
define internal fastcc zeroext i8 @sobel_operator([3 x i8]* %window) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i8]* %window}, i64 0, metadata !52), !dbg !53 ; [debug line = 34:46] [debug variable = window]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i8]* %window, i32 3), !dbg !54 ; [debug line = 34:55]
  br label %1, !dbg !56                           ; [debug line = 51:7]

; <label>:1                                       ; preds = %3, %0
  %RowIndex.assign = phi i32 [ 0, %0 ], [ %i.1, %3 ] ; [#uses=3 type=i32]
  %y_weight = phi i16 [ 0, %0 ], [ %y_weight.1.lcssa, %3 ] ; [#uses=2 type=i16]
  %x_weight = phi i16 [ 0, %0 ], [ %x_weight.1.lcssa, %3 ] ; [#uses=2 type=i16]
  %exitcond1 = icmp eq i32 %RowIndex.assign, 3, !dbg !56 ; [#uses=1 type=i1] [debug line = 51:7]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !56 ; [debug line = 51:7]

.preheader.preheader:                             ; preds = %1
  %tmp.8 = sext i32 %RowIndex.assign to i64, !dbg !58 ; [#uses=3 type=i64] [debug line = 55:27]
  br label %.preheader, !dbg !62                  ; [debug line = 52:8]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %y_weight.1 = phi i16 [ %y_weight.2, %2 ], [ %y_weight, %.preheader.preheader ] ; [#uses=2 type=i16]
  %x_weight.1 = phi i16 [ %x_weight.2, %2 ], [ %x_weight, %.preheader.preheader ] ; [#uses=2 type=i16]
  %ColIndex.assign = phi i32 [ %j, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %ColIndex.assign, 3, !dbg !62 ; [#uses=1 type=i1] [debug line = 52:8]
  br i1 %exitcond, label %3, label %2, !dbg !62   ; [debug line = 52:8]

; <label>:2                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{[3 x i8]* %window}, i64 0, metadata !63) nounwind, !dbg !64 ; [debug line = 204:39@55:27] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i32 %RowIndex.assign}, i64 0, metadata !65) nounwind, !dbg !66 ; [debug line = 204:46@55:27] [debug variable = RowIndex]
  call void @llvm.dbg.value(metadata !{i32 %ColIndex.assign}, i64 0, metadata !67) nounwind, !dbg !68 ; [debug line = 204:60@55:27] [debug variable = ColIndex]
  %tmp.12 = sext i32 %ColIndex.assign to i64, !dbg !69 ; [#uses=3 type=i64] [debug line = 207:2@55:27]
  %window.addr = getelementptr inbounds [3 x i8]* %window, i64 %tmp.8, i64 %tmp.12, !dbg !69 ; [#uses=1 type=i8*] [debug line = 207:2@55:27]
  %return_value = load i8* %window.addr, align 1, !dbg !69 ; [#uses=3 type=i8] [debug line = 207:2@55:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !71) nounwind, !dbg !69 ; [debug line = 207:2@55:27] [debug variable = return_value]
  %tmp.13 = zext i8 %return_value to i16, !dbg !58 ; [#uses=2 type=i16] [debug line = 55:27]
  %x_op.addr = getelementptr inbounds [3 x [3 x i16]]* @x_op, i64 0, i64 %tmp.8, i64 %tmp.12, !dbg !58 ; [#uses=1 type=i16*] [debug line = 55:27]
  %x_op.load = load i16* %x_op.addr, align 2, !dbg !58 ; [#uses=2 type=i16] [debug line = 55:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %x_op.load) nounwind
  %tmp.14 = mul i16 %x_op.load, %tmp.13, !dbg !58 ; [#uses=1 type=i16] [debug line = 55:27]
  %x_weight.2 = add i16 %tmp.14, %x_weight.1, !dbg !58 ; [#uses=1 type=i16] [debug line = 55:27]
  call void @llvm.dbg.value(metadata !{i16 %x_weight.2}, i64 0, metadata !72), !dbg !58 ; [debug line = 55:27] [debug variable = x_weight]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %window}, i64 0, metadata !73) nounwind, !dbg !75 ; [debug line = 204:39@58:27] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i32 %RowIndex.assign}, i64 0, metadata !76) nounwind, !dbg !77 ; [debug line = 204:46@58:27] [debug variable = RowIndex]
  call void @llvm.dbg.value(metadata !{i32 %ColIndex.assign}, i64 0, metadata !78) nounwind, !dbg !79 ; [debug line = 204:60@58:27] [debug variable = ColIndex]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !80) nounwind, !dbg !81 ; [debug line = 207:2@58:27] [debug variable = return_value]
  %y_op.addr = getelementptr inbounds [3 x [3 x i16]]* @y_op, i64 0, i64 %tmp.8, i64 %tmp.12, !dbg !74 ; [#uses=1 type=i16*] [debug line = 58:27]
  %y_op.load = load i16* %y_op.addr, align 2, !dbg !74 ; [#uses=2 type=i16] [debug line = 58:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %y_op.load) nounwind
  %tmp.16 = mul i16 %y_op.load, %tmp.13, !dbg !74 ; [#uses=1 type=i16] [debug line = 58:27]
  %y_weight.2 = add i16 %tmp.16, %y_weight.1, !dbg !74 ; [#uses=1 type=i16] [debug line = 58:27]
  call void @llvm.dbg.value(metadata !{i16 %y_weight.2}, i64 0, metadata !82), !dbg !74 ; [debug line = 58:27] [debug variable = y_weight]
  %j = add nsw i32 %ColIndex.assign, 1, !dbg !83  ; [#uses=1 type=i32] [debug line = 52:22]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !84), !dbg !83 ; [debug line = 52:22] [debug variable = j]
  br label %.preheader, !dbg !83                  ; [debug line = 52:22]

; <label>:3                                       ; preds = %.preheader
  %x_weight.1.lcssa = phi i16 [ %x_weight.1, %.preheader ] ; [#uses=1 type=i16]
  %y_weight.1.lcssa = phi i16 [ %y_weight.1, %.preheader ] ; [#uses=1 type=i16]
  %i.1 = add nsw i32 %RowIndex.assign, 1, !dbg !85 ; [#uses=1 type=i32] [debug line = 51:21]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !86), !dbg !85 ; [debug line = 51:21] [debug variable = i]
  br label %1, !dbg !85                           ; [debug line = 51:21]

; <label>:4                                       ; preds = %1
  %x_weight.0.lcssa = phi i16 [ %x_weight, %1 ]   ; [#uses=3 type=i16]
  %y_weight.0.lcssa = phi i16 [ %y_weight, %1 ]   ; [#uses=3 type=i16]
  %tmp = icmp sgt i16 %x_weight.0.lcssa, 0, !dbg !87 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp.1 = sub i16 0, %x_weight.0.lcssa, !dbg !87 ; [#uses=1 type=i16] [debug line = 62:2]
  %tmp.2 = select i1 %tmp, i16 %x_weight.0.lcssa, i16 %tmp.1, !dbg !87 ; [#uses=1 type=i16] [debug line = 62:2]
  %tmp.3 = icmp sgt i16 %y_weight.0.lcssa, 0, !dbg !87 ; [#uses=1 type=i1] [debug line = 62:2]
  %tmp.4 = sub i16 0, %y_weight.0.lcssa, !dbg !87 ; [#uses=1 type=i16] [debug line = 62:2]
  %tmp.5 = select i1 %tmp.3, i16 %y_weight.0.lcssa, i16 %tmp.4, !dbg !87 ; [#uses=1 type=i16] [debug line = 62:2]
  %edge_weight = add i16 %tmp.5, %tmp.2, !dbg !87 ; [#uses=3 type=i16] [debug line = 62:2]
  call void @llvm.dbg.value(metadata !{i16 %edge_weight}, i64 0, metadata !88), !dbg !87 ; [debug line = 62:2] [debug variable = edge_weight]
  %tmp.7 = icmp sgt i16 %edge_weight, 200, !dbg !89 ; [#uses=1 type=i1] [debug line = 65:2]
  br i1 %tmp.7, label %._crit_edge, label %5, !dbg !89 ; [debug line = 65:2]

; <label>:5                                       ; preds = %4
  %tmp.9 = icmp slt i16 %edge_weight, 100, !dbg !90 ; [#uses=1 type=i1] [debug line = 67:7]
  %tmp.10 = trunc i16 %edge_weight to i8          ; [#uses=1 type=i8]
  %phitmp = select i1 %tmp.9, i8 0, i8 %tmp.10    ; [#uses=1 type=i8]
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %4
  %edge_val = phi i8 [ %phitmp, %5 ], [ -1, %4 ], !dbg !91 ; [#uses=1 type=i8] [debug line = 69:2]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !92), !dbg !91 ; [debug line = 69:2] [debug variable = edge_val]
  ret i8 %edge_val, !dbg !93                      ; [debug line = 71:2]
}

; [#uses=0]
define i32 @sobel_filter(i8* %input, i8* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !94
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %buff_A = alloca [3 x [1920 x i8]], align 16    ; [#uses=5 type=[3 x [1920 x i8]]*]
  %buff_C = alloca [3 x [3 x i8]], align 1        ; [#uses=6 type=[3 x [3 x i8]]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !100), !dbg !101 ; [debug line = 76:27] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !102), !dbg !103 ; [debug line = 76:43] [debug variable = output]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !104 ; [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 2073600, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !106 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 2073600, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !107 ; [debug line = 79:1]
  call void @llvm.dbg.declare(metadata !{[3 x [1920 x i8]]* %buff_A}, metadata !108), !dbg !112 ; [debug line = 85:15] [debug variable = buff_A]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %buff_C}, metadata !113), !dbg !116 ; [debug line = 86:11] [debug variable = buff_C]
  %M.assign = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 0, !dbg !117 ; [#uses=1 type=[3 x i8]*] [debug line = 116:4]
  br label %1, !dbg !122                          ; [debug line = 88:7]

; <label>:1                                       ; preds = %14, %0
  %row = phi i32 [ 0, %0 ], [ %row.1, %14 ]       ; [#uses=5 type=i32]
  %exitcond1 = icmp eq i32 %row, 1081, !dbg !122  ; [#uses=1 type=i1] [debug line = 88:7]
  br i1 %exitcond1, label %15, label %.preheader.preheader, !dbg !122 ; [debug line = 88:7]

.preheader.preheader:                             ; preds = %1
  %tmp = icmp slt i32 %row, 1080, !dbg !123       ; [#uses=1 type=i1] [debug line = 106:4]
  %tmp.19 = mul nsw i32 %row, 1920, !dbg !124     ; [#uses=2 type=i32] [debug line = 108:5]
  %tmp.20 = icmp sgt i32 %row, 0, !dbg !126       ; [#uses=1 type=i1] [debug line = 134:4]
  br label %.preheader, !dbg !127                 ; [debug line = 89:8]

.preheader:                                       ; preds = %._crit_edge4, %.preheader.preheader
  %col.assign = phi i32 [ %col, %._crit_edge4 ], [ 0, %.preheader.preheader ] ; [#uses=9 type=i32]
  %exitcond = icmp eq i32 %col.assign, 1921, !dbg !127 ; [#uses=1 type=i1] [debug line = 89:8]
  br i1 %exitcond, label %14, label %2, !dbg !127 ; [debug line = 89:8]

; <label>:2                                       ; preds = %.preheader
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !128 ; [#uses=1 type=i32] [debug line = 89:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !129 ; [debug line = 91:1]
  %tmp.22 = icmp slt i32 %col.assign, 1920, !dbg !130 ; [#uses=3 type=i1] [debug line = 99:4]
  br i1 %tmp.22, label %3, label %._crit_edge, !dbg !130 ; [debug line = 99:4]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !131) nounwind, !dbg !134 ; [debug line = 147:53@100:5] [debug variable = col]
  %tmp.23 = sext i32 %col.assign to i64, !dbg !135 ; [#uses=3 type=i64] [debug line = 152:2@100:5]
  br label %4, !dbg !139                          ; [debug line = 150:7@100:5]

; <label>:4                                       ; preds = %5, %3
  %i.0.i = phi i32 [ 2, %3 ], [ %i, %5 ]          ; [#uses=3 type=i32]
  %tmp.24 = icmp sgt i32 %i.0.i, 0, !dbg !139     ; [#uses=1 type=i1] [debug line = 150:7@100:5]
  br i1 %tmp.24, label %5, label %linebuffer_shift_up.exit, !dbg !139 ; [debug line = 150:7@100:5]

; <label>:5                                       ; preds = %4
  %rbegin.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !140 ; [#uses=1 type=i32] [debug line = 150:31@100:5]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !141 ; [debug line = 151:1@100:5]
  %i = add nsw i32 %i.0.i, -1, !dbg !135          ; [#uses=2 type=i32] [debug line = 152:2@100:5]
  %tmp.26 = sext i32 %i to i64, !dbg !135         ; [#uses=1 type=i64] [debug line = 152:2@100:5]
  %buff_A.addr = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 %tmp.26, i64 %tmp.23, !dbg !135 ; [#uses=1 type=i8*] [debug line = 152:2@100:5]
  %buff_A.load = load i8* %buff_A.addr, align 1, !dbg !135 ; [#uses=2 type=i8] [debug line = 152:2@100:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buff_A.load) nounwind
  %tmp.27 = sext i32 %i.0.i to i64, !dbg !135     ; [#uses=1 type=i64] [debug line = 152:2@100:5]
  %buff_A.addr.1 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 %tmp.27, i64 %tmp.23, !dbg !135 ; [#uses=1 type=i8*] [debug line = 152:2@100:5]
  store i8 %buff_A.load, i8* %buff_A.addr.1, align 1, !dbg !135 ; [debug line = 152:2@100:5]
  %rend.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin.i) nounwind, !dbg !142 ; [#uses=0 type=i32] [debug line = 153:2@100:5]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !143) nounwind, !dbg !144 ; [debug line = 150:25@100:5] [debug variable = i]
  br label %4, !dbg !144                          ; [debug line = 150:25@100:5]

linebuffer_shift_up.exit:                         ; preds = %4
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !145) nounwind, !dbg !147 ; [debug line = 159:68@101:12] [debug variable = ColIndex]
  %buff_A.addr.2 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 0, i64 %tmp.23, !dbg !148 ; [#uses=1 type=i8*] [debug line = 163:2@101:12]
  %return_value = load i8* %buff_A.addr.2, align 1, !dbg !148 ; [#uses=2 type=i8] [debug line = 163:2@101:12]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !150) nounwind, !dbg !148 ; [debug line = 163:2@101:12] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !151), !dbg !146 ; [debug line = 101:12] [debug variable = temp]
  br label %._crit_edge, !dbg !152                ; [debug line = 102:4]

._crit_edge:                                      ; preds = %linebuffer_shift_up.exit, %2
  %value.assign.2 = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %2 ] ; [#uses=1 type=i8]
  %tmp.28 = and i1 %tmp.22, %tmp, !dbg !123       ; [#uses=1 type=i1] [debug line = 106:4]
  br i1 %tmp.28, label %6, label %._crit_edge2, !dbg !123 ; [debug line = 106:4]

; <label>:6                                       ; preds = %._crit_edge
  %index = add nsw i32 %col.assign, %tmp.19, !dbg !124 ; [#uses=1 type=i32] [debug line = 108:5]
  call void @llvm.dbg.value(metadata !{i32 %index}, i64 0, metadata !153), !dbg !124 ; [debug line = 108:5] [debug variable = index]
  %tmp.30 = sext i32 %index to i64, !dbg !154     ; [#uses=1 type=i64] [debug line = 109:5]
  %input.addr = getelementptr inbounds i8* %input, i64 %tmp.30, !dbg !154 ; [#uses=1 type=i8*] [debug line = 109:5]
  %y = load i8* %input.addr, align 1, !dbg !154   ; [#uses=3 type=i8] [debug line = 109:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %y) nounwind
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !155), !dbg !156 ; [debug line = 110:5] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !157), !dbg !158 ; [debug line = 111:5] [debug variable = tempx]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !159), !dbg !161 ; [debug line = 171:62@112:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !162), !dbg !163 ; [debug line = 171:73@112:5] [debug variable = col]
  %tmp.31 = sext i32 %col.assign to i64, !dbg !164 ; [#uses=1 type=i64] [debug line = 174:2@112:5]
  %buff_A.addr.3 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 0, i64 %tmp.31, !dbg !164 ; [#uses=1 type=i8*] [debug line = 174:2@112:5]
  store i8 %y, i8* %buff_A.addr.3, align 1, !dbg !164 ; [debug line = 174:2@112:5]
  br label %._crit_edge2, !dbg !166               ; [debug line = 113:4]

._crit_edge2:                                     ; preds = %6, %._crit_edge
  %value.assign.3 = phi i8 [ %y, %6 ], [ 0, %._crit_edge ] ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !167) nounwind, !dbg !168 ; [debug line = 181:41@116:4] [debug variable = M]
  br label %7, !dbg !169                          ; [debug line = 184:7@116:4]

; <label>:7                                       ; preds = %11, %._crit_edge2
  %i.0.i6 = phi i32 [ 0, %._crit_edge2 ], [ %i.2, %11 ] ; [#uses=3 type=i32]
  %exitcond1.i = icmp eq i32 %i.0.i6, 3, !dbg !169 ; [#uses=1 type=i1] [debug line = 184:7@116:4]
  br i1 %exitcond1.i, label %window_shift_right.exit, label %8, !dbg !169 ; [debug line = 184:7@116:4]

; <label>:8                                       ; preds = %7
  %rbegin2.i = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !172 ; [#uses=1 type=i32] [debug line = 184:27@116:4]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !174 ; [debug line = 185:1@116:4]
  %tmp.32 = sext i32 %i.0.i6 to i64, !dbg !175    ; [#uses=2 type=i64] [debug line = 188:2@116:4]
  br label %9, !dbg !178                          ; [debug line = 186:7@116:4]

; <label>:9                                       ; preds = %10, %8
  %j.0.i = phi i32 [ 0, %8 ], [ %j, %10 ]         ; [#uses=3 type=i32]
  %exitcond.i = icmp eq i32 %j.0.i, 2, !dbg !178  ; [#uses=1 type=i1] [debug line = 186:7@116:4]
  br i1 %exitcond.i, label %11, label %10, !dbg !178 ; [debug line = 186:7@116:4]

; <label>:10                                      ; preds = %9
  %rbegin.i7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !179 ; [#uses=1 type=i32] [debug line = 186:31@116:4]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !180 ; [debug line = 187:1@116:4]
  %j = add nsw i32 %j.0.i, 1, !dbg !175           ; [#uses=2 type=i32] [debug line = 188:2@116:4]
  %tmp.41 = sext i32 %j to i64, !dbg !175         ; [#uses=1 type=i64] [debug line = 188:2@116:4]
  %buff_C.addr.3 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 %tmp.32, i64 %tmp.41, !dbg !175 ; [#uses=1 type=i8*] [debug line = 188:2@116:4]
  %buff_C.load = load i8* %buff_C.addr.3, align 1, !dbg !175 ; [#uses=2 type=i8] [debug line = 188:2@116:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buff_C.load) nounwind
  %tmp.42 = sext i32 %j.0.i to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 188:2@116:4]
  %buff_C.addr.4 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 %tmp.32, i64 %tmp.42, !dbg !175 ; [#uses=1 type=i8*] [debug line = 188:2@116:4]
  store i8 %buff_C.load, i8* %buff_C.addr.4, align 1, !dbg !175 ; [debug line = 188:2@116:4]
  %rend.i8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin.i7) nounwind, !dbg !181 ; [#uses=0 type=i32] [debug line = 189:3@116:4]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !182) nounwind, !dbg !183 ; [debug line = 186:25@116:4] [debug variable = j]
  br label %9, !dbg !183                          ; [debug line = 186:25@116:4]

; <label>:11                                      ; preds = %9
  %rend3.i = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin2.i) nounwind, !dbg !184 ; [#uses=0 type=i32] [debug line = 190:2@116:4]
  %i.2 = add nsw i32 %i.0.i6, 1, !dbg !185        ; [#uses=1 type=i32] [debug line = 184:21@116:4]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !186) nounwind, !dbg !185 ; [debug line = 184:21@116:4] [debug variable = i]
  br label %7, !dbg !185                          ; [debug line = 184:21@116:4]

window_shift_right.exit:                          ; preds = %7
  br i1 %tmp.22, label %12, label %._crit_edge3, !dbg !187 ; [debug line = 120:4]

; <label>:12                                      ; preds = %window_shift_right.exit
  call void @llvm.dbg.value(metadata !{i32 %col.assign}, i64 0, metadata !188) nounwind, !dbg !191 ; [debug line = 159:68@121:27] [debug variable = ColIndex]
  %tmp.33 = sext i32 %col.assign to i64, !dbg !192 ; [#uses=1 type=i64] [debug line = 163:2@121:27]
  %buff_A.addr.4 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i64 0, i64 2, i64 %tmp.33, !dbg !192 ; [#uses=1 type=i8*] [debug line = 163:2@121:27]
  %return_value.1 = load i8* %buff_A.addr.4, align 1, !dbg !192 ; [#uses=2 type=i8] [debug line = 163:2@121:27]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %return_value.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !193) nounwind, !dbg !192 ; [debug line = 163:2@121:27] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !194), !dbg !195 ; [debug line = 196:36@121:27] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !196), !dbg !197 ; [debug line = 196:47@121:27] [debug variable = value]
  %buff_C.addr = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 0, i64 2, !dbg !198 ; [#uses=1 type=i8*] [debug line = 198:2@121:27]
  store i8 %return_value.1, i8* %buff_C.addr, align 1, !dbg !198 ; [debug line = 198:2@121:27]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !200), !dbg !202 ; [debug line = 196:36@122:5] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.2}, i64 0, metadata !203), !dbg !204 ; [debug line = 196:47@122:5] [debug variable = value]
  %buff_C.addr.1 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 1, i64 2, !dbg !205 ; [#uses=1 type=i8*] [debug line = 198:2@122:5]
  store i8 %value.assign.2, i8* %buff_C.addr.1, align 1, !dbg !205 ; [debug line = 198:2@122:5]
  call void @llvm.dbg.value(metadata !{[3 x i8]* %M.assign}, i64 0, metadata !206), !dbg !208 ; [debug line = 196:36@123:5] [debug variable = M]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.3}, i64 0, metadata !209), !dbg !210 ; [debug line = 196:47@123:5] [debug variable = value]
  %buff_C.addr.2 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i64 0, i64 2, i64 2, !dbg !211 ; [#uses=1 type=i8*] [debug line = 198:2@123:5]
  store i8 %value.assign.3, i8* %buff_C.addr.2, align 1, !dbg !211 ; [debug line = 198:2@123:5]
  br label %._crit_edge3, !dbg !212               ; [debug line = 124:4]

._crit_edge3:                                     ; preds = %12, %window_shift_right.exit
  %edge = call fastcc zeroext i8 @sobel_operator([3 x i8]* %M.assign), !dbg !213 ; [#uses=1 type=i8] [debug line = 130:11]
  call void @llvm.dbg.value(metadata !{i8 %edge}, i64 0, metadata !214), !dbg !213 ; [debug line = 130:11] [debug variable = edge]
  %tmp.34 = icmp sgt i32 %col.assign, 0, !dbg !126 ; [#uses=1 type=i1] [debug line = 134:4]
  %or.cond = and i1 %tmp.20, %tmp.34, !dbg !126   ; [#uses=1 type=i1] [debug line = 134:4]
  br i1 %or.cond, label %13, label %._crit_edge4, !dbg !126 ; [debug line = 134:4]

; <label>:13                                      ; preds = %._crit_edge3
  %tmp.35 = add i32 %tmp.19, -1921, !dbg !215     ; [#uses=1 type=i32] [debug line = 135:5]
  %index.1 = add i32 %tmp.35, %col.assign, !dbg !215 ; [#uses=1 type=i32] [debug line = 135:5]
  call void @llvm.dbg.value(metadata !{i32 %index.1}, i64 0, metadata !153), !dbg !215 ; [debug line = 135:5] [debug variable = index]
  %tmp.37 = sext i32 %index.1 to i64, !dbg !217   ; [#uses=1 type=i64] [debug line = 136:5]
  %output.addr = getelementptr inbounds i8* %output, i64 %tmp.37, !dbg !217 ; [#uses=1 type=i8*] [debug line = 136:5]
  store i8 %edge, i8* %output.addr, align 1, !dbg !217 ; [debug line = 136:5]
  br label %._crit_edge4, !dbg !218               ; [debug line = 137:4]

._crit_edge4:                                     ; preds = %13, %._crit_edge3
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !219 ; [#uses=0 type=i32] [debug line = 138:3]
  %col = add nsw i32 %col.assign, 1, !dbg !220    ; [#uses=1 type=i32] [debug line = 89:33]
  call void @llvm.dbg.value(metadata !{i32 %col}, i64 0, metadata !221), !dbg !220 ; [debug line = 89:33] [debug variable = col]
  br label %.preheader, !dbg !220                 ; [debug line = 89:33]

; <label>:14                                      ; preds = %.preheader
  %row.1 = add nsw i32 %row, 1, !dbg !222         ; [#uses=1 type=i32] [debug line = 88:32]
  call void @llvm.dbg.value(metadata !{i32 %row.1}, i64 0, metadata !223), !dbg !222 ; [debug line = 88:32] [debug variable = row]
  br label %1, !dbg !222                          ; [debug line = 88:32]

; <label>:15                                      ; preds = %1
  ret i32 0, !dbg !224                            ; [debug line = 140:2]
}

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=3]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=9]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls/sobel_filter/solution/.autopilot/db/edge_detect.pragma.2.c", metadata !"c:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !44} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15, metadata !22, metadata !25, metadata !32, metadata !35, metadata !38, metadata !41}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"", metadata !6, i32 76, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sobel_filter, null, null, metadata !13, i32 76} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab3a/src/edge_detect.c", metadata !"c:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !6, metadata !"window_insert", metadata !"window_insert", metadata !"", metadata !6, i32 196, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 196} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18, metadata !11, metadata !9, metadata !9}
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ]
!19 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !20, i32 0, i32 0} ; [ DW_TAG_array_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!22 = metadata !{i32 786478, i32 0, metadata !6, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", metadata !6, i32 181, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 181} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !18}
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", metadata !6, i32 171, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 171} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !11, metadata !9}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !11, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!32 = metadata !{i32 786478, i32 0, metadata !6, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", metadata !6, i32 159, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 159} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !11, metadata !28, metadata !9, metadata !9}
!35 = metadata !{i32 786478, i32 0, metadata !6, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", metadata !6, i32 147, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 147} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !28, metadata !9}
!38 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"", metadata !6, i32 34, metadata !39, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*)* @sobel_operator, null, null, metadata !13, i32 34} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{metadata !12, metadata !18}
!41 = metadata !{i32 786478, i32 0, metadata !6, metadata !"window_getval", metadata !"window_getval", metadata !"", metadata !6, i32 204, metadata !42, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !13, i32 204} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{metadata !11, metadata !18, metadata !9, metadata !9}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !46, metadata !51}
!46 = metadata !{i32 786484, i32 0, metadata !38, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 44, metadata !47, i32 1, i32 1, [3 x [3 x i16]]* @x_op} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !48, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!48 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!49 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!50 = metadata !{metadata !21, metadata !21}
!51 = metadata !{i32 786484, i32 0, metadata !38, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 47, metadata !47, i32 1, i32 1, [3 x [3 x i16]]* @y_op} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786689, metadata !38, metadata !"window", metadata !6, i32 16777250, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 34, i32 46, metadata !38, null}
!54 = metadata !{i32 34, i32 55, metadata !55, null}
!55 = metadata !{i32 786443, metadata !38, i32 34, i32 54, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 51, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !55, i32 51, i32 2, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 55, i32 27, metadata !59, null}
!59 = metadata !{i32 786443, metadata !60, i32 52, i32 27, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !61, i32 52, i32 3, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786443, metadata !57, i32 51, i32 26, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 52, i32 8, metadata !60, null}
!63 = metadata !{i32 786689, metadata !41, metadata !"M", metadata !6, i32 16777420, metadata !18, i32 0, metadata !58} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 204, i32 39, metadata !41, metadata !58}
!65 = metadata !{i32 786689, metadata !41, metadata !"RowIndex", metadata !6, i32 33554636, metadata !9, i32 0, metadata !58} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 204, i32 46, metadata !41, metadata !58}
!67 = metadata !{i32 786689, metadata !41, metadata !"ColIndex", metadata !6, i32 50331852, metadata !9, i32 0, metadata !58} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 204, i32 60, metadata !41, metadata !58}
!69 = metadata !{i32 207, i32 2, metadata !70, metadata !58}
!70 = metadata !{i32 786443, metadata !41, i32 204, i32 70, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786688, metadata !70, metadata !"return_value", metadata !6, i32 206, metadata !11, i32 0, metadata !58} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786688, metadata !55, metadata !"x_weight", metadata !6, i32 35, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786689, metadata !41, metadata !"M", metadata !6, i32 16777420, metadata !18, i32 0, metadata !74} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 58, i32 27, metadata !59, null}
!75 = metadata !{i32 204, i32 39, metadata !41, metadata !74}
!76 = metadata !{i32 786689, metadata !41, metadata !"RowIndex", metadata !6, i32 33554636, metadata !9, i32 0, metadata !74} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 204, i32 46, metadata !41, metadata !74}
!78 = metadata !{i32 786689, metadata !41, metadata !"ColIndex", metadata !6, i32 50331852, metadata !9, i32 0, metadata !74} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 204, i32 60, metadata !41, metadata !74}
!80 = metadata !{i32 786688, metadata !70, metadata !"return_value", metadata !6, i32 206, metadata !11, i32 0, metadata !74} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 207, i32 2, metadata !70, metadata !74}
!82 = metadata !{i32 786688, metadata !55, metadata !"y_weight", metadata !6, i32 36, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 52, i32 22, metadata !60, null}
!84 = metadata !{i32 786688, metadata !55, metadata !"j", metadata !6, i32 42, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 51, i32 21, metadata !57, null}
!86 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 62, i32 2, metadata !55, null}
!88 = metadata !{i32 786688, metadata !55, metadata !"edge_weight", metadata !6, i32 38, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 65, i32 2, metadata !55, null}
!90 = metadata !{i32 67, i32 7, metadata !55, null}
!91 = metadata !{i32 69, i32 2, metadata !55, null}
!92 = metadata !{i32 786688, metadata !55, metadata !"edge_val", metadata !6, i32 39, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 71, i32 2, metadata !55, null}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"return", metadata !98, metadata !"int", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 1, i32 0}
!100 = metadata !{i32 786689, metadata !5, metadata !"input", metadata !6, i32 16777292, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 76, i32 27, metadata !5, null}
!102 = metadata !{i32 786689, metadata !5, metadata !"output", metadata !6, i32 33554508, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 76, i32 43, metadata !5, null}
!104 = metadata !{i32 77, i32 1, metadata !105, null}
!105 = metadata !{i32 786443, metadata !5, i32 76, i32 51, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 78, i32 1, metadata !105, null}
!107 = metadata !{i32 79, i32 1, metadata !105, null}
!108 = metadata !{i32 786688, metadata !105, metadata !"buff_A", metadata !6, i32 85, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 786454, null, metadata !"linebuffer_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ]
!110 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 46080, i64 8, i32 0, i32 0, metadata !11, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ]
!111 = metadata !{metadata !21, metadata !31}
!112 = metadata !{i32 85, i32 15, metadata !105, null}
!113 = metadata !{i32 786688, metadata !105, metadata !"buff_C", metadata !6, i32 86, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786454, null, metadata !"window_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ]
!115 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!116 = metadata !{i32 86, i32 11, metadata !105, null}
!117 = metadata !{i32 116, i32 4, metadata !118, null}
!118 = metadata !{i32 786443, metadata !119, i32 89, i32 40, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 786443, metadata !120, i32 89, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 786443, metadata !121, i32 88, i32 39, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786443, metadata !105, i32 88, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 88, i32 7, metadata !121, null}
!123 = metadata !{i32 106, i32 4, metadata !118, null}
!124 = metadata !{i32 108, i32 5, metadata !125, null}
!125 = metadata !{i32 786443, metadata !118, i32 106, i32 37, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 134, i32 4, metadata !118, null}
!127 = metadata !{i32 89, i32 8, metadata !119, null}
!128 = metadata !{i32 89, i32 41, metadata !118, null}
!129 = metadata !{i32 91, i32 1, metadata !118, null}
!130 = metadata !{i32 99, i32 4, metadata !118, null}
!131 = metadata !{i32 786689, metadata !35, metadata !"col", metadata !6, i32 33554579, metadata !9, i32 0, metadata !132} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 100, i32 5, metadata !133, null}
!133 = metadata !{i32 786443, metadata !118, i32 99, i32 20, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 147, i32 53, metadata !35, metadata !132}
!135 = metadata !{i32 152, i32 2, metadata !136, metadata !132}
!136 = metadata !{i32 786443, metadata !137, i32 150, i32 30, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 786443, metadata !138, i32 150, i32 2, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 786443, metadata !35, i32 147, i32 58, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 150, i32 7, metadata !137, metadata !132}
!140 = metadata !{i32 150, i32 31, metadata !136, metadata !132}
!141 = metadata !{i32 151, i32 1, metadata !136, metadata !132}
!142 = metadata !{i32 153, i32 2, metadata !136, metadata !132}
!143 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !6, i32 149, metadata !9, i32 0, metadata !132} ; [ DW_TAG_auto_variable ]
!144 = metadata !{i32 150, i32 25, metadata !137, metadata !132}
!145 = metadata !{i32 786689, metadata !32, metadata !"ColIndex", metadata !6, i32 50331807, metadata !9, i32 0, metadata !146} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 101, i32 12, metadata !133, null}
!147 = metadata !{i32 159, i32 68, metadata !32, metadata !146}
!148 = metadata !{i32 163, i32 2, metadata !149, metadata !146}
!149 = metadata !{i32 786443, metadata !32, i32 159, i32 78, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786688, metadata !149, metadata !"return_value", metadata !6, i32 162, metadata !11, i32 0, metadata !146} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786688, metadata !118, metadata !"temp", metadata !6, i32 95, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 102, i32 4, metadata !133, null}
!153 = metadata !{i32 786688, metadata !105, metadata !"index", metadata !6, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 109, i32 5, metadata !125, null}
!155 = metadata !{i32 786688, metadata !125, metadata !"y", metadata !6, i32 107, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!156 = metadata !{i32 110, i32 5, metadata !125, null}
!157 = metadata !{i32 786688, metadata !118, metadata !"tempx", metadata !6, i32 96, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!158 = metadata !{i32 111, i32 5, metadata !125, null}
!159 = metadata !{i32 786689, metadata !25, metadata !"value", metadata !6, i32 33554603, metadata !11, i32 0, metadata !160} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 112, i32 5, metadata !125, null}
!161 = metadata !{i32 171, i32 62, metadata !25, metadata !160}
!162 = metadata !{i32 786689, metadata !25, metadata !"col", metadata !6, i32 50331819, metadata !9, i32 0, metadata !160} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 171, i32 73, metadata !25, metadata !160}
!164 = metadata !{i32 174, i32 2, metadata !165, metadata !160}
!165 = metadata !{i32 786443, metadata !25, i32 171, i32 78, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 113, i32 4, metadata !125, null}
!167 = metadata !{i32 786689, metadata !22, metadata !"M", metadata !6, i32 16777397, metadata !18, i32 0, metadata !117} ; [ DW_TAG_arg_variable ]
!168 = metadata !{i32 181, i32 41, metadata !22, metadata !117}
!169 = metadata !{i32 184, i32 7, metadata !170, metadata !117}
!170 = metadata !{i32 786443, metadata !171, i32 184, i32 2, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 786443, metadata !22, i32 181, i32 44, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 184, i32 27, metadata !173, metadata !117}
!173 = metadata !{i32 786443, metadata !170, i32 184, i32 26, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 185, i32 1, metadata !173, metadata !117}
!175 = metadata !{i32 188, i32 2, metadata !176, metadata !117}
!176 = metadata !{i32 786443, metadata !177, i32 186, i32 30, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 786443, metadata !173, i32 186, i32 2, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 186, i32 7, metadata !177, metadata !117}
!179 = metadata !{i32 186, i32 31, metadata !176, metadata !117}
!180 = metadata !{i32 187, i32 1, metadata !176, metadata !117}
!181 = metadata !{i32 189, i32 3, metadata !176, metadata !117}
!182 = metadata !{i32 786688, metadata !171, metadata !"j", metadata !6, i32 183, metadata !9, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 186, i32 25, metadata !177, metadata !117}
!184 = metadata !{i32 190, i32 2, metadata !173, metadata !117}
!185 = metadata !{i32 184, i32 21, metadata !170, metadata !117}
!186 = metadata !{i32 786688, metadata !171, metadata !"i", metadata !6, i32 183, metadata !9, i32 0, metadata !117} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 120, i32 4, metadata !118, null}
!188 = metadata !{i32 786689, metadata !32, metadata !"ColIndex", metadata !6, i32 50331807, metadata !9, i32 0, metadata !189} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 121, i32 27, metadata !190, null}
!190 = metadata !{i32 786443, metadata !118, i32 120, i32 20, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 159, i32 68, metadata !32, metadata !189}
!192 = metadata !{i32 163, i32 2, metadata !149, metadata !189}
!193 = metadata !{i32 786688, metadata !149, metadata !"return_value", metadata !6, i32 162, metadata !11, i32 0, metadata !189} ; [ DW_TAG_auto_variable ]
!194 = metadata !{i32 786689, metadata !15, metadata !"M", metadata !6, i32 16777412, metadata !18, i32 0, metadata !189} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 196, i32 36, metadata !15, metadata !189}
!196 = metadata !{i32 786689, metadata !15, metadata !"value", metadata !6, i32 33554628, metadata !11, i32 0, metadata !189} ; [ DW_TAG_arg_variable ]
!197 = metadata !{i32 196, i32 47, metadata !15, metadata !189}
!198 = metadata !{i32 198, i32 2, metadata !199, metadata !189}
!199 = metadata !{i32 786443, metadata !15, i32 196, i32 72, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!200 = metadata !{i32 786689, metadata !15, metadata !"M", metadata !6, i32 16777412, metadata !18, i32 0, metadata !201} ; [ DW_TAG_arg_variable ]
!201 = metadata !{i32 122, i32 5, metadata !190, null}
!202 = metadata !{i32 196, i32 36, metadata !15, metadata !201}
!203 = metadata !{i32 786689, metadata !15, metadata !"value", metadata !6, i32 33554628, metadata !11, i32 0, metadata !201} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 196, i32 47, metadata !15, metadata !201}
!205 = metadata !{i32 198, i32 2, metadata !199, metadata !201}
!206 = metadata !{i32 786689, metadata !15, metadata !"M", metadata !6, i32 16777412, metadata !18, i32 0, metadata !207} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 123, i32 5, metadata !190, null}
!208 = metadata !{i32 196, i32 36, metadata !15, metadata !207}
!209 = metadata !{i32 786689, metadata !15, metadata !"value", metadata !6, i32 33554628, metadata !11, i32 0, metadata !207} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 196, i32 47, metadata !15, metadata !207}
!211 = metadata !{i32 198, i32 2, metadata !199, metadata !207}
!212 = metadata !{i32 124, i32 4, metadata !190, null}
!213 = metadata !{i32 130, i32 11, metadata !118, null}
!214 = metadata !{i32 786688, metadata !118, metadata !"edge", metadata !6, i32 126, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!215 = metadata !{i32 135, i32 5, metadata !216, null}
!216 = metadata !{i32 786443, metadata !118, i32 134, i32 28, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 136, i32 5, metadata !216, null}
!218 = metadata !{i32 137, i32 4, metadata !216, null}
!219 = metadata !{i32 138, i32 3, metadata !118, null}
!220 = metadata !{i32 89, i32 33, metadata !119, null}
!221 = metadata !{i32 786688, metadata !105, metadata !"col", metadata !6, i32 82, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!222 = metadata !{i32 88, i32 32, metadata !121, null}
!223 = metadata !{i32 786688, metadata !105, metadata !"row", metadata !6, i32 81, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 140, i32 2, metadata !105, null}
