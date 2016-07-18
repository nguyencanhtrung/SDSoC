; ModuleID = 'C:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls/sharpen_filter/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@sharpen_filter.str = internal unnamed_addr constant [15 x i8] c"sharpen_filter\00" ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1 ; [#uses=2 type=[8 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=10 type=[1 x i8]*]

; [#uses=0]
define i32 @sharpen_filter(i8* %input, i8* %output) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %input) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %output) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !59
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @sharpen_filter.str) nounwind
  %"buff_A[0]" = alloca [1920 x i8], align 16     ; [#uses=2 type=[1920 x i8]*]
  %"buff_A[1]" = alloca [1920 x i8], align 16     ; [#uses=1 type=[1920 x i8]*]
  %"buff_A[2]" = alloca [1920 x i8], align 16     ; [#uses=2 type=[1920 x i8]*]
  call void @llvm.dbg.value(metadata !{i8* %input}, i64 0, metadata !65), !dbg !66 ; [debug line = 63:29] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !67), !dbg !68 ; [debug line = 63:45] [debug variable = output]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str) nounwind, !dbg !69 ; [debug line = 64:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %input, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !71 ; [debug line = 65:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %output, [8 x i8]* @.str1, i32 0, i32 0, i32 0, i32 2073600, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !72 ; [debug line = 66:1]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"buff_A[0]"}, metadata !73), !dbg !76 ; [debug line = 72:15] [debug variable = buff_A[0]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"buff_A[1]"}, metadata !77), !dbg !76 ; [debug line = 72:15] [debug variable = buff_A[1]]
  call void @llvm.dbg.declare(metadata !{[1920 x i8]* %"buff_A[2]"}, metadata !78), !dbg !76 ; [debug line = 72:15] [debug variable = buff_A[2]]
  br label %1, !dbg !79                           ; [debug line = 75:7]

; <label>:1                                       ; preds = %8, %0
  %buff_C.1.2. = phi i8 [ undef, %0 ], [ %"buff_C[1][1].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.1.1. = phi i8 [ undef, %0 ], [ %"buff_C[1][0].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.0.2. = phi i8 [ undef, %0 ], [ %"buff_C[0][1].lcssa", %8 ] ; [#uses=1 type=i8]
  %buff_C.2.2. = phi i8 [ undef, %0 ], [ %"buff_C[2][1].lcssa", %8 ] ; [#uses=1 type=i8]
  %row = phi i11 [ 0, %0 ], [ %row.1, %8 ]        ; [#uses=6 type=i11]
  %row.cast6 = zext i11 %row to i18, !dbg !79     ; [#uses=1 type=i18] [debug line = 75:7]
  %row.cast5 = zext i11 %row to i22, !dbg !79     ; [#uses=1 type=i22] [debug line = 75:7]
  %exitcond1 = icmp eq i11 %row, -967, !dbg !79   ; [#uses=1 type=i1] [debug line = 75:7]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1081, i64 1081, i64 1081) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %9, label %.preheader.preheader, !dbg !79 ; [debug line = 75:7]

.preheader.preheader:                             ; preds = %1
  %tmp = icmp ult i11 %row, -968, !dbg !81        ; [#uses=1 type=i1] [debug line = 93:4]
  %_shl = shl nuw i22 %row.cast5, 11, !dbg !85    ; [#uses=1 type=i22] [debug line = 95:5]
  %_shl.cast = zext i22 %_shl to i23, !dbg !85    ; [#uses=1 type=i23] [debug line = 95:5]
  %_shl1 = shl nuw i18 %row.cast6, 7, !dbg !85    ; [#uses=1 type=i18] [debug line = 95:5]
  %_shl1.cast = zext i18 %_shl1 to i23, !dbg !85  ; [#uses=1 type=i23] [debug line = 95:5]
  %tmp. = sub i23 %_shl.cast, %_shl1.cast, !dbg !85 ; [#uses=2 type=i23] [debug line = 95:5]
  %tmp.1 = icmp ne i11 %row, 0, !dbg !87          ; [#uses=1 type=i1] [debug line = 121:4]
  br label %.preheader, !dbg !88                  ; [debug line = 76:8]

.preheader:                                       ; preds = %._crit_edge4, %.preheader.preheader
  %"buff_C[1][1]" = phi i8 [ %buff_C.1.2., %.preheader.preheader ], [ %"buff_C[1][2]", %._crit_edge4 ] ; [#uses=5 type=i8]
  %"buff_C[1][0]" = phi i8 [ %buff_C.1.1., %.preheader.preheader ], [ %"buff_C[1][1]", %._crit_edge4 ] ; [#uses=2 type=i8]
  %"buff_C[0][1]" = phi i8 [ %buff_C.0.2., %.preheader.preheader ], [ %"buff_C[0][2].1", %._crit_edge4 ] ; [#uses=3 type=i8]
  %"buff_C[2][1]" = phi i8 [ %buff_C.2.2., %.preheader.preheader ], [ %"buff_C[2][2].1", %._crit_edge4 ] ; [#uses=3 type=i8]
  %col.assign = phi i11 [ 0, %.preheader.preheader ], [ %col, %._crit_edge4 ] ; [#uses=9 type=i11]
  %col.assign.cast4 = zext i11 %col.assign to i23, !dbg !88 ; [#uses=1 type=i23] [debug line = 76:8]
  %col.assign.cast = zext i11 %col.assign to i12, !dbg !88 ; [#uses=1 type=i12] [debug line = 76:8]
  %exitcond = icmp eq i11 %col.assign, -127, !dbg !88 ; [#uses=1 type=i1] [debug line = 76:8]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1921, i64 1921, i64 1921) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %8, label %4, !dbg !88   ; [debug line = 76:8]

; <label>:4                                       ; preds = %.preheader
  %tmp.4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str2) nounwind, !dbg !89 ; [#uses=1 type=i32] [debug line = 76:41]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !90 ; [debug line = 78:1]
  %tmp.2 = icmp ult i11 %col.assign, -128, !dbg !91 ; [#uses=5 type=i1] [debug line = 86:4]
  br i1 %tmp.2, label %linebuffer_shift_up.exit, label %._crit_edge, !dbg !91 ; [debug line = 86:4]

linebuffer_shift_up.exit:                         ; preds = %4
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !92) nounwind, !dbg !95 ; [debug line = 134:53@87:5] [debug variable = col]
  %tmp.3 = zext i11 %col.assign to i64, !dbg !96  ; [#uses=3 type=i64] [debug line = 139:2@87:5]
  %"buff_A[1].addr" = getelementptr [1920 x i8]* %"buff_A[1]", i64 0, i64 %tmp.3, !dbg !96 ; [#uses=2 type=i8*] [debug line = 139:2@87:5]
  %"buff_A[1].load" = load i8* %"buff_A[1].addr", align 1, !dbg !96 ; [#uses=1 type=i8] [debug line = 139:2@87:5]
  %"buff_A[2].addr" = getelementptr [1920 x i8]* %"buff_A[2]", i64 0, i64 %tmp.3, !dbg !96 ; [#uses=1 type=i8*] [debug line = 139:2@87:5]
  store i8 %"buff_A[1].load", i8* %"buff_A[2].addr", align 1, !dbg !96 ; [debug line = 139:2@87:5]
  %"buff_A[0].addr" = getelementptr [1920 x i8]* %"buff_A[0]", i64 0, i64 %tmp.3, !dbg !96 ; [#uses=1 type=i8*] [debug line = 139:2@87:5]
  %return_value = load i8* %"buff_A[0].addr", align 1, !dbg !96 ; [#uses=2 type=i8] [debug line = 139:2@87:5]
  store i8 %return_value, i8* %"buff_A[1].addr", align 1, !dbg !96 ; [debug line = 139:2@87:5]
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !100) nounwind, !dbg !102 ; [debug line = 146:68@88:12] [debug variable = ColIndex]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !103) nounwind, !dbg !105 ; [debug line = 150:2@88:12] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value}, i64 0, metadata !106), !dbg !101 ; [debug line = 88:12] [debug variable = temp]
  br label %._crit_edge, !dbg !107                ; [debug line = 89:4]

._crit_edge:                                      ; preds = %linebuffer_shift_up.exit, %4
  %value.assign = phi i8 [ %return_value, %linebuffer_shift_up.exit ], [ 0, %4 ] ; [#uses=1 type=i8]
  %tmp.7 = and i1 %tmp.2, %tmp, !dbg !81          ; [#uses=1 type=i1] [debug line = 93:4]
  br i1 %tmp.7, label %5, label %._crit_edge2_ifconv, !dbg !81 ; [debug line = 93:4]

; <label>:5                                       ; preds = %._crit_edge
  %index = add i23 %col.assign.cast4, %tmp., !dbg !85 ; [#uses=1 type=i23] [debug line = 95:5]
  %index.cast = sext i23 %index to i32, !dbg !85  ; [#uses=1 type=i32] [debug line = 95:5]
  call void @llvm.dbg.value(metadata !{i23 %index}, i64 0, metadata !108), !dbg !85 ; [debug line = 95:5] [debug variable = index]
  %tmp.8 = zext i32 %index.cast to i64, !dbg !109 ; [#uses=1 type=i64] [debug line = 96:5]
  %input.addr = getelementptr inbounds i8* %input, i64 %tmp.8, !dbg !109 ; [#uses=1 type=i8*] [debug line = 96:5]
  %y = load i8* %input.addr, align 1, !dbg !109   ; [#uses=2 type=i8] [debug line = 96:5]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !110), !dbg !111 ; [debug line = 97:5] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !112), !dbg !113 ; [debug line = 98:5] [debug variable = tempx]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !114), !dbg !116 ; [debug line = 158:62@99:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !117), !dbg !118 ; [debug line = 158:73@99:5] [debug variable = col]
  %tmp.9 = zext i11 %col.assign to i64, !dbg !119 ; [#uses=1 type=i64] [debug line = 161:2@99:5]
  %"buff_A[0].addr.1" = getelementptr [1920 x i8]* %"buff_A[0]", i64 0, i64 %tmp.9, !dbg !119 ; [#uses=1 type=i8*] [debug line = 161:2@99:5]
  store i8 %y, i8* %"buff_A[0].addr.1", align 1, !dbg !119 ; [debug line = 161:2@99:5]
  br label %._crit_edge2_ifconv, !dbg !121        ; [debug line = 100:4]

._crit_edge2_ifconv:                              ; preds = %5, %._crit_edge
  %value.assign.3 = phi i8 [ %y, %5 ], [ 0, %._crit_edge ] ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][1]"}, i64 0, metadata !122), !dbg !124 ; [debug line = 175:2@103:4] [debug variable = buff_C[0][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][0]"}, i64 0, metadata !131), !dbg !124 ; [debug line = 175:2@103:4] [debug variable = buff_C[1][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][1]"}, i64 0, metadata !132), !dbg !124 ; [debug line = 175:2@103:4] [debug variable = buff_C[1][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][1]"}, i64 0, metadata !133), !dbg !124 ; [debug line = 175:2@103:4] [debug variable = buff_C[2][1]]
  call void @llvm.dbg.value(metadata !{i11 %col.assign}, i64 0, metadata !134) nounwind, !dbg !137 ; [debug line = 146:68@108:27] [debug variable = ColIndex]
  %tmp.6 = zext i11 %col.assign to i64, !dbg !138 ; [#uses=1 type=i64] [debug line = 150:2@108:27]
  %"buff_A[2].addr.1" = getelementptr [1920 x i8]* %"buff_A[2]", i64 0, i64 %tmp.6, !dbg !138 ; [#uses=1 type=i8*] [debug line = 150:2@108:27]
  %return_value.1 = load i8* %"buff_A[2].addr.1", align 1, !dbg !138 ; [#uses=1 type=i8] [debug line = 150:2@108:27]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !139) nounwind, !dbg !138 ; [debug line = 150:2@108:27] [debug variable = return_value]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !140), !dbg !141 ; [debug line = 183:47@108:27] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %return_value.1}, i64 0, metadata !142), !dbg !143 ; [debug line = 185:2@108:27] [debug variable = buff_C[0][2]]
  call void @llvm.dbg.value(metadata !{i8 %value.assign}, i64 0, metadata !145), !dbg !147 ; [debug line = 183:47@109:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %value.assign}, i64 0, metadata !148), !dbg !149 ; [debug line = 185:2@109:5] [debug variable = buff_C[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.3}, i64 0, metadata !150), !dbg !152 ; [debug line = 183:47@110:5] [debug variable = value]
  call void @llvm.dbg.value(metadata !{i8 %value.assign.3}, i64 0, metadata !153), !dbg !154 ; [debug line = 185:2@110:5] [debug variable = buff_C[2][2]]
  %"buff_C[1][2]" = select i1 %tmp.2, i8 %value.assign, i8 %"buff_C[1][1]", !dbg !155 ; [#uses=2 type=i8] [debug line = 191:39@50:27@117:11]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][2]"}, i64 0, metadata !148), !dbg !149 ; [debug line = 185:2@109:5] [debug variable = buff_C[1][2]]
  %"buff_C[0][2].1" = select i1 %tmp.2, i8 %return_value.1, i8 %"buff_C[0][1]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][2].1"}, i64 0, metadata !142), !dbg !143 ; [debug line = 185:2@108:27] [debug variable = buff_C[0][2]]
  %"buff_C[2][2].1" = select i1 %tmp.2, i8 %value.assign.3, i8 %"buff_C[2][1]" ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][2].1"}, i64 0, metadata !153), !dbg !154 ; [debug line = 185:2@110:5] [debug variable = buff_C[2][2]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[0][1]"}, i64 0, metadata !163), !dbg !155 ; [debug line = 191:39@50:27@117:11] [debug variable = M[0][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][0]"}, i64 0, metadata !164), !dbg !155 ; [debug line = 191:39@50:27@117:11] [debug variable = M[1][0]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][1]"}, i64 0, metadata !165), !dbg !155 ; [debug line = 191:39@50:27@117:11] [debug variable = M[1][1]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[1][2]"}, i64 0, metadata !166), !dbg !155 ; [debug line = 191:39@50:27@117:11] [debug variable = M[1][2]]
  call void @llvm.dbg.value(metadata !{i8 %"buff_C[2][1]"}, i64 0, metadata !167), !dbg !155 ; [debug line = 191:39@50:27@117:11] [debug variable = M[2][1]]
  %tmp.6.0.1.i.cast = zext i8 %"buff_C[0][1]" to i9, !dbg !156 ; [#uses=1 type=i9] [debug line = 50:27@117:11]
  %tmp.6.1.i.cast = zext i8 %"buff_C[1][0]" to i9, !dbg !156 ; [#uses=1 type=i9] [debug line = 50:27@117:11]
  %sum.i = add i9 %tmp.6.0.1.i.cast, %tmp.6.1.i.cast, !dbg !156 ; [#uses=1 type=i9] [debug line = 50:27@117:11]
  %sum.i.cast = zext i9 %sum.i to i12, !dbg !156  ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %tmp.6.1.1.i.cast2 = zext i8 %"buff_C[1][1]" to i11, !dbg !156 ; [#uses=1 type=i11] [debug line = 50:27@117:11]
  %tmp.6.1.1.i.cast = zext i8 %"buff_C[1][1]" to i10, !dbg !156 ; [#uses=1 type=i10] [debug line = 50:27@117:11]
  %_shl.i = shl nuw i10 %tmp.6.1.1.i.cast, 2, !dbg !156 ; [#uses=1 type=i10] [debug line = 50:27@117:11]
  %_shl.i.cast = zext i10 %_shl.i to i11, !dbg !156 ; [#uses=1 type=i11] [debug line = 50:27@117:11]
  %tmp.7.1.1.i = add i11 %tmp.6.1.1.i.cast2, %_shl.i.cast, !dbg !156 ; [#uses=1 type=i11] [debug line = 50:27@117:11]
  %tmp.7.1.1.i.cast = zext i11 %tmp.7.1.1.i to i12, !dbg !156 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %x_weight.2.1.1.i = sub i12 %tmp.7.1.1.i.cast, %sum.i.cast, !dbg !156 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %tmp.6.1.2.i.cast = zext i8 %"buff_C[1][2]" to i12, !dbg !156 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %x_weight.2.1.2.i = sub i12 %x_weight.2.1.1.i, %tmp.6.1.2.i.cast, !dbg !156 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %tmp.6.2.1.i.cast = zext i8 %"buff_C[2][1]" to i12, !dbg !156 ; [#uses=1 type=i12] [debug line = 50:27@117:11]
  %x_weight.2.2.1.i = sub i12 %x_weight.2.1.2.i, %tmp.6.2.1.i.cast, !dbg !156 ; [#uses=2 type=i12] [debug line = 50:27@117:11]
  %tmp.i = icmp sgt i12 %x_weight.2.2.1.i, 0, !dbg !168 ; [#uses=1 type=i1] [debug line = 54:2@117:11]
  %tmp.1.i = trunc i12 %x_weight.2.2.1.i to i8, !dbg !168 ; [#uses=2 type=i8] [debug line = 54:2@117:11]
  %tmp.2.i = sub i8 0, %tmp.1.i, !dbg !168        ; [#uses=1 type=i8] [debug line = 54:2@117:11]
  %edge_val = select i1 %tmp.i, i8 %tmp.1.i, i8 %tmp.2.i, !dbg !168 ; [#uses=1 type=i8] [debug line = 54:2@117:11]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !169), !dbg !170 ; [debug line = 56:2@117:11] [debug variable = edge_val]
  call void @llvm.dbg.value(metadata !{i8 %edge_val}, i64 0, metadata !171), !dbg !162 ; [debug line = 117:11] [debug variable = edge]
  %tmp.5 = icmp ne i11 %col.assign, 0, !dbg !87   ; [#uses=1 type=i1] [debug line = 121:4]
  %or.cond = and i1 %tmp.1, %tmp.5, !dbg !87      ; [#uses=1 type=i1] [debug line = 121:4]
  br i1 %or.cond, label %6, label %._crit_edge4, !dbg !87 ; [debug line = 121:4]

; <label>:6                                       ; preds = %._crit_edge2_ifconv
  %tmp1 = add i12 %col.assign.cast, -1921, !dbg !172 ; [#uses=1 type=i12] [debug line = 122:5]
  %tmp1.cast = sext i12 %tmp1 to i23, !dbg !172   ; [#uses=1 type=i23] [debug line = 122:5]
  %index.1 = add i23 %tmp., %tmp1.cast, !dbg !172 ; [#uses=1 type=i23] [debug line = 122:5]
  %index.1.cast = sext i23 %index.1 to i32, !dbg !172 ; [#uses=1 type=i32] [debug line = 122:5]
  call void @llvm.dbg.value(metadata !{i23 %index.1}, i64 0, metadata !108), !dbg !172 ; [debug line = 122:5] [debug variable = index]
  %tmp.10 = zext i32 %index.1.cast to i64, !dbg !174 ; [#uses=1 type=i64] [debug line = 123:5]
  %output.addr = getelementptr inbounds i8* %output, i64 %tmp.10, !dbg !174 ; [#uses=1 type=i8*] [debug line = 123:5]
  store i8 %edge_val, i8* %output.addr, align 1, !dbg !174 ; [debug line = 123:5]
  br label %._crit_edge4, !dbg !175               ; [debug line = 124:4]

._crit_edge4:                                     ; preds = %6, %._crit_edge2_ifconv
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str2, i32 %tmp.4) nounwind, !dbg !176 ; [#uses=0 type=i32] [debug line = 125:3]
  %col = add i11 %col.assign, 1, !dbg !177        ; [#uses=1 type=i11] [debug line = 76:33]
  call void @llvm.dbg.value(metadata !{i11 %col}, i64 0, metadata !178), !dbg !177 ; [debug line = 76:33] [debug variable = col]
  br label %.preheader, !dbg !177                 ; [debug line = 76:33]

; <label>:8                                       ; preds = %.preheader
  %"buff_C[2][1].lcssa" = phi i8 [ %"buff_C[2][1]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[0][1].lcssa" = phi i8 [ %"buff_C[0][1]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[1][0].lcssa" = phi i8 [ %"buff_C[1][0]", %.preheader ] ; [#uses=1 type=i8]
  %"buff_C[1][1].lcssa" = phi i8 [ %"buff_C[1][1]", %.preheader ] ; [#uses=1 type=i8]
  %row.1 = add i11 %row, 1, !dbg !179             ; [#uses=1 type=i11] [debug line = 75:32]
  call void @llvm.dbg.value(metadata !{i11 %row.1}, i64 0, metadata !180), !dbg !179 ; [debug line = 75:32] [debug variable = row]
  br label %1, !dbg !179                          ; [debug line = 75:32]

; <label>:9                                       ; preds = %1
  ret i32 0, !dbg !181                            ; [debug line = 127:2]
}

; [#uses=36]
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

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls/sharpen_filter/solution/.autopilot/db/sharpen.pragma.2.c", metadata !"c:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !2, metadata !42} ; [ DW_TAG_compile_unit ]
!1 = metadata !{i32 0}
!2 = metadata !{metadata !3, metadata !13, metadata !20, metadata !23, metadata !30, metadata !33, metadata !36, metadata !39}
!3 = metadata !{i32 786478, i32 0, metadata !4, metadata !"sharpen_filter", metadata !"sharpen_filter", metadata !"", metadata !4, i32 63, metadata !5, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sharpen_filter, null, null, metadata !11, i32 63} ; [ DW_TAG_subprogram ]
!4 = metadata !{i32 786473, metadata !"C:/xup/SDSoC/labs/lab5/src/sharpen.c", metadata !"c:/xup/SDSoC/labs/lab5/SDDebug/_sds/vhls", null} ; [ DW_TAG_file_type ]
!5 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !6, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!6 = metadata !{metadata !7, metadata !8, metadata !8}
!7 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!8 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !4, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !4, metadata !"window_insert", metadata !"window_insert", metadata !"", metadata !4, i32 183, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 183} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16, metadata !9, metadata !7, metadata !7}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 24, i64 8, i32 0, i32 0, metadata !9, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!20 = metadata !{i32 786478, i32 0, metadata !4, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", metadata !4, i32 168, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 168} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !16}
!23 = metadata !{i32 786478, i32 0, metadata !4, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", metadata !4, i32 158, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 158} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{null, metadata !26, metadata !9, metadata !7}
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !9, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 1919}     ; [ DW_TAG_subrange_type ]
!30 = metadata !{i32 786478, i32 0, metadata !4, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", metadata !4, i32 146, metadata !31, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 146} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{metadata !9, metadata !26, metadata !7, metadata !7}
!33 = metadata !{i32 786478, i32 0, metadata !4, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", metadata !4, i32 134, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 134} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !26, metadata !7}
!36 = metadata !{i32 786478, i32 0, metadata !4, metadata !"sharpen_operator", metadata !"sharpen_operator", metadata !"", metadata !4, i32 34, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 34} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !10, metadata !16}
!39 = metadata !{i32 786478, i32 0, metadata !4, metadata !"window_getval", metadata !"window_getval", metadata !"", metadata !4, i32 191, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 191} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{metadata !9, metadata !16, metadata !7, metadata !7}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786484, i32 0, metadata !36, metadata !"x_op", metadata !"x_op", metadata !"", metadata !4, i32 43, metadata !45, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 144, i64 16, i32 0, i32 0, metadata !46, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!47 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!48 = metadata !{metadata !19, metadata !19}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 7, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"input", metadata !53, metadata !"unsigned char", i32 0, i32 7}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 2073599, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"output", metadata !53, metadata !"unsigned char", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"return", metadata !63, metadata !"int", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 1, i32 0}
!65 = metadata !{i32 786689, metadata !3, metadata !"input", metadata !4, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 63, i32 29, metadata !3, null}
!67 = metadata !{i32 786689, metadata !3, metadata !"output", metadata !4, i32 33554495, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 63, i32 45, metadata !3, null}
!69 = metadata !{i32 64, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !3, i32 63, i32 53, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 65, i32 1, metadata !70, null}
!72 = metadata !{i32 66, i32 1, metadata !70, null}
!73 = metadata !{i32 786688, metadata !70, metadata !"buff_A[0]", null, i32 72, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !9, metadata !75, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{metadata !19, metadata !29}
!76 = metadata !{i32 72, i32 15, metadata !70, null}
!77 = metadata !{i32 786688, metadata !70, metadata !"buff_A[1]", null, i32 72, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786688, metadata !70, metadata !"buff_A[2]", null, i32 72, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 75, i32 7, metadata !80, null}
!80 = metadata !{i32 786443, metadata !70, i32 75, i32 2, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 93, i32 4, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 76, i32 40, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !84, i32 76, i32 3, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !80, i32 75, i32 39, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 95, i32 5, metadata !86, null}
!86 = metadata !{i32 786443, metadata !82, i32 93, i32 37, metadata !4, i32 6} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 121, i32 4, metadata !82, null}
!88 = metadata !{i32 76, i32 8, metadata !83, null}
!89 = metadata !{i32 76, i32 41, metadata !82, null}
!90 = metadata !{i32 78, i32 1, metadata !82, null}
!91 = metadata !{i32 86, i32 4, metadata !82, null}
!92 = metadata !{i32 786689, metadata !33, metadata !"col", metadata !4, i32 33554566, metadata !7, i32 0, metadata !93} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 87, i32 5, metadata !94, null}
!94 = metadata !{i32 786443, metadata !82, i32 86, i32 20, metadata !4, i32 5} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 134, i32 53, metadata !33, metadata !93}
!96 = metadata !{i32 139, i32 2, metadata !97, metadata !93}
!97 = metadata !{i32 786443, metadata !98, i32 137, i32 30, metadata !4, i32 19} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !99, i32 137, i32 2, metadata !4, i32 18} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !33, i32 134, i32 58, metadata !4, i32 17} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 786689, metadata !30, metadata !"ColIndex", metadata !4, i32 50331794, metadata !7, i32 0, metadata !101} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 88, i32 12, metadata !94, null}
!102 = metadata !{i32 146, i32 68, metadata !30, metadata !101}
!103 = metadata !{i32 786688, metadata !104, metadata !"return_value", metadata !4, i32 149, metadata !9, i32 0, metadata !101} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786443, metadata !30, i32 146, i32 78, metadata !4, i32 16} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 150, i32 2, metadata !104, metadata !101}
!106 = metadata !{i32 786688, metadata !82, metadata !"temp", metadata !4, i32 82, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 89, i32 4, metadata !94, null}
!108 = metadata !{i32 786688, metadata !70, metadata !"index", metadata !4, i32 70, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 96, i32 5, metadata !86, null}
!110 = metadata !{i32 786688, metadata !86, metadata !"y", metadata !4, i32 94, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 97, i32 5, metadata !86, null}
!112 = metadata !{i32 786688, metadata !82, metadata !"tempx", metadata !4, i32 83, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 98, i32 5, metadata !86, null}
!114 = metadata !{i32 786689, metadata !23, metadata !"value", metadata !4, i32 33554590, metadata !9, i32 0, metadata !115} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 99, i32 5, metadata !86, null}
!116 = metadata !{i32 158, i32 62, metadata !23, metadata !115}
!117 = metadata !{i32 786689, metadata !23, metadata !"col", metadata !4, i32 50331806, metadata !7, i32 0, metadata !115} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 158, i32 73, metadata !23, metadata !115}
!119 = metadata !{i32 161, i32 2, metadata !120, metadata !115}
!120 = metadata !{i32 786443, metadata !23, i32 158, i32 78, metadata !4, i32 15} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 100, i32 4, metadata !86, null}
!122 = metadata !{i32 786688, metadata !70, metadata !"buff_C[0][1]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !9, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ]
!124 = metadata !{i32 175, i32 2, metadata !125, metadata !130}
!125 = metadata !{i32 786443, metadata !126, i32 173, i32 30, metadata !4, i32 14} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786443, metadata !127, i32 173, i32 2, metadata !4, i32 13} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786443, metadata !128, i32 171, i32 26, metadata !4, i32 12} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !129, i32 171, i32 2, metadata !4, i32 11} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 786443, metadata !20, i32 168, i32 44, metadata !4, i32 10} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 103, i32 4, metadata !82, null}
!131 = metadata !{i32 786688, metadata !70, metadata !"buff_C[1][0]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 786688, metadata !70, metadata !"buff_C[1][1]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 786688, metadata !70, metadata !"buff_C[2][1]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 786689, metadata !30, metadata !"ColIndex", metadata !4, i32 50331794, metadata !7, i32 0, metadata !135} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 108, i32 27, metadata !136, null}
!136 = metadata !{i32 786443, metadata !82, i32 107, i32 20, metadata !4, i32 7} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 146, i32 68, metadata !30, metadata !135}
!138 = metadata !{i32 150, i32 2, metadata !104, metadata !135}
!139 = metadata !{i32 786688, metadata !104, metadata !"return_value", metadata !4, i32 149, metadata !9, i32 0, metadata !135} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 786689, metadata !13, metadata !"value", metadata !4, i32 33554615, metadata !9, i32 0, metadata !135} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 183, i32 47, metadata !13, metadata !135}
!142 = metadata !{i32 786688, metadata !70, metadata !"buff_C[0][2]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 185, i32 2, metadata !144, metadata !135}
!144 = metadata !{i32 786443, metadata !13, i32 183, i32 72, metadata !4, i32 9} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786689, metadata !13, metadata !"value", metadata !4, i32 33554615, metadata !9, i32 0, metadata !146} ; [ DW_TAG_arg_variable ]
!146 = metadata !{i32 109, i32 5, metadata !136, null}
!147 = metadata !{i32 183, i32 47, metadata !13, metadata !146}
!148 = metadata !{i32 786688, metadata !70, metadata !"buff_C[1][2]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!149 = metadata !{i32 185, i32 2, metadata !144, metadata !146}
!150 = metadata !{i32 786689, metadata !13, metadata !"value", metadata !4, i32 33554615, metadata !9, i32 0, metadata !151} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 110, i32 5, metadata !136, null}
!152 = metadata !{i32 183, i32 47, metadata !13, metadata !151}
!153 = metadata !{i32 786688, metadata !70, metadata !"buff_C[2][2]", null, i32 73, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 185, i32 2, metadata !144, metadata !151}
!155 = metadata !{i32 191, i32 39, metadata !39, metadata !156}
!156 = metadata !{i32 50, i32 27, metadata !157, metadata !162}
!157 = metadata !{i32 786443, metadata !158, i32 48, i32 27, metadata !4, i32 24} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !159, i32 48, i32 3, metadata !4, i32 23} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786443, metadata !160, i32 47, i32 26, metadata !4, i32 22} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 786443, metadata !161, i32 47, i32 2, metadata !4, i32 21} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786443, metadata !36, i32 34, i32 56, metadata !4, i32 20} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 117, i32 11, metadata !82, null}
!163 = metadata !{i32 790532, metadata !39, metadata !"M[0][1]", null, i32 191, metadata !9, i32 0, metadata !156} ; [ DW_TAG_arg_variable_ro ]
!164 = metadata !{i32 790532, metadata !39, metadata !"M[1][0]", null, i32 191, metadata !9, i32 0, metadata !156} ; [ DW_TAG_arg_variable_ro ]
!165 = metadata !{i32 790532, metadata !39, metadata !"M[1][1]", null, i32 191, metadata !9, i32 0, metadata !156} ; [ DW_TAG_arg_variable_ro ]
!166 = metadata !{i32 790532, metadata !39, metadata !"M[1][2]", null, i32 191, metadata !9, i32 0, metadata !156} ; [ DW_TAG_arg_variable_ro ]
!167 = metadata !{i32 790532, metadata !39, metadata !"M[2][1]", null, i32 191, metadata !9, i32 0, metadata !156} ; [ DW_TAG_arg_variable_ro ]
!168 = metadata !{i32 54, i32 2, metadata !161, metadata !162}
!169 = metadata !{i32 786688, metadata !161, metadata !"edge_val", metadata !4, i32 38, metadata !10, i32 0, metadata !162} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 56, i32 2, metadata !161, metadata !162}
!171 = metadata !{i32 786688, metadata !82, metadata !"edge", metadata !4, i32 113, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 122, i32 5, metadata !173, null}
!173 = metadata !{i32 786443, metadata !82, i32 121, i32 28, metadata !4, i32 8} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 123, i32 5, metadata !173, null}
!175 = metadata !{i32 124, i32 4, metadata !173, null}
!176 = metadata !{i32 125, i32 3, metadata !82, null}
!177 = metadata !{i32 76, i32 33, metadata !83, null}
!178 = metadata !{i32 786688, metadata !70, metadata !"col", metadata !4, i32 69, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!179 = metadata !{i32 75, i32 32, metadata !80, null}
!180 = metadata !{i32 786688, metadata !70, metadata !"row", metadata !4, i32 68, metadata !7, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 127, i32 2, metadata !70, null}
