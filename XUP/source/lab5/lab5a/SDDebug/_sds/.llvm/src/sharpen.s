; ModuleID = 'C:/xup/SDSoC/labs/lab5a/src/sharpen.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

@sharpen_operator.x_op = internal constant [3 x [3 x i16]] [[3 x i16] [i16 0, i16 -1, i16 0], [3 x i16] [i16 -1, i16 5, i16 -1], [3 x i16] [i16 0, i16 -1, i16 0]], align 2

; Function Attrs: nounwind
define i32 @sharpen_filter(i8* %input, i8* %output) #0 {
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
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !73), !dbg !74
  store i8* %output, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !75), !dbg !76
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !77), !dbg !78
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !79), !dbg !80
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !81), !dbg !82
  store i32 0, i32* %index, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata !{[3 x [1920 x i8]]* %buff_A}, metadata !84), !dbg !88
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i8]]* %buff_C}, metadata !89), !dbg !92
  store i32 0, i32* %row, align 4, !dbg !93
  br label %3, !dbg !93

; <label>:3                                       ; preds = %86, %0
  %4 = load i32* %row, align 4, !dbg !95
  %5 = icmp slt i32 %4, 1081, !dbg !95
  br i1 %5, label %6, label %89, !dbg !95

; <label>:6                                       ; preds = %3
  store i32 0, i32* %col, align 4, !dbg !98
  br label %7, !dbg !98

; <label>:7                                       ; preds = %82, %6
  %8 = load i32* %col, align 4, !dbg !101
  %9 = icmp slt i32 %8, 1921, !dbg !101
  br i1 %9, label %10, label %85, !dbg !101

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i16* %input_data}, metadata !104), !dbg !107
  store i16 0, i16* %input_data, align 2, !dbg !108
  call void @llvm.dbg.declare(metadata !{i8* %temp}, metadata !109), !dbg !110
  store i8 0, i8* %temp, align 1, !dbg !111
  call void @llvm.dbg.declare(metadata !{i8* %tempx}, metadata !112), !dbg !113
  store i8 0, i8* %tempx, align 1, !dbg !114
  %11 = load i32* %col, align 4, !dbg !115
  %12 = icmp slt i32 %11, 1920, !dbg !115
  br i1 %12, label %13, label %19, !dbg !115

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !117
  %15 = load i32* %col, align 4, !dbg !117
  call void @linebuffer_shift_up([1920 x i8]* %14, i32 %15), !dbg !117
  %16 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !119
  %17 = load i32* %col, align 4, !dbg !119
  %18 = call zeroext i8 @linebuffer_getval([1920 x i8]* %16, i32 0, i32 %17), !dbg !119
  store i8 %18, i8* %temp, align 1, !dbg !119
  br label %19, !dbg !120

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %col, align 4, !dbg !121
  %21 = icmp slt i32 %20, 1920, !dbg !121
  %22 = zext i1 %21 to i32, !dbg !121
  %23 = load i32* %row, align 4, !dbg !121
  %24 = icmp slt i32 %23, 1080, !dbg !121
  %25 = zext i1 %24 to i32, !dbg !121
  %26 = and i32 %22, %25, !dbg !121
  %27 = icmp ne i32 %26, 0, !dbg !121
  br i1 %27, label %28, label %46, !dbg !121

; <label>:28                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i8* %y}, metadata !123), !dbg !125
  %29 = load i32* %row, align 4, !dbg !126
  %30 = mul nsw i32 %29, 1920, !dbg !126
  %31 = load i32* %col, align 4, !dbg !126
  %32 = add nsw i32 %30, %31, !dbg !126
  store i32 %32, i32* %index, align 4, !dbg !126
  %33 = load i32* %index, align 4, !dbg !127
  %34 = load i8** %1, align 4, !dbg !127
  %35 = getelementptr inbounds i8* %34, i32 %33, !dbg !127
  %36 = load i8* %35, align 1, !dbg !127
  %37 = zext i8 %36 to i16, !dbg !127
  store i16 %37, i16* %input_data, align 2, !dbg !127
  %38 = load i16* %input_data, align 2, !dbg !128
  %39 = zext i16 %38 to i32, !dbg !128
  %40 = ashr i32 %39, 0, !dbg !128
  %41 = trunc i32 %40 to i8, !dbg !128
  store i8 %41, i8* %y, align 1, !dbg !128
  %42 = load i8* %y, align 1, !dbg !129
  store i8 %42, i8* %tempx, align 1, !dbg !129
  %43 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !130
  %44 = load i8* %tempx, align 1, !dbg !130
  %45 = load i32* %col, align 4, !dbg !130
  call void @linebuffer_insert_bottom([1920 x i8]* %43, i8 zeroext %44, i32 %45), !dbg !130
  br label %46, !dbg !131

; <label>:46                                      ; preds = %28, %19
  %47 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !132
  call void @window_shift_right([3 x i8]* %47), !dbg !132
  %48 = load i32* %col, align 4, !dbg !133
  %49 = icmp slt i32 %48, 1920, !dbg !133
  br i1 %49, label %50, label %59, !dbg !133

; <label>:50                                      ; preds = %46
  %51 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !135
  %52 = getelementptr inbounds [3 x [1920 x i8]]* %buff_A, i32 0, i32 0, !dbg !137
  %53 = load i32* %col, align 4, !dbg !137
  %54 = call zeroext i8 @linebuffer_getval([1920 x i8]* %52, i32 2, i32 %53), !dbg !137
  call void @window_insert([3 x i8]* %51, i8 zeroext %54, i32 0, i32 2), !dbg !135
  %55 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !138
  %56 = load i8* %temp, align 1, !dbg !138
  call void @window_insert([3 x i8]* %55, i8 zeroext %56, i32 1, i32 2), !dbg !138
  %57 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !139
  %58 = load i8* %tempx, align 1, !dbg !139
  call void @window_insert([3 x i8]* %57, i8 zeroext %58, i32 2, i32 2), !dbg !139
  br label %59, !dbg !140

; <label>:59                                      ; preds = %50, %46
  call void @llvm.dbg.declare(metadata !{i8* %edge}, metadata !141), !dbg !142
  %60 = getelementptr inbounds [3 x [3 x i8]]* %buff_C, i32 0, i32 0, !dbg !143
  %61 = call zeroext i8 @sharpen_operator([3 x i8]* %60), !dbg !143
  store i8 %61, i8* %edge, align 1, !dbg !143
  %62 = load i32* %row, align 4, !dbg !144
  %63 = icmp sgt i32 %62, 0, !dbg !144
  br i1 %63, label %64, label %81, !dbg !144

; <label>:64                                      ; preds = %59
  %65 = load i32* %col, align 4, !dbg !146
  %66 = icmp sgt i32 %65, 0, !dbg !146
  br i1 %66, label %67, label %81, !dbg !146

; <label>:67                                      ; preds = %64
  %68 = load i32* %row, align 4, !dbg !148
  %69 = sub nsw i32 %68, 1, !dbg !148
  %70 = mul nsw i32 %69, 1920, !dbg !148
  %71 = load i32* %col, align 4, !dbg !148
  %72 = sub nsw i32 %71, 1, !dbg !148
  %73 = add nsw i32 %70, %72, !dbg !148
  store i32 %73, i32* %index, align 4, !dbg !148
  %74 = load i8* %edge, align 1, !dbg !150
  %75 = zext i8 %74 to i32, !dbg !150
  %76 = shl i32 %75, 0, !dbg !150
  %77 = trunc i32 %76 to i8, !dbg !150
  %78 = load i32* %index, align 4, !dbg !150
  %79 = load i8** %2, align 4, !dbg !150
  %80 = getelementptr inbounds i8* %79, i32 %78, !dbg !150
  store i8 %77, i8* %80, align 1, !dbg !150
  br label %81, !dbg !151

; <label>:81                                      ; preds = %67, %64, %59
  br label %82, !dbg !152

; <label>:82                                      ; preds = %81
  %83 = load i32* %col, align 4, !dbg !153
  %84 = add nsw i32 %83, 1, !dbg !153
  store i32 %84, i32* %col, align 4, !dbg !153
  br label %7, !dbg !153

; <label>:85                                      ; preds = %7
  br label %86, !dbg !154

; <label>:86                                      ; preds = %85
  %87 = load i32* %row, align 4, !dbg !155
  %88 = add nsw i32 %87, 1, !dbg !155
  store i32 %88, i32* %row, align 4, !dbg !155
  br label %3, !dbg !155

; <label>:89                                      ; preds = %3
  ret i32 0, !dbg !156
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @linebuffer_shift_up([1920 x i8]* %M, i32 %col) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !157), !dbg !158
  store i32 %col, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !159), !dbg !160
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !161), !dbg !162
  store i32 2, i32* %i, align 4, !dbg !163
  br label %3, !dbg !163

; <label>:3                                       ; preds = %19, %0
  %4 = load i32* %i, align 4, !dbg !165
  %5 = icmp sgt i32 %4, 0, !dbg !165
  br i1 %5, label %6, label %22, !dbg !165

; <label>:6                                       ; preds = %3
  %7 = load i32* %2, align 4, !dbg !168
  %8 = load i32* %i, align 4, !dbg !168
  %9 = sub nsw i32 %8, 1, !dbg !168
  %10 = load [1920 x i8]** %1, align 4, !dbg !168
  %11 = getelementptr inbounds [1920 x i8]* %10, i32 %9, !dbg !168
  %12 = getelementptr inbounds [1920 x i8]* %11, i32 0, i32 %7, !dbg !168
  %13 = load i8* %12, align 1, !dbg !168
  %14 = load i32* %2, align 4, !dbg !168
  %15 = load i32* %i, align 4, !dbg !168
  %16 = load [1920 x i8]** %1, align 4, !dbg !168
  %17 = getelementptr inbounds [1920 x i8]* %16, i32 %15, !dbg !168
  %18 = getelementptr inbounds [1920 x i8]* %17, i32 0, i32 %14, !dbg !168
  store i8 %13, i8* %18, align 1, !dbg !168
  br label %19, !dbg !170

; <label>:19                                      ; preds = %6
  %20 = load i32* %i, align 4, !dbg !171
  %21 = add nsw i32 %20, -1, !dbg !171
  store i32 %21, i32* %i, align 4, !dbg !171
  br label %3, !dbg !171

; <label>:22                                      ; preds = %3
  ret void, !dbg !172
}

; Function Attrs: nounwind
define internal zeroext i8 @linebuffer_getval([1920 x i8]* %M, i32 %RowIndex, i32 %ColIndex) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !173), !dbg !174
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !175), !dbg !176
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !177), !dbg !178
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !179), !dbg !180
  %4 = load i32* %3, align 4, !dbg !181
  %5 = load i32* %2, align 4, !dbg !181
  %6 = load [1920 x i8]** %1, align 4, !dbg !181
  %7 = getelementptr inbounds [1920 x i8]* %6, i32 %5, !dbg !181
  %8 = getelementptr inbounds [1920 x i8]* %7, i32 0, i32 %4, !dbg !181
  %9 = load i8* %8, align 1, !dbg !181
  store i8 %9, i8* %return_value, align 1, !dbg !181
  %10 = load i8* %return_value, align 1, !dbg !182
  ret i8 %10, !dbg !182
}

; Function Attrs: nounwind
define internal void @linebuffer_insert_bottom([1920 x i8]* %M, i8 zeroext %value, i32 %col) #0 {
  %1 = alloca [1920 x i8]*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store [1920 x i8]* %M, [1920 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[1920 x i8]** %1}, metadata !183), !dbg !184
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !185), !dbg !186
  store i32 %col, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !187), !dbg !188
  %4 = load i8* %2, align 1, !dbg !189
  %5 = load i32* %3, align 4, !dbg !189
  %6 = load [1920 x i8]** %1, align 4, !dbg !189
  %7 = getelementptr inbounds [1920 x i8]* %6, i32 0, !dbg !189
  %8 = getelementptr inbounds [1920 x i8]* %7, i32 0, i32 %5, !dbg !189
  store i8 %4, i8* %8, align 1, !dbg !189
  ret void, !dbg !190
}

; Function Attrs: nounwind
define internal void @window_shift_right([3 x i8]* %M) #0 {
  %1 = alloca [3 x i8]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !191), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !193), !dbg !194
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !195), !dbg !196
  store i32 0, i32* %i, align 4, !dbg !197
  br label %2, !dbg !197

; <label>:2                                       ; preds = %26, %0
  %3 = load i32* %i, align 4, !dbg !199
  %4 = icmp slt i32 %3, 3, !dbg !199
  br i1 %4, label %5, label %29, !dbg !199

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !202
  br label %6, !dbg !202

; <label>:6                                       ; preds = %22, %5
  %7 = load i32* %j, align 4, !dbg !205
  %8 = icmp slt i32 %7, 2, !dbg !205
  br i1 %8, label %9, label %25, !dbg !205

; <label>:9                                       ; preds = %6
  %10 = load i32* %j, align 4, !dbg !208
  %11 = add nsw i32 %10, 1, !dbg !208
  %12 = load i32* %i, align 4, !dbg !208
  %13 = load [3 x i8]** %1, align 4, !dbg !208
  %14 = getelementptr inbounds [3 x i8]* %13, i32 %12, !dbg !208
  %15 = getelementptr inbounds [3 x i8]* %14, i32 0, i32 %11, !dbg !208
  %16 = load i8* %15, align 1, !dbg !208
  %17 = load i32* %j, align 4, !dbg !208
  %18 = load i32* %i, align 4, !dbg !208
  %19 = load [3 x i8]** %1, align 4, !dbg !208
  %20 = getelementptr inbounds [3 x i8]* %19, i32 %18, !dbg !208
  %21 = getelementptr inbounds [3 x i8]* %20, i32 0, i32 %17, !dbg !208
  store i8 %16, i8* %21, align 1, !dbg !208
  br label %22, !dbg !210

; <label>:22                                      ; preds = %9
  %23 = load i32* %j, align 4, !dbg !211
  %24 = add nsw i32 %23, 1, !dbg !211
  store i32 %24, i32* %j, align 4, !dbg !211
  br label %6, !dbg !211

; <label>:25                                      ; preds = %6
  br label %26, !dbg !212

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4, !dbg !213
  %28 = add nsw i32 %27, 1, !dbg !213
  store i32 %28, i32* %i, align 4, !dbg !213
  br label %2, !dbg !213

; <label>:29                                      ; preds = %2
  ret void, !dbg !214
}

; Function Attrs: nounwind
define internal void @window_insert([3 x i8]* %M, i8 zeroext %value, i32 %row, i32 %col) #0 {
  %1 = alloca [3 x i8]*, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !215), !dbg !216
  store i8 %value, i8* %2, align 1
  call void @llvm.dbg.declare(metadata !{i8* %2}, metadata !217), !dbg !218
  store i32 %row, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !219), !dbg !220
  store i32 %col, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !221), !dbg !222
  %5 = load i8* %2, align 1, !dbg !223
  %6 = load i32* %4, align 4, !dbg !223
  %7 = load i32* %3, align 4, !dbg !223
  %8 = load [3 x i8]** %1, align 4, !dbg !223
  %9 = getelementptr inbounds [3 x i8]* %8, i32 %7, !dbg !223
  %10 = getelementptr inbounds [3 x i8]* %9, i32 0, i32 %6, !dbg !223
  store i8 %5, i8* %10, align 1, !dbg !223
  ret void, !dbg !224
}

; Function Attrs: nounwind
define internal zeroext i8 @sharpen_operator([3 x i8]* %window) #0 {
  %1 = alloca [3 x i8]*, align 4
  %x_weight = alloca i16, align 2
  %edge_weight = alloca i16, align 2
  %edge_val = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i8]* %window, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !225), !dbg !226
  call void @llvm.dbg.declare(metadata !{i16* %x_weight}, metadata !227), !dbg !228
  store i16 0, i16* %x_weight, align 2, !dbg !229
  call void @llvm.dbg.declare(metadata !{i16* %edge_weight}, metadata !230), !dbg !231
  call void @llvm.dbg.declare(metadata !{i8* %edge_val}, metadata !232), !dbg !233
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !234), !dbg !235
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !236), !dbg !237
  store i32 0, i32* %i, align 4, !dbg !238
  br label %2, !dbg !238

; <label>:2                                       ; preds = %30, %0
  %3 = load i32* %i, align 4, !dbg !240
  %4 = icmp slt i32 %3, 3, !dbg !240
  br i1 %4, label %5, label %33, !dbg !240

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !243
  br label %6, !dbg !243

; <label>:6                                       ; preds = %26, %5
  %7 = load i32* %j, align 4, !dbg !246
  %8 = icmp slt i32 %7, 3, !dbg !246
  br i1 %8, label %9, label %29, !dbg !246

; <label>:9                                       ; preds = %6
  %10 = load i16* %x_weight, align 2, !dbg !249
  %11 = sext i16 %10 to i32, !dbg !249
  %12 = load [3 x i8]** %1, align 4, !dbg !251
  %13 = load i32* %i, align 4, !dbg !251
  %14 = load i32* %j, align 4, !dbg !251
  %15 = call zeroext i8 @window_getval([3 x i8]* %12, i32 %13, i32 %14), !dbg !251
  %16 = zext i8 %15 to i32, !dbg !251
  %17 = load i32* %j, align 4, !dbg !251
  %18 = load i32* %i, align 4, !dbg !251
  %19 = getelementptr inbounds [3 x [3 x i16]]* @sharpen_operator.x_op, i32 0, i32 %18, !dbg !251
  %20 = getelementptr inbounds [3 x i16]* %19, i32 0, i32 %17, !dbg !251
  %21 = load i16* %20, align 2, !dbg !251
  %22 = sext i16 %21 to i32, !dbg !251
  %23 = mul nsw i32 %16, %22, !dbg !251
  %24 = add nsw i32 %11, %23, !dbg !251
  %25 = trunc i32 %24 to i16, !dbg !251
  store i16 %25, i16* %x_weight, align 2, !dbg !251
  br label %26, !dbg !252

; <label>:26                                      ; preds = %9
  %27 = load i32* %j, align 4, !dbg !253
  %28 = add nsw i32 %27, 1, !dbg !253
  store i32 %28, i32* %j, align 4, !dbg !253
  br label %6, !dbg !253

; <label>:29                                      ; preds = %6
  br label %30, !dbg !254

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4, !dbg !255
  %32 = add nsw i32 %31, 1, !dbg !255
  store i32 %32, i32* %i, align 4, !dbg !255
  br label %2, !dbg !255

; <label>:33                                      ; preds = %2
  %34 = load i16* %x_weight, align 2, !dbg !256
  %35 = sext i16 %34 to i32, !dbg !256
  %36 = icmp sgt i32 %35, 0, !dbg !256
  br i1 %36, label %37, label %40, !dbg !256

; <label>:37                                      ; preds = %33
  %38 = load i16* %x_weight, align 2, !dbg !257
  %39 = sext i16 %38 to i32, !dbg !257
  br label %44, !dbg !257

; <label>:40                                      ; preds = %33
  %41 = load i16* %x_weight, align 2, !dbg !259
  %42 = sext i16 %41 to i32, !dbg !259
  %43 = sub nsw i32 0, %42, !dbg !259
  br label %44, !dbg !259

; <label>:44                                      ; preds = %40, %37
  %45 = phi i32 [ %39, %37 ], [ %43, %40 ], !dbg !256
  %46 = trunc i32 %45 to i16, !dbg !261
  store i16 %46, i16* %edge_weight, align 2, !dbg !261
  %47 = load i16* %edge_weight, align 2, !dbg !264
  %48 = trunc i16 %47 to i8, !dbg !264
  store i8 %48, i8* %edge_val, align 1, !dbg !264
  %49 = load i8* %edge_val, align 1, !dbg !265
  ret i8 %49, !dbg !265
}

; Function Attrs: nounwind
define internal zeroext i8 @window_getval([3 x i8]* %M, i32 %RowIndex, i32 %ColIndex) #0 {
  %1 = alloca [3 x i8]*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %return_value = alloca i8, align 1
  store [3 x i8]* %M, [3 x i8]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[3 x i8]** %1}, metadata !266), !dbg !267
  store i32 %RowIndex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !268), !dbg !269
  store i32 %ColIndex, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !270), !dbg !271
  call void @llvm.dbg.declare(metadata !{i8* %return_value}, metadata !272), !dbg !273
  %4 = load i32* %3, align 4, !dbg !274
  %5 = load i32* %2, align 4, !dbg !274
  %6 = load [3 x i8]** %1, align 4, !dbg !274
  %7 = getelementptr inbounds [3 x i8]* %6, i32 %5, !dbg !274
  %8 = getelementptr inbounds [3 x i8]* %7, i32 0, i32 %4, !dbg !274
  %9 = load i8* %8, align 1, !dbg !274
  store i8 %9, i8* %return_value, align 1, !dbg !274
  %10 = load i8* %return_value, align 1, !dbg !275
  ret i8 %10, !dbg !275
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_argument_annotation = !{!49, !50}
!xidane.function_declaration_type = !{!49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!xidane.function_declaration_filename = !{!49, !66, !52, !67, !54, !67, !56, !67, !58, !67, !60, !67, !62, !67, !64, !67}
!xidane.ExternC = !{!49}
!llvm.module.flags = !{!68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !43, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab5a\SDDebug/../src\sharpen.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5Csharpen.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !21, metadata !24, metadata !31, metadata !34, metadata !37, metadata !40}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sharpen_filter", metadata !"sharpen_filter", metadata !"", i32 63, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @sharpen_filter, null, null, metadata !2, i32 63} ; [ DW_TAG_subprogram ] [line 63] [def] [sharpen_filter]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/sharpen.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint8_t]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!12 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!13 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_insert", metadata !"window_insert", metadata !"", i32 183, metadata !15, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*, i8, i32, i32)* @window_insert, null, null, metadata !2, i32 183} ; [ DW_TAG_subprogram ] [line 183] [local] [def] [window_insert]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{null, metadata !17, metadata !11, metadata !9, metadata !9}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !11, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from uint8_t]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_shift_right", metadata !"window_shift_right", metadata !"", i32 168, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([3 x i8]*)* @window_shift_right, null, null, metadata !2, i32 168} ; [ DW_TAG_subprogram ] [line 168] [local] [def] [window_shift_right]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !17}
!24 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_insert_bottom", metadata !"linebuffer_insert_bottom", metadata !"", i32 158, metadata !25, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([1920 x i8]*, i8, i32)* @linebuffer_insert_bottom, null, null, metadata !2, i32 158} ; [ DW_TAG_subprogram ] [line 158] [local] [def] [linebuffer_insert_bottom]
!25 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{null, metadata !27, metadata !11, metadata !9}
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 15360, i64 8, i32 0, i32 0, metadata !11, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 15360, align 8, offset 0] [from uint8_t]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 1920}     ; [ DW_TAG_subrange_type ] [0, 1919]
!31 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_getval", metadata !"linebuffer_getval", metadata !"", i32 146, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([1920 x i8]*, i32, i32)* @linebuffer_getval, null, null, metadata !2, i32 146} ; [ DW_TAG_subprogram ] [line 146] [local] [def] [linebuffer_getval]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !11, metadata !27, metadata !9, metadata !9}
!34 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"linebuffer_shift_up", metadata !"linebuffer_shift_up", metadata !"", i32 134, metadata !35, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([1920 x i8]*, i32)* @linebuffer_shift_up, null, null, metadata !2, i32 134} ; [ DW_TAG_subprogram ] [line 134] [local] [def] [linebuffer_shift_up]
!35 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !27, metadata !9}
!37 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sharpen_operator", metadata !"sharpen_operator", metadata !"", i32 34, metadata !38, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*)* @sharpen_operator, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 34] [local] [def] [sharpen_operator]
!38 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !13, metadata !17}
!40 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"window_getval", metadata !"window_getval", metadata !"", i32 191, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 ([3 x i8]*, i32, i32)* @window_getval, null, null, metadata !2, i32 191} ; [ DW_TAG_subprogram ] [line 191] [local] [def] [window_getval]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !11, metadata !17, metadata !9, metadata !9}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786484, i32 0, metadata !37, metadata !"x_op", metadata !"x_op", metadata !"", metadata !6, i32 43, metadata !45, i32 1, i32 1, [3 x [3 x i16]]* @sharpen_operator.x_op, null} ; [ DW_TAG_variable ] [x_op] [line 43] [local] [def]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 144, i64 16, i32 0, i32 0, metadata !46, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 144, align 16, offset 0] [from ]
!46 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from short]
!47 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!48 = metadata !{metadata !20, metadata !20}
!49 = metadata !{i32 (i8*, i8*)* @sharpen_filter}
!50 = metadata !{metadata !"input,,2073600,,,,,, output,,2073600,,,,,, "}
!51 = metadata !{metadata !"int.uint8_t *.1.uint8_t *.1"}
!52 = metadata !{void ([1920 x i8]*, i32)* @linebuffer_shift_up}
!53 = metadata !{metadata !"void.linebuffer_t.1.int.0"}
!54 = metadata !{i8 ([1920 x i8]*, i32, i32)* @linebuffer_getval}
!55 = metadata !{metadata !"uint8_t.linebuffer_t.1.int.0.int.0"}
!56 = metadata !{void ([1920 x i8]*, i8, i32)* @linebuffer_insert_bottom}
!57 = metadata !{metadata !"void.linebuffer_t.1.uint8_t.0.int.0"}
!58 = metadata !{void ([3 x i8]*)* @window_shift_right}
!59 = metadata !{metadata !"void.window_t.1"}
!60 = metadata !{void ([3 x i8]*, i8, i32, i32)* @window_insert}
!61 = metadata !{metadata !"void.window_t.1.uint8_t.0.int.0.int.0"}
!62 = metadata !{i8 ([3 x i8]*)* @sharpen_operator}
!63 = metadata !{metadata !"unsigned char.window_t.1"}
!64 = metadata !{i8 ([3 x i8]*, i32, i32)* @window_getval}
!65 = metadata !{metadata !"uint8_t.window_t.1.int.0.int.0"}
!66 = metadata !{metadata !"../src/sharpen.h"}
!67 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/sharpen.c"}
!68 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!69 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!70 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!71 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!72 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!73 = metadata !{i32 786689, metadata !4, metadata !"input", metadata !6, i32 16777279, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [input] [line 63]
!74 = metadata !{i32 63, i32 29, metadata !4, null}
!75 = metadata !{i32 786689, metadata !4, metadata !"output", metadata !6, i32 33554495, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output] [line 63]
!76 = metadata !{i32 63, i32 45, metadata !4, null}
!77 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !6, i32 68, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 68]
!78 = metadata !{i32 68, i32 6, metadata !4, null}
!79 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !6, i32 69, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 69]
!80 = metadata !{i32 69, i32 6, metadata !4, null}
!81 = metadata !{i32 786688, metadata !4, metadata !"index", metadata !6, i32 70, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 70]
!82 = metadata !{i32 70, i32 6, metadata !4, null}
!83 = metadata !{i32 70, i32 2, metadata !4, null}
!84 = metadata !{i32 786688, metadata !4, metadata !"buff_A", metadata !6, i32 72, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_A] [line 72]
!85 = metadata !{i32 786454, metadata !5, null, metadata !"linebuffer_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [linebuffer_t] [line 22, size 0, align 0, offset 0] [from ]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 46080, i64 8, i32 0, i32 0, metadata !11, metadata !87, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 46080, align 8, offset 0] [from uint8_t]
!87 = metadata !{metadata !20, metadata !30}
!88 = metadata !{i32 72, i32 15, metadata !4, null}
!89 = metadata !{i32 786688, metadata !4, metadata !"buff_C", metadata !6, i32 73, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff_C] [line 73]
!90 = metadata !{i32 786454, metadata !5, null, metadata !"window_t", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [window_t] [line 21, size 0, align 0, offset 0] [from ]
!91 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !11, metadata !48, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from uint8_t]
!92 = metadata !{i32 73, i32 11, metadata !4, null}
!93 = metadata !{i32 75, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !5, metadata !4, i32 75, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!95 = metadata !{i32 75, i32 7, metadata !96, null}
!96 = metadata !{i32 786443, metadata !5, metadata !97, i32 75, i32 7, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!97 = metadata !{i32 786443, metadata !5, metadata !94, i32 75, i32 7, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!98 = metadata !{i32 76, i32 8, metadata !99, null}
!99 = metadata !{i32 786443, metadata !5, metadata !100, i32 76, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!100 = metadata !{i32 786443, metadata !5, metadata !94, i32 75, i32 42, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!101 = metadata !{i32 76, i32 8, metadata !102, null}
!102 = metadata !{i32 786443, metadata !5, metadata !103, i32 76, i32 8, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!103 = metadata !{i32 786443, metadata !5, metadata !99, i32 76, i32 8, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!104 = metadata !{i32 786688, metadata !105, metadata !"input_data", metadata !6, i32 81, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input_data] [line 81]
!105 = metadata !{i32 786443, metadata !5, metadata !99, i32 76, i32 43, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!106 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!107 = metadata !{i32 81, i32 19, metadata !105, null}
!108 = metadata !{i32 81, i32 4, metadata !105, null}
!109 = metadata !{i32 786688, metadata !105, metadata !"temp", metadata !6, i32 82, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 82]
!110 = metadata !{i32 82, i32 18, metadata !105, null}
!111 = metadata !{i32 82, i32 4, metadata !105, null}
!112 = metadata !{i32 786688, metadata !105, metadata !"tempx", metadata !6, i32 83, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempx] [line 83]
!113 = metadata !{i32 83, i32 18, metadata !105, null}
!114 = metadata !{i32 83, i32 4, metadata !105, null}
!115 = metadata !{i32 86, i32 8, metadata !116, null}
!116 = metadata !{i32 786443, metadata !5, metadata !105, i32 86, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!117 = metadata !{i32 87, i32 5, metadata !118, null}
!118 = metadata !{i32 786443, metadata !5, metadata !116, i32 86, i32 23, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!119 = metadata !{i32 88, i32 12, metadata !118, null}
!120 = metadata !{i32 89, i32 4, metadata !118, null}
!121 = metadata !{i32 93, i32 8, metadata !122, null}
!122 = metadata !{i32 786443, metadata !5, metadata !105, i32 93, i32 8, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!123 = metadata !{i32 786688, metadata !124, metadata !"y", metadata !6, i32 94, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 94]
!124 = metadata !{i32 786443, metadata !5, metadata !122, i32 93, i32 43, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!125 = metadata !{i32 94, i32 19, metadata !124, null}
!126 = metadata !{i32 95, i32 5, metadata !124, null}
!127 = metadata !{i32 96, i32 5, metadata !124, null}
!128 = metadata !{i32 97, i32 5, metadata !124, null}
!129 = metadata !{i32 98, i32 5, metadata !124, null}
!130 = metadata !{i32 99, i32 5, metadata !124, null}
!131 = metadata !{i32 100, i32 4, metadata !124, null}
!132 = metadata !{i32 103, i32 4, metadata !105, null}
!133 = metadata !{i32 107, i32 8, metadata !134, null}
!134 = metadata !{i32 786443, metadata !5, metadata !105, i32 107, i32 8, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!135 = metadata !{i32 108, i32 5, metadata !136, null}
!136 = metadata !{i32 786443, metadata !5, metadata !134, i32 107, i32 23, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!137 = metadata !{i32 108, i32 27, metadata !136, null}
!138 = metadata !{i32 109, i32 5, metadata !136, null}
!139 = metadata !{i32 110, i32 5, metadata !136, null}
!140 = metadata !{i32 111, i32 4, metadata !136, null}
!141 = metadata !{i32 786688, metadata !105, metadata !"edge", metadata !6, i32 113, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge] [line 113]
!142 = metadata !{i32 113, i32 18, metadata !105, null}
!143 = metadata !{i32 117, i32 11, metadata !105, null}
!144 = metadata !{i32 121, i32 8, metadata !145, null}
!145 = metadata !{i32 786443, metadata !5, metadata !105, i32 121, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!146 = metadata !{i32 121, i32 8, metadata !147, null}
!147 = metadata !{i32 786443, metadata !5, metadata !145, i32 121, i32 8, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!148 = metadata !{i32 122, i32 5, metadata !149, null}
!149 = metadata !{i32 786443, metadata !5, metadata !145, i32 121, i32 28, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!150 = metadata !{i32 123, i32 5, metadata !149, null}
!151 = metadata !{i32 124, i32 4, metadata !149, null}
!152 = metadata !{i32 125, i32 3, metadata !105, null}
!153 = metadata !{i32 76, i32 36, metadata !99, null}
!154 = metadata !{i32 126, i32 2, metadata !100, null}
!155 = metadata !{i32 75, i32 35, metadata !94, null}
!156 = metadata !{i32 127, i32 2, metadata !4, null}
!157 = metadata !{i32 786689, metadata !34, metadata !"M", metadata !6, i32 16777350, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 134]
!158 = metadata !{i32 134, i32 46, metadata !34, null}
!159 = metadata !{i32 786689, metadata !34, metadata !"col", metadata !6, i32 33554566, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 134]
!160 = metadata !{i32 134, i32 53, metadata !34, null}
!161 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !6, i32 136, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 136]
!162 = metadata !{i32 136, i32 6, metadata !34, null}
!163 = metadata !{i32 137, i32 7, metadata !164, null}
!164 = metadata !{i32 786443, metadata !5, metadata !34, i32 137, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!165 = metadata !{i32 137, i32 7, metadata !166, null}
!166 = metadata !{i32 786443, metadata !5, metadata !167, i32 137, i32 7, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!167 = metadata !{i32 786443, metadata !5, metadata !164, i32 137, i32 7, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!168 = metadata !{i32 139, i32 3, metadata !169, null}
!169 = metadata !{i32 786443, metadata !5, metadata !164, i32 137, i32 40, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!170 = metadata !{i32 140, i32 2, metadata !169, null}
!171 = metadata !{i32 137, i32 35, metadata !164, null}
!172 = metadata !{i32 141, i32 1, metadata !34, null}
!173 = metadata !{i32 786689, metadata !31, metadata !"M", metadata !6, i32 16777362, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 146]
!174 = metadata !{i32 146, i32 47, metadata !31, null}
!175 = metadata !{i32 786689, metadata !31, metadata !"RowIndex", metadata !6, i32 33554578, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 146]
!176 = metadata !{i32 146, i32 54, metadata !31, null}
!177 = metadata !{i32 786689, metadata !31, metadata !"ColIndex", metadata !6, i32 50331794, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 146]
!178 = metadata !{i32 146, i32 68, metadata !31, null}
!179 = metadata !{i32 786688, metadata !31, metadata !"return_value", metadata !6, i32 149, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 149]
!180 = metadata !{i32 149, i32 10, metadata !31, null}
!181 = metadata !{i32 150, i32 2, metadata !31, null}
!182 = metadata !{i32 151, i32 2, metadata !31, null}
!183 = metadata !{i32 786689, metadata !24, metadata !"M", metadata !6, i32 16777374, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 158]
!184 = metadata !{i32 158, i32 51, metadata !24, null}
!185 = metadata !{i32 786689, metadata !24, metadata !"value", metadata !6, i32 33554590, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 158]
!186 = metadata !{i32 158, i32 62, metadata !24, null}
!187 = metadata !{i32 786689, metadata !24, metadata !"col", metadata !6, i32 50331806, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 158]
!188 = metadata !{i32 158, i32 73, metadata !24, null}
!189 = metadata !{i32 161, i32 2, metadata !24, null}
!190 = metadata !{i32 162, i32 1, metadata !24, null}
!191 = metadata !{i32 786689, metadata !21, metadata !"M", metadata !6, i32 16777384, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 168]
!192 = metadata !{i32 168, i32 41, metadata !21, null}
!193 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !6, i32 170, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 170]
!194 = metadata !{i32 170, i32 6, metadata !21, null}
!195 = metadata !{i32 786688, metadata !21, metadata !"j", metadata !6, i32 170, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 170]
!196 = metadata !{i32 170, i32 9, metadata !21, null}
!197 = metadata !{i32 171, i32 7, metadata !198, null}
!198 = metadata !{i32 786443, metadata !5, metadata !21, i32 171, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!199 = metadata !{i32 171, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !5, metadata !201, i32 171, i32 7, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!201 = metadata !{i32 786443, metadata !5, metadata !198, i32 171, i32 7, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!202 = metadata !{i32 173, i32 8, metadata !203, null}
!203 = metadata !{i32 786443, metadata !5, metadata !204, i32 173, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!204 = metadata !{i32 786443, metadata !5, metadata !198, i32 171, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!205 = metadata !{i32 173, i32 8, metadata !206, null}
!206 = metadata !{i32 786443, metadata !5, metadata !207, i32 173, i32 8, i32 2, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!207 = metadata !{i32 786443, metadata !5, metadata !203, i32 173, i32 8, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!208 = metadata !{i32 175, i32 4, metadata !209, null}
!209 = metadata !{i32 786443, metadata !5, metadata !203, i32 173, i32 41, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!210 = metadata !{i32 176, i32 3, metadata !209, null}
!211 = metadata !{i32 173, i32 36, metadata !203, null}
!212 = metadata !{i32 177, i32 2, metadata !204, null}
!213 = metadata !{i32 171, i32 32, metadata !198, null}
!214 = metadata !{i32 178, i32 1, metadata !21, null}
!215 = metadata !{i32 786689, metadata !14, metadata !"M", metadata !6, i32 16777399, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 183]
!216 = metadata !{i32 183, i32 36, metadata !14, null}
!217 = metadata !{i32 786689, metadata !14, metadata !"value", metadata !6, i32 33554615, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 183]
!218 = metadata !{i32 183, i32 47, metadata !14, null}
!219 = metadata !{i32 786689, metadata !14, metadata !"row", metadata !6, i32 50331831, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [row] [line 183]
!220 = metadata !{i32 183, i32 58, metadata !14, null}
!221 = metadata !{i32 786689, metadata !14, metadata !"col", metadata !6, i32 67109047, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [col] [line 183]
!222 = metadata !{i32 183, i32 67, metadata !14, null}
!223 = metadata !{i32 185, i32 2, metadata !14, null}
!224 = metadata !{i32 186, i32 1, metadata !14, null}
!225 = metadata !{i32 786689, metadata !37, metadata !"window", metadata !6, i32 16777250, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [window] [line 34]
!226 = metadata !{i32 34, i32 48, metadata !37, null}
!227 = metadata !{i32 786688, metadata !37, metadata !"x_weight", metadata !6, i32 35, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_weight] [line 35]
!228 = metadata !{i32 35, i32 8, metadata !37, null}
!229 = metadata !{i32 35, i32 2, metadata !37, null}
!230 = metadata !{i32 786688, metadata !37, metadata !"edge_weight", metadata !6, i32 37, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_weight] [line 37]
!231 = metadata !{i32 37, i32 8, metadata !37, null}
!232 = metadata !{i32 786688, metadata !37, metadata !"edge_val", metadata !6, i32 38, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [edge_val] [line 38]
!233 = metadata !{i32 38, i32 16, metadata !37, null}
!234 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !6, i32 40, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 40]
!235 = metadata !{i32 40, i32 6, metadata !37, null}
!236 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 41]
!237 = metadata !{i32 41, i32 6, metadata !37, null}
!238 = metadata !{i32 47, i32 7, metadata !239, null}
!239 = metadata !{i32 786443, metadata !5, metadata !37, i32 47, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!240 = metadata !{i32 47, i32 7, metadata !241, null}
!241 = metadata !{i32 786443, metadata !5, metadata !242, i32 47, i32 7, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!242 = metadata !{i32 786443, metadata !5, metadata !239, i32 47, i32 7, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!243 = metadata !{i32 48, i32 8, metadata !244, null}
!244 = metadata !{i32 786443, metadata !5, metadata !245, i32 48, i32 3, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!245 = metadata !{i32 786443, metadata !5, metadata !239, i32 47, i32 37, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!246 = metadata !{i32 48, i32 8, metadata !247, null}
!247 = metadata !{i32 786443, metadata !5, metadata !248, i32 48, i32 8, i32 2, i32 35} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!248 = metadata !{i32 786443, metadata !5, metadata !244, i32 48, i32 8, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!249 = metadata !{i32 50, i32 4, metadata !250, null}
!250 = metadata !{i32 786443, metadata !5, metadata !244, i32 48, i32 37, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!251 = metadata !{i32 50, i32 27, metadata !250, null}
!252 = metadata !{i32 51, i32 3, metadata !250, null}
!253 = metadata !{i32 48, i32 32, metadata !244, null}
!254 = metadata !{i32 52, i32 2, metadata !245, null}
!255 = metadata !{i32 47, i32 32, metadata !239, null}
!256 = metadata !{i32 54, i32 2, metadata !37, null}
!257 = metadata !{i32 54, i32 2, metadata !258, null}
!258 = metadata !{i32 786443, metadata !5, metadata !37, i32 54, i32 2, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!259 = metadata !{i32 54, i32 2, metadata !260, null}
!260 = metadata !{i32 786443, metadata !5, metadata !37, i32 54, i32 2, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!261 = metadata !{i32 54, i32 2, metadata !262, null}
!262 = metadata !{i32 786443, metadata !5, metadata !263, i32 54, i32 2, i32 4, i32 40} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!263 = metadata !{i32 786443, metadata !5, metadata !37, i32 54, i32 2, i32 3, i32 39} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/sharpen.c]
!264 = metadata !{i32 56, i32 2, metadata !37, null}
!265 = metadata !{i32 58, i32 2, metadata !37, null} ; [ DW_TAG_imported_module ]
!266 = metadata !{i32 786689, metadata !40, metadata !"M", metadata !6, i32 16777407, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 191]
!267 = metadata !{i32 191, i32 39, metadata !40, null}
!268 = metadata !{i32 786689, metadata !40, metadata !"RowIndex", metadata !6, i32 33554623, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [RowIndex] [line 191]
!269 = metadata !{i32 191, i32 46, metadata !40, null}
!270 = metadata !{i32 786689, metadata !40, metadata !"ColIndex", metadata !6, i32 50331839, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ColIndex] [line 191]
!271 = metadata !{i32 191, i32 60, metadata !40, null}
!272 = metadata !{i32 786688, metadata !40, metadata !"return_value", metadata !6, i32 193, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_value] [line 193]
!273 = metadata !{i32 193, i32 10, metadata !40, null}
!274 = metadata !{i32 194, i32 2, metadata !40, null}
!275 = metadata !{i32 195, i32 2, metadata !40, null}
