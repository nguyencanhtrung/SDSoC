; ModuleID = 'C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

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
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !66), !dbg !67
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !68), !dbg !69
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !70), !dbg !71
  call void @llvm.dbg.declare(metadata !{i32** %array_c}, metadata !72), !dbg !73
  %4 = call i8* @sds_alloc(i32 8294400), !dbg !74
  %5 = bitcast i8* %4 to i32*, !dbg !74
  store i32* %5, i32** %array_c, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata !{i8** %array_g_1}, metadata !75), !dbg !76
  %6 = call i8* @sds_alloc(i32 2073600), !dbg !77
  store i8* %6, i8** %array_g_1, align 4, !dbg !77
  call void @llvm.dbg.declare(metadata !{i8** %array_g_2}, metadata !78), !dbg !79
  %7 = call i8* @sds_alloc(i32 2073600), !dbg !80
  store i8* %7, i8** %array_g_2, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata !{i8** %array_g_3}, metadata !81), !dbg !82
  %8 = call i8* @sds_alloc(i32 2073600), !dbg !83
  store i8* %8, i8** %array_g_3, align 4, !dbg !83
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str, i32 0, i32 0)), !dbg !84
  %10 = load i32** %array_c, align 4, !dbg !85
  call void @dummyfill(i32* %10), !dbg !85
  %11 = call i64 @sds_clock_counter(), !dbg !86
  store i64 %11, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !86
  %12 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !86
  %13 = add i32 %12, 1, !dbg !86
  store i32 %13, i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !86
  store i32 5, i32* %i, align 4, !dbg !88
  br label %14, !dbg !88

; <label>:14                                      ; preds = %28, %0
  %15 = load i32* %i, align 4, !dbg !90
  %16 = icmp ne i32 %15, 0, !dbg !90
  br i1 %16, label %17, label %31, !dbg !90

; <label>:17                                      ; preds = %14
  %18 = load i32** %array_c, align 4, !dbg !93
  %19 = load i8** %array_g_1, align 4, !dbg !93
  %20 = call i32 @rgb_2_gray(i32* %18, i8* %19), !dbg !93
  %21 = load i8** %array_g_1, align 4, !dbg !95
  %22 = load i8** %array_g_2, align 4, !dbg !95
  %23 = call i32 @sharpen_filter(i8* %21, i8* %22), !dbg !95
  %24 = load i8** %array_g_2, align 4, !dbg !96
  %25 = load i8** %array_g_3, align 4, !dbg !96
  %26 = call i32 @sobel_filter(i8* %24, i8* %25), !dbg !96
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)), !dbg !97
  br label %28, !dbg !98

; <label>:28                                      ; preds = %17
  %29 = load i32* %i, align 4, !dbg !99
  %30 = add nsw i32 %29, -1, !dbg !99
  store i32 %30, i32* %i, align 4, !dbg !99
  br label %14, !dbg !99

; <label>:31                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i64* %tmp}, metadata !100), !dbg !102
  %32 = call i64 @sds_clock_counter(), !dbg !102
  store i64 %32, i64* %tmp, align 8, !dbg !102
  %33 = load i64* %tmp, align 8, !dbg !102
  %34 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !102
  %35 = icmp ult i64 %33, %34, !dbg !102
  br i1 %35, label %36, label %40, !dbg !102

; <label>:36                                      ; preds = %31
  %37 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !103
  %38 = load i64* %tmp, align 8, !dbg !103
  %39 = sub i64 %37, %38, !dbg !103
  br label %44, !dbg !103

; <label>:40                                      ; preds = %31
  %41 = load i64* %tmp, align 8, !dbg !105
  %42 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !105
  %43 = sub i64 %41, %42, !dbg !105
  br label %44, !dbg !105

; <label>:44                                      ; preds = %40, %36
  %45 = phi i64 [ %39, %36 ], [ %43, %40 ], !dbg !102
  %46 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !107
  %47 = add i64 %46, %45, !dbg !107
  store i64 %47, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !107
  %48 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !110
  %49 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !110
  %50 = zext i32 %49 to i64, !dbg !110
  %51 = udiv i64 %48, %50, !dbg !110
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str2, i32 0, i32 0), i64 %51), !dbg !110
  ret i32 0, !dbg !111
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
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !112), !dbg !113
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !114), !dbg !115
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !116), !dbg !117
  store i32 0, i32* %i, align 4, !dbg !118
  br label %2, !dbg !118

; <label>:2                                       ; preds = %38, %0
  %3 = load i32* %i, align 4, !dbg !120
  %4 = icmp slt i32 %3, 1080, !dbg !120
  br i1 %4, label %5, label %41, !dbg !120

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !123
  br label %6, !dbg !123

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %j, align 4, !dbg !126
  %8 = icmp slt i32 %7, 1920, !dbg !126
  br i1 %8, label %9, label %37, !dbg !126

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !129), !dbg !131
  %10 = load i32* %i, align 4, !dbg !132
  %11 = mul nsw i32 %10, 1920, !dbg !132
  %12 = load i32* %j, align 4, !dbg !132
  %13 = add nsw i32 %11, %12, !dbg !132
  store i32 %13, i32* %index, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata !{%union.pixel* %p}, metadata !133), !dbg !148
  %14 = bitcast %union.pixel* %p to i8*, !dbg !149
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* getelementptr inbounds (%union.pixel* @dummyfill.p, i32 0, i32 0, i32 0), i32 3, i32 1, i1 false), !dbg !149
  %15 = bitcast %union.pixel* %p to %struct.anon*, !dbg !150
  %16 = getelementptr inbounds %struct.anon* %15, i32 0, i32 0, !dbg !150
  %17 = load i8* %16, align 1, !dbg !150
  %18 = zext i8 %17 to i32, !dbg !150
  %19 = shl i32 %18, 16, !dbg !150
  %20 = bitcast %union.pixel* %p to %struct.anon*, !dbg !150
  %21 = getelementptr inbounds %struct.anon* %20, i32 0, i32 1, !dbg !150
  %22 = load i8* %21, align 1, !dbg !150
  %23 = zext i8 %22 to i32, !dbg !150
  %24 = shl i32 %23, 8, !dbg !150
  %25 = or i32 %19, %24, !dbg !150
  %26 = bitcast %union.pixel* %p to %struct.anon*, !dbg !150
  %27 = getelementptr inbounds %struct.anon* %26, i32 0, i32 2, !dbg !150
  %28 = load i8* %27, align 1, !dbg !150
  %29 = zext i8 %28 to i32, !dbg !150
  %30 = or i32 %25, %29, !dbg !150
  %31 = load i32* %index, align 4, !dbg !150
  %32 = load i32** %1, align 4, !dbg !150
  %33 = getelementptr inbounds i32* %32, i32 %31, !dbg !150
  store i32 %30, i32* %33, align 4, !dbg !150
  br label %34, !dbg !151

; <label>:34                                      ; preds = %9
  %35 = load i32* %j, align 4, !dbg !152
  %36 = add nsw i32 %35, 1, !dbg !152
  store i32 %36, i32* %j, align 4, !dbg !152
  br label %6, !dbg !152

; <label>:37                                      ; preds = %6
  br label %38, !dbg !153

; <label>:38                                      ; preds = %37
  %39 = load i32* %i, align 4, !dbg !154
  %40 = add nsw i32 %39, 1, !dbg !154
  store i32 %40, i32* %i, align 4, !dbg !154
  br label %2, !dbg !154

; <label>:41                                      ; preds = %2
  ret void, !dbg !155
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
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !156), !dbg !157
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !158), !dbg !159
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !160), !dbg !161
  store i32 0, i32* %i, align 4, !dbg !162
  br label %2, !dbg !162

; <label>:2                                       ; preds = %52, %0
  %3 = load i32* %i, align 4, !dbg !164
  %4 = icmp slt i32 %3, 1080, !dbg !164
  br i1 %4, label %5, label %55, !dbg !164

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !167
  br label %6, !dbg !167

; <label>:6                                       ; preds = %47, %5
  %7 = load i32* %j, align 4, !dbg !170
  %8 = icmp slt i32 %7, 1920, !dbg !170
  br i1 %8, label %9, label %50, !dbg !170

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !173), !dbg !175
  %10 = load i32* %i, align 4, !dbg !176
  %11 = mul nsw i32 %10, 1920, !dbg !176
  %12 = load i32* %j, align 4, !dbg !176
  %13 = add nsw i32 %11, %12, !dbg !176
  store i32 %13, i32* %index, align 4, !dbg !176
  call void @llvm.dbg.declare(metadata !{i32* %pixel}, metadata !177), !dbg !178
  %14 = load i32* %index, align 4, !dbg !179
  %15 = load i32** %1, align 4, !dbg !179
  %16 = getelementptr inbounds i32* %15, i32 %14, !dbg !179
  %17 = load i32* %16, align 4, !dbg !179
  store i32 %17, i32* %pixel, align 4, !dbg !179
  call void @llvm.dbg.declare(metadata !{%union.pixel* %p}, metadata !180), !dbg !181
  %18 = load i32* %pixel, align 4, !dbg !182
  %19 = ashr i32 %18, 16, !dbg !182
  %20 = trunc i32 %19 to i8, !dbg !182
  %21 = bitcast %union.pixel* %p to %struct.anon*, !dbg !182
  %22 = getelementptr inbounds %struct.anon* %21, i32 0, i32 0, !dbg !182
  store i8 %20, i8* %22, align 1, !dbg !182
  %23 = load i32* %pixel, align 4, !dbg !183
  %24 = ashr i32 %23, 8, !dbg !183
  %25 = and i32 %24, 255, !dbg !183
  %26 = trunc i32 %25 to i8, !dbg !183
  %27 = bitcast %union.pixel* %p to %struct.anon*, !dbg !183
  %28 = getelementptr inbounds %struct.anon* %27, i32 0, i32 1, !dbg !183
  store i8 %26, i8* %28, align 1, !dbg !183
  %29 = load i32* %pixel, align 4, !dbg !184
  %30 = and i32 %29, 255, !dbg !184
  %31 = trunc i32 %30 to i8, !dbg !184
  %32 = bitcast %union.pixel* %p to %struct.anon*, !dbg !184
  %33 = getelementptr inbounds %struct.anon* %32, i32 0, i32 2, !dbg !184
  store i8 %31, i8* %33, align 1, !dbg !184
  %34 = bitcast %union.pixel* %p to %struct.anon*, !dbg !185
  %35 = getelementptr inbounds %struct.anon* %34, i32 0, i32 0, !dbg !185
  %36 = load i8* %35, align 1, !dbg !185
  %37 = zext i8 %36 to i32, !dbg !185
  %38 = bitcast %union.pixel* %p to %struct.anon*, !dbg !185
  %39 = getelementptr inbounds %struct.anon* %38, i32 0, i32 1, !dbg !185
  %40 = load i8* %39, align 1, !dbg !185
  %41 = zext i8 %40 to i32, !dbg !185
  %42 = bitcast %union.pixel* %p to %struct.anon*, !dbg !185
  %43 = getelementptr inbounds %struct.anon* %42, i32 0, i32 2, !dbg !185
  %44 = load i8* %43, align 1, !dbg !185
  %45 = zext i8 %44 to i32, !dbg !185
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 %37, i32 %41, i32 %45), !dbg !185
  br label %47, !dbg !186

; <label>:47                                      ; preds = %9
  %48 = load i32* %j, align 4, !dbg !187
  %49 = add nsw i32 %48, 1, !dbg !187
  store i32 %49, i32* %j, align 4, !dbg !187
  br label %6, !dbg !187

; <label>:50                                      ; preds = %6
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !188
  br label %52, !dbg !189

; <label>:52                                      ; preds = %50
  %53 = load i32* %i, align 4, !dbg !190
  %54 = add nsw i32 %53, 1, !dbg !190
  store i32 %54, i32* %i, align 4, !dbg !190
  br label %2, !dbg !190

; <label>:55                                      ; preds = %2
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind
define void @dummyprint_gray(i8* %f) #0 {
  %1 = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gray_pixel = alloca i8, align 1
  store i8* %f, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !193), !dbg !194
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !195), !dbg !196
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !197), !dbg !198
  store i32 0, i32* %i, align 4, !dbg !199
  br label %2, !dbg !199

; <label>:2                                       ; preds = %25, %0
  %3 = load i32* %i, align 4, !dbg !201
  %4 = icmp slt i32 %3, 1080, !dbg !201
  br i1 %4, label %5, label %28, !dbg !201

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !204
  br label %6, !dbg !204

; <label>:6                                       ; preds = %20, %5
  %7 = load i32* %j, align 4, !dbg !207
  %8 = icmp slt i32 %7, 1920, !dbg !207
  br i1 %8, label %9, label %23, !dbg !207

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i8* %gray_pixel}, metadata !210), !dbg !212
  %10 = load i32* %i, align 4, !dbg !213
  %11 = mul nsw i32 %10, 1920, !dbg !213
  %12 = load i32* %j, align 4, !dbg !213
  %13 = add nsw i32 %11, %12, !dbg !213
  %14 = load i8** %1, align 4, !dbg !213
  %15 = getelementptr inbounds i8* %14, i32 %13, !dbg !213
  %16 = load i8* %15, align 1, !dbg !213
  store i8 %16, i8* %gray_pixel, align 1, !dbg !213
  %17 = load i8* %gray_pixel, align 1, !dbg !214
  %18 = zext i8 %17 to i32, !dbg !214
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 %18), !dbg !214
  br label %20, !dbg !215

; <label>:20                                      ; preds = %9
  %21 = load i32* %j, align 4, !dbg !216
  %22 = add nsw i32 %21, 1, !dbg !216
  store i32 %22, i32* %j, align 4, !dbg !216
  br label %6, !dbg !216

; <label>:23                                      ; preds = %6
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !217
  br label %25, !dbg !218

; <label>:25                                      ; preds = %23
  %26 = load i32* %i, align 4, !dbg !219
  %27 = add nsw i32 %26, 1, !dbg !219
  store i32 %27, i32* %i, align 4, !dbg !219
  br label %2, !dbg !219

; <label>:28                                      ; preds = %2
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str4, i32 0, i32 0)), !dbg !220
  ret void, !dbg !221
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !49, !51, !43, !52, !53}
!xidane.function_declaration_filename = !{!36, !54, !38, !55, !40, !56, !42, !54, !44, !55, !46, !57, !48, !58, !50, !59, !51, !54, !52, !54}
!xidane.ExternC = !{!36, !38, !40, !42, !44, !46, !48, !50, !51, !52}
!xidane.function_argument_annotation = !{!46, !60, !48, !60, !50, !60}
!llvm.module.flags = !{!61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !27, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab5a\SDDebug/../src\SDSoC_lab_design_main.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5CSDSoC_lab_design_main.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !13, metadata !20, metadata !21}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 63, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 63} ; [ DW_TAG_subprogram ] [line 63] [def] [main]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
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
!17 = metadata !{i32 786454, metadata !18, null, metadata !"uint32_t", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!18 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!19 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dummyprint_color", metadata !"dummyprint_color", metadata !"", i32 146, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @dummyprint_color, null, null, metadata !2, i32 146} ; [ DW_TAG_subprogram ] [line 146] [def] [dummyprint_color]
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dummyprint_gray", metadata !"dummyprint_gray", metadata !"", i32 164, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @dummyprint_gray, null, null, metadata !2, i32 164} ; [ DW_TAG_subprogram ] [line 164] [def] [dummyprint_gray]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint8_t]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"uint8_t", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!26 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!27 = metadata !{metadata !28, metadata !33, metadata !35}
!28 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter_total", metadata !"sw_sds_counter_total", metadata !"", metadata !6, i32 36, metadata !29, i32 0, i32 1, [4 x i64]* @sw_sds_counter_total, null} ; [ DW_TAG_variable ] [sw_sds_counter_total] [line 36] [def]
!29 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !30, metadata !31, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from long long unsigned int]
!30 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!33 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter_num_calls", metadata !"sw_sds_counter_num_calls", metadata !"", metadata !6, i32 37, metadata !34, i32 0, i32 1, [4 x i32]* @sw_sds_counter_num_calls, null} ; [ DW_TAG_variable ] [sw_sds_counter_num_calls] [line 37] [def]
!34 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !19, metadata !31, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from unsigned int]
!35 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter", metadata !"sw_sds_counter", metadata !"", metadata !6, i32 38, metadata !29, i32 0, i32 1, [4 x i64]* @sw_sds_counter, null} ; [ DW_TAG_variable ] [sw_sds_counter] [line 38] [def]
!36 = metadata !{i32 (i32, i8**)* @main}
!37 = metadata !{metadata !"int.int.0.char *[].1"}
!38 = metadata !{i8* (i32)* @sds_alloc}
!39 = metadata !{metadata !"void .size_t.0"}
!40 = metadata !{i32 (i8*, ...)* @printf}
!41 = metadata !{metadata !"int.const char *restrict.1"}
!42 = metadata !{void (i32*)* @dummyfill}
!43 = metadata !{metadata !"void.uint32_t *.1"}
!44 = metadata !{i64 ()* @sds_clock_counter}
!45 = metadata !{metadata !"unsigned long long."}
!46 = metadata !{i32 (i32*, i8*)* @rgb_2_gray}
!47 = metadata !{metadata !"int.uint32_t *.1.uint8_t *.1"}
!48 = metadata !{i32 (i8*, i8*)* @sharpen_filter}
!49 = metadata !{metadata !"int.uint8_t *.1.uint8_t *.1"}
!50 = metadata !{i32 (i8*, i8*)* @sobel_filter}
!51 = metadata !{void (i32*)* @dummyprint_color}
!52 = metadata !{void (i8*)* @dummyprint_gray}
!53 = metadata !{metadata !"void.uint8_t *.1"}
!54 = metadata !{metadata !"C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c"}
!55 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/arm-xilinx-linux-gnueabi/include\5Csds_lib.h"}
!56 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdio.h"}
!57 = metadata !{metadata !"../src/rgb_2_gray.h"}
!58 = metadata !{metadata !"../src/sharpen.h"}
!59 = metadata !{metadata !"../src/edge_detect.h"}
!60 = metadata !{metadata !"input,,2073600,,,,,, output,,2073600,,,,,, "}
!61 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!62 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!63 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!64 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!65 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!66 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !6, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 63]
!67 = metadata !{i32 63, i32 14, metadata !4, null}
!68 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !6, i32 33554495, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 63]
!69 = metadata !{i32 63, i32 26, metadata !4, null}
!70 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !6, i32 65, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 65]
!71 = metadata !{i32 65, i32 6, metadata !4, null}
!72 = metadata !{i32 786688, metadata !4, metadata !"array_c", metadata !6, i32 68, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_c] [line 68]
!73 = metadata !{i32 68, i32 12, metadata !4, null}
!74 = metadata !{i32 68, i32 34, metadata !4, null}
!75 = metadata !{i32 786688, metadata !4, metadata !"array_g_1", metadata !6, i32 69, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_g_1] [line 69]
!76 = metadata !{i32 69, i32 11, metadata !4, null}
!77 = metadata !{i32 69, i32 34, metadata !4, null}
!78 = metadata !{i32 786688, metadata !4, metadata !"array_g_2", metadata !6, i32 70, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_g_2] [line 70]
!79 = metadata !{i32 70, i32 11, metadata !4, null}
!80 = metadata !{i32 70, i32 34, metadata !4, null}
!81 = metadata !{i32 786688, metadata !4, metadata !"array_g_3", metadata !6, i32 71, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_g_3] [line 71]
!82 = metadata !{i32 71, i32 11, metadata !4, null}
!83 = metadata !{i32 71, i32 34, metadata !4, null}
!84 = metadata !{i32 74, i32 2, metadata !4, null}
!85 = metadata !{i32 77, i32 2, metadata !4, null}
!86 = metadata !{i32 80, i32 2, metadata !87, null}
!87 = metadata !{i32 786443, metadata !5, metadata !4, i32 80, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!88 = metadata !{i32 81, i32 7, metadata !89, null}
!89 = metadata !{i32 786443, metadata !5, metadata !4, i32 81, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!90 = metadata !{i32 81, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !5, metadata !92, i32 81, i32 7, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!92 = metadata !{i32 786443, metadata !5, metadata !89, i32 81, i32 7, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!93 = metadata !{i32 86, i32 3, metadata !94, null}
!94 = metadata !{i32 786443, metadata !5, metadata !89, i32 81, i32 31, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!95 = metadata !{i32 93, i32 3, metadata !94, null}
!96 = metadata !{i32 100, i32 3, metadata !94, null}
!97 = metadata !{i32 105, i32 3, metadata !94, null}
!98 = metadata !{i32 106, i32 2, metadata !94, null}
!99 = metadata !{i32 81, i32 26, metadata !89, null}
!100 = metadata !{i32 786688, metadata !101, metadata !"tmp", metadata !6, i32 107, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 107]
!101 = metadata !{i32 786443, metadata !5, metadata !4, i32 107, i32 2, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!102 = metadata !{i32 107, i32 2, metadata !101, null}
!103 = metadata !{i32 107, i32 2, metadata !104, null}
!104 = metadata !{i32 786443, metadata !5, metadata !101, i32 107, i32 2, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!105 = metadata !{i32 107, i32 2, metadata !106, null}
!106 = metadata !{i32 786443, metadata !5, metadata !101, i32 107, i32 2, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!107 = metadata !{i32 107, i32 2, metadata !108, null}
!108 = metadata !{i32 786443, metadata !5, metadata !109, i32 107, i32 2, i32 4, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!109 = metadata !{i32 786443, metadata !5, metadata !101, i32 107, i32 2, i32 3, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!110 = metadata !{i32 117, i32 2, metadata !4, null}
!111 = metadata !{i32 128, i32 2, metadata !4, null}
!112 = metadata !{i32 786689, metadata !13, metadata !"f", metadata !6, i32 16777350, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 134]
!113 = metadata !{i32 134, i32 26, metadata !13, null}
!114 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 135]
!115 = metadata !{i32 135, i32 6, metadata !13, null}
!116 = metadata !{i32 786688, metadata !13, metadata !"j", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 135]
!117 = metadata !{i32 135, i32 9, metadata !13, null}
!118 = metadata !{i32 136, i32 7, metadata !119, null}
!119 = metadata !{i32 786443, metadata !5, metadata !13, i32 136, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!120 = metadata !{i32 136, i32 7, metadata !121, null}
!121 = metadata !{i32 786443, metadata !5, metadata !122, i32 136, i32 7, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!122 = metadata !{i32 786443, metadata !5, metadata !119, i32 136, i32 7, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!123 = metadata !{i32 137, i32 8, metadata !124, null}
!124 = metadata !{i32 786443, metadata !5, metadata !125, i32 137, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!125 = metadata !{i32 786443, metadata !5, metadata !119, i32 136, i32 37, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!126 = metadata !{i32 137, i32 8, metadata !127, null}
!127 = metadata !{i32 786443, metadata !5, metadata !128, i32 137, i32 8, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!128 = metadata !{i32 786443, metadata !5, metadata !124, i32 137, i32 8, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!129 = metadata !{i32 786688, metadata !130, metadata !"index", metadata !6, i32 138, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 138]
!130 = metadata !{i32 786443, metadata !5, metadata !124, i32 137, i32 37, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!131 = metadata !{i32 138, i32 8, metadata !130, null}
!132 = metadata !{i32 138, i32 4, metadata !130, null}
!133 = metadata !{i32 786688, metadata !130, metadata !"p", metadata !6, i32 139, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 139]
!134 = metadata !{i32 786454, metadata !135, null, metadata !"pixel_t", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [pixel_t] [line 47, size 0, align 0, offset 0] [from pixel]
!135 = metadata !{metadata !"../src/lab_design.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab5a\5CSDDebug"}
!136 = metadata !{i32 786455, metadata !135, null, metadata !"pixel", i32 38, i64 24, i64 8, i64 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_union_type ] [pixel] [line 38, size 24, align 8, offset 0] [def] [from ]
!137 = metadata !{metadata !138, metadata !144}
!138 = metadata !{i32 786445, metadata !135, metadata !136, metadata !"", i32 39, i64 24, i64 8, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [line 39, size 24, align 8, offset 0] [from ]
!139 = metadata !{i32 786451, metadata !135, metadata !136, metadata !"", i32 39, i64 24, i64 8, i32 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 24, align 8, offset 0] [def] [from ]
!140 = metadata !{metadata !141, metadata !142, metadata !143}
!141 = metadata !{i32 786445, metadata !135, metadata !139, metadata !"red", i32 40, i64 8, i64 8, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [red] [line 40, size 8, align 8, offset 0] [from uint8_t]
!142 = metadata !{i32 786445, metadata !135, metadata !139, metadata !"green", i32 41, i64 8, i64 8, i64 8, i32 0, metadata !25} ; [ DW_TAG_member ] [green] [line 41, size 8, align 8, offset 8] [from uint8_t]
!143 = metadata !{i32 786445, metadata !135, metadata !139, metadata !"blue", i32 42, i64 8, i64 8, i64 16, i32 0, metadata !25} ; [ DW_TAG_member ] [blue] [line 42, size 8, align 8, offset 16] [from uint8_t]
!144 = metadata !{i32 786445, metadata !135, metadata !136, metadata !"", i32 44, i64 8, i64 8, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [line 44, size 8, align 8, offset 0] [from ]
!145 = metadata !{i32 786451, metadata !135, metadata !136, metadata !"", i32 44, i64 8, i64 8, i32 0, i32 0, null, metadata !146, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 44, size 8, align 8, offset 0] [def] [from ]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786445, metadata !135, metadata !145, metadata !"gray", i32 45, i64 8, i64 8, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [gray] [line 45, size 8, align 8, offset 0] [from uint8_t]
!148 = metadata !{i32 139, i32 12, metadata !130, null}
!149 = metadata !{i32 139, i32 4, metadata !130, null}
!150 = metadata !{i32 140, i32 4, metadata !130, null}
!151 = metadata !{i32 141, i32 3, metadata !130, null}
!152 = metadata !{i32 137, i32 32, metadata !124, null}
!153 = metadata !{i32 142, i32 2, metadata !125, null}
!154 = metadata !{i32 136, i32 32, metadata !119, null}
!155 = metadata !{i32 143, i32 1, metadata !13, null}
!156 = metadata !{i32 786689, metadata !20, metadata !"f", metadata !6, i32 16777362, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 146]
!157 = metadata !{i32 146, i32 33, metadata !20, null}
!158 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 147]
!159 = metadata !{i32 147, i32 6, metadata !20, null}
!160 = metadata !{i32 786688, metadata !20, metadata !"j", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 147]
!161 = metadata !{i32 147, i32 9, metadata !20, null}
!162 = metadata !{i32 148, i32 7, metadata !163, null}
!163 = metadata !{i32 786443, metadata !5, metadata !20, i32 148, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!164 = metadata !{i32 148, i32 7, metadata !165, null}
!165 = metadata !{i32 786443, metadata !5, metadata !166, i32 148, i32 7, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!166 = metadata !{i32 786443, metadata !5, metadata !163, i32 148, i32 7, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!167 = metadata !{i32 149, i32 8, metadata !168, null}
!168 = metadata !{i32 786443, metadata !5, metadata !169, i32 149, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!169 = metadata !{i32 786443, metadata !5, metadata !163, i32 148, i32 37, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!170 = metadata !{i32 149, i32 8, metadata !171, null}
!171 = metadata !{i32 786443, metadata !5, metadata !172, i32 149, i32 8, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!172 = metadata !{i32 786443, metadata !5, metadata !168, i32 149, i32 8, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!173 = metadata !{i32 786688, metadata !174, metadata !"index", metadata !6, i32 150, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 150]
!174 = metadata !{i32 786443, metadata !5, metadata !168, i32 149, i32 37, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!175 = metadata !{i32 150, i32 8, metadata !174, null}
!176 = metadata !{i32 150, i32 4, metadata !174, null}
!177 = metadata !{i32 786688, metadata !174, metadata !"pixel", metadata !6, i32 151, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 151]
!178 = metadata !{i32 151, i32 8, metadata !174, null}
!179 = metadata !{i32 151, i32 4, metadata !174, null}
!180 = metadata !{i32 786688, metadata !174, metadata !"p", metadata !6, i32 152, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 152]
!181 = metadata !{i32 152, i32 12, metadata !174, null}
!182 = metadata !{i32 153, i32 4, metadata !174, null}
!183 = metadata !{i32 154, i32 4, metadata !174, null}
!184 = metadata !{i32 155, i32 4, metadata !174, null}
!185 = metadata !{i32 156, i32 4, metadata !174, null}
!186 = metadata !{i32 157, i32 3, metadata !174, null}
!187 = metadata !{i32 149, i32 32, metadata !168, null}
!188 = metadata !{i32 158, i32 3, metadata !169, null}
!189 = metadata !{i32 159, i32 2, metadata !169, null}
!190 = metadata !{i32 148, i32 32, metadata !163, null}
!191 = metadata !{i32 160, i32 2, metadata !20, null}
!192 = metadata !{i32 161, i32 1, metadata !20, null}
!193 = metadata !{i32 786689, metadata !21, metadata !"f", metadata !6, i32 16777380, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 164]
!194 = metadata !{i32 164, i32 31, metadata !21, null}
!195 = metadata !{i32 786688, metadata !21, metadata !"i", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 165]
!196 = metadata !{i32 165, i32 6, metadata !21, null}
!197 = metadata !{i32 786688, metadata !21, metadata !"j", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 165]
!198 = metadata !{i32 165, i32 9, metadata !21, null}
!199 = metadata !{i32 166, i32 7, metadata !200, null}
!200 = metadata !{i32 786443, metadata !5, metadata !21, i32 166, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!201 = metadata !{i32 166, i32 7, metadata !202, null}
!202 = metadata !{i32 786443, metadata !5, metadata !203, i32 166, i32 7, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!203 = metadata !{i32 786443, metadata !5, metadata !200, i32 166, i32 7, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!204 = metadata !{i32 167, i32 8, metadata !205, null}
!205 = metadata !{i32 786443, metadata !5, metadata !206, i32 167, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!206 = metadata !{i32 786443, metadata !5, metadata !200, i32 166, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!207 = metadata !{i32 167, i32 8, metadata !208, null}
!208 = metadata !{i32 786443, metadata !5, metadata !209, i32 167, i32 8, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!209 = metadata !{i32 786443, metadata !5, metadata !205, i32 167, i32 8, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!210 = metadata !{i32 786688, metadata !211, metadata !"gray_pixel", metadata !6, i32 168, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gray_pixel] [line 168]
!211 = metadata !{i32 786443, metadata !5, metadata !205, i32 167, i32 37, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab5a\SDDebug/C:/xup/SDSoC/labs/lab5a/src/SDSoC_lab_design_main.c]
!212 = metadata !{i32 168, i32 12, metadata !211, null}
!213 = metadata !{i32 168, i32 4, metadata !211, null}
!214 = metadata !{i32 169, i32 4, metadata !211, null}
!215 = metadata !{i32 170, i32 3, metadata !211, null}
!216 = metadata !{i32 167, i32 32, metadata !205, null}
!217 = metadata !{i32 171, i32 3, metadata !206, null}
!218 = metadata !{i32 172, i32 2, metadata !206, null}
!219 = metadata !{i32 166, i32 32, metadata !200, null}
!220 = metadata !{i32 173, i32 2, metadata !21, null}
!221 = metadata !{i32 174, i32 1, metadata !21, null}
