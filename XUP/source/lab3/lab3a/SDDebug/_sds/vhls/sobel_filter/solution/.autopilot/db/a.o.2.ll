; ModuleID = 'C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls/sobel_filter/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sobel_filter.str = internal unnamed_addr constant [13 x i8] c"sobel_filter\00" ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]

; [#uses=0]
define i32 @sobel_filter(i8* %input, i8* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output) nounwind, !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !60
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @sobel_filter.str) nounwind
  %"buff_A[0]" = alloca [1920 x i8], align 16     ; [#uses=2 type=[1920 x i8]*]
  %"buff_A[1]" = alloca [1920 x i8], align 16     ; [#uses=1 type=[1920 x i8]*]
  %"buff_A[2]" = alloca [1920 x i8], align 16     ; [#uses=2 type=[1920 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !66), !dbg !67 ; [debug line = 76:27] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !68), !dbg !69 ; [debug line = 76:43] [debug variable = output]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !70 ; [debug line = 77:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !72 ; [debug line = 78:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !73 ; [debug line = 79:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"buff_A[0]"}, metadata !74), !dbg !77 ; [debug line = 85:15] [debug variable = buff_A[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"buff_A[1]"}, metadata !78), !dbg !77 ; [debug line = 85:15] [debug variable = buff_A[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"buff_A[2]"}, metadata !79), !dbg !77 ; [debug line = 85:15] [debug variable = buff_A[2]]
  br label %1, !dbg !80                           ; [debug line = 88:7]

; <label>:1                                       ; preds = %8, %0
  %buff_C.1.2. = phi i8 [ undef, %0 ], [ %"buff_C[1][1].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.1.1. = phi i8 [ undef, %0 ], [ %"buff_C[1][0].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.2.1. = phi i8 [ undef, %0 ], [ %"buff_C[2][0].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.0.2. = phi i8 [ undef, %0 ], [ %"buff_C[0][1].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.0.1. = phi i8 [ undef, %0 ], [ %"buff_C[0][0].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.2.2. = phi i8 [ undef, %0 ], [ %"buff_C[2][1].lcssa", %8 ] ; [#uses=1 type=i8]
  %row = phi i11 [ 0, %0 ], [ %row.1, %8 ]        ; [#uses=6 type=i11]
  %row.cast6 = zext i11 %row to i18, !dbg !80     ; [#uses=1 type=i18] [debug line = 88:7]
  %row.cast5 = zext i11 %row to i22, !dbg !80     ; [#uses=1 type=i22] [debug line = 88:7]
  %exitcond1 = icmp eq i11 %row, -967, !dbg !80   ; [#uses=1 type=i1] [debug line = 88:7]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1081, i64 1081, i64 1081) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %9, label %.preheader.preheader, !dbg !80 ; [debug line = 88:7]

.preheader.preheader:                             ; preds = %1
  %tmp = icmp ult i11 %row, -968, !dbg !82        ; [#uses=1 type=i1] [debug line = 106:4]
  %_shl = shl nuw i22 %row.cast5, 11, !dbg !86    ; [#uses=1 type=i22] [debug line = 108:5]
  %_shl.cast = zext i22 %_shl to i23, !dbg !86    ; [#uses=1 type=i23] [debug line = 108:5]
  %_shl1 = shl nuw i18 %row.cast6, 7, !dbg !86    ; [#uses=1 type=i18] [debug line = 108:5]
  %_shl1.cast = zext i18 %_shl1 to i23, !dbg !86  ; [#uses=1 type=i23] [debug line = 108:5]
  %tmp. = sub i23 %_shl.cast, %_shl1.cast, !dbg !86 ; [#uses=2 type=i23] [debug line = 108:5]
  %tmp.1 = icmp ne i11 %row, 0, !dbg !88          ; [#uses=1 type=i1] [debug line = 134:4]
  br label %.preheader, !dbg !89                  ; [debug line = 89:8]

.preheader:                                       ; preds = %._crit_edge4, %.preheader.preheader
  %"buff_C[1][1]" = phi i8 [ %buff_C.1.2., %.preheader.preheader ], [ %"buff_C[1][2]", %._crit_edge4 ] ; [#uses=3 type=i8]
  %"buff_C[1][0]" = phi i8 [ %buff_C.1.1., %.preheader.preheader ], [ %"buff_C[1][1]", %._crit_edge4 ] ; [#uses=2 type=i8]
  %"buff_C[2][0]" = phi i8 [ %buff_C.2.1., %.preheader.preheader ], [ %"buff_C[2][1]", %._crit_edge4 ] ; [#uses=2 type=i8]
  %"buff_C[0][1]" = phi i8 [ %buff_C.0.2., %.preheader.preheader ], [ %"buff_C[0][2]", %._crit_edge4 ] ; [#uses=4 type=i8]
  %"buff_C[0][0]" = phi i8 [ %buff_C.0.1., %.preheader.preheader ], [ %"buff_C[0][1]", %._crit_edge4 ] ; [#uses=2 type=i8]
  %"buff_C[2][1]" = phi i8 [ %buff_C.2.2., %.preheader.preheader ], [ %"buff_C[2][2]", %._crit_edge4 ] ; [#uses=4 type=i8]
  %col.assign = phi i11 [ 0, %.preheader.preheader ], [ %col, %._crit_edge4 ] ; [#uses=9 type=i11]
  %col.assign.cast4 = zext i11 %col.assign to i23, !dbg !89 ; [#uses=1 type=i23] [debug line = 89:8]
  %col.assign.cast = zext i11 %col.assign to i12, !dbg !89 ; [#uses=1 type=i12] [debug line = 89:8]
  %exitcond = icmp eq i11 %col.assign, -127, !dbg !89 ; [#uses=1 type=i1] [debug line = 89:8]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1921, i64 1921, i64 1921) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %4, !dbg !89   ; [debug line = 89:8]

; <label>:4                                       ; preds = %.preheader
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !90 ; [#uses=1 type=i32] [debug line = 89:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !91 ; [debug line = 91:1]
  %tmp.3 = icmp ult i11 %col.assign, -128, !dbg !92 ; [#uses=5 type=i1] [debug line = 99:4]
  br i1 %tmp.3, label %linebuffer_shift_up.exit, label %._crit_edge, !dbg !92 ; [debug line = 99:4]

linebuffer_shift_up.exit:                         ; preds = %4
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !93) nounwind, !dbg !96 ; [debug line = 147:53@100:5] [debug variable = col]
  %tmp.4 = zext i11 %col.assign to i64, !dbg !97  ; [#uses=3 type=i64] [debug line = 152:2@100:5]
  %"buff_A[1].addr" = getelementptr [1920 x i8]* %"buff_A[1]", i64 0, i64 %tmp.4, !dbg !97 ; [#uses=2 type=i8*] [debug line = 152:2@100:5]
  %"buff_A[1].load" = load i8* %"buff_A[1].addr", align 1, !dbg !97 ; [#uses=1 type=i8] [debug line = 152:2@100:5]
  %"buff_A[2].addr" = getelementptr [1920 x i8]* %"buff_A[2]", i64 0, i64 %tmp.4, !dbg !97 ; [#uses=1 type=i8*] [debug line = 152:2@100:5]
  store i8 %"buff_A[1].load", i8* %"buff_A[2].addr", align 1, !dbg !97 ; [debug line = 152:2@100:5]
  %"buff_A[0].addr" = getelementptr [1920 x i8]* %"buff_A[0]", i64 0, i64 %tmp.4, !dbg !97 ; [#uses=1 type=i8*] [debug line = 152:2@100:5]
  %return_value = load i8* %"buff_A[0].addr", align 1, !dbg !97 ; [#uses=2 type=i8] [debug line = 152:2@100:5]
  store i8 %return_value, i8* %"buff_A[1].addr", align 1, !dbg !97 ; [debug line = 152:2@100:5]
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !101) nounwind, !dbg !103 ; [debug line = 159:68@101:12] [debug variable = ColIndex]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !104) nounwind, !dbg !106 ; [debug line = 163:2@101:12] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !107), !dbg !102 ; [debug line = 101:12] [debug variable = temp]
  br label %._crit_edge, !dbg !108                ; [debug line = 102:4]

._crit_edge:                                      ; preds = %linebuffer_shift_up.exit, %4
  %value.assign = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %4 ] ; [#uses=1 type=i8]
  %tmp.7 = and i1 %tmp.3, %tmp, !dbg !82          ; [#uses=1 type=i1] [debug line = 106:4]
  br i1 %tmp.7, label %5, label %._crit_edge2_ifconv, !dbg !82 ; [debug line = 106:4]

; <label>:5                                       ; preds = %._crit_edge
  %index = add i23 %col.assign.cast4, %tmp., !dbg !86 ; [#uses=1 type=i23] [debug line = 108:5]
  %index.cast = sext i23 %index to i32, !dbg !86  ; [#uses=1 type=i32] [debug line = 108:5]
  call void @llvm.dbg.value(metadata !{i23 %index}, i64 0, metadata !109), !dbg !86 ; [debug line = 108:5] [debug variable = index]
  %tmp.8 = zext i32 %index.cast to i64, !dbg !110 ; [#uses=1 type=i64] [debug line = 109:5]
  %input.addr = getelementptr inbounds i8* %input, i64 %tmp.8, !dbg !110 ; [#uses=1 type=i8*] [debug line = 109:5]
  %y = load i8* %input.addr, align 1, !dbg !110   ; [#uses=2 type=i8] [debug line = 109:5]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !111), !dbg !112 ; [debug line = 110:5] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !113), !dbg !114 ; [debug line = 111:5] [debug variable = tempx]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !115), !dbg !117 ; [debug line = 171:62@112:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !118), !dbg !119 ; [debug line = 171:73@112:5] [debug variable = col]
  %tmp.9 = zext i11 %col.assign to i64, !dbg !120 ; [#uses=1 type=i64] [debug line = 174:2@112:5]
  %"buff_A[0].addr.1" = getelementptr [1920 x i8]* %"buff_A[0]", i64 0, i64 %tmp.9, !dbg !120 ; [#uses=1 type=i8*] [debug line = 174:2@112:5]
  store i8 %y, i8* %"buff_A[0].addr.1", align 1, !dbg !120 ; [debug line = 174:2@112:5]
  br label %._crit_edge2_ifconv, !dbg !122        ; [debug line = 113:4]

._crit_edge2_ifconv:                              ; preds = %5, %._crit_edge
  %value.assign.3 = phi i8 [ %y, %5 ], [ 0, %._crit_edge ] ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][0]"}, i64 0, metadata !123), !dbg !125 ; [debug line = 188:2@116:4] [debug variable = buff_C[0][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][1]"}, i64 0, metadata !132), !dbg !125 ; [debug line = 188:2@116:4] [debug variable = buff_C[0][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][0]"}, i64 0, metadata !133), !dbg !125 ; [debug line = 188:2@116:4] [debug variable = buff_C[1][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][1]"}, i64 0, metadata !134), !dbg !125 ; [debug line = 188:2@116:4] [debug variable = buff_C[1][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][0]"}, i64 0, metadata !135), !dbg !125 ; [debug line = 188:2@116:4] [debug variable = buff_C[2][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][1]"}, i64 0, metadata !136), !dbg !125 ; [debug line = 188:2@116:4] [debug variable = buff_C[2][1]]
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !137) nounwind, !dbg !140 ; [debug line = 159:68@121:27] [debug variable = ColIndex]
  %tmp.6 = zext i11 %col.assign to i64, !dbg !141 ; [#uses=1 type=i64] [debug line = 163:2@121:27]
  %"buff_A[2].addr.1" = getelementptr [1920 x i8]* %"buff_A[2]", i64 0, i64 %tmp.6, !dbg !141 ; [#uses=1 type=i8*] [debug line = 163:2@121:27]
  %return_value.1 = load i8* %"buff_A[2].addr.1", align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 163:2@121:27]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !142) nounwind, !dbg !141 ; [debug line = 163:2@121:27] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !143), !dbg !144 ; [debug line = 196:47@121:27] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !145), !dbg !146 ; [debug line = 198:2@121:27] [debug variable = buff_C[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %value.assign}, i64 0, metadata !148), !dbg !150 ; [debug line = 196:47@122:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %value.assign}, i64 0, metadata !151), !dbg !152 ; [debug line = 198:2@122:5] [debug variable = buff_C[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.3}, i64 0, metadata !153), !dbg !155 ; [debug line = 196:47@123:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.3}, i64 0, metadata !156), !dbg !157 ; [debug line = 198:2@123:5] [debug variable = buff_C[2][2]]
  %"buff_C[1][2]" = select i1 %tmp.3, i8 %value.assign, i8 %"buff_C[1][1]", !dbg !158 ; [#uses=2 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][2]"}, i64 0, metadata !151), !dbg !152 ; [debug line = 198:2@122:5] [debug variable = buff_C[1][2]]
  %"buff_C[0][2]" = select i1 %tmp.3, i8 %return_value.1, i8 %"buff_C[0][1]", !dbg !158 ; [#uses=2 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][2]"}, i64 0, metadata !145), !dbg !146 ; [debug line = 198:2@121:27] [debug variable = buff_C[0][2]]
  %"buff_C[2][2]" = select i1 %tmp.3, i8 %value.assign.3, i8 %"buff_C[2][1]", !dbg !158 ; [#uses=2 type=i8] [debug line = 204:39@55:27@130:11]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][2]"}, i64 0, metadata !156), !dbg !157 ; [debug line = 198:2@123:5] [debug variable = buff_C[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][0]"}, i64 0, metadata !166), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[0][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][1]"}, i64 0, metadata !167), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[0][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][2]"}, i64 0, metadata !168), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][0]"}, i64 0, metadata !169), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[1][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][2]"}, i64 0, metadata !170), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][0]"}, i64 0, metadata !171), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[2][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][1]"}, i64 0, metadata !172), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[2][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][2]"}, i64 0, metadata !173), !dbg !158 ; [debug line = 204:39@55:27@130:11] [debug variable = M[2][2]]
  %tmp.10.0.i.cast = zext i8 %"buff_C[0][0]" to i9, !dbg !159 ; [#uses=2 type=i9] [debug line = 55:27@130:11]
  %tmp.10.0.1.i.cast = zext i8 %"buff_C[0][1]" to i9, !dbg !174 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %tmp.12.0.1.i = shl nuw i9 %tmp.10.0.1.i.cast, 1, !dbg !174 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %tmp.12.0.1.i.cast = zext i9 %tmp.12.0.1.i to i10, !dbg !174 ; [#uses=1 type=i10] [debug line = 58:27@130:11]
  %tmp.10.0.2.i.cast = zext i8 %"buff_C[0][2]" to i9, !dbg !159 ; [#uses=2 type=i9] [debug line = 55:27@130:11]
  %x_weight.2.0.2.i = sub i9 %tmp.10.0.2.i.cast, %tmp.10.0.i.cast, !dbg !159 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %x_weight.2.0.2.i.cast = sext i9 %x_weight.2.0.2.i to i11, !dbg !159 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %tmp.10.1.i.cast = zext i8 %"buff_C[1][0]" to i9, !dbg !159 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %_shl6.i = shl nuw i9 %tmp.10.1.i.cast, 1, !dbg !159 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %_shl6.i.cast = zext i9 %_shl6.i to i11, !dbg !159 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %x_weight.2.1.1.i = sub i11 %x_weight.2.0.2.i.cast, %_shl6.i.cast, !dbg !159 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %tmp.10.1.2.i.cast = zext i8 %"buff_C[1][2]" to i9, !dbg !159 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %tmp.11.1.2.i = shl nuw i9 %tmp.10.1.2.i.cast, 1, !dbg !159 ; [#uses=1 type=i9] [debug line = 55:27@130:11]
  %tmp.11.1.2.i.cast = zext i9 %tmp.11.1.2.i to i11, !dbg !159 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %x_weight.2.1.2.i = add i11 %tmp.11.1.2.i.cast, %x_weight.2.1.1.i, !dbg !159 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %tmp1 = add i9 %tmp.10.0.i.cast, %tmp.10.0.2.i.cast, !dbg !174 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %tmp1.cast = zext i9 %tmp1 to i10, !dbg !174    ; [#uses=1 type=i10] [debug line = 58:27@130:11]
  %y_weight.2.1.2.i = add i10 %tmp1.cast, %tmp.12.0.1.i.cast, !dbg !174 ; [#uses=1 type=i10] [debug line = 58:27@130:11]
  %y_weight.2.1.2.i.cast = zext i10 %y_weight.2.1.2.i to i11, !dbg !174 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %tmp.10.2.i.cast = zext i8 %"buff_C[2][0]" to i11, !dbg !159 ; [#uses=2 type=i11] [debug line = 55:27@130:11]
  %x_weight.2.2.i = sub i11 %x_weight.2.1.2.i, %tmp.10.2.i.cast, !dbg !159 ; [#uses=1 type=i11] [debug line = 55:27@130:11]
  %y_weight.2.2.i = sub i11 %y_weight.2.1.2.i.cast, %tmp.10.2.i.cast, !dbg !174 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %tmp.10.2.1.i.cast = zext i8 %"buff_C[2][1]" to i9, !dbg !174 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %_shl.i = shl nuw i9 %tmp.10.2.1.i.cast, 1, !dbg !174 ; [#uses=1 type=i9] [debug line = 58:27@130:11]
  %_shl.i.cast = zext i9 %_shl.i to i11, !dbg !174 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %y_weight.2.2.1.i = sub i11 %y_weight.2.2.i, %_shl.i.cast, !dbg !174 ; [#uses=1 type=i11] [debug line = 58:27@130:11]
  %tmp.10.2.2.i.cast = zext i8 %"buff_C[2][2]" to i11, !dbg !159 ; [#uses=2 type=i11] [debug line = 55:27@130:11]
  %x_weight.2.2.2.i = add i11 %x_weight.2.2.i, %tmp.10.2.2.i.cast, !dbg !159 ; [#uses=3 type=i11] [debug line = 55:27@130:11]
  %y_weight.2.2.2.i = sub i11 %y_weight.2.2.1.i, %tmp.10.2.2.i.cast, !dbg !174 ; [#uses=3 type=i11] [debug line = 58:27@130:11]
  %tmp.i = icmp sgt i11 %x_weight.2.2.2.i, 0, !dbg !175 ; [#uses=1 type=i1] [debug line = 62:2@130:11]
  %tmp.1.i = sub i11 0, %x_weight.2.2.2.i, !dbg !175 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp.2.i = select i1 %tmp.i, i11 %x_weight.2.2.2.i, i11 %tmp.1.i, !dbg !175 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp.2.i.cast = sext i11 %tmp.2.i to i12, !dbg !175 ; [#uses=1 type=i12] [debug line = 62:2@130:11]
  %tmp.3.i = icmp sgt i11 %y_weight.2.2.2.i, 0, !dbg !175 ; [#uses=1 type=i1] [debug line = 62:2@130:11]
  %tmp.4.i = sub i11 0, %y_weight.2.2.2.i, !dbg !175 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp.5.i = select i1 %tmp.3.i, i11 %y_weight.2.2.2.i, i11 %tmp.4.i, !dbg !175 ; [#uses=1 type=i11] [debug line = 62:2@130:11]
  %tmp.5.i.cast = sext i11 %tmp.5.i to i12, !dbg !175 ; [#uses=1 type=i12] [debug line = 62:2@130:11]
  %edge_weight = add i12 %tmp.2.i.cast, %tmp.5.i.cast, !dbg !175 ; [#uses=3 type=i12] [debug line = 62:2@130:11]
  call void @llvm.dbg.value(metadata !{i12 %edge_weight}, i64 0, metadata !176), !dbg !175 ; [debug line = 62:2@130:11] [debug variable = edge_weight]
  %tmp.7.i = icmp sgt i12 %edge_weight, 200, !dbg !177 ; [#uses=2 type=i1] [debug line = 65:2@130:11]
  %tmp.9.i = icmp slt i12 %edge_weight, 100, !dbg !178 ; [#uses=1 type=i1] [debug line = 67:7@130:11]
  %tmp..i = trunc i12 %edge_weight to i8          ; [#uses=1 type=i8]
  %phitmp.i = sext i1 %tmp.7.i to i8, !dbg !179   ; [#uses=1 type=i8] [debug line = 69:2@130:11]
  %tmp.5 = or i1 %tmp.7.i, %tmp.9.i, !dbg !179    ; [#uses=1 type=i1] [debug line = 69:2@130:11]
  %edge_val = select i1 %tmp.5, i8 %phitmp.i, i8 %tmp..i, !dbg !179 ; [#uses=1 type=i8] [debug line = 69:2@130:11]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !180), !dbg !179 ; [debug line = 69:2@130:11] [debug variable = edge_val]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !181), !dbg !165 ; [debug line = 130:11] [debug variable = edge]
  %tmp.10 = icmp ne i11 %col.assign, 0, !dbg !88  ; [#uses=1 type=i1] [debug line = 134:4]
  %or.cond = and i1 %tmp.1, %tmp.10, !dbg !88     ; [#uses=1 type=i1] [debug line = 134:4]
  br i1 %or.cond, label %6, label %._crit_edge4, !dbg !88 ; [debug line = 134:4]

; <label>:6                                       ; preds = %._crit_edge2_ifconv
  %tmp2 = add i12 %col.assign.cast, -1921, !dbg !182 ; [#uses=1 type=i12] [debug line = 135:5]
  %tmp2.cast = sext i12 %tmp2 to i23, !dbg !182   ; [#uses=1 type=i23] [debug line = 135:5]
  %index.1 = add i23 %tmp., %tmp2.cast, !dbg !182 ; [#uses=1 type=i23] [debug line = 135:5]
  %index.1.cast = sext i23 %index.1 to i32, !dbg !182 ; [#uses=1 type=i32] [debug line = 135:5]
  call void @llvm.dbg.value(metadata !{i23 %index.1}, i64 0, metadata !109), !dbg !182 ; [debug line = 135:5] [debug variable = index]
  %tmp.11 = zext i32 %index.1.cast to i64, !dbg !184 ; [#uses=1 type=i64] [debug line = 136:5]
  %output.addr = getelementptr inbounds i8* %output, i64 %tmp.11, !dbg !184 ; [#uses=1 type=i8*] [debug line = 136:5]
  store i8 %edge_val, i8* %output.addr, align 1, !dbg !184 ; [debug line = 136:5]
  br label %._crit_edge4, !dbg !185               ; [debug line = 137:4]

._crit_edge4:                                     ; preds = %6, %._crit_edge2_ifconv
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.2) nounwind, !dbg !186 ; [#uses=0 type=i32] [debug line = 138:3]
  %col = add i11 %col.assign, 1, !dbg !187        ; [#uses=1 type=i11] [debug line = 89:33]
  call void @llvm.dbg.value(metadata !{i11 %col}, i64 0, metadata !188), !dbg !187 ; [debug line = 89:33] [debug variable = col]
  br label %.preheader, !dbg !187                 ; [debug line = 89:33]

; <label>:8                                       ; preds = %.preheader
  %"buff_C[2][1].lcssa" = phi i8 [ %"buff_C[2][1]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[0][0].lcssa" = phi i8 [ %"buff_C[0][0]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[0][1].lcssa" = phi i8 [ %"buff_C[0][1]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[2][0].lcssa" = phi i8 [ %"buff_C[2][0]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[1][0].lcssa" = phi i8 [ %"buff_C[1][0]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[1][1].lcssa" = phi i8 [ %"buff_C[1][1]", %.preheader ] ; [#uses=1 type=i8]
  %row.1 = add i11 %row, 1, !dbg !189             ; [#uses=1 type=i11] [debug line = 88:32]
  call void @llvm.dbg.value(metadata !{i11 %row.1}, i64 0, metadata !190), !dbg !189 ; [debug line = 88:32] [debug variable = row]
  br label %1, !dbg !189                          ; [debug line = 88:32]

; <label>:9                                       ; preds = %1
  ret i32 0, !dbg !191                            ; [debug line = 140:2]
}

; [#uses=42]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls/sobel_filter/solution/.autopilot/db/edge_detect.pragma.2.c", metadata !"c:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !2, metadata !42} ; [ DW_TAG_compile_unit ]
!1 = metadata !{i32 0}
!2 = metadata !{metadata !3, metadata !13, metadata !20, metadata !23, metadata !30, metadata !33, metadata !36, metadata !39}
!3 = metadata !{i32 786478, i32 0, metadata !4, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"", metadata !4, i32 76, metadata !5, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sobel_filter, null, null, metadata !11, i32 76} ; [ DW_TAG_subprogram ]
!4 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab3a/src/edge_detect.c", metadata !"c:/xup/SDSoC/labs/lab3a/SDDebug/_sds/vhls", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !6, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!6 = metadata !{metadata !7, metadata !8, metadata !8}
!7 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !4, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !4, metadata !"window_insert", metadata !"window_insert", metadata !"", metadata !4, i32 196, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 196} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16, metadata !9, metadata !7, metadata !7}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !9, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!20 = metadata !{i32 786478, i32 0, metadata !4, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", metadata !4, i32 181, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 181} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !16}
!23 = metadata !{i32 786478, i32 0, metadata !4, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", metadata !4, i32 171, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 171} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !9, metadata !7}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !9, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 786478, i32 0, metadata !4, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", metadata !4, i32 159, metadata !31, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 159} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{metadata !9, metadata !26, metadata !7, metadata !7}
!33 = metadata !{i32 786478, i32 0, metadata !4, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", metadata !4, i32 147, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 147} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !26, metadata !7}
!36 = metadata !{i32 786478, i32 0, metadata !4, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"", metadata !4, i32 34, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 34} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !10, metadata !16}
!39 = metadata !{i32 786478, i32 0, metadata !4, metadata !"window_getval", metadata !"window_getval", metadata !"", metadata !4, i32 204, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 204} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{metadata !9, metadata !16, metadata !7, metadata !7}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44, metadata !49}
!44 = metadata !{i32 786484, i32 0, metadata !36, metadata !"y_op", metadata !"y_op", metadata !"", metadata !4, i32 47, metadata !45, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !46, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!48 = metadata !{metadata !19, metadata !19}
!49 = metadata !{i32 786484, i32 0, metadata !36, metadata !"x_op", metadata !"x_op", metadata !"", metadata !4, i32 44, metadata !45, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 7, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"input", metadata !54, metadata !"unsigned char", i32 0, i32 7}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 2073599, i32 1}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 7, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"output", metadata !54, metadata !"unsigned char", i32 0, i32 7}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"return", metadata !64, metadata !"int", i32 0, i32 31}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 1, i32 0}
!66 = metadata !{i32 786689, metadata !3, metadata !"input", metadata !4, i32 16777292, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 76, i32 27, metadata !3, null}
!68 = metadata !{i32 786689, metadata !3, metadata !"output", metadata !4, i32 33554508, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 76, i32 43, metadata !3, null}
!70 = metadata !{i32 77, i32 1, metadata !71, null}
!71 = metadata !{i32 786443, metadata !3, i32 76, i32 51, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 78, i32 1, metadata !71, null}
!73 = metadata !{i32 79, i32 1, metadata !71, null}
!74 = metadata !{i32 786688, metadata !71, metadata !"buff_A[0]", null, i32 85, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !9, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ]
!76 = metadata !{metadata !19, metadata !29}
!77 = metadata !{i32 85, i32 15, metadata !71, null}
!78 = metadata !{i32 786688, metadata !71, metadata !"buff_A[1]", null, i32 85, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786688, metadata !71, metadata !"buff_A[2]", null, i32 85, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 88, i32 7, metadata !81, null}
!81 = metadata !{i32 786443, metadata !71, i32 88, i32 2, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 106, i32 4, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 89, i32 40, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 89, i32 3, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !81, i32 88, i32 39, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 108, i32 5, metadata !87, null}
!87 = metadata !{i32 786443, metadata !83, i32 106, i32 37, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 134, i32 4, metadata !83, null}
!89 = metadata !{i32 89, i32 8, metadata !84, null}
!90 = metadata !{i32 89, i32 41, metadata !83, null}
!91 = metadata !{i32 91, i32 1, metadata !83, null}
!92 = metadata !{i32 99, i32 4, metadata !83, null}
!93 = metadata !{i32 786689, metadata !33, metadata !"col", metadata !4, i32 33554579, metadata !7, i32 0, metadata !94} ; [ DW_TAG_arg_variable ]
!94 = metadata !{i32 100, i32 5, metadata !95, null}
!95 = metadata !{i32 786443, metadata !83, i32 99, i32 20, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 147, i32 53, metadata !33, metadata !94}
!97 = metadata !{i32 152, i32 2, metadata !98, metadata !94}
!98 = metadata !{i32 786443, metadata !99, i32 150, i32 30, metadata !4, i32 19} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !100, i32 150, i32 2, metadata !4, i32 18} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786443, metadata !33, i32 147, i32 58, metadata !4, i32 17} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786689, metadata !30, metadata !"ColIndex", metadata !4, i32 50331807, metadata !7, i32 0, metadata !102} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 101, i32 12, metadata !95, null}
!103 = metadata !{i32 159, i32 68, metadata !30, metadata !102}
!104 = metadata !{i32 786688, metadata !105, metadata !"return_value", metadata !4, i32 162, metadata !9, i32 0, metadata !102} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786443, metadata !30, i32 159, i32 78, metadata !4, i32 16} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 163, i32 2, metadata !105, metadata !102}
!107 = metadata !{i32 786688, metadata !83, metadata !"temp", metadata !4, i32 95, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 102, i32 4, metadata !95, null}
!109 = metadata !{i32 786688, metadata !71, metadata !"index", metadata !4, i32 83, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 109, i32 5, metadata !87, null}
!111 = metadata !{i32 786688, metadata !87, metadata !"y", metadata !4, i32 107, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 110, i32 5, metadata !87, null}
!113 = metadata !{i32 786688, metadata !83, metadata !"tempx", metadata !4, i32 96, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 111, i32 5, metadata !87, null}
!115 = metadata !{i32 786689, metadata !23, metadata !"value", metadata !4, i32 33554603, metadata !9, i32 0, metadata !116} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 112, i32 5, metadata !87, null}
!117 = metadata !{i32 171, i32 62, metadata !23, metadata !116}
!118 = metadata !{i32 786689, metadata !23, metadata !"col", metadata !4, i32 50331819, metadata !7, i32 0, metadata !116} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 171, i32 73, metadata !23, metadata !116}
!120 = metadata !{i32 174, i32 2, metadata !121, metadata !116}
!121 = metadata !{i32 786443, metadata !23, i32 171, i32 78, metadata !4, i32 15} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 113, i32 4, metadata !87, null}
!123 = metadata !{i32 786688, metadata !71, metadata !"buff_C[0][0]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !9, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!125 = metadata !{i32 188, i32 2, metadata !126, metadata !131}
!126 = metadata !{i32 786443, metadata !127, i32 186, i32 30, metadata !4, i32 14} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !128, i32 186, i32 2, metadata !4, i32 13} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 184, i32 26, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !130, i32 184, i32 2, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 786443, metadata !20, i32 181, i32 44, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 116, i32 4, metadata !83, null}
!132 = metadata !{i32 786688, metadata !71, metadata !"buff_C[0][1]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 786688, metadata !71, metadata !"buff_C[1][0]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 786688, metadata !71, metadata !"buff_C[1][1]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 786688, metadata !71, metadata !"buff_C[2][0]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 786688, metadata !71, metadata !"buff_C[2][1]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!137 = metadata !{i32 786689, metadata !30, metadata !"ColIndex", metadata !4, i32 50331807, metadata !7, i32 0, metadata !138} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 121, i32 27, metadata !139, null}
!139 = metadata !{i32 786443, metadata !83, i32 120, i32 20, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!140 = metadata !{i32 159, i32 68, metadata !30, metadata !138}
!141 = metadata !{i32 163, i32 2, metadata !105, metadata !138}
!142 = metadata !{i32 786688, metadata !105, metadata !"return_value", metadata !4, i32 162, metadata !9, i32 0, metadata !138} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 786689, metadata !13, metadata !"value", metadata !4, i32 33554628, metadata !9, i32 0, metadata !138} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 196, i32 47, metadata !13, metadata !138}
!145 = metadata !{i32 786688, metadata !71, metadata !"buff_C[0][2]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!146 = metadata !{i32 198, i32 2, metadata !147, metadata !138}
!147 = metadata !{i32 786443, metadata !13, i32 196, i32 72, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786689, metadata !13, metadata !"value", metadata !4, i32 33554628, metadata !9, i32 0, metadata !149} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 122, i32 5, metadata !139, null}
!150 = metadata !{i32 196, i32 47, metadata !13, metadata !149}
!151 = metadata !{i32 786688, metadata !71, metadata !"buff_C[1][2]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!152 = metadata !{i32 198, i32 2, metadata !147, metadata !149}
!153 = metadata !{i32 786689, metadata !13, metadata !"value", metadata !4, i32 33554628, metadata !9, i32 0, metadata !154} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 123, i32 5, metadata !139, null}
!155 = metadata !{i32 196, i32 47, metadata !13, metadata !154}
!156 = metadata !{i32 786688, metadata !71, metadata !"buff_C[2][2]", null, i32 86, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!157 = metadata !{i32 198, i32 2, metadata !147, metadata !154}
!158 = metadata !{i32 204, i32 39, metadata !39, metadata !159}
!159 = metadata !{i32 55, i32 27, metadata !160, metadata !165}
!160 = metadata !{i32 786443, metadata !161, i32 52, i32 27, metadata !4, i32 24} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !162, i32 52, i32 3, metadata !4, i32 23} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 786443, metadata !163, i32 51, i32 26, metadata !4, i32 22} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786443, metadata !164, i32 51, i32 2, metadata !4, i32 21} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786443, metadata !36, i32 34, i32 54, metadata !4, i32 20} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 130, i32 11, metadata !83, null}
!166 = metadata !{i32 790532, metadata !39, metadata !"M[0][0]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!167 = metadata !{i32 790532, metadata !39, metadata !"M[0][1]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!168 = metadata !{i32 790532, metadata !39, metadata !"M[0][2]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!169 = metadata !{i32 790532, metadata !39, metadata !"M[1][0]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!170 = metadata !{i32 790532, metadata !39, metadata !"M[1][2]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!171 = metadata !{i32 790532, metadata !39, metadata !"M[2][0]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!172 = metadata !{i32 790532, metadata !39, metadata !"M[2][1]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!173 = metadata !{i32 790532, metadata !39, metadata !"M[2][2]", null, i32 204, metadata !9, i32 0, metadata !159} ; [ DW_TAG_arg_variable_ro ]
!174 = metadata !{i32 58, i32 27, metadata !160, metadata !165}
!175 = metadata !{i32 62, i32 2, metadata !164, metadata !165}
!176 = metadata !{i32 786688, metadata !164, metadata !"edge_weight", metadata !4, i32 38, metadata !47, i32 0, metadata !165} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 65, i32 2, metadata !164, metadata !165}
!178 = metadata !{i32 67, i32 7, metadata !164, metadata !165}
!179 = metadata !{i32 69, i32 2, metadata !164, metadata !165}
!180 = metadata !{i32 786688, metadata !164, metadata !"edge_val", metadata !4, i32 39, metadata !10, i32 0, metadata !165} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 786688, metadata !83, metadata !"edge", metadata !4, i32 126, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 135, i32 5, metadata !183, null}
!183 = metadata !{i32 786443, metadata !83, i32 134, i32 28, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 136, i32 5, metadata !183, null}
!185 = metadata !{i32 137, i32 4, metadata !183, null}
!186 = metadata !{i32 138, i32 3, metadata !83, null}
!187 = metadata !{i32 89, i32 33, metadata !84, null}
!188 = metadata !{i32 786688, metadata !71, metadata !"col", metadata !4, i32 82, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 88, i32 32, metadata !81, null}
!190 = metadata !{i32 786688, metadata !71, metadata !"row", metadata !4, i32 81, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 140, i32 2, metadata !71, null}
