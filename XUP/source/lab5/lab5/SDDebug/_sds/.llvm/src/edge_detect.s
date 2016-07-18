; ModuleID = 'C:/xup/SDSoC/labs/lab5/src/edge_detect.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx--eabi"

@sobel_operator.x_op = internal constant [3 x [3 x i16]] [[3 x i16] [i16 -1, i16 0, i16 1], [3 x i16] [i16 -2, i16 0, i16 2], [3 x i16] [i16 -1, i16 0, i16 1]], align 2
@sobel_operator.y_op = internal constant [3 x [3 x i16]] [[3 x i16] [i16 1, i16 2, i16 1], [3 x i16] zeroinitializer, [3 x i16] [i16 -1, i16 -2, i16 -1]], align 2

; Function Attrs: nounwind
define i32 @sobel_filter(i8* %input, i8* %output) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %index = alloca i32, align 4
  %buff_A = alloca [3 x [1920 x i8]], align 1
  %buff_C = alloca [3 x [3 x i8]], align 1
  %input_data = alloca i16, align 2
  %temp = alloca i8, align 1
  %tempx = alloca i8, align 1
  %y = alloca i8, align 1
  %edge = alloca i8, align 1
  store i8* %input, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !76), !dbg !77
  store i8* %output, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !78), !dbg !79
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !80), !dbg !81
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !82), !dbg !83
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !84), !dbg !85
  store i32 0, i32* %index, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata !{[3 x [1920 x i8]]* %buff_A}, metadata !87), !dbg !91
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %buff_C}, metadata !92), !dbg !95
  store i32 0, i32* %row, align 4, !dbg !96
  br label %3, !dbg !96

; <label>:3                                       ; preds = %86, %0
  %4 = load i32* %row, align 4, !dbg !98
  %5 = icmp slt i32 %4, 1081, !dbg !98
  br i1 %5, label %6, label %89, !dbg !98

; <label>:6                                       ; preds = %3
  store i32 0, i32* %col, align 4, !dbg !101
  br label %7, !dbg !101

; <label>:7                                       ; preds = %82, %6
  %8 = load i32* %col, align 4, !dbg !104
  %9 = icmp slt i32 %8, 1921, !dbg !104
  br i1 %9, label %10, label %85, !dbg !104

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i16* %input_data}, metadata !107), !dbg !110
  store i16 0, i16* %input_data, align 2, !dbg !111
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !112), !dbg !113
  store i8 0, i8* %temp, align 1, !dbg !114
  call void @llvm.dbg.declare(metadata !{i8* %tempx}, metadata !115), !dbg !116
  store i8 0, i8* %tempx, align 1, !dbg !117
  %11 = load i32* %col, align 4, !dbg !118
  %12 = icmp slt i32 %11, 1920, !dbg !118
  br i1 %12, label %13, label %19, !dbg !118

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !120
  %15 = load i32* %col, align 4, !dbg !120
  call void @linebuffer_shift_up([1920 x i8]* %14, i32 %15), !dbg !120
  %16 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !122
  %17 = load i32* %col, align 4, !dbg !122
  %18 = call zeroext i8 @linebuffer_getval([1920 x i8]* %16, i32 0, i32 %17), !dbg !122
  store i8 %18, i8* %temp, align 1, !dbg !122
  br label %19, !dbg !123

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %col, align 4, !dbg !124
  %21 = icmp slt i32 %20, 1920, !dbg !124
  %22 = zext i1 %21 to i32, !dbg !124
  %23 = load i32* %row, align 4, !dbg !124
  %24 = icmp slt i32 %23, 1080, !dbg !124
  %25 = zext i1 %24 to i32, !dbg !124
  %26 = and i32 %22, %25, !dbg !124
  %27 = icmp ne i32 %26, 0, !dbg !124
  br i1 %27, label %28, label %46, !dbg !124

; <label>:28                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !126), !dbg !128
  %29 = load i32* %row, align 4, !dbg !129
  %30 = mul nsw i32 %29, 1920, !dbg !129
  %31 = load i32* %col, align 4, !dbg !129
  %32 = add nsw i32 %30, %31, !dbg !129
  store i32 %32, i32* %index, align 4, !dbg !129
  %33 = load i32* %index, align 4, !dbg !130
  %34 = load i8** %1, align 4, !dbg !130
  %35 = getelementptr inbounds i8* %34, i32 %33, !dbg !130
  %36 = load i8* %35, align 1, !dbg !130
  %37 = zext i8 %36 to i16, !dbg !130
  store i16 %37, i16* %input_data, align 2, !dbg !130
  %38 = load i16* %input_data, align 2, !dbg !131
  %39 = zext i16 %38 to i32, !dbg !131
  %40 = ashr i32 %39, 0, !dbg !131
  %41 = trunc i32 %40 to i8, !dbg !131
  store i8 %41, i8* %y, align 1, !dbg !131
  %42 = load i8* %y, align 1, !dbg !132
  store i8 %42, i8* %tempx, align 1, !dbg !132
  %43 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !133
  %44 = load i8* %tempx, align 1, !dbg !133
  %45 = load i32* %col, align 4, !dbg !133
  call void @linebuffer_insert_bottom([1920 x i8]* %43, i8 zeroext %44, i32 %45), !dbg !133
  br label %46, !dbg !134

; <label>:46                                      ; preds = %28, %19
  %47 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !135
  call void @window_shift_right([3 x i8]* %47), !dbg !135
  %48 = load i32* %col, align 4, !dbg !136
  %49 = icmp slt i32 %48, 1920, !dbg !136
  br i1 %49, label %50, label %59, !dbg !136

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !138
  %52 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !140
  %53 = load i32* %col, align 4, !dbg !140
  %54 = call zeroext i8 @linebuffer_getval([1920 x i8]* %52, i32 2, i32 %53), !dbg !140
  call void @window_insert([3 x i8]* %51, i8 zeroext %54, i32 0, i32 2), !dbg !138
  %55 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !141
  %56 = load i8* %temp, align 1, !dbg !141
  call void @window_insert([3 x i8]* %55, i8 zeroext %56, i32 1, i32 2), !dbg !141
  %57 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !142
  %58 = load i8* %tempx, align 1, !dbg !142
  call void @window_insert([3 x i8]* %57, i8 zeroext %58, i32 2, i32 2), !dbg !142
  br label %59, !dbg !143

; <label>:59                                      ; preds = %50, %46
  call void @llvm.dbg.declare(metadata !{i8* %edge}, metadata !144), !dbg !145
  %60 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !146
  %61 = call zeroext i8 @sobel_operator([3 x i8]* %60), !dbg !146
  store i8 %61, i8* %edge, align 1, !dbg !146
  %62 = load i32* %row, align 4, !dbg !147
  %63 = icmp sgt i32 %62, 0, !dbg !147
  br i1 %63, label %64, label %81, !dbg !147

; <label>:64                                      ; preds = %59
  %65 = load i32* %col, align 4, !dbg !149
  %66 = icmp sgt i32 %65, 0, !dbg !149
  br i1 %66, label %67, label %81, !dbg !149

; <label>:67                                      ; preds = %64
  %68 = load i32* %row, align 4, !dbg !151
  %69 = sub nsw i32 %68, 1, !dbg !151
  %70 = mul nsw i32 %69, 1920, !dbg !151
  %71 = load i32* %col, align 4, !dbg !151
  %72 = sub nsw i32 %71, 1, !dbg !151
  %73 = add nsw i32 %70, %72, !dbg !151
  store i32 %73, i32* %index, align 4, !dbg !151
  %74 = load i8* %edge, align 1, !dbg !153
  %75 = zext i8 %74 to i32, !dbg !153
  %76 = shl i32 %75, 0, !dbg !153
  %77 = trunc i32 %76 to i8, !dbg !153
  %78 = load i32* %index, align 4, !dbg !153
  %79 = load i8** %2, align 4, !dbg !153
  %80 = getelementptr inbounds i8* %79, i32 %78, !dbg !153
  store i8 %77, i8* %80, align 1, !dbg !153
  br label %81, !dbg !154

; <label>:81                                      ; preds = %67, %64, %59
  br label %82, !dbg !155

; <label>:82                                      ; preds = %81
  %83 = load i32* %col, align 4, !dbg !156
  %84 = add nsw i32 %83, 1, !dbg !156
  store i32 %84, i32* %col, align 4, !dbg !156
  br label %7, !dbg !156

; <label>:85                                      ; preds = %7
  br label %86, !dbg !157

; <label>:86                                      ; preds = %85
  %87 = load i32* %row, align 4, !dbg !158
  %88 = add nsw i32 %87, 1, !dbg !158
  store i32 %88, i32* %row, align 4, !dbg !158
  br label %3, !dbg !158

; <label>:89                                      ; preds = %3
  ret i32 0, !dbg !159
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @linebuffer_shift_up([1920 x i8]* %M, i32 %col) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !160), !dbg !161
  store i32 %col, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !162), !dbg !163
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !164), !dbg !165
  store i32 2, i32* %i, align 4, !dbg !166
  br label %3, !dbg !166

; <label>:3                                       ; preds = %19, %0
  %4 = load i32* %i, align 4, !dbg !168
  %5 = icmp sgt i32 %4, 0, !dbg !168
  br i1 %5, label %6, label %22, !dbg !168

; <label>:6                                       ; preds = %3
  %7 = load i32* %2, align 4, !dbg !171
  %8 = load i32* %i, align 4, !dbg !171
  %9 = sub nsw i32 %8, 1, !dbg !171
  %10 = load [1920 x i8]** %1, align 4, !dbg !171
  %11 = getelementptr inbounds [1920 x i8]* %10, i32 %9, !dbg !171
  %12 = getelementptr inbounds [1920 x i8]* %11, i32 0, i32 %7, !dbg !171
  %13 = load i8* %12, align 1, !dbg !171
  %14 = load i32* %2, align 4, !dbg !171
  %15 = load i32* %i, align 4, !dbg !171
  %16 = load [1920 x i8]** %1, align 4, !dbg !171
  %17 = getelementptr inbounds [1920 x i8]* %16, i32 %15, !dbg !171
  %18 = getelementptr inbounds [1920 x i8]* %17, i32 0, i32 %14, !dbg !171
  store i8 %13, i8* %18, align 1, !dbg !171
  br label %19, !dbg !173

; <label>:19                                      ; preds = %6
  %20 = load i32* %i, align 4, !dbg !174
  %21 = add nsw i32 %20, -1, !dbg !174
  store i32 %21, i32* %i, align 4, !dbg !174
  br label %3, !dbg !174

; <label>:22                                      ; preds = %3
  ret void, !dbg !175
}

; Function Attrs: nounwind
define internal zeroext i8 @linebuffer_getval([1920 x i8]* %M, i32 %RowIndex, i32 %ColIndex) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !176), !dbg !177
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !178), !dbg !179
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !180), !dbg !181
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !182), !dbg !183
  %4 = load i32* %3, align 4, !dbg !184
  %5 = load i32* %2, align 4, !dbg !184
  %6 = load [1920 x i8]** %1, align 4, !dbg !184
  %7 = getelementptr inbounds [1920 x i8]* %6, i32 %5, !dbg !184
  %8 = getelementptr inbounds [1920 x i8]* %7, i32 0, i32 %4, !dbg !184
  %9 = load i8* %8, align 1, !dbg !184
  store i8 %9, i8* %return_value, align 1, !dbg !184
  %10 = load i8* %return_value, align 1, !dbg !185
  ret i8 %10, !dbg !185
}

; Function Attrs: nounwind
define internal void @linebuffer_insert_bottom([1920 x i8]* %M, i8 zeroext %value, i32 %col) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !186), !dbg !187
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !188), !dbg !189
  store i32 %col, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !190), !dbg !191
  %4 = load i8* %2, align 1, !dbg !192
  %5 = load i32* %3, align 4, !dbg !192
  %6 = load [1920 x i8]** %1, align 4, !dbg !192
  %7 = getelementptr inbounds [1920 x i8]* %6, i32 0, !dbg !192
  %8 = getelementptr inbounds [1920 x i8]* %7, i32 0, i32 %5, !dbg !192
  store i8 %4, i8* %8, align 1, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: nounwind
define internal void @window_shift_right([3 x i8]* %M) #0 {
  %1 = alloca [3 x i8]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !194), !dbg !195
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !196), !dbg !197
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !198), !dbg !199
  store i32 0, i32* %i, align 4, !dbg !200
  br label %2, !dbg !200

; <label>:2                                       ; preds = %26, %0
  %3 = load i32* %i, align 4, !dbg !202
  %4 = icmp slt i32 %3, 3, !dbg !202
  br i1 %4, label %5, label %29, !dbg !202

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !205
  br label %6, !dbg !205

; <label>:6                                       ; preds = %22, %5
  %7 = load i32* %j, align 4, !dbg !208
  %8 = icmp slt i32 %7, 2, !dbg !208
  br i1 %8, label %9, label %25, !dbg !208

; <label>:9                                       ; preds = %6
  %10 = load i32* %j, align 4, !dbg !211
  %11 = add nsw i32 %10, 1, !dbg !211
  %12 = load i32* %i, align 4, !dbg !211
  %13 = load [3 x i8]** %1, align 4, !dbg !211
  %14 = getelementptr inbounds [3 x i8]* %13, i32 %12, !dbg !211
  %15 = getelementptr inbounds [3 x i8]* %14, i32 0, i32 %11, !dbg !211
  %16 = load i8* %15, align 1, !dbg !211
  %17 = load i32* %j, align 4, !dbg !211
  %18 = load i32* %i, align 4, !dbg !211
  %19 = load [3 x i8]** %1, align 4, !dbg !211
  %20 = getelementptr inbounds [3 x i8]* %19, i32 %18, !dbg !211
  %21 = getelementptr inbounds [3 x i8]* %20, i32 0, i32 %17, !dbg !211
  store i8 %16, i8* %21, align 1, !dbg !211
  br label %22, !dbg !213

; <label>:22                                      ; preds = %9
  %23 = load i32* %j, align 4, !dbg !214
  %24 = add nsw i32 %23, 1, !dbg !214
  store i32 %24, i32* %j, align 4, !dbg !214
  br label %6, !dbg !214

; <label>:25                                      ; preds = %6
  br label %26, !dbg !215

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4, !dbg !216
  %28 = add nsw i32 %27, 1, !dbg !216
  store i32 %28, i32* %i, align 4, !dbg !216
  br label %2, !dbg !216

; <label>:29                                      ; preds = %2
  ret void, !dbg !217
}

; Function Attrs: nounwind
define internal void @window_insert([3 x i8]* %M, i8 zeroext %value, i32 %row, i32 %col) #0 {
  %1 = alloca [3 x i8]*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !218), !dbg !219
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !220), !dbg !221
  store i32 %row, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !222), !dbg !223
  store i32 %col, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !224), !dbg !225
  %5 = load i8* %2, align 1, !dbg !226
  %6 = load i32* %4, align 4, !dbg !226
  %7 = load i32* %3, align 4, !dbg !226
  %8 = load [3 x i8]** %1, align 4, !dbg !226
  %9 = getelementptr inbounds [3 x i8]* %8, i32 %7, !dbg !226
  %10 = getelementptr inbounds [3 x i8]* %9, i32 0, i32 %6, !dbg !226
  store i8 %5, i8* %10, align 1, !dbg !226
  ret void, !dbg !227
}

; Function Attrs: nounwind
define internal zeroext i8 @sobel_operator([3 x i8]* %window) #0 {
  %1 = alloca [3 x i8]*, align 4
  %x_weight = alloca i16, align 2
  %y_weight = alloca i16, align 2
  %edge_weight = alloca i16, align 2
  %edge_val = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i8]* %window, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !228), !dbg !229
  call void @llvm.dbg.declare(metadata !{i16* %x_weight}, metadata !230), !dbg !231
  store i16 0, i16* %x_weight, align 2, !dbg !232
  call void @llvm.dbg.declare(metadata !{i16* %y_weight}, metadata !233), !dbg !234
  store i16 0, i16* %y_weight, align 2, !dbg !235
  call void @llvm.dbg.declare(metadata !{i16* %edge_weight}, metadata !236), !dbg !237
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !238), !dbg !239
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !240), !dbg !241
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !242), !dbg !243
  store i32 0, i32* %i, align 4, !dbg !244
  br label %2, !dbg !244

; <label>:2                                       ; preds = %46, %0
  %3 = load i32* %i, align 4, !dbg !246
  %4 = icmp slt i32 %3, 3, !dbg !246
  br i1 %4, label %5, label %49, !dbg !246

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !249
  br label %6, !dbg !249

; <label>:6                                       ; preds = %42, %5
  %7 = load i32* %j, align 4, !dbg !252
  %8 = icmp slt i32 %7, 3, !dbg !252
  br i1 %8, label %9, label %45, !dbg !252

; <label>:9                                       ; preds = %6
  %10 = load i16* %x_weight, align 2, !dbg !255
  %11 = sext i16 %10 to i32, !dbg !255
  %12 = load [3 x i8]** %1, align 4, !dbg !257
  %13 = load i32* %i, align 4, !dbg !257
  %14 = load i32* %j, align 4, !dbg !257
  %15 = call zeroext i8 @window_getval([3 x i8]* %12, i32 %13, i32 %14), !dbg !257
  %16 = zext i8 %15 to i32, !dbg !257
  %17 = load i32* %j, align 4, !dbg !257
  %18 = load i32* %i, align 4, !dbg !257
  %19 = getelementptr inbounds [3 x [3 x i16]]* @sobel_operator.x_op, i32 0, i32 %18, !dbg !257
  %20 = getelementptr inbounds [3 x i16]* %19, i32 0, i32 %17, !dbg !257
  %21 = load i16* %20, align 2, !dbg !257
  %22 = sext i16 %21 to i32, !dbg !257
  %23 = mul nsw i32 %16, %22, !dbg !257
  %24 = add nsw i32 %11, %23, !dbg !257
  %25 = trunc i32 %24 to i16, !dbg !257
  store i16 %25, i16* %x_weight, align 2, !dbg !257
  %26 = load i16* %y_weight, align 2, !dbg !258
  %27 = sext i16 %26 to i32, !dbg !258
  %28 = load [3 x i8]** %1, align 4, !dbg !259
  %29 = load i32* %i, align 4, !dbg !259
  %30 = load i32* %j, align 4, !dbg !259
  %31 = call zeroext i8 @window_getval([3 x i8]* %28, i32 %29, i32 %30), !dbg !259
  %32 = zext i8 %31 to i32, !dbg !259
  %33 = load i32* %j, align 4, !dbg !259
  %34 = load i32* %i, align 4, !dbg !259
  %35 = getelementptr inbounds [3 x [3 x i16]]* @sobel_operator.y_op, i32 0, i32 %34, !dbg !259
  %36 = getelementptr inbounds [3 x i16]* %35, i32 0, i32 %33, !dbg !259
  %37 = load i16* %36, align 2, !dbg !259
  %38 = sext i16 %37 to i32, !dbg !259
  %39 = mul nsw i32 %32, %38, !dbg !259
  %40 = add nsw i32 %27, %39, !dbg !259
  %41 = trunc i32 %40 to i16, !dbg !259
  store i16 %41, i16* %y_weight, align 2, !dbg !259
  br label %42, !dbg !260

; <label>:42                                      ; preds = %9
  %43 = load i32* %j, align 4, !dbg !261
  %44 = add nsw i32 %43, 1, !dbg !261
  store i32 %44, i32* %j, align 4, !dbg !261
  br label %6, !dbg !261

; <label>:45                                      ; preds = %6
  br label %46, !dbg !262

; <label>:46                                      ; preds = %45
  %47 = load i32* %i, align 4, !dbg !263
  %48 = add nsw i32 %47, 1, !dbg !263
  store i32 %48, i32* %i, align 4, !dbg !263
  br label %2, !dbg !263

; <label>:49                                      ; preds = %2
  %50 = load i16* %x_weight, align 2, !dbg !264
  %51 = sext i16 %50 to i32, !dbg !264
  %52 = icmp sgt i32 %51, 0, !dbg !264
  br i1 %52, label %53, label %56, !dbg !264

; <label>:53                                      ; preds = %49
  %54 = load i16* %x_weight, align 2, !dbg !265
  %55 = sext i16 %54 to i32, !dbg !265
  br label %60, !dbg !265

; <label>:56                                      ; preds = %49
  %57 = load i16* %x_weight, align 2, !dbg !267
  %58 = sext i16 %57 to i32, !dbg !267
  %59 = sub nsw i32 0, %58, !dbg !267
  br label %60, !dbg !267

; <label>:60                                      ; preds = %56, %53
  %61 = phi i32 [ %55, %53 ], [ %59, %56 ], !dbg !264
  %62 = load i16* %y_weight, align 2, !dbg !269
  %63 = sext i16 %62 to i32, !dbg !269
  %64 = icmp sgt i32 %63, 0, !dbg !269
  br i1 %64, label %65, label %68, !dbg !269

; <label>:65                                      ; preds = %60
  %66 = load i16* %y_weight, align 2, !dbg !272
  %67 = sext i16 %66 to i32, !dbg !272
  br label %72, !dbg !272

; <label>:68                                      ; preds = %60
  %69 = load i16* %y_weight, align 2, !dbg !274
  %70 = sext i16 %69 to i32, !dbg !274
  %71 = sub nsw i32 0, %70, !dbg !274
  br label %72, !dbg !274

; <label>:72                                      ; preds = %68, %65
  %73 = phi i32 [ %67, %65 ], [ %71, %68 ], !dbg !264
  %74 = add nsw i32 %61, %73, !dbg !276
  %75 = trunc i32 %74 to i16, !dbg !276
  store i16 %75, i16* %edge_weight, align 2, !dbg !276
  %76 = load i16* %edge_weight, align 2, !dbg !279
  %77 = sext i16 %76 to i32, !dbg !279
  %78 = icmp sgt i32 %77, 200, !dbg !279
  br i1 %78, label %79, label %80, !dbg !279

; <label>:79                                      ; preds = %72
  store i16 255, i16* %edge_weight, align 2, !dbg !281
  br label %86, !dbg !281

; <label>:80                                      ; preds = %72
  %81 = load i16* %edge_weight, align 2, !dbg !282
  %82 = sext i16 %81 to i32, !dbg !282
  %83 = icmp slt i32 %82, 100, !dbg !282
  br i1 %83, label %84, label %85, !dbg !282

; <label>:84                                      ; preds = %80
  store i16 0, i16* %edge_weight, align 2, !dbg !284
  br label %85, !dbg !284

; <label>:85                                      ; preds = %84, %80
  br label %86

; <label>:86                                      ; preds = %85, %79
  %87 = load i16* %edge_weight, align 2, !dbg !285
  %88 = trunc i16 %87 to i8, !dbg !285
  store i8 %88, i8* %edge_val, align 1, !dbg !285
  %89 = load i8* %edge_val, align 1, !dbg !286
  ret i8 %89, !dbg !286
}

; Function Attrs: nounwind
define internal zeroext i8 @window_getval([3 x i8]* %M, i32 %RowIndex, i32 %ColIndex) #0 {
  %1 = alloca [3 x i8]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !287), !dbg !288
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !289), !dbg !290
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !291), !dbg !292
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !293), !dbg !294
  %4 = load i32* %3, align 4, !dbg !295
  %5 = load i32* %2, align 4, !dbg !295
  %6 = load [3 x i8]** %1, align 4, !dbg !295
  %7 = getelementptr inbounds [3 x i8]* %6, i32 %5, !dbg !295
  %8 = getelementptr inbounds [3 x i8]* %7, i32 0, i32 %4, !dbg !295
  %9 = load i8* %8, align 1, !dbg !295
  store i8 %9, i8* %return_value, align 1, !dbg !295
  %10 = load i8* %return_value, align 1, !dbg !296
  ret i8 %10, !dbg !296
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!52, !53}
!xidane.function_declaration_type = !{!52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!xidane.function_declaration_filename = !{!52, !69, !55, !70, !57, !70, !59, !70, !61, !70, !63, !70, !65, !70, !67, !70}
!xidane.ExternC = !{!52}
!llvm.module.flags = !{!71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !45, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab5\SDDebug/../src\edge_detect.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5Cedge_detect.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !16, metadata !23, metadata !26, metadata !33, metadata !36, metadata !39, metadata !42}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sobel_filter", metadata !"sobel_filter", metadata !"", i32 76, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sobel_filter, null, null, metadata !2, i32 76} ; [ DW_TAG_subprogram ] [line 76] [def] [sobel_filter]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5/src/edge_detect.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint8_t]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"uint8_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [uint8_t] [line 42, size 0, align 0, offset 0] [from __uint8_t]
!12 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!13 = metadata !{i32 786454, metadata !14, null, metadata !"__uint8_t", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [__uint8_t] [line 29, size 0, align 0, offset 0] [from unsigned char]
!14 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cmachine/_default_types.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!15 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!16 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_insert", metadata !"window_insert", metadata !"", i32 196, metadata !17, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, i8, i32, i32)* @window_insert, null, null, metadata !2, i32 196} ; [ DW_TAG_subprogram ] [line 196] [local] [def] [window_insert]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !19, metadata !11, metadata !9, metadata !9}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from uint8_t]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", i32 181, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*)* @window_shift_right, null, null, metadata !2, i32 181} ; [ DW_TAG_subprogram ] [line 181] [local] [def] [window_shift_right]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !19}
!26 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", i32 171, metadata !27, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([1920 x i8]*, i8, i32)* @linebuffer_insert_bottom, null, null, metadata !2, i32 171} ; [ DW_TAG_subprogram ] [line 171] [local] [def] [linebuffer_insert_bottom]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{null, metadata !29, metadata !11, metadata !9}
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!30 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !11, metadata !31, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 15360, align 8, offset 0] [from uint8_t]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 1920}     ; [ DW_TAG_subrange_type ] [0, 1919]
!33 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", i32 159, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([1920 x i8]*, i32, i32)* @linebuffer_getval, null, null, metadata !2, i32 159} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [linebuffer_getval]
!34 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !11, metadata !29, metadata !9, metadata !9}
!36 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", i32 147, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([1920 x i8]*, i32)* @linebuffer_shift_up, null, null, metadata !2, i32 147} ; [ DW_TAG_subprogram ] [line 147] [local] [def] [linebuffer_shift_up]
!37 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{null, metadata !29, metadata !9}
!39 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sobel_operator", metadata !"sobel_operator", metadata !"", i32 34, metadata !40, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*)* @sobel_operator, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 34] [local] [def] [sobel_operator]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !15, metadata !19}
!42 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_getval", metadata !"window_getval", metadata !"", i32 204, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*, i32, i32)* @window_getval, null, null, metadata !2, i32 204} ; [ DW_TAG_subprogram ] [line 204] [local] [def] [window_getval]
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !11, metadata !19, metadata !9, metadata !9}
!45 = metadata !{metadata !46, metadata !51}
!46 = metadata !{i32 786484, i32 0, metadata !39, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 44, metadata !47, i32 1, i32 1, [3 x [3 x i16]]* @sobel_operator.x_op, null} ; [ DW_TAG_variable ] [x_op] [line 44] [local] [def]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 144, i64 16, i32 0, i32 0, metadata !48, metadata !50, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 144, align 16, offset 0] [from ]
!48 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!49 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!50 = metadata !{metadata !22, metadata !22}
!51 = metadata !{i32 786484, i32 0, metadata !39, metadata !"y_op", metadata !"y_op", metadata !"", metadata !6, i32 47, metadata !47, i32 1, i32 1, [3 x [3 x i16]]* @sobel_operator.y_op, null} ; [ DW_TAG_variable ] [y_op] [line 47] [local] [def]
!52 = metadata !{i32 (i8*, i8*)* @sobel_filter}
!53 = metadata !{metadata !"input,,2073600,,,,,, output,,2073600,,,,,, "}
!54 = metadata !{metadata !"int.uint8_t *.1.uint8_t *.1"}
!55 = metadata !{void ([1920 x i8]*, i32)* @linebuffer_shift_up}
!56 = metadata !{metadata !"void.linebuffer_t.1.int.0"}
!57 = metadata !{i8 ([1920 x i8]*, i32, i32)* @linebuffer_getval}
!58 = metadata !{metadata !"uint8_t.linebuffer_t.1.int.0.int.0"}
!59 = metadata !{void ([1920 x i8]*, i8, i32)* @linebuffer_insert_bottom}
!60 = metadata !{metadata !"void.linebuffer_t.1.uint8_t.0.int.0"}
!61 = metadata !{void ([3 x i8]*)* @window_shift_right}
!62 = metadata !{metadata !"void.window_t.1"}
!63 = metadata !{void ([3 x i8]*, i8, i32, i32)* @window_insert}
!64 = metadata !{metadata !"void.window_t.1.uint8_t.0.int.0.int.0"}
!65 = metadata !{i8 ([3 x i8]*)* @sobel_operator}
!66 = metadata !{metadata !"unsigned char.window_t.1"}
!67 = metadata !{i8 ([3 x i8]*, i32, i32)* @window_getval}
!68 = metadata !{metadata !"uint8_t.window_t.1.int.0.int.0"}
!69 = metadata !{metadata !"../src/edge_detect.h"}
!70 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5/src/edge_detect.c"}
!71 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!72 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!73 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!74 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!75 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!76 = metadata !{i32 786689, metadata !4, metadata !"input", metadata !6, i32 16777292, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [input] [line 76]
!77 = metadata !{i32 76, i32 27, metadata !4, null}
!78 = metadata !{i32 786689, metadata !4, metadata !"output", metadata !6, i32 33554508, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output] [line 76]
!79 = metadata !{i32 76, i32 43, metadata !4, null}
!80 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !6, i32 81, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 81]
!81 = metadata !{i32 81, i32 6, metadata !4, null}
!82 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !6, i32 82, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 82]
!83 = metadata !{i32 82, i32 6, metadata !4, null}
!84 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !6, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 83]
!85 = metadata !{i32 83, i32 6, metadata !4, null}
!86 = metadata !{i32 83, i32 2, metadata !4, null}
!87 = metadata !{i32 786688, metadata !4, metadata !"buff_A", metadata !6, i32 85, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_A] [line 85]
!88 = metadata !{i32 786454, metadata !5, null, metadata !"linebuffer_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [linebuffer_t] [line 22, size 0, align 0, offset 0] [from ]
!89 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 46080, i64 8, i32 0, i32 0, metadata !11, metadata !90, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 46080, align 8, offset 0] [from uint8_t]
!90 = metadata !{metadata !22, metadata !32}
!91 = metadata !{i32 85, i32 15, metadata !4, null}
!92 = metadata !{i32 786688, metadata !4, metadata !"buff_C", metadata !6, i32 86, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_C] [line 86]
!93 = metadata !{i32 786454, metadata !5, null, metadata !"window_t", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [window_t] [line 21, size 0, align 0, offset 0] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !50, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from uint8_t]
!95 = metadata !{i32 86, i32 11, metadata !4, null}
!96 = metadata !{i32 88, i32 7, metadata !97, null}
!97 = metadata !{i32 786443, metadata !5, metadata !4, i32 88, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!98 = metadata !{i32 88, i32 7, metadata !99, null}
!99 = metadata !{i32 786443, metadata !5, metadata !100, i32 88, i32 7, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!100 = metadata !{i32 786443, metadata !5, metadata !97, i32 88, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!101 = metadata !{i32 89, i32 8, metadata !102, null}
!102 = metadata !{i32 786443, metadata !5, metadata !103, i32 89, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!103 = metadata !{i32 786443, metadata !5, metadata !97, i32 88, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!104 = metadata !{i32 89, i32 8, metadata !105, null}
!105 = metadata !{i32 786443, metadata !5, metadata !106, i32 89, i32 8, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!106 = metadata !{i32 786443, metadata !5, metadata !102, i32 89, i32 8, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!107 = metadata !{i32 786688, metadata !108, metadata !"input_data", metadata !6, i32 94, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input_data] [line 94]
!108 = metadata !{i32 786443, metadata !5, metadata !102, i32 89, i32 43, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!109 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 94, i32 19, metadata !108, null}
!111 = metadata !{i32 94, i32 4, metadata !108, null}
!112 = metadata !{i32 786688, metadata !108, metadata !"temp", metadata !6, i32 95, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 95]
!113 = metadata !{i32 95, i32 18, metadata !108, null}
!114 = metadata !{i32 95, i32 4, metadata !108, null}
!115 = metadata !{i32 786688, metadata !108, metadata !"tempx", metadata !6, i32 96, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempx] [line 96]
!116 = metadata !{i32 96, i32 18, metadata !108, null}
!117 = metadata !{i32 96, i32 4, metadata !108, null}
!118 = metadata !{i32 99, i32 8, metadata !119, null}
!119 = metadata !{i32 786443, metadata !5, metadata !108, i32 99, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!120 = metadata !{i32 100, i32 5, metadata !121, null}
!121 = metadata !{i32 786443, metadata !5, metadata !119, i32 99, i32 23, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!122 = metadata !{i32 101, i32 12, metadata !121, null}
!123 = metadata !{i32 102, i32 4, metadata !121, null}
!124 = metadata !{i32 106, i32 8, metadata !125, null}
!125 = metadata !{i32 786443, metadata !5, metadata !108, i32 106, i32 8, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!126 = metadata !{i32 786688, metadata !127, metadata !"y", metadata !6, i32 107, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 107]
!127 = metadata !{i32 786443, metadata !5, metadata !125, i32 106, i32 43, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!128 = metadata !{i32 107, i32 19, metadata !127, null}
!129 = metadata !{i32 108, i32 5, metadata !127, null}
!130 = metadata !{i32 109, i32 5, metadata !127, null}
!131 = metadata !{i32 110, i32 5, metadata !127, null}
!132 = metadata !{i32 111, i32 5, metadata !127, null}
!133 = metadata !{i32 112, i32 5, metadata !127, null}
!134 = metadata !{i32 113, i32 4, metadata !127, null}
!135 = metadata !{i32 116, i32 4, metadata !108, null}
!136 = metadata !{i32 120, i32 8, metadata !137, null}
!137 = metadata !{i32 786443, metadata !5, metadata !108, i32 120, i32 8, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!138 = metadata !{i32 121, i32 5, metadata !139, null}
!139 = metadata !{i32 786443, metadata !5, metadata !137, i32 120, i32 23, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!140 = metadata !{i32 121, i32 27, metadata !139, null}
!141 = metadata !{i32 122, i32 5, metadata !139, null}
!142 = metadata !{i32 123, i32 5, metadata !139, null}
!143 = metadata !{i32 124, i32 4, metadata !139, null}
!144 = metadata !{i32 786688, metadata !108, metadata !"edge", metadata !6, i32 126, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge] [line 126]
!145 = metadata !{i32 126, i32 18, metadata !108, null}
!146 = metadata !{i32 130, i32 11, metadata !108, null}
!147 = metadata !{i32 134, i32 8, metadata !148, null}
!148 = metadata !{i32 786443, metadata !5, metadata !108, i32 134, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!149 = metadata !{i32 134, i32 8, metadata !150, null}
!150 = metadata !{i32 786443, metadata !5, metadata !148, i32 134, i32 8, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!151 = metadata !{i32 135, i32 5, metadata !152, null}
!152 = metadata !{i32 786443, metadata !5, metadata !148, i32 134, i32 28, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!153 = metadata !{i32 136, i32 5, metadata !152, null}
!154 = metadata !{i32 137, i32 4, metadata !152, null}
!155 = metadata !{i32 138, i32 3, metadata !108, null}
!156 = metadata !{i32 89, i32 36, metadata !102, null}
!157 = metadata !{i32 139, i32 2, metadata !103, null}
!158 = metadata !{i32 88, i32 35, metadata !97, null}
!159 = metadata !{i32 140, i32 2, metadata !4, null}
!160 = metadata !{i32 786689, metadata !36, metadata !"M", metadata !6, i32 16777363, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 147]
!161 = metadata !{i32 147, i32 46, metadata !36, null}
!162 = metadata !{i32 786689, metadata !36, metadata !"col", metadata !6, i32 33554579, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 147]
!163 = metadata !{i32 147, i32 53, metadata !36, null}
!164 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !6, i32 149, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 149]
!165 = metadata !{i32 149, i32 6, metadata !36, null}
!166 = metadata !{i32 150, i32 7, metadata !167, null}
!167 = metadata !{i32 786443, metadata !5, metadata !36, i32 150, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!168 = metadata !{i32 150, i32 7, metadata !169, null}
!169 = metadata !{i32 786443, metadata !5, metadata !170, i32 150, i32 7, i32 2, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!170 = metadata !{i32 786443, metadata !5, metadata !167, i32 150, i32 7, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!171 = metadata !{i32 152, i32 3, metadata !172, null}
!172 = metadata !{i32 786443, metadata !5, metadata !167, i32 150, i32 40, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!173 = metadata !{i32 153, i32 2, metadata !172, null}
!174 = metadata !{i32 150, i32 35, metadata !167, null}
!175 = metadata !{i32 154, i32 1, metadata !36, null}
!176 = metadata !{i32 786689, metadata !33, metadata !"M", metadata !6, i32 16777375, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 159]
!177 = metadata !{i32 159, i32 47, metadata !33, null}
!178 = metadata !{i32 786689, metadata !33, metadata !"RowIndex", metadata !6, i32 33554591, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 159]
!179 = metadata !{i32 159, i32 54, metadata !33, null}
!180 = metadata !{i32 786689, metadata !33, metadata !"ColIndex", metadata !6, i32 50331807, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 159]
!181 = metadata !{i32 159, i32 68, metadata !33, null}
!182 = metadata !{i32 786688, metadata !33, metadata !"return_value", metadata !6, i32 162, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 162]
!183 = metadata !{i32 162, i32 10, metadata !33, null}
!184 = metadata !{i32 163, i32 2, metadata !33, null}
!185 = metadata !{i32 164, i32 2, metadata !33, null}
!186 = metadata !{i32 786689, metadata !26, metadata !"M", metadata !6, i32 16777387, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 171]
!187 = metadata !{i32 171, i32 51, metadata !26, null}
!188 = metadata !{i32 786689, metadata !26, metadata !"value", metadata !6, i32 33554603, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 171]
!189 = metadata !{i32 171, i32 62, metadata !26, null}
!190 = metadata !{i32 786689, metadata !26, metadata !"col", metadata !6, i32 50331819, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 171]
!191 = metadata !{i32 171, i32 73, metadata !26, null}
!192 = metadata !{i32 174, i32 2, metadata !26, null}
!193 = metadata !{i32 175, i32 1, metadata !26, null}
!194 = metadata !{i32 786689, metadata !23, metadata !"M", metadata !6, i32 16777397, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 181]
!195 = metadata !{i32 181, i32 41, metadata !23, null}
!196 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 183, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 183]
!197 = metadata !{i32 183, i32 6, metadata !23, null}
!198 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !6, i32 183, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 183]
!199 = metadata !{i32 183, i32 9, metadata !23, null}
!200 = metadata !{i32 184, i32 7, metadata !201, null}
!201 = metadata !{i32 786443, metadata !5, metadata !23, i32 184, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!202 = metadata !{i32 184, i32 7, metadata !203, null}
!203 = metadata !{i32 786443, metadata !5, metadata !204, i32 184, i32 7, i32 2, i32 34} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!204 = metadata !{i32 786443, metadata !5, metadata !201, i32 184, i32 7, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!205 = metadata !{i32 186, i32 8, metadata !206, null}
!206 = metadata !{i32 786443, metadata !5, metadata !207, i32 186, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!207 = metadata !{i32 786443, metadata !5, metadata !201, i32 184, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!208 = metadata !{i32 186, i32 8, metadata !209, null}
!209 = metadata !{i32 786443, metadata !5, metadata !210, i32 186, i32 8, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!210 = metadata !{i32 786443, metadata !5, metadata !206, i32 186, i32 8, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!211 = metadata !{i32 188, i32 4, metadata !212, null}
!212 = metadata !{i32 786443, metadata !5, metadata !206, i32 186, i32 41, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!213 = metadata !{i32 189, i32 3, metadata !212, null}
!214 = metadata !{i32 186, i32 36, metadata !206, null}
!215 = metadata !{i32 190, i32 2, metadata !207, null}
!216 = metadata !{i32 184, i32 32, metadata !201, null}
!217 = metadata !{i32 191, i32 1, metadata !23, null}
!218 = metadata !{i32 786689, metadata !16, metadata !"M", metadata !6, i32 16777412, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 196]
!219 = metadata !{i32 196, i32 36, metadata !16, null}
!220 = metadata !{i32 786689, metadata !16, metadata !"value", metadata !6, i32 33554628, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 196]
!221 = metadata !{i32 196, i32 47, metadata !16, null}
!222 = metadata !{i32 786689, metadata !16, metadata !"row", metadata !6, i32 50331844, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 196]
!223 = metadata !{i32 196, i32 58, metadata !16, null}
!224 = metadata !{i32 786689, metadata !16, metadata !"col", metadata !6, i32 67109060, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 196]
!225 = metadata !{i32 196, i32 67, metadata !16, null}
!226 = metadata !{i32 198, i32 2, metadata !16, null}
!227 = metadata !{i32 199, i32 1, metadata !16, null}
!228 = metadata !{i32 786689, metadata !39, metadata !"window", metadata !6, i32 16777250, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [window] [line 34]
!229 = metadata !{i32 34, i32 46, metadata !39, null}
!230 = metadata !{i32 786688, metadata !39, metadata !"x_weight", metadata !6, i32 35, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_weight] [line 35]
!231 = metadata !{i32 35, i32 8, metadata !39, null}
!232 = metadata !{i32 35, i32 2, metadata !39, null}
!233 = metadata !{i32 786688, metadata !39, metadata !"y_weight", metadata !6, i32 36, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_weight] [line 36]
!234 = metadata !{i32 36, i32 8, metadata !39, null}
!235 = metadata !{i32 36, i32 2, metadata !39, null}
!236 = metadata !{i32 786688, metadata !39, metadata !"edge_weight", metadata !6, i32 38, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_weight] [line 38]
!237 = metadata !{i32 38, i32 8, metadata !39, null}
!238 = metadata !{i32 786688, metadata !39, metadata !"edge_val", metadata !6, i32 39, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_val] [line 39]
!239 = metadata !{i32 39, i32 16, metadata !39, null}
!240 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!241 = metadata !{i32 41, i32 6, metadata !39, null}
!242 = metadata !{i32 786688, metadata !39, metadata !"j", metadata !6, i32 42, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 42]
!243 = metadata !{i32 42, i32 6, metadata !39, null}
!244 = metadata !{i32 51, i32 7, metadata !245, null}
!245 = metadata !{i32 786443, metadata !5, metadata !39, i32 51, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!246 = metadata !{i32 51, i32 7, metadata !247, null}
!247 = metadata !{i32 786443, metadata !5, metadata !248, i32 51, i32 7, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!248 = metadata !{i32 786443, metadata !5, metadata !245, i32 51, i32 7, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!249 = metadata !{i32 52, i32 8, metadata !250, null}
!250 = metadata !{i32 786443, metadata !5, metadata !251, i32 52, i32 3, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!251 = metadata !{i32 786443, metadata !5, metadata !245, i32 51, i32 37, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!252 = metadata !{i32 52, i32 8, metadata !253, null}
!253 = metadata !{i32 786443, metadata !5, metadata !254, i32 52, i32 8, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!254 = metadata !{i32 786443, metadata !5, metadata !250, i32 52, i32 8, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!255 = metadata !{i32 55, i32 4, metadata !256, null}
!256 = metadata !{i32 786443, metadata !5, metadata !250, i32 52, i32 37, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!257 = metadata !{i32 55, i32 27, metadata !256, null}
!258 = metadata !{i32 58, i32 4, metadata !256, null} ; [ DW_TAG_imported_module ]
!259 = metadata !{i32 58, i32 27, metadata !256, null} ; [ DW_TAG_imported_module ]
!260 = metadata !{i32 59, i32 3, metadata !256, null}
!261 = metadata !{i32 52, i32 32, metadata !250, null}
!262 = metadata !{i32 60, i32 2, metadata !251, null}
!263 = metadata !{i32 51, i32 32, metadata !245, null}
!264 = metadata !{i32 62, i32 2, metadata !39, null}
!265 = metadata !{i32 62, i32 2, metadata !266, null}
!266 = metadata !{i32 786443, metadata !5, metadata !39, i32 62, i32 2, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!267 = metadata !{i32 62, i32 2, metadata !268, null}
!268 = metadata !{i32 786443, metadata !5, metadata !39, i32 62, i32 2, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!269 = metadata !{i32 62, i32 2, metadata !270, null}
!270 = metadata !{i32 786443, metadata !5, metadata !271, i32 62, i32 2, i32 4, i32 42} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!271 = metadata !{i32 786443, metadata !5, metadata !39, i32 62, i32 2, i32 3, i32 41} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!272 = metadata !{i32 62, i32 2, metadata !273, null}
!273 = metadata !{i32 786443, metadata !5, metadata !39, i32 62, i32 2, i32 5, i32 43} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!274 = metadata !{i32 62, i32 2, metadata !275, null}
!275 = metadata !{i32 786443, metadata !5, metadata !39, i32 62, i32 2, i32 6, i32 44} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!276 = metadata !{i32 62, i32 2, metadata !277, null}
!277 = metadata !{i32 786443, metadata !5, metadata !278, i32 62, i32 2, i32 8, i32 46} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!278 = metadata !{i32 786443, metadata !5, metadata !39, i32 62, i32 2, i32 7, i32 45} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!279 = metadata !{i32 65, i32 6, metadata !280, null}
!280 = metadata !{i32 786443, metadata !5, metadata !39, i32 65, i32 6, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!281 = metadata !{i32 66, i32 3, metadata !280, null}
!282 = metadata !{i32 67, i32 11, metadata !283, null}
!283 = metadata !{i32 786443, metadata !5, metadata !280, i32 67, i32 11, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/edge_detect.c]
!284 = metadata !{i32 68, i32 3, metadata !283, null}
!285 = metadata !{i32 69, i32 2, metadata !39, null}
!286 = metadata !{i32 71, i32 2, metadata !39, null}
!287 = metadata !{i32 786689, metadata !42, metadata !"M", metadata !6, i32 16777420, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 204]
!288 = metadata !{i32 204, i32 39, metadata !42, null}
!289 = metadata !{i32 786689, metadata !42, metadata !"RowIndex", metadata !6, i32 33554636, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 204]
!290 = metadata !{i32 204, i32 46, metadata !42, null}
!291 = metadata !{i32 786689, metadata !42, metadata !"ColIndex", metadata !6, i32 50331852, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 204]
!292 = metadata !{i32 204, i32 60, metadata !42, null}
!293 = metadata !{i32 786688, metadata !42, metadata !"return_value", metadata !6, i32 206, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 206]
!294 = metadata !{i32 206, i32 10, metadata !42, null}
!295 = metadata !{i32 207, i32 2, metadata !42, null}
!296 = metadata !{i32 208, i32 2, metadata !42, null}
