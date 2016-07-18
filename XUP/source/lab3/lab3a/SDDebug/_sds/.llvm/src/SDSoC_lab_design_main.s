; ModuleID = 'C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c'
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
@.str3 = private unnamed_addr constant [41 x i8] c"Average SW cycles for sharpen:     %llu\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"Average SW cycles for edge_detect: %llu\0A\00", align 1
@dummyfill.p = private unnamed_addr constant %union.pixel { %struct.anon { i8 10, i8 20, i8 30 } }, align 1
@.str5 = private unnamed_addr constant [11 x i8] c"[%d,%d,%d]\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1

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
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
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

; <label>:14                                      ; preds = %66, %0
  %15 = load i32* %i, align 4, !dbg !93
  %16 = icmp ne i32 %15, 0, !dbg !93
  br i1 %16, label %17, label %69, !dbg !93

; <label>:17                                      ; preds = %14
  %18 = load i32** %array_c, align 4, !dbg !96
  %19 = load i8** %array_g_1, align 4, !dbg !96
  %20 = call i32 @rgb_2_gray(i32* %18, i8* %19), !dbg !96
  %21 = call i64 @sds_clock_counter(), !dbg !98
  store i64 %21, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 1), align 8, !dbg !98
  %22 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 1), align 4, !dbg !98
  %23 = add i32 %22, 1, !dbg !98
  store i32 %23, i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 1), align 4, !dbg !98
  %24 = load i8** %array_g_1, align 4, !dbg !100
  %25 = load i8** %array_g_2, align 4, !dbg !100
  %26 = call i32 @sharpen_filter(i8* %24, i8* %25), !dbg !100
  call void @llvm.dbg.declare(metadata !{i64* %tmp}, metadata !101), !dbg !103
  %27 = call i64 @sds_clock_counter(), !dbg !103
  store i64 %27, i64* %tmp, align 8, !dbg !103
  %28 = load i64* %tmp, align 8, !dbg !103
  %29 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 1), align 8, !dbg !103
  %30 = icmp ult i64 %28, %29, !dbg !103
  br i1 %30, label %31, label %35, !dbg !103

; <label>:31                                      ; preds = %17
  %32 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 1), align 8, !dbg !104
  %33 = load i64* %tmp, align 8, !dbg !104
  %34 = sub i64 %32, %33, !dbg !104
  br label %39, !dbg !104

; <label>:35                                      ; preds = %17
  %36 = load i64* %tmp, align 8, !dbg !106
  %37 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 1), align 8, !dbg !106
  %38 = sub i64 %36, %37, !dbg !106
  br label %39, !dbg !106

; <label>:39                                      ; preds = %35, %31
  %40 = phi i64 [ %34, %31 ], [ %38, %35 ], !dbg !103
  %41 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 1), align 8, !dbg !108
  %42 = add i64 %41, %40, !dbg !108
  store i64 %42, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 1), align 8, !dbg !108
  %43 = call i64 @sds_clock_counter(), !dbg !111
  store i64 %43, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 2), align 8, !dbg !111
  %44 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 2), align 4, !dbg !111
  %45 = add i32 %44, 1, !dbg !111
  store i32 %45, i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 2), align 4, !dbg !111
  %46 = load i8** %array_g_2, align 4, !dbg !113
  %47 = load i8** %array_g_3, align 4, !dbg !113
  %48 = call i32 @sobel_filter(i8* %46, i8* %47), !dbg !113
  call void @llvm.dbg.declare(metadata !{i64* %tmp1}, metadata !114), !dbg !116
  %49 = call i64 @sds_clock_counter(), !dbg !116
  store i64 %49, i64* %tmp1, align 8, !dbg !116
  %50 = load i64* %tmp1, align 8, !dbg !116
  %51 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 2), align 8, !dbg !116
  %52 = icmp ult i64 %50, %51, !dbg !116
  br i1 %52, label %53, label %57, !dbg !116

; <label>:53                                      ; preds = %39
  %54 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 2), align 8, !dbg !117
  %55 = load i64* %tmp1, align 8, !dbg !117
  %56 = sub i64 %54, %55, !dbg !117
  br label %61, !dbg !117

; <label>:57                                      ; preds = %39
  %58 = load i64* %tmp1, align 8, !dbg !119
  %59 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 2), align 8, !dbg !119
  %60 = sub i64 %58, %59, !dbg !119
  br label %61, !dbg !119

; <label>:61                                      ; preds = %57, %53
  %62 = phi i64 [ %56, %53 ], [ %60, %57 ], !dbg !116
  %63 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 2), align 8, !dbg !121
  %64 = add i64 %63, %62, !dbg !121
  store i64 %64, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 2), align 8, !dbg !121
  %65 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str1, i32 0, i32 0)), !dbg !124
  br label %66, !dbg !125

; <label>:66                                      ; preds = %61
  %67 = load i32* %i, align 4, !dbg !126
  %68 = add nsw i32 %67, -1, !dbg !126
  store i32 %68, i32* %i, align 4, !dbg !126
  br label %14, !dbg !126

; <label>:69                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i64* %tmp2}, metadata !127), !dbg !129
  %70 = call i64 @sds_clock_counter(), !dbg !129
  store i64 %70, i64* %tmp2, align 8, !dbg !129
  %71 = load i64* %tmp2, align 8, !dbg !129
  %72 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !129
  %73 = icmp ult i64 %71, %72, !dbg !129
  br i1 %73, label %74, label %78, !dbg !129

; <label>:74                                      ; preds = %69
  %75 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !130
  %76 = load i64* %tmp2, align 8, !dbg !130
  %77 = sub i64 %75, %76, !dbg !130
  br label %82, !dbg !130

; <label>:78                                      ; preds = %69
  %79 = load i64* %tmp2, align 8, !dbg !132
  %80 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter, i32 0, i32 3), align 8, !dbg !132
  %81 = sub i64 %79, %80, !dbg !132
  br label %82, !dbg !132

; <label>:82                                      ; preds = %78, %74
  %83 = phi i64 [ %77, %74 ], [ %81, %78 ], !dbg !129
  %84 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !134
  %85 = add i64 %84, %83, !dbg !134
  store i64 %85, i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !134
  %86 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 3), align 8, !dbg !137
  %87 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 3), align 4, !dbg !137
  %88 = zext i32 %87 to i64, !dbg !137
  %89 = udiv i64 %86, %88, !dbg !137
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str2, i32 0, i32 0), i64 %89), !dbg !137
  %91 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 1), align 8, !dbg !138
  %92 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 1), align 4, !dbg !138
  %93 = zext i32 %92 to i64, !dbg !138
  %94 = udiv i64 %91, %93, !dbg !138
  %95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str3, i32 0, i32 0), i64 %94), !dbg !138
  %96 = load i64* getelementptr inbounds ([4 x i64]* @sw_sds_counter_total, i32 0, i32 2), align 8, !dbg !139
  %97 = load i32* getelementptr inbounds ([4 x i32]* @sw_sds_counter_num_calls, i32 0, i32 2), align 4, !dbg !139
  %98 = zext i32 %97 to i64, !dbg !139
  %99 = udiv i64 %96, %98, !dbg !139
  %100 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str4, i32 0, i32 0), i64 %99), !dbg !139
  ret i32 0, !dbg !140
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
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !141), !dbg !142
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !143), !dbg !144
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !145), !dbg !146
  store i32 0, i32* %i, align 4, !dbg !147
  br label %2, !dbg !147

; <label>:2                                       ; preds = %38, %0
  %3 = load i32* %i, align 4, !dbg !149
  %4 = icmp slt i32 %3, 1080, !dbg !149
  br i1 %4, label %5, label %41, !dbg !149

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !152
  br label %6, !dbg !152

; <label>:6                                       ; preds = %34, %5
  %7 = load i32* %j, align 4, !dbg !155
  %8 = icmp slt i32 %7, 1920, !dbg !155
  br i1 %8, label %9, label %37, !dbg !155

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !158), !dbg !160
  %10 = load i32* %i, align 4, !dbg !161
  %11 = mul nsw i32 %10, 1920, !dbg !161
  %12 = load i32* %j, align 4, !dbg !161
  %13 = add nsw i32 %11, %12, !dbg !161
  store i32 %13, i32* %index, align 4, !dbg !161
  call void @llvm.dbg.declare(metadata !{%union.pixel* %p}, metadata !162), !dbg !177
  %14 = bitcast %union.pixel* %p to i8*, !dbg !178
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* getelementptr inbounds (%union.pixel* @dummyfill.p, i32 0, i32 0, i32 0), i32 3, i32 1, i1 false), !dbg !178
  %15 = bitcast %union.pixel* %p to %struct.anon*, !dbg !179
  %16 = getelementptr inbounds %struct.anon* %15, i32 0, i32 0, !dbg !179
  %17 = load i8* %16, align 1, !dbg !179
  %18 = zext i8 %17 to i32, !dbg !179
  %19 = shl i32 %18, 16, !dbg !179
  %20 = bitcast %union.pixel* %p to %struct.anon*, !dbg !179
  %21 = getelementptr inbounds %struct.anon* %20, i32 0, i32 1, !dbg !179
  %22 = load i8* %21, align 1, !dbg !179
  %23 = zext i8 %22 to i32, !dbg !179
  %24 = shl i32 %23, 8, !dbg !179
  %25 = or i32 %19, %24, !dbg !179
  %26 = bitcast %union.pixel* %p to %struct.anon*, !dbg !179
  %27 = getelementptr inbounds %struct.anon* %26, i32 0, i32 2, !dbg !179
  %28 = load i8* %27, align 1, !dbg !179
  %29 = zext i8 %28 to i32, !dbg !179
  %30 = or i32 %25, %29, !dbg !179
  %31 = load i32* %index, align 4, !dbg !179
  %32 = load i32** %1, align 4, !dbg !179
  %33 = getelementptr inbounds i32* %32, i32 %31, !dbg !179
  store i32 %30, i32* %33, align 4, !dbg !179
  br label %34, !dbg !180

; <label>:34                                      ; preds = %9
  %35 = load i32* %j, align 4, !dbg !181
  %36 = add nsw i32 %35, 1, !dbg !181
  store i32 %36, i32* %j, align 4, !dbg !181
  br label %6, !dbg !181

; <label>:37                                      ; preds = %6
  br label %38, !dbg !182

; <label>:38                                      ; preds = %37
  %39 = load i32* %i, align 4, !dbg !183
  %40 = add nsw i32 %39, 1, !dbg !183
  store i32 %40, i32* %i, align 4, !dbg !183
  br label %2, !dbg !183

; <label>:41                                      ; preds = %2
  ret void, !dbg !184
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
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !185), !dbg !186
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !187), !dbg !188
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !189), !dbg !190
  store i32 0, i32* %i, align 4, !dbg !191
  br label %2, !dbg !191

; <label>:2                                       ; preds = %52, %0
  %3 = load i32* %i, align 4, !dbg !193
  %4 = icmp slt i32 %3, 1080, !dbg !193
  br i1 %4, label %5, label %55, !dbg !193

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !196
  br label %6, !dbg !196

; <label>:6                                       ; preds = %47, %5
  %7 = load i32* %j, align 4, !dbg !199
  %8 = icmp slt i32 %7, 1920, !dbg !199
  br i1 %8, label %9, label %50, !dbg !199

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !202), !dbg !204
  %10 = load i32* %i, align 4, !dbg !205
  %11 = mul nsw i32 %10, 1920, !dbg !205
  %12 = load i32* %j, align 4, !dbg !205
  %13 = add nsw i32 %11, %12, !dbg !205
  store i32 %13, i32* %index, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata !{i32* %pixel}, metadata !206), !dbg !207
  %14 = load i32* %index, align 4, !dbg !208
  %15 = load i32** %1, align 4, !dbg !208
  %16 = getelementptr inbounds i32* %15, i32 %14, !dbg !208
  %17 = load i32* %16, align 4, !dbg !208
  store i32 %17, i32* %pixel, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata !{%union.pixel* %p}, metadata !209), !dbg !210
  %18 = load i32* %pixel, align 4, !dbg !211
  %19 = ashr i32 %18, 16, !dbg !211
  %20 = trunc i32 %19 to i8, !dbg !211
  %21 = bitcast %union.pixel* %p to %struct.anon*, !dbg !211
  %22 = getelementptr inbounds %struct.anon* %21, i32 0, i32 0, !dbg !211
  store i8 %20, i8* %22, align 1, !dbg !211
  %23 = load i32* %pixel, align 4, !dbg !212
  %24 = ashr i32 %23, 8, !dbg !212
  %25 = and i32 %24, 255, !dbg !212
  %26 = trunc i32 %25 to i8, !dbg !212
  %27 = bitcast %union.pixel* %p to %struct.anon*, !dbg !212
  %28 = getelementptr inbounds %struct.anon* %27, i32 0, i32 1, !dbg !212
  store i8 %26, i8* %28, align 1, !dbg !212
  %29 = load i32* %pixel, align 4, !dbg !213
  %30 = and i32 %29, 255, !dbg !213
  %31 = trunc i32 %30 to i8, !dbg !213
  %32 = bitcast %union.pixel* %p to %struct.anon*, !dbg !213
  %33 = getelementptr inbounds %struct.anon* %32, i32 0, i32 2, !dbg !213
  store i8 %31, i8* %33, align 1, !dbg !213
  %34 = bitcast %union.pixel* %p to %struct.anon*, !dbg !214
  %35 = getelementptr inbounds %struct.anon* %34, i32 0, i32 0, !dbg !214
  %36 = load i8* %35, align 1, !dbg !214
  %37 = zext i8 %36 to i32, !dbg !214
  %38 = bitcast %union.pixel* %p to %struct.anon*, !dbg !214
  %39 = getelementptr inbounds %struct.anon* %38, i32 0, i32 1, !dbg !214
  %40 = load i8* %39, align 1, !dbg !214
  %41 = zext i8 %40 to i32, !dbg !214
  %42 = bitcast %union.pixel* %p to %struct.anon*, !dbg !214
  %43 = getelementptr inbounds %struct.anon* %42, i32 0, i32 2, !dbg !214
  %44 = load i8* %43, align 1, !dbg !214
  %45 = zext i8 %44 to i32, !dbg !214
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str5, i32 0, i32 0), i32 %37, i32 %41, i32 %45), !dbg !214
  br label %47, !dbg !215

; <label>:47                                      ; preds = %9
  %48 = load i32* %j, align 4, !dbg !216
  %49 = add nsw i32 %48, 1, !dbg !216
  store i32 %49, i32* %j, align 4, !dbg !216
  br label %6, !dbg !216

; <label>:50                                      ; preds = %6
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !dbg !217
  br label %52, !dbg !218

; <label>:52                                      ; preds = %50
  %53 = load i32* %i, align 4, !dbg !219
  %54 = add nsw i32 %53, 1, !dbg !219
  store i32 %54, i32* %i, align 4, !dbg !219
  br label %2, !dbg !219

; <label>:55                                      ; preds = %2
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !dbg !220
  ret void, !dbg !221
}

; Function Attrs: nounwind
define void @dummyprint_gray(i8* %f) #0 {
  %1 = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %gray_pixel = alloca i8, align 1
  store i8* %f, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !222), !dbg !223
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !224), !dbg !225
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !226), !dbg !227
  store i32 0, i32* %i, align 4, !dbg !228
  br label %2, !dbg !228

; <label>:2                                       ; preds = %25, %0
  %3 = load i32* %i, align 4, !dbg !230
  %4 = icmp slt i32 %3, 1080, !dbg !230
  br i1 %4, label %5, label %28, !dbg !230

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !233
  br label %6, !dbg !233

; <label>:6                                       ; preds = %20, %5
  %7 = load i32* %j, align 4, !dbg !236
  %8 = icmp slt i32 %7, 1920, !dbg !236
  br i1 %8, label %9, label %23, !dbg !236

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i8* %gray_pixel}, metadata !239), !dbg !241
  %10 = load i32* %i, align 4, !dbg !242
  %11 = mul nsw i32 %10, 1920, !dbg !242
  %12 = load i32* %j, align 4, !dbg !242
  %13 = add nsw i32 %11, %12, !dbg !242
  %14 = load i8** %1, align 4, !dbg !242
  %15 = getelementptr inbounds i8* %14, i32 %13, !dbg !242
  %16 = load i8* %15, align 1, !dbg !242
  store i8 %16, i8* %gray_pixel, align 1, !dbg !242
  %17 = load i8* %gray_pixel, align 1, !dbg !243
  %18 = zext i8 %17 to i32, !dbg !243
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 %18), !dbg !243
  br label %20, !dbg !244

; <label>:20                                      ; preds = %9
  %21 = load i32* %j, align 4, !dbg !245
  %22 = add nsw i32 %21, 1, !dbg !245
  store i32 %22, i32* %j, align 4, !dbg !245
  br label %6, !dbg !245

; <label>:23                                      ; preds = %6
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !dbg !246
  br label %25, !dbg !247

; <label>:25                                      ; preds = %23
  %26 = load i32* %i, align 4, !dbg !248
  %27 = add nsw i32 %26, 1, !dbg !248
  store i32 %27, i32* %i, align 4, !dbg !248
  br label %2, !dbg !248

; <label>:28                                      ; preds = %2
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0)), !dbg !249
  ret void, !dbg !250
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !30, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab3a\SDDebug/../src\SDSoC_lab_design_main.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../src\5CSDSoC_lab_design_main.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab3a\5CSDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !13, metadata !22, metadata !23}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 63, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 63} ; [ DW_TAG_subprogram ] [line 63] [def] [main]
!5 = metadata !{metadata !"C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab3a\5CSDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
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
!18 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cstdint.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab3a\5CSDDebug"}
!19 = metadata !{i32 786454, metadata !20, null, metadata !"__uint32_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [__uint32_t] [line 65, size 0, align 0, offset 0] [from unsigned int]
!20 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-eabi/include\5Cmachine/_default_types.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab3a\5CSDDebug"}
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
!57 = metadata !{metadata !"C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c"}
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
!90 = metadata !{i32 786443, metadata !5, metadata !4, i32 80, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!91 = metadata !{i32 81, i32 7, metadata !92, null}
!92 = metadata !{i32 786443, metadata !5, metadata !4, i32 81, i32 2, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!93 = metadata !{i32 81, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !5, metadata !95, i32 81, i32 7, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!95 = metadata !{i32 786443, metadata !5, metadata !92, i32 81, i32 7, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!96 = metadata !{i32 86, i32 3, metadata !97, null}
!97 = metadata !{i32 786443, metadata !5, metadata !92, i32 81, i32 31, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!98 = metadata !{i32 91, i32 4, metadata !99, null}
!99 = metadata !{i32 786443, metadata !5, metadata !97, i32 91, i32 4, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!100 = metadata !{i32 93, i32 3, metadata !97, null}
!101 = metadata !{i32 786688, metadata !102, metadata !"tmp", metadata !6, i32 95, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 95]
!102 = metadata !{i32 786443, metadata !5, metadata !97, i32 95, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!103 = metadata !{i32 95, i32 3, metadata !102, null}
!104 = metadata !{i32 95, i32 3, metadata !105, null}
!105 = metadata !{i32 786443, metadata !5, metadata !102, i32 95, i32 3, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!106 = metadata !{i32 95, i32 3, metadata !107, null}
!107 = metadata !{i32 786443, metadata !5, metadata !102, i32 95, i32 3, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!108 = metadata !{i32 95, i32 3, metadata !109, null}
!109 = metadata !{i32 786443, metadata !5, metadata !110, i32 95, i32 3, i32 4, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!110 = metadata !{i32 786443, metadata !5, metadata !102, i32 95, i32 3, i32 3, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!111 = metadata !{i32 98, i32 4, metadata !112, null}
!112 = metadata !{i32 786443, metadata !5, metadata !97, i32 98, i32 4, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!113 = metadata !{i32 100, i32 3, metadata !97, null}
!114 = metadata !{i32 786688, metadata !115, metadata !"tmp", metadata !6, i32 102, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 102]
!115 = metadata !{i32 786443, metadata !5, metadata !97, i32 102, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!116 = metadata !{i32 102, i32 3, metadata !115, null}
!117 = metadata !{i32 102, i32 3, metadata !118, null}
!118 = metadata !{i32 786443, metadata !5, metadata !115, i32 102, i32 3, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!119 = metadata !{i32 102, i32 3, metadata !120, null}
!120 = metadata !{i32 786443, metadata !5, metadata !115, i32 102, i32 3, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!121 = metadata !{i32 102, i32 3, metadata !122, null}
!122 = metadata !{i32 786443, metadata !5, metadata !123, i32 102, i32 3, i32 4, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!123 = metadata !{i32 786443, metadata !5, metadata !115, i32 102, i32 3, i32 3, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!124 = metadata !{i32 105, i32 3, metadata !97, null}
!125 = metadata !{i32 106, i32 2, metadata !97, null}
!126 = metadata !{i32 81, i32 26, metadata !92, null}
!127 = metadata !{i32 786688, metadata !128, metadata !"tmp", metadata !6, i32 107, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 107]
!128 = metadata !{i32 786443, metadata !5, metadata !4, i32 107, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!129 = metadata !{i32 107, i32 2, metadata !128, null}
!130 = metadata !{i32 107, i32 2, metadata !131, null}
!131 = metadata !{i32 786443, metadata !5, metadata !128, i32 107, i32 2, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!132 = metadata !{i32 107, i32 2, metadata !133, null}
!133 = metadata !{i32 786443, metadata !5, metadata !128, i32 107, i32 2, i32 2, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!134 = metadata !{i32 107, i32 2, metadata !135, null}
!135 = metadata !{i32 786443, metadata !5, metadata !136, i32 107, i32 2, i32 4, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!136 = metadata !{i32 786443, metadata !5, metadata !128, i32 107, i32 2, i32 3, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!137 = metadata !{i32 117, i32 2, metadata !4, null}
!138 = metadata !{i32 122, i32 2, metadata !4, null}
!139 = metadata !{i32 125, i32 2, metadata !4, null}
!140 = metadata !{i32 128, i32 2, metadata !4, null}
!141 = metadata !{i32 786689, metadata !13, metadata !"f", metadata !6, i32 16777350, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 134]
!142 = metadata !{i32 134, i32 26, metadata !13, null}
!143 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 135]
!144 = metadata !{i32 135, i32 6, metadata !13, null}
!145 = metadata !{i32 786688, metadata !13, metadata !"j", metadata !6, i32 135, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 135]
!146 = metadata !{i32 135, i32 9, metadata !13, null}
!147 = metadata !{i32 136, i32 7, metadata !148, null}
!148 = metadata !{i32 786443, metadata !5, metadata !13, i32 136, i32 2, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!149 = metadata !{i32 136, i32 7, metadata !150, null}
!150 = metadata !{i32 786443, metadata !5, metadata !151, i32 136, i32 7, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!151 = metadata !{i32 786443, metadata !5, metadata !148, i32 136, i32 7, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!152 = metadata !{i32 137, i32 8, metadata !153, null}
!153 = metadata !{i32 786443, metadata !5, metadata !154, i32 137, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!154 = metadata !{i32 786443, metadata !5, metadata !148, i32 136, i32 37, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!155 = metadata !{i32 137, i32 8, metadata !156, null}
!156 = metadata !{i32 786443, metadata !5, metadata !157, i32 137, i32 8, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!157 = metadata !{i32 786443, metadata !5, metadata !153, i32 137, i32 8, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!158 = metadata !{i32 786688, metadata !159, metadata !"index", metadata !6, i32 138, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 138]
!159 = metadata !{i32 786443, metadata !5, metadata !153, i32 137, i32 37, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!160 = metadata !{i32 138, i32 8, metadata !159, null}
!161 = metadata !{i32 138, i32 4, metadata !159, null}
!162 = metadata !{i32 786688, metadata !159, metadata !"p", metadata !6, i32 139, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 139]
!163 = metadata !{i32 786454, metadata !164, null, metadata !"pixel_t", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_typedef ] [pixel_t] [line 47, size 0, align 0, offset 0] [from pixel]
!164 = metadata !{metadata !"../src/lab_design.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab3a\5CSDDebug"}
!165 = metadata !{i32 786455, metadata !164, null, metadata !"pixel", i32 38, i64 24, i64 8, i64 0, i32 0, null, metadata !166, i32 0, null, null, null} ; [ DW_TAG_union_type ] [pixel] [line 38, size 24, align 8, offset 0] [def] [from ]
!166 = metadata !{metadata !167, metadata !173}
!167 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"", i32 39, i64 24, i64 8, i64 0, i32 0, metadata !168} ; [ DW_TAG_member ] [line 39, size 24, align 8, offset 0] [from ]
!168 = metadata !{i32 786451, metadata !164, metadata !165, metadata !"", i32 39, i64 24, i64 8, i32 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 24, align 8, offset 0] [def] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172}
!170 = metadata !{i32 786445, metadata !164, metadata !168, metadata !"red", i32 40, i64 8, i64 8, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [red] [line 40, size 8, align 8, offset 0] [from uint8_t]
!171 = metadata !{i32 786445, metadata !164, metadata !168, metadata !"green", i32 41, i64 8, i64 8, i64 8, i32 0, metadata !27} ; [ DW_TAG_member ] [green] [line 41, size 8, align 8, offset 8] [from uint8_t]
!172 = metadata !{i32 786445, metadata !164, metadata !168, metadata !"blue", i32 42, i64 8, i64 8, i64 16, i32 0, metadata !27} ; [ DW_TAG_member ] [blue] [line 42, size 8, align 8, offset 16] [from uint8_t]
!173 = metadata !{i32 786445, metadata !164, metadata !165, metadata !"", i32 44, i64 8, i64 8, i64 0, i32 0, metadata !174} ; [ DW_TAG_member ] [line 44, size 8, align 8, offset 0] [from ]
!174 = metadata !{i32 786451, metadata !164, metadata !165, metadata !"", i32 44, i64 8, i64 8, i32 0, i32 0, null, metadata !175, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 44, size 8, align 8, offset 0] [def] [from ]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786445, metadata !164, metadata !174, metadata !"gray", i32 45, i64 8, i64 8, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [gray] [line 45, size 8, align 8, offset 0] [from uint8_t]
!177 = metadata !{i32 139, i32 12, metadata !159, null}
!178 = metadata !{i32 139, i32 4, metadata !159, null}
!179 = metadata !{i32 140, i32 4, metadata !159, null}
!180 = metadata !{i32 141, i32 3, metadata !159, null}
!181 = metadata !{i32 137, i32 32, metadata !153, null}
!182 = metadata !{i32 142, i32 2, metadata !154, null}
!183 = metadata !{i32 136, i32 32, metadata !148, null}
!184 = metadata !{i32 143, i32 1, metadata !13, null}
!185 = metadata !{i32 786689, metadata !22, metadata !"f", metadata !6, i32 16777362, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 146]
!186 = metadata !{i32 146, i32 33, metadata !22, null}
!187 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 147]
!188 = metadata !{i32 147, i32 6, metadata !22, null}
!189 = metadata !{i32 786688, metadata !22, metadata !"j", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 147]
!190 = metadata !{i32 147, i32 9, metadata !22, null}
!191 = metadata !{i32 148, i32 7, metadata !192, null}
!192 = metadata !{i32 786443, metadata !5, metadata !22, i32 148, i32 2, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!193 = metadata !{i32 148, i32 7, metadata !194, null}
!194 = metadata !{i32 786443, metadata !5, metadata !195, i32 148, i32 7, i32 2, i32 41} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!195 = metadata !{i32 786443, metadata !5, metadata !192, i32 148, i32 7, i32 1, i32 38} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!196 = metadata !{i32 149, i32 8, metadata !197, null}
!197 = metadata !{i32 786443, metadata !5, metadata !198, i32 149, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!198 = metadata !{i32 786443, metadata !5, metadata !192, i32 148, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!199 = metadata !{i32 149, i32 8, metadata !200, null}
!200 = metadata !{i32 786443, metadata !5, metadata !201, i32 149, i32 8, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!201 = metadata !{i32 786443, metadata !5, metadata !197, i32 149, i32 8, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!202 = metadata !{i32 786688, metadata !203, metadata !"index", metadata !6, i32 150, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 150]
!203 = metadata !{i32 786443, metadata !5, metadata !197, i32 149, i32 37, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!204 = metadata !{i32 150, i32 8, metadata !203, null}
!205 = metadata !{i32 150, i32 4, metadata !203, null}
!206 = metadata !{i32 786688, metadata !203, metadata !"pixel", metadata !6, i32 151, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pixel] [line 151]
!207 = metadata !{i32 151, i32 8, metadata !203, null}
!208 = metadata !{i32 151, i32 4, metadata !203, null}
!209 = metadata !{i32 786688, metadata !203, metadata !"p", metadata !6, i32 152, metadata !163, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 152]
!210 = metadata !{i32 152, i32 12, metadata !203, null}
!211 = metadata !{i32 153, i32 4, metadata !203, null}
!212 = metadata !{i32 154, i32 4, metadata !203, null}
!213 = metadata !{i32 155, i32 4, metadata !203, null}
!214 = metadata !{i32 156, i32 4, metadata !203, null}
!215 = metadata !{i32 157, i32 3, metadata !203, null}
!216 = metadata !{i32 149, i32 32, metadata !197, null}
!217 = metadata !{i32 158, i32 3, metadata !198, null}
!218 = metadata !{i32 159, i32 2, metadata !198, null}
!219 = metadata !{i32 148, i32 32, metadata !192, null}
!220 = metadata !{i32 160, i32 2, metadata !22, null}
!221 = metadata !{i32 161, i32 1, metadata !22, null}
!222 = metadata !{i32 786689, metadata !23, metadata !"f", metadata !6, i32 16777380, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 164]
!223 = metadata !{i32 164, i32 31, metadata !23, null}
!224 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 165]
!225 = metadata !{i32 165, i32 6, metadata !23, null}
!226 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !6, i32 165, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 165]
!227 = metadata !{i32 165, i32 9, metadata !23, null}
!228 = metadata !{i32 166, i32 7, metadata !229, null}
!229 = metadata !{i32 786443, metadata !5, metadata !23, i32 166, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!230 = metadata !{i32 166, i32 7, metadata !231, null}
!231 = metadata !{i32 786443, metadata !5, metadata !232, i32 166, i32 7, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!232 = metadata !{i32 786443, metadata !5, metadata !229, i32 166, i32 7, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!233 = metadata !{i32 167, i32 8, metadata !234, null}
!234 = metadata !{i32 786443, metadata !5, metadata !235, i32 167, i32 3, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!235 = metadata !{i32 786443, metadata !5, metadata !229, i32 166, i32 37, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!236 = metadata !{i32 167, i32 8, metadata !237, null}
!237 = metadata !{i32 786443, metadata !5, metadata !238, i32 167, i32 8, i32 2, i32 44} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!238 = metadata !{i32 786443, metadata !5, metadata !234, i32 167, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!239 = metadata !{i32 786688, metadata !240, metadata !"gray_pixel", metadata !6, i32 168, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gray_pixel] [line 168]
!240 = metadata !{i32 786443, metadata !5, metadata !234, i32 167, i32 37, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab3a\SDDebug/C:/xup/SDSoC/labs/lab3a/src/SDSoC_lab_design_main.c]
!241 = metadata !{i32 168, i32 12, metadata !240, null}
!242 = metadata !{i32 168, i32 4, metadata !240, null}
!243 = metadata !{i32 169, i32 4, metadata !240, null}
!244 = metadata !{i32 170, i32 3, metadata !240, null}
!245 = metadata !{i32 167, i32 32, metadata !234, null}
!246 = metadata !{i32 171, i32 3, metadata !235, null}
!247 = metadata !{i32 172, i32 2, metadata !235, null}
!248 = metadata !{i32 166, i32 32, metadata !229, null}
!249 = metadata !{i32 173, i32 2, metadata !23, null}
!250 = metadata !{i32 174, i32 1, metadata !23, null}
