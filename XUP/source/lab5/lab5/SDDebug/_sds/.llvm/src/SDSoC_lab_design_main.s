; ModuleID = 'C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx--eabi"

%union.pixel = type { %struct.anon }
%struct.anon = type { i8, i8, i8 }

@sw_sds_counter_total = global [4 x i64] zeroinitializer, align 8
@sw_sds_counter_num_calls = global [4 x i32] zeroinitializer, align 4
@sw_sds_counter = global [4 x i64] zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"Running frame operations...\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Average SW cycles for all of the image functions:    %llu\0A\00", align 1
@dummyfill.p = private unnamed_addr constant %union.pixel { %struct.anon { i8 10, i8 20, i8 30 } }, align 1
@.str3 = private unnamed_addr constant [11 x i8] c"[%d,%d,%d]\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %i = alloca i32, align 4
  %array_c = alloca i32*, align 4
  %array_g_1 = alloca i8*, align 4
  %array_g_2 = alloca i8*, align 4
  %array_g_3 = alloca i8*, align 4
  %tmp = alloca i64, align 8
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !69), !dbg !70
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !71), !dbg !72
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !73), !dbg !74
  call void @llvm.dbg.declare(metadata !{i32** %array_c}, metadata !75), !dbg !76
  %4 = call i8* @sds_alloc(i32 8294400), !dbg !77
  %5 = bitcast i8* %4 to i32*, !dbg !77
  store i32* %5, i32** %array_c, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata !{i8** %array_g_1}, metadata !78), !dbg !79
  %6 = call i8* @sds_alloc(i32 2073600), !dbg !80
  store i8* %6, i8** %array_g_1, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata !{i8** %array_g_2}, metadata !81), !dbg !82
  %7 = call i8* @sds_alloc(i32 2073600), !dbg !83
  store i8* %7, i8** %array_g_2, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata !{i8** %array_g_3}, metadata !84), !dbg !85
  %8 = call i8* @sds_alloc(i32 2073600), !dbg !86
  store i8* %8, i8** %array_g_3, align 4, !dbg !86
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0)), !dbg !87
  %10 = load i32** %array_c, align 4, !dbg !88
  call void @dummyfill(i32* %10), !dbg !88
  %11 = call i64 @sds_clock_counter(), !dbg !89
  store i64 %11, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !89
  %12 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !89
  %13 = add i32 %12, 1, !dbg !89
  store i32 %13, i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !89
  store i32 5, i32* %i, align 4, !dbg !91
  br label %14, !dbg !91

; <label>:14                                      ; preds = %28, %0
  %15 = load i32* %i, align 4, !dbg !93
  %16 = icmp ne i32 %15, 0, !dbg !93
  br i1 %16, label %17, label %31, !dbg !93

; <label>:17                                      ; preds = %14
  %18 = load i32** %array_c, align 4, !dbg !96
  %19 = load i8** %array_g_1, align 4, !dbg !96
  %20 = call i32 @rgb_2_gray(i32* %18, i8* %19), !dbg !96
  %21 = load i8** %array_g_1, align 4, !dbg !98
  %22 = load i8** %array_g_2, align 4, !dbg !98
  %23 = call i32 @sharpen_filter(i8* %21, i8* %22), !dbg !98
  %24 = load i8** %array_g_2, align 4, !dbg !99
  %25 = load i8** %array_g_3, align 4, !dbg !99
  %26 = call i32 @sobel_filter(i8* %24, i8* %25), !dbg !99
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)), !dbg !100
  br label %28, !dbg !101

; <label>:28                                      ; preds = %17
  %29 = load i32* %i, align 4, !dbg !102
  %30 = add nsw i32 %29, -1, !dbg !102
  store i32 %30, i32* %i, align 4, !dbg !102
  br label %14, !dbg !102

; <label>:31                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i64* %tmp}, metadata !103), !dbg !105
  %32 = call i64 @sds_clock_counter(), !dbg !105
  store i64 %32, i64* %tmp, align 8, !dbg !105
  %33 = load i64* %tmp, align 8, !dbg !105
  %34 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !105
  %35 = icmp ult i64 %33, %34, !dbg !105
  br i1 %35, label %36, label %40, !dbg !105

; <label>:36                                      ; preds = %31
  %37 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !106
  %38 = load i64* %tmp, align 8, !dbg !106
  %39 = sub i64 %37, %38, !dbg !106
  br label %44, !dbg !106

; <label>:40                                      ; preds = %31
  %41 = load i64* %tmp, align 8, !dbg !108
  %42 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !108
  %43 = sub i64 %41, %42, !dbg !108
  br label %44, !dbg !108

; <label>:44                                      ; preds = %40, %36
  %45 = phi i64 [ %39, %36 ], [ %43, %40 ], !dbg !105
  %46 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !110
  %47 = add i64 %46, %45, !dbg !110
  store i64 %47, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !110
  %48 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !113
  %49 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !113
  %50 = zext i32 %49 to i64, !dbg !113
  %51 = udiv i64 %48, %50, !dbg !113
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str2, i32 0, i32 0), i64 %51), !dbg !113
  ret i32 0, !dbg !114
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i8* @sds_alloc(i32) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define void @dummyfill(i32* %f) #0 {
  %1 = alloca i32*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %p = alloca %union.pixel, align 1
  store i32* %f, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !115), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !117), !dbg !118
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !119), !dbg !120
  store i32 0, i32* %i, align 4, !dbg !121
  br label %2, !dbg !121

; <label>:2                                       ; preds = %38, %0
  %3 = load i32* %i, align 4, !dbg !123
  %4 = icmp slt i32 %3, 1080, !dbg !123
  br i1 %4, label %5, label %41, !dbg !123

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !126
  br label %6, !dbg !126

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %j, align 4, !dbg !129
  %8 = icmp slt i32 %7, 1920, !dbg !129
  br i1 %8, label %9, label %37, !dbg !129

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !132), !dbg !134
  %10 = load i32* %i, align 4, !dbg !135
  %11 = mul nsw i32 %10, 1920, !dbg !135
  %12 = load i32* %j, align 4, !dbg !135
  %13 = add nsw i32 %11, %12, !dbg !135
  store i32 %13, i32* %index, align 4, !dbg !135
  call void @llvm.dbg.declare(metadata !{%union.pixel* %p}, metadata !136), !dbg !151
  %14 = bitcast %union.pixel* %p to i8*, !dbg !152
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* getelementptr inbounds (%union.pixel* @dummyfill.p, i32 0, i32 0, i32 0), i32 3, i32 1, i1 false), !dbg !152
  %15 = bitcast %union.pixel* %p to %struct.anon*, !dbg !153
  %16 = getelementptr inbounds %struct.anon* %15, i32 0, i32 0, !dbg !153
  %17 = load i8* %16, align 1, !dbg !153
  %18 = zext i8 %17 to i32, !dbg !153
  %19 = shl i32 %18, 16, !dbg !153
  %20 = bitcast %union.pixel* %p to %struct.anon*, !dbg !153
  %21 = getelementptr inbounds %struct.anon* %20, i32 0, i32 1, !dbg !153
  %22 = load i8* %21, align 1, !dbg !153
  %23 = zext i8 %22 to i32, !dbg !153
  %24 = shl i32 %23, 8, !dbg !153
  %25 = or i32 %19, %24, !dbg !153
  %26 = bitcast %union.pixel* %p to %struct.anon*, !dbg !153
  %27 = getelementptr inbounds %struct.anon* %26, i32 0, i32 2, !dbg !153
  %28 = load i8* %27, align 1, !dbg !153
  %29 = zext i8 %28 to i32, !dbg !153
  %30 = or i32 %25, %29, !dbg !153
  %31 = load i32* %index, align 4, !dbg !153
  %32 = load i32** %1, align 4, !dbg !153
  %33 = getelementptr inbounds i32* %32, i32 %31, !dbg !153
  store i32 %30, i32* %33, align 4, !dbg !153
  br label %34, !dbg !154

; <label>:34                                      ; preds = %9
  %35 = load i32* %j, align 4, !dbg !155
  %36 = add nsw i32 %35, 1, !dbg !155
  store i32 %36, i32* %j, align 4, !dbg !155
  br label %6, !dbg !155

; <label>:37                                      ; preds = %6
  br label %38, !dbg !156

; <label>:38                                      ; preds = %37
  %39 = load i32* %i, align 4, !dbg !157
  %40 = add nsw i32 %39, 1, !dbg !157
  store i32 %40, i32* %i, align 4, !dbg !157
  br label %2, !dbg !157

; <label>:41                                      ; preds = %2
  ret void, !dbg !158
}

declare i64 @sds_clock_counter() #2

declare i32 @rgb_2_gray(i32*, i8*) #2

declare i32 @sharpen_filter(i8*, i8*) #2

declare i32 @sobel_filter(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define void @dummyprint_color(i32* %f) #0 {
  %1 = alloca i32*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %index = alloca i32, align 4
  %pixel = alloca i32, align 4
  %p = alloca %union.pixel, align 1
  store i32* %f, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !159), !dbg !160
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !161), !dbg !162
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !163), !dbg !164
  store i32 0, i32* %i, align 4, !dbg !165
  br label %2, !dbg !165

; <label>:2                                       ; preds = %52, %0
  %3 = load i32* %i, align 4, !dbg !167
  %4 = icmp slt i32 %3, 1080, !dbg !167
  br i1 %4, label %5, label %55, !dbg !167

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !170
  br label %6, !dbg !170

; <label>:6                                       ; preds = %47, %5
  %7 = load i32* %j, align 4, !dbg !173
  %8 = icmp slt i32 %7, 1920, !dbg !173
  br i1 %8, label %9, label %50, !dbg !173

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !176), !dbg !178
  %10 = load i32* %i, align 4, !dbg !179
  %11 = mul nsw i32 %10, 1920, !dbg !179
  %12 = load i32* %j, align 4, !dbg !179
  %13 = add nsw i32 %11, %12, !dbg !179
  store i32 %13, i32* %index, align 4, !dbg !179
  call void @llvm.dbg.declare(metadata !{i32* %pixel}, metadata !180), !dbg !181
  %14 = load i32* %index, align 4, !dbg !182
  %15 = load i32** %1, align 4, !dbg !182
  %16 = getelementptr inbounds i32* %15, i32 %14, !dbg !182
  %17 = load i32* %16, align 4, !dbg !182
  store i32 %17, i32* %pixel, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata !{%union.pixel* %p}, metadata !183), !dbg !184
  %18 = load i32* %pixel, align 4, !dbg !185
  %19 = ashr i32 %18, 16, !dbg !185
  %20 = trunc i32 %19 to i8, !dbg !185
  %21 = bitcast %union.pixel* %p to %struct.anon*, !dbg !185
  %22 = getelementptr inbounds %struct.anon* %21, i32 0, i32 0, !dbg !185
  store i8 %20, i8* %22, align 1, !dbg !185
  %23 = load i32* %pixel, align 4, !dbg !186
  %24 = ashr i32 %23, 8, !dbg !186
  %25 = and i32 %24, 255, !dbg !186
  %26 = trunc i32 %25 to i8, !dbg !186
  %27 = bitcast %union.pixel* %p to %struct.anon*, !dbg !186
  %28 = getelementptr inbounds %struct.anon* %27, i32 0, i32 1, !dbg !186
  store i8 %26, i8* %28, align 1, !dbg !186
  %29 = load i32* %pixel, align 4, !dbg !187
  %30 = and i32 %29, 255, !dbg !187
  %31 = trunc i32 %30 to i8, !dbg !187
  %32 = bitcast %union.pixel* %p to %struct.anon*, !dbg !187
  %33 = getelementptr inbounds %struct.anon* %32, i32 0, i32 2, !dbg !187
  store i8 %31, i8* %33, align 1, !dbg !187
  %34 = bitcast %union.pixel* %p to %struct.anon*, !dbg !188
  %35 = getelementptr inbounds %struct.anon* %34, i32 0, i32 0, !dbg !188
  %36 = load i8* %35, align 1, !dbg !188
  %37 = zext i8 %36 to i32, !dbg !188
  %38 = bitcast %union.pixel* %p to %struct.anon*, !dbg !188
  %39 = getelementptr inbounds %struct.anon* %38, i32 0, i32 1, !dbg !188
  %40 = load i8* %39, align 1, !dbg !188
  %41 = zext i8 %40 to i32, !dbg !188
  %42 = bitcast %union.pixel* %p to %struct.anon*, !dbg !188
  %43 = getelementptr inbounds %struct.anon* %42, i32 0, i32 2, !dbg !188
  %44 = load i8* %43, align 1, !dbg !188
  %45 = zext i8 %44 to i32, !dbg !188
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 %37, i32 %41, i32 %45), !dbg !188
  br label %47, !dbg !189

; <label>:47                                      ; preds = %9
  %48 = load i32* %j, align 4, !dbg !190
  %49 = add nsw i32 %48, 1, !dbg !190
  store i32 %49, i32* %j, align 4, !dbg !190
  br label %6, !dbg !190

; <label>:50                                      ; preds = %6
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !191
  br label %52, !dbg !192

; <label>:52                                      ; preds = %50
  %53 = load i32* %i, align 4, !dbg !193
  %54 = add nsw i32 %53, 1, !dbg !193
  store i32 %54, i32* %i, align 4, !dbg !193
  br label %2, !dbg !193

; <label>:55                                      ; preds = %2
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !194
  ret void, !dbg !195
}

; Function Attrs: nounwind
define void @dummyprint_gray(i8* %f) #0 {
  %1 = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gray_pixel = alloca i8, align 1
  store i8* %f, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !196), !dbg !197
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !198), !dbg !199
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !200), !dbg !201
  store i32 0, i32* %i, align 4, !dbg !202
  br label %2, !dbg !202

; <label>:2                                       ; preds = %25, %0
  %3 = load i32* %i, align 4, !dbg !204
  %4 = icmp slt i32 %3, 1080, !dbg !204
  br i1 %4, label %5, label %28, !dbg !204

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !207
  br label %6, !dbg !207

; <label>:6                                       ; preds = %20, %5
  %7 = load i32* %j, align 4, !dbg !210
  %8 = icmp slt i32 %7, 1920, !dbg !210
  br i1 %8, label %9, label %23, !dbg !210

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i8* %gray_pixel}, metadata !213), !dbg !215
  %10 = load i32* %i, align 4, !dbg !216
  %11 = mul nsw i32 %10, 1920, !dbg !216
  %12 = load i32* %j, align 4, !dbg !216
  %13 = add nsw i32 %11, %12, !dbg !216
  %14 = load i8** %1, align 4, !dbg !216
  %15 = getelementptr inbounds i8* %14, i32 %13, !dbg !216
  %16 = load i8* %15, align 1, !dbg !216
  store i8 %16, i8* %gray_pixel, align 1, !dbg !216
  %17 = load i8* %gray_pixel, align 1, !dbg !217
  %18 = zext i8 %17 to i32, !dbg !217
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 %18), !dbg !217
  br label %20, !dbg !218

; <label>:20                                      ; preds = %9
  %21 = load i32* %j, align 4, !dbg !219
  %22 = add nsw i32 %21, 1, !dbg !219
  store i32 %22, i32* %j, align 4, !dbg !219
  br label %6, !dbg !219

; <label>:23                                      ; preds = %6
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !220
  br label %25, !dbg !221

; <label>:25                                      ; preds = %23
  %26 = load i32* %i, align 4, !dbg !222
  %27 = add nsw i32 %26, 1, !dbg !222
  store i32 %27, i32* %i, align 4, !dbg !222
  br label %2, !dbg !222

; <label>:28                                      ; preds = %2
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !223
  ret void, !dbg !224
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !52, !54, !46, !55, !56}
!xidane.function_declaration_filename = !{!39, !57, !41, !58, !43, !59, !45, !57, !47, !58, !49, !60, !51, !61, !53, !62, !54, !57, !55, !57}
!xidane.ExternC = !{!39, !41, !43, !45, !47, !49, !51, !53, !54, !55}
!xidane.function_argument_annotation = !{!49, !63, !51, !63, !53, !63}
!llvm.module.flags = !{!64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !30, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab5\SDDebug/../src\SDSoC_lab_design_main.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5CSDSoC_lab_design_main.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !13, metadata !22, metadata !23}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 63, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 63} ; [ DW_TAG_subprogram ] [line 63] [def] [main]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dummyfill", metadata !"dummyfill", metadata !"", i32 134, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @dummyfill, null, null, metadata !2, i32 134} ; [ DW_TAG_subprogram ] [line 134] [def] [dummyfill]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint32_t]
!17 = metadata !{i32 786454, metadata !18, null, metadata !"uint32_t", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [uint32_t] [line 66, size 0, align 0, offset 0] [from __uint32_t]
!18 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!19 = metadata !{i32 786454, metadata !20, null, metadata !"__uint32_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [__uint32_t] [line 65, size 0, align 0, offset 0] [from unsigned int]
!20 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cmachine/_default_types.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!21 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!22 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dummyprint_color", metadata !"dummyprint_color", metadata !"", i32 146, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @dummyprint_color, null, null, metadata !2, i32 146} ; [ DW_TAG_subprogram ] [line 146] [def] [dummyprint_color]
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dummyprint_gray", metadata !"dummyprint_gray", metadata !"", i32 164, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @dummyprint_gray, null, null, metadata !2, i32 164} ; [ DW_TAG_subprogram ] [line 164] [def] [dummyprint_gray]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !26}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint8_t]
!27 = metadata !{i32 786454, metadata !18, null, metadata !"uint8_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint8_t] [line 42, size 0, align 0, offset 0] [from __uint8_t]
!28 = metadata !{i32 786454, metadata !20, null, metadata !"__uint8_t", i32 29, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [__uint8_t] [line 29, size 0, align 0, offset 0] [from unsigned char]
!29 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!30 = metadata !{metadata !31, metadata !36, metadata !38}
!31 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter_total", metadata !"sw_sds_counter_total", metadata !"", metadata !6, i32 36, metadata !32, i32 0, i32 1, [4 x i64]* @sw_sds_counter_total, null} ; [ DW_TAG_variable ] [sw_sds_counter_total] [line 36] [def]
!32 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !33, metadata !34, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from long long unsigned int]
!33 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!36 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter_num_calls", metadata !"sw_sds_counter_num_calls", metadata !"", metadata !6, i32 37, metadata !37, i32 0, i32 1, [4 x i32]* @sw_sds_counter_num_calls, null} ; [ DW_TAG_variable ] [sw_sds_counter_num_calls] [line 37] [def]
!37 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !21, metadata !34, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from unsigned int]
!38 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter", metadata !"sw_sds_counter", metadata !"", metadata !6, i32 38, metadata !32, i32 0, i32 1, [4 x i64]* @sw_sds_counter, null} ; [ DW_TAG_variable ] [sw_sds_counter] [line 38] [def]
!39 = metadata !{i32 (i32, i8**)* @main}
!40 = metadata !{metadata !"int.int.0.char *[].1"}
!41 = metadata !{i8* (i32)* @sds_alloc}
!42 = metadata !{metadata !"void .size_t.0"}
!43 = metadata !{i32 (i8*, ...)* @printf}
!44 = metadata !{metadata !"int.const char *restrict.1"}
!45 = metadata !{void (i32*)* @dummyfill}
!46 = metadata !{metadata !"void.uint32_t *.1"}
!47 = metadata !{i64 ()* @sds_clock_counter}
!48 = metadata !{metadata !"unsigned long long."}
!49 = metadata !{i32 (i32*, i8*)* @rgb_2_gray}
!50 = metadata !{metadata !"int.uint32_t *.1.uint8_t *.1"}
!51 = metadata !{i32 (i8*, i8*)* @sharpen_filter}
!52 = metadata !{metadata !"int.uint8_t *.1.uint8_t *.1"}
!53 = metadata !{i32 (i8*, i8*)* @sobel_filter}
!54 = metadata !{void (i32*)* @dummyprint_color}
!55 = metadata !{void (i8*)* @dummyprint_gray}
!56 = metadata !{metadata !"void.uint8_t *.1"}
!57 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c"}
!58 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/arm-xilinx-eabi/include\5Csds_lib.h"}
!59 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cstdio.h"}
!60 = metadata !{metadata !"../src/rgb_2_gray.h"}
!61 = metadata !{metadata !"../src/sharpen.h"}
!62 = metadata !{metadata !"../src/edge_detect.h"}
!63 = metadata !{metadata !"input,,2073600,,,,,, output,,2073600,,,,,, "}
!64 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!65 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!66 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!67 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!68 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!69 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !6, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 63]
!70 = metadata !{i32 63, i32 14, metadata !4, null}
!71 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !6, i32 33554495, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 63]
!72 = metadata !{i32 63, i32 26, metadata !4, null}
!73 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !6, i32 65, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 65]
!74 = metadata !{i32 65, i32 6, metadata !4, null}
!75 = metadata !{i32 786688, metadata !4, metadata !"array_c", metadata !6, i32 68, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_c] [line 68]
!76 = metadata !{i32 68, i32 12, metadata !4, null}
!77 = metadata !{i32 68, i32 34, metadata !4, null}
!78 = metadata !{i32 786688, metadata !4, metadata !"array_g_1", metadata !6, i32 69, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_g_1] [line 69]
!79 = metadata !{i32 69, i32 11, metadata !4, null}
!80 = metadata !{i32 69, i32 34, metadata !4, null}
!81 = metadata !{i32 786688, metadata !4, metadata !"array_g_2", metadata !6, i32 70, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_g_2] [line 70]
!82 = metadata !{i32 70, i32 11, metadata !4, null}
!83 = metadata !{i32 70, i32 34, metadata !4, null}
!84 = metadata !{i32 786688, metadata !4, metadata !"array_g_3", metadata !6, i32 71, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_g_3] [line 71]
!85 = metadata !{i32 71, i32 11, metadata !4, null}
!86 = metadata !{i32 71, i32 34, metadata !4, null}
!87 = metadata !{i32 74, i32 2, metadata !4, null}
!88 = metadata !{i32 77, i32 2, metadata !4, null}
!89 = metadata !{i32 80, i32 2, metadata !90, null}
!90 = metadata !{i32 786443, metadata !5, metadata !4, i32 80, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!91 = metadata !{i32 81, i32 7, metadata !92, null}
!92 = metadata !{i32 786443, metadata !5, metadata !4, i32 81, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!93 = metadata !{i32 81, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !5, metadata !95, i32 81, i32 7, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!95 = metadata !{i32 786443, metadata !5, metadata !92, i32 81, i32 7, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!96 = metadata !{i32 86, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !5, metadata !92, i32 81, i32 31, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!98 = metadata !{i32 93, i32 3, metadata !97, null}
!99 = metadata !{i32 100, i32 3, metadata !97, null}
!100 = metadata !{i32 105, i32 3, metadata !97, null}
!101 = metadata !{i32 106, i32 2, metadata !97, null}
!102 = metadata !{i32 81, i32 26, metadata !92, null}
!103 = metadata !{i32 786688, metadata !104, metadata !"tmp", metadata !6, i32 107, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 107]
!104 = metadata !{i32 786443, metadata !5, metadata !4, i32 107, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!105 = metadata !{i32 107, i32 2, metadata !104, null}
!106 = metadata !{i32 107, i32 2, metadata !107, null}
!107 = metadata !{i32 786443, metadata !5, metadata !104, i32 107, i32 2, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!108 = metadata !{i32 107, i32 2, metadata !109, null}
!109 = metadata !{i32 786443, metadata !5, metadata !104, i32 107, i32 2, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!110 = metadata !{i32 107, i32 2, metadata !111, null}
!111 = metadata !{i32 786443, metadata !5, metadata !112, i32 107, i32 2, i32 4, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!112 = metadata !{i32 786443, metadata !5, metadata !104, i32 107, i32 2, i32 3, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!113 = metadata !{i32 117, i32 2, metadata !4, null}
!114 = metadata !{i32 128, i32 2, metadata !4, null}
!115 = metadata !{i32 786689, metadata !13, metadata !"f", metadata !6, i32 16777350, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 134]
!116 = metadata !{i32 134, i32 26, metadata !13, null}
!117 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 135]
!118 = metadata !{i32 135, i32 6, metadata !13, null}
!119 = metadata !{i32 786688, metadata !13, metadata !"j", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 135]
!120 = metadata !{i32 135, i32 9, metadata !13, null}
!121 = metadata !{i32 136, i32 7, metadata !122, null}
!122 = metadata !{i32 786443, metadata !5, metadata !13, i32 136, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!123 = metadata !{i32 136, i32 7, metadata !124, null}
!124 = metadata !{i32 786443, metadata !5, metadata !125, i32 136, i32 7, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!125 = metadata !{i32 786443, metadata !5, metadata !122, i32 136, i32 7, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!126 = metadata !{i32 137, i32 8, metadata !127, null}
!127 = metadata !{i32 786443, metadata !5, metadata !128, i32 137, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!128 = metadata !{i32 786443, metadata !5, metadata !122, i32 136, i32 37, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!129 = metadata !{i32 137, i32 8, metadata !130, null}
!130 = metadata !{i32 786443, metadata !5, metadata !131, i32 137, i32 8, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!131 = metadata !{i32 786443, metadata !5, metadata !127, i32 137, i32 8, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!132 = metadata !{i32 786688, metadata !133, metadata !"index", metadata !6, i32 138, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 138]
!133 = metadata !{i32 786443, metadata !5, metadata !127, i32 137, i32 37, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!134 = metadata !{i32 138, i32 8, metadata !133, null}
!135 = metadata !{i32 138, i32 4, metadata !133, null}
!136 = metadata !{i32 786688, metadata !133, metadata !"p", metadata !6, i32 139, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 139]
!137 = metadata !{i32 786454, metadata !138, null, metadata !"pixel_t", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [pixel_t] [line 47, size 0, align 0, offset 0] [from pixel]
!138 = metadata !{metadata !"../src/lab_design.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5\5CSDDebug"}
!139 = metadata !{i32 786455, metadata !138, null, metadata !"pixel", i32 38, i64 24, i64 8, i64 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_union_type ] [pixel] [line 38, size 24, align 8, offset 0] [def] [from ]
!140 = metadata !{metadata !141, metadata !147}
!141 = metadata !{i32 786445, metadata !138, metadata !139, metadata !"", i32 39, i64 24, i64 8, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [line 39, size 24, align 8, offset 0] [from ]
!142 = metadata !{i32 786451, metadata !138, metadata !139, metadata !"", i32 39, i64 24, i64 8, i32 0, i32 0, null, metadata !143, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 24, align 8, offset 0] [def] [from ]
!143 = metadata !{metadata !144, metadata !145, metadata !146}
!144 = metadata !{i32 786445, metadata !138, metadata !142, metadata !"red", i32 40, i64 8, i64 8, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [red] [line 40, size 8, align 8, offset 0] [from uint8_t]
!145 = metadata !{i32 786445, metadata !138, metadata !142, metadata !"green", i32 41, i64 8, i64 8, i64 8, i32 0, metadata !27} ; [ DW_TAG_member ] [green] [line 41, size 8, align 8, offset 8] [from uint8_t]
!146 = metadata !{i32 786445, metadata !138, metadata !142, metadata !"blue", i32 42, i64 8, i64 8, i64 16, i32 0, metadata !27} ; [ DW_TAG_member ] [blue] [line 42, size 8, align 8, offset 16] [from uint8_t]
!147 = metadata !{i32 786445, metadata !138, metadata !139, metadata !"", i32 44, i64 8, i64 8, i64 0, i32 0, metadata !148} ; [ DW_TAG_member ] [line 44, size 8, align 8, offset 0] [from ]
!148 = metadata !{i32 786451, metadata !138, metadata !139, metadata !"", i32 44, i64 8, i64 8, i32 0, i32 0, null, metadata !149, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 44, size 8, align 8, offset 0] [def] [from ]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786445, metadata !138, metadata !148, metadata !"gray", i32 45, i64 8, i64 8, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [gray] [line 45, size 8, align 8, offset 0] [from uint8_t]
!151 = metadata !{i32 139, i32 12, metadata !133, null}
!152 = metadata !{i32 139, i32 4, metadata !133, null}
!153 = metadata !{i32 140, i32 4, metadata !133, null}
!154 = metadata !{i32 141, i32 3, metadata !133, null}
!155 = metadata !{i32 137, i32 32, metadata !127, null}
!156 = metadata !{i32 142, i32 2, metadata !128, null}
!157 = metadata !{i32 136, i32 32, metadata !122, null}
!158 = metadata !{i32 143, i32 1, metadata !13, null}
!159 = metadata !{i32 786689, metadata !22, metadata !"f", metadata !6, i32 16777362, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 146]
!160 = metadata !{i32 146, i32 33, metadata !22, null}
!161 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 147]
!162 = metadata !{i32 147, i32 6, metadata !22, null}
!163 = metadata !{i32 786688, metadata !22, metadata !"j", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 147]
!164 = metadata !{i32 147, i32 9, metadata !22, null}
!165 = metadata !{i32 148, i32 7, metadata !166, null}
!166 = metadata !{i32 786443, metadata !5, metadata !22, i32 148, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!167 = metadata !{i32 148, i32 7, metadata !168, null}
!168 = metadata !{i32 786443, metadata !5, metadata !169, i32 148, i32 7, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!169 = metadata !{i32 786443, metadata !5, metadata !166, i32 148, i32 7, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!170 = metadata !{i32 149, i32 8, metadata !171, null}
!171 = metadata !{i32 786443, metadata !5, metadata !172, i32 149, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!172 = metadata !{i32 786443, metadata !5, metadata !166, i32 148, i32 37, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!173 = metadata !{i32 149, i32 8, metadata !174, null}
!174 = metadata !{i32 786443, metadata !5, metadata !175, i32 149, i32 8, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!175 = metadata !{i32 786443, metadata !5, metadata !171, i32 149, i32 8, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!176 = metadata !{i32 786688, metadata !177, metadata !"index", metadata !6, i32 150, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 150]
!177 = metadata !{i32 786443, metadata !5, metadata !171, i32 149, i32 37, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!178 = metadata !{i32 150, i32 8, metadata !177, null}
!179 = metadata !{i32 150, i32 4, metadata !177, null}
!180 = metadata !{i32 786688, metadata !177, metadata !"pixel", metadata !6, i32 151, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 151]
!181 = metadata !{i32 151, i32 8, metadata !177, null}
!182 = metadata !{i32 151, i32 4, metadata !177, null}
!183 = metadata !{i32 786688, metadata !177, metadata !"p", metadata !6, i32 152, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 152]
!184 = metadata !{i32 152, i32 12, metadata !177, null}
!185 = metadata !{i32 153, i32 4, metadata !177, null}
!186 = metadata !{i32 154, i32 4, metadata !177, null}
!187 = metadata !{i32 155, i32 4, metadata !177, null}
!188 = metadata !{i32 156, i32 4, metadata !177, null}
!189 = metadata !{i32 157, i32 3, metadata !177, null}
!190 = metadata !{i32 149, i32 32, metadata !171, null}
!191 = metadata !{i32 158, i32 3, metadata !172, null}
!192 = metadata !{i32 159, i32 2, metadata !172, null}
!193 = metadata !{i32 148, i32 32, metadata !166, null}
!194 = metadata !{i32 160, i32 2, metadata !22, null}
!195 = metadata !{i32 161, i32 1, metadata !22, null}
!196 = metadata !{i32 786689, metadata !23, metadata !"f", metadata !6, i32 16777380, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 164]
!197 = metadata !{i32 164, i32 31, metadata !23, null}
!198 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 165]
!199 = metadata !{i32 165, i32 6, metadata !23, null}
!200 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 165]
!201 = metadata !{i32 165, i32 9, metadata !23, null}
!202 = metadata !{i32 166, i32 7, metadata !203, null}
!203 = metadata !{i32 786443, metadata !5, metadata !23, i32 166, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!204 = metadata !{i32 166, i32 7, metadata !205, null}
!205 = metadata !{i32 786443, metadata !5, metadata !206, i32 166, i32 7, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!206 = metadata !{i32 786443, metadata !5, metadata !203, i32 166, i32 7, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!207 = metadata !{i32 167, i32 8, metadata !208, null}
!208 = metadata !{i32 786443, metadata !5, metadata !209, i32 167, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!209 = metadata !{i32 786443, metadata !5, metadata !203, i32 166, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!210 = metadata !{i32 167, i32 8, metadata !211, null}
!211 = metadata !{i32 786443, metadata !5, metadata !212, i32 167, i32 8, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!212 = metadata !{i32 786443, metadata !5, metadata !208, i32 167, i32 8, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!213 = metadata !{i32 786688, metadata !214, metadata !"gray_pixel", metadata !6, i32 168, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gray_pixel] [line 168]
!214 = metadata !{i32 786443, metadata !5, metadata !208, i32 167, i32 37, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5\SDDebug/C:/xup/SDSoC/labs/lab5/src/SDSoC_lab_design_main.c]
!215 = metadata !{i32 168, i32 12, metadata !214, null}
!216 = metadata !{i32 168, i32 4, metadata !214, null}
!217 = metadata !{i32 169, i32 4, metadata !214, null}
!218 = metadata !{i32 170, i32 3, metadata !214, null}
!219 = metadata !{i32 167, i32 32, metadata !208, null}
!220 = metadata !{i32 171, i32 3, metadata !209, null}
!221 = metadata !{i32 172, i32 2, metadata !209, null}
!222 = metadata !{i32 166, i32 32, metadata !203, null}
!223 = metadata !{i32 173, i32 2, metadata !23, null}
!224 = metadata !{i32 174, i32 1, metadata !23, null}
