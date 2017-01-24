; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom = internal global [252 x float] zeroinitializer, align 4
@_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E9lnReturnA = internal global [252 x float] zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_correlation_accel_v3.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !123
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !dbg !123
  ret void, !dbg !123
}

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) #0

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

define void @_Z20correlation_accel_v3iiPfS_(i32 %number_of_days, i32 %number_of_indices, float* %in_indices, float* %out_correlation) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %NUMBER_OF_DAYS = alloca i32, align 4
  %NUMBER_OF_INDICES = alloca i32, align 4
  %5 = alloca i8*
  store i32 %number_of_days, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !124), !dbg !125
  store i32 %number_of_indices, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !126), !dbg !127
  store float* %in_indices, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !128), !dbg !129
  store float* %out_correlation, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !130), !dbg !131
  call void @llvm.dbg.declare(metadata !{i32* %NUMBER_OF_DAYS}, metadata !132), !dbg !134
  %6 = load i32* %1, align 4, !dbg !135
  store i32 %6, i32* %NUMBER_OF_DAYS, align 4, !dbg !135
  call void @llvm.dbg.declare(metadata !{i32* %NUMBER_OF_INDICES}, metadata !136), !dbg !137
  %7 = load i32* %2, align 4, !dbg !138
  store i32 %7, i32* %NUMBER_OF_INDICES, align 4, !dbg !138
  %8 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !139
  %9 = sub nsw i32 %8, 1, !dbg !139
  %10 = call i8* @llvm.stacksave(), !dbg !139
  store i8* %10, i8** %5, !dbg !139
  %11 = alloca float, i32 %9, align 4, !dbg !139
  call void @llvm.dbg.declare(metadata !{float* %11}, metadata !140), !dbg !144
  %12 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !145
  %13 = sub nsw i32 %12, 1, !dbg !145
  %14 = alloca float, i32 %13, align 4, !dbg !145
  call void @llvm.dbg.declare(metadata !{float* %14}, metadata !146), !dbg !147
  %15 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !148
  %16 = sub nsw i32 %15, 1, !dbg !148
  %17 = alloca float, i32 %16, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata !{float* %17}, metadata !149), !dbg !150
  %18 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !151
  %19 = sub nsw i32 %18, 1, !dbg !151
  %20 = alloca float, i32 %19, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata !{float* %20}, metadata !152), !dbg !153
  %21 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !154
  %22 = sub nsw i32 %21, 1, !dbg !154
  %23 = alloca float, i32 %22, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata !{float* %23}, metadata !155), !dbg !156
  %24 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !157
  %25 = sub nsw i32 %24, 1, !dbg !157
  %26 = alloca float, i32 %25, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata !{float* %26}, metadata !158), !dbg !159
  %27 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !160
  %28 = sub nsw i32 %27, 1, !dbg !160
  %29 = alloca float, i32 %28, align 4, !dbg !160
  call void @llvm.dbg.declare(metadata !{float* %29}, metadata !161), !dbg !162
  %30 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !163
  %31 = sub nsw i32 %30, 1, !dbg !163
  %32 = alloca float, i32 %31, align 4, !dbg !163
  call void @llvm.dbg.declare(metadata !{float* %32}, metadata !164), !dbg !165
  %33 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !166
  %34 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !166
  %35 = load float** %3, align 4, !dbg !166
  call void @_Z8frontEndiiPfS_S_S_S_S_S_S_S_(i32 %33, i32 %34, float* %35, float* %11, float* %14, float* %17, float* %20, float* %32, float* %26, float* %29, float* %32), !dbg !166
  %36 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !167
  %37 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !167
  %38 = load float** %4, align 4, !dbg !167
  call void @_Z7backEndiiPfS_S_S_S_S_S_S_S_(i32 %36, i32 %37, float* %11, float* %14, float* %17, float* %20, float* %23, float* %26, float* %29, float* %32, float* %38), !dbg !167
  %39 = load i8** %5, !dbg !168
  call void @llvm.stackrestore(i8* %39), !dbg !168
  ret void, !dbg !168
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

define void @_Z8frontEndiiPfS_S_S_S_S_S_S_S_(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, float* %in_indices, float* %sum_weight_out, float* %sum_return_out, float* %sum_weight_returnSquare_out, float* %sum_weight_return_out, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out, float* %sum_weight_returnSquareA_out, float* %sum_weight_returnA_out) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %6 = alloca float*, align 4
  %7 = alloca float*, align 4
  %8 = alloca float*, align 4
  %9 = alloca float*, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %sum_weight = alloca float, align 4
  %acc_return = alloca [6 x float], align 4
  %acc_weight_returnSquare = alloca [6 x float], align 4
  %acc_weight_return = alloca [6 x float], align 4
  %acc_weight_returnA_returnB = alloca [6 x float], align 4
  %shift_reg = alloca [2 x float], align 4
  %sum_returnA = alloca float, align 4
  %sum_weight_returnSquareA = alloca float, align 4
  %sum_weight_returnA = alloca float, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %lnReturn = alloca float, align 4
  %weight = alloca float, align 4
  %channel = alloca i32, align 4
  %i2 = alloca i32, align 4
  %column_index = alloca i32, align 4
  %i3 = alloca i32, align 4
  %index = alloca i32, align 4
  %i4 = alloca i32, align 4
  %lnReturn5 = alloca float, align 4
  %weight6 = alloca float, align 4
  %channel7 = alloca i32, align 4
  %sum_return = alloca float, align 4
  %sum_weight_returnSquare = alloca float, align 4
  %sum_weight_return = alloca float, align 4
  %sum_weight_returnA_returnB = alloca float, align 4
  %i8 = alloca i32, align 4
  %i9 = alloca i32, align 4
  store i32 %NUMBER_OF_DAYS, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !169), !dbg !170
  store i32 %NUMBER_OF_INDICES, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !171), !dbg !172
  store float* %in_indices, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !173), !dbg !174
  store float* %sum_weight_out, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !175), !dbg !176
  store float* %sum_return_out, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !177), !dbg !178
  store float* %sum_weight_returnSquare_out, float** %6, align 4
  call void @llvm.dbg.declare(metadata !{float** %6}, metadata !179), !dbg !180
  store float* %sum_weight_return_out, float** %7, align 4
  call void @llvm.dbg.declare(metadata !{float** %7}, metadata !181), !dbg !182
  store float* %sum_weight_returnA_returnB_out, float** %8, align 4
  call void @llvm.dbg.declare(metadata !{float** %8}, metadata !183), !dbg !184
  store float* %sum_returnA_out, float** %9, align 4
  call void @llvm.dbg.declare(metadata !{float** %9}, metadata !185), !dbg !186
  store float* %sum_weight_returnSquareA_out, float** %10, align 4
  call void @llvm.dbg.declare(metadata !{float** %10}, metadata !187), !dbg !188
  store float* %sum_weight_returnA_out, float** %11, align 4
  call void @llvm.dbg.declare(metadata !{float** %11}, metadata !189), !dbg !190
  %12 = load i32* %1, align 4, !dbg !191
  call void @_ZL15weight_rom_initPfi(float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), i32 %12), !dbg !191
  call void @llvm.dbg.declare(metadata !{float* %sum_weight}, metadata !192), !dbg !193
  %13 = load float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), align 4, !dbg !194
  store float %13, float* %sum_weight, align 4, !dbg !194
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_return}, metadata !195), !dbg !199
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquare}, metadata !200), !dbg !201
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_return}, metadata !202), !dbg !203
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !204), !dbg !205
  call void @llvm.dbg.declare(metadata !{[2 x float]* %shift_reg}, metadata !206), !dbg !210
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA}, metadata !211), !dbg !212
  store float 0.000000e+00, float* %sum_returnA, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA}, metadata !214), !dbg !215
  store float 0.000000e+00, float* %sum_weight_returnSquareA, align 4, !dbg !216
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA}, metadata !217), !dbg !218
  store float 0.000000e+00, float* %sum_weight_returnA, align 4, !dbg !219
  br label %14, !dbg !219

; <label>:14                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !220), !dbg !222
  store i32 0, i32* %i, align 4, !dbg !223
  br label %15, !dbg !223

; <label>:15                                      ; preds = %27, %14
  %16 = load i32* %i, align 4, !dbg !224
  %17 = icmp slt i32 %16, 6, !dbg !224
  br i1 %17, label %18, label %30, !dbg !224

; <label>:18                                      ; preds = %15
  %19 = load i32* %i, align 4, !dbg !227
  %20 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %19, !dbg !227
  store float 0.000000e+00, float* %20, align 4, !dbg !227
  %21 = load i32* %i, align 4, !dbg !229
  %22 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %21, !dbg !229
  store float 0.000000e+00, float* %22, align 4, !dbg !229
  %23 = load i32* %i, align 4, !dbg !230
  %24 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %23, !dbg !230
  store float 0.000000e+00, float* %24, align 4, !dbg !230
  %25 = load i32* %i, align 4, !dbg !231
  %26 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %25, !dbg !231
  store float 0.000000e+00, float* %26, align 4, !dbg !231
  br label %27, !dbg !232

; <label>:27                                      ; preds = %18
  %28 = load i32* %i, align 4, !dbg !233
  %29 = add nsw i32 %28, 1, !dbg !233
  store i32 %29, i32* %i, align 4, !dbg !233
  br label %15, !dbg !233

; <label>:30                                      ; preds = %15
  %31 = load float** %3, align 4, !dbg !234
  %32 = getelementptr inbounds float* %31, i32 0, !dbg !234
  %33 = load float* %32, align 4, !dbg !234
  %34 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !234
  store float %33, float* %34, align 4, !dbg !234
  br label %35, !dbg !234

; <label>:35                                      ; preds = %30
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !235), !dbg !237
  store i32 1, i32* %i1, align 4, !dbg !238
  br label %36, !dbg !238

; <label>:36                                      ; preds = %96, %35
  %37 = load i32* %i1, align 4, !dbg !239
  %38 = load i32* %1, align 4, !dbg !239
  %39 = sub nsw i32 %38, 1, !dbg !239
  %40 = icmp sle i32 %37, %39, !dbg !239
  br i1 %40, label %41, label %99, !dbg !239

; <label>:41                                      ; preds = %36
  %42 = load i32* %i1, align 4, !dbg !242
  %43 = icmp eq i32 %42, 1, !dbg !242
  br i1 %43, label %44, label %50, !dbg !242

; <label>:44                                      ; preds = %41
  %45 = load i32* %i1, align 4, !dbg !245
  %46 = load float** %3, align 4, !dbg !245
  %47 = getelementptr inbounds float* %46, i32 %45, !dbg !245
  %48 = load float* %47, align 4, !dbg !245
  %49 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !245
  store float %48, float* %49, align 4, !dbg !245
  br label %59, !dbg !247

; <label>:50                                      ; preds = %41
  %51 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !248
  %52 = load float* %51, align 4, !dbg !248
  %53 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !248
  store float %52, float* %53, align 4, !dbg !248
  %54 = load i32* %i1, align 4, !dbg !250
  %55 = load float** %3, align 4, !dbg !250
  %56 = getelementptr inbounds float* %55, i32 %54, !dbg !250
  %57 = load float* %56, align 4, !dbg !250
  %58 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !250
  store float %57, float* %58, align 4, !dbg !250
  br label %59

; <label>:59                                      ; preds = %50, %44
  call void @llvm.dbg.declare(metadata !{float* %lnReturn}, metadata !251), !dbg !252
  %60 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !253
  %61 = load float* %60, align 4, !dbg !253
  %62 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !253
  %63 = load float* %62, align 4, !dbg !253
  %64 = fdiv float %61, %63, !dbg !253
  %65 = call float @logf(float %64) #1, !dbg !253
  store float %65, float* %lnReturn, align 4, !dbg !253
  call void @llvm.dbg.declare(metadata !{float* %weight}, metadata !254), !dbg !255
  %66 = load i32* %i1, align 4, !dbg !256
  %67 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 %66, !dbg !256
  %68 = load float* %67, align 4, !dbg !256
  store float %68, float* %weight, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata !{i32* %channel}, metadata !257), !dbg !258
  %69 = load i32* %i1, align 4, !dbg !259
  %70 = srem i32 %69, 6, !dbg !259
  store i32 %70, i32* %channel, align 4, !dbg !259
  %71 = load float* %lnReturn, align 4, !dbg !260
  %72 = load i32* %channel, align 4, !dbg !260
  %73 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %72, !dbg !260
  %74 = load float* %73, align 4, !dbg !260
  %75 = fadd float %74, %71, !dbg !260
  store float %75, float* %73, align 4, !dbg !260
  %76 = load float* %lnReturn, align 4, !dbg !261
  %77 = load float* %lnReturn, align 4, !dbg !261
  %78 = fmul float %76, %77, !dbg !261
  %79 = load float* %weight, align 4, !dbg !261
  %80 = fmul float %78, %79, !dbg !261
  %81 = load i32* %channel, align 4, !dbg !261
  %82 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %81, !dbg !261
  %83 = load float* %82, align 4, !dbg !261
  %84 = fadd float %83, %80, !dbg !261
  store float %84, float* %82, align 4, !dbg !261
  %85 = load float* %lnReturn, align 4, !dbg !262
  %86 = load float* %weight, align 4, !dbg !262
  %87 = fmul float %85, %86, !dbg !262
  %88 = load i32* %channel, align 4, !dbg !262
  %89 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %88, !dbg !262
  %90 = load float* %89, align 4, !dbg !262
  %91 = fadd float %90, %87, !dbg !262
  store float %91, float* %89, align 4, !dbg !262
  %92 = load float* %lnReturn, align 4, !dbg !263
  %93 = load i32* %i1, align 4, !dbg !263
  %94 = sub nsw i32 %93, 1, !dbg !263
  %95 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E9lnReturnA, i32 0, i32 %94, !dbg !263
  store float %92, float* %95, align 4, !dbg !263
  br label %96, !dbg !264

; <label>:96                                      ; preds = %59
  %97 = load i32* %i1, align 4, !dbg !265
  %98 = add nsw i32 %97, 1, !dbg !265
  store i32 %98, i32* %i1, align 4, !dbg !265
  br label %36, !dbg !265

; <label>:99                                      ; preds = %36
  br label %100, !dbg !266

; <label>:100                                     ; preds = %99
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !267), !dbg !269
  store i32 0, i32* %i2, align 4, !dbg !270
  br label %101, !dbg !270

; <label>:101                                     ; preds = %120, %100
  %102 = load i32* %i2, align 4, !dbg !271
  %103 = icmp slt i32 %102, 6, !dbg !271
  br i1 %103, label %104, label %123, !dbg !271

; <label>:104                                     ; preds = %101
  %105 = load i32* %i2, align 4, !dbg !274
  %106 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %105, !dbg !274
  %107 = load float* %106, align 4, !dbg !274
  %108 = load float* %sum_returnA, align 4, !dbg !274
  %109 = fadd float %108, %107, !dbg !274
  store float %109, float* %sum_returnA, align 4, !dbg !274
  %110 = load i32* %i2, align 4, !dbg !276
  %111 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %110, !dbg !276
  %112 = load float* %111, align 4, !dbg !276
  %113 = load float* %sum_weight_returnSquareA, align 4, !dbg !276
  %114 = fadd float %113, %112, !dbg !276
  store float %114, float* %sum_weight_returnSquareA, align 4, !dbg !276
  %115 = load i32* %i2, align 4, !dbg !277
  %116 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %115, !dbg !277
  %117 = load float* %116, align 4, !dbg !277
  %118 = load float* %sum_weight_returnA, align 4, !dbg !277
  %119 = fadd float %118, %117, !dbg !277
  store float %119, float* %sum_weight_returnA, align 4, !dbg !277
  br label %120, !dbg !278

; <label>:120                                     ; preds = %104
  %121 = load i32* %i2, align 4, !dbg !279
  %122 = add nsw i32 %121, 1, !dbg !279
  store i32 %122, i32* %i2, align 4, !dbg !279
  br label %101, !dbg !279

; <label>:123                                     ; preds = %101
  call void @llvm.dbg.declare(metadata !{i32* %column_index}, metadata !280), !dbg !282
  store i32 1, i32* %column_index, align 4, !dbg !283
  br label %124, !dbg !283

; <label>:124                                     ; preds = %305, %123
  %125 = load i32* %column_index, align 4, !dbg !284
  %126 = load i32* %2, align 4, !dbg !284
  %127 = icmp slt i32 %125, %126, !dbg !284
  br i1 %127, label %128, label %308, !dbg !284

; <label>:128                                     ; preds = %124
  br label %129, !dbg !287

; <label>:129                                     ; preds = %128
  call void @llvm.dbg.declare(metadata !{i32* %i3}, metadata !290), !dbg !292
  store i32 0, i32* %i3, align 4, !dbg !293
  br label %130, !dbg !293

; <label>:130                                     ; preds = %144, %129
  %131 = load i32* %i3, align 4, !dbg !294
  %132 = icmp slt i32 %131, 6, !dbg !294
  br i1 %132, label %133, label %147, !dbg !294

; <label>:133                                     ; preds = %130
  %134 = load i32* %i3, align 4, !dbg !297
  %135 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %134, !dbg !297
  store float 0.000000e+00, float* %135, align 4, !dbg !297
  %136 = load i32* %i3, align 4, !dbg !299
  %137 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %136, !dbg !299
  store float 0.000000e+00, float* %137, align 4, !dbg !299
  %138 = load i32* %i3, align 4, !dbg !300
  %139 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %138, !dbg !300
  store float 0.000000e+00, float* %139, align 4, !dbg !300
  %140 = load i32* %i3, align 4, !dbg !301
  %141 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %140, !dbg !301
  store float 0.000000e+00, float* %141, align 4, !dbg !301
  %142 = load i32* %i3, align 4, !dbg !302
  %143 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %142, !dbg !302
  store float 0.000000e+00, float* %143, align 4, !dbg !302
  br label %144, !dbg !303

; <label>:144                                     ; preds = %133
  %145 = load i32* %i3, align 4, !dbg !304
  %146 = add nsw i32 %145, 1, !dbg !304
  store i32 %146, i32* %i3, align 4, !dbg !304
  br label %130, !dbg !304

; <label>:147                                     ; preds = %130
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !305), !dbg !306
  %148 = load i32* %column_index, align 4, !dbg !307
  %149 = load i32* %1, align 4, !dbg !307
  %150 = mul nsw i32 %148, %149, !dbg !307
  store i32 %150, i32* %index, align 4, !dbg !307
  %151 = load i32* %index, align 4, !dbg !308
  %152 = load float** %3, align 4, !dbg !308
  %153 = getelementptr inbounds float* %152, i32 %151, !dbg !308
  %154 = load float* %153, align 4, !dbg !308
  %155 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !308
  store float %154, float* %155, align 4, !dbg !308
  br label %156, !dbg !308

; <label>:156                                     ; preds = %147
  call void @llvm.dbg.declare(metadata !{i32* %i4}, metadata !309), !dbg !311
  store i32 1, i32* %i4, align 4, !dbg !312
  br label %157, !dbg !312

; <label>:157                                     ; preds = %229, %156
  %158 = load i32* %i4, align 4, !dbg !313
  %159 = load i32* %1, align 4, !dbg !313
  %160 = sub nsw i32 %159, 1, !dbg !313
  %161 = icmp sle i32 %158, %160, !dbg !313
  br i1 %161, label %162, label %232, !dbg !313

; <label>:162                                     ; preds = %157
  %163 = load i32* %i4, align 4, !dbg !316
  %164 = icmp eq i32 %163, 1, !dbg !316
  br i1 %164, label %165, label %173, !dbg !316

; <label>:165                                     ; preds = %162
  %166 = load i32* %index, align 4, !dbg !319
  %167 = load i32* %i4, align 4, !dbg !319
  %168 = add nsw i32 %166, %167, !dbg !319
  %169 = load float** %3, align 4, !dbg !319
  %170 = getelementptr inbounds float* %169, i32 %168, !dbg !319
  %171 = load float* %170, align 4, !dbg !319
  %172 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !319
  store float %171, float* %172, align 4, !dbg !319
  br label %184, !dbg !321

; <label>:173                                     ; preds = %162
  %174 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !322
  %175 = load float* %174, align 4, !dbg !322
  %176 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !322
  store float %175, float* %176, align 4, !dbg !322
  %177 = load i32* %index, align 4, !dbg !324
  %178 = load i32* %i4, align 4, !dbg !324
  %179 = add nsw i32 %177, %178, !dbg !324
  %180 = load float** %3, align 4, !dbg !324
  %181 = getelementptr inbounds float* %180, i32 %179, !dbg !324
  %182 = load float* %181, align 4, !dbg !324
  %183 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !324
  store float %182, float* %183, align 4, !dbg !324
  br label %184

; <label>:184                                     ; preds = %173, %165
  call void @llvm.dbg.declare(metadata !{float* %lnReturn5}, metadata !325), !dbg !326
  %185 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !327
  %186 = load float* %185, align 4, !dbg !327
  %187 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !327
  %188 = load float* %187, align 4, !dbg !327
  %189 = fdiv float %186, %188, !dbg !327
  %190 = call float @logf(float %189) #1, !dbg !327
  store float %190, float* %lnReturn5, align 4, !dbg !327
  call void @llvm.dbg.declare(metadata !{float* %weight6}, metadata !328), !dbg !329
  %191 = load i32* %i4, align 4, !dbg !330
  %192 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 %191, !dbg !330
  %193 = load float* %192, align 4, !dbg !330
  store float %193, float* %weight6, align 4, !dbg !330
  call void @llvm.dbg.declare(metadata !{i32* %channel7}, metadata !331), !dbg !332
  %194 = load i32* %i4, align 4, !dbg !333
  %195 = srem i32 %194, 6, !dbg !333
  store i32 %195, i32* %channel7, align 4, !dbg !333
  %196 = load float* %lnReturn5, align 4, !dbg !334
  %197 = load i32* %channel7, align 4, !dbg !334
  %198 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %197, !dbg !334
  %199 = load float* %198, align 4, !dbg !334
  %200 = fadd float %199, %196, !dbg !334
  store float %200, float* %198, align 4, !dbg !334
  %201 = load float* %lnReturn5, align 4, !dbg !335
  %202 = load float* %lnReturn5, align 4, !dbg !335
  %203 = fmul float %201, %202, !dbg !335
  %204 = load float* %weight6, align 4, !dbg !335
  %205 = fmul float %203, %204, !dbg !335
  %206 = load i32* %channel7, align 4, !dbg !335
  %207 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %206, !dbg !335
  %208 = load float* %207, align 4, !dbg !335
  %209 = fadd float %208, %205, !dbg !335
  store float %209, float* %207, align 4, !dbg !335
  %210 = load float* %lnReturn5, align 4, !dbg !336
  %211 = load float* %weight6, align 4, !dbg !336
  %212 = fmul float %210, %211, !dbg !336
  %213 = load i32* %channel7, align 4, !dbg !336
  %214 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %213, !dbg !336
  %215 = load float* %214, align 4, !dbg !336
  %216 = fadd float %215, %212, !dbg !336
  store float %216, float* %214, align 4, !dbg !336
  %217 = load i32* %i4, align 4, !dbg !337
  %218 = sub nsw i32 %217, 1, !dbg !337
  %219 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E9lnReturnA, i32 0, i32 %218, !dbg !337
  %220 = load float* %219, align 4, !dbg !337
  %221 = load float* %lnReturn5, align 4, !dbg !337
  %222 = fmul float %220, %221, !dbg !337
  %223 = load float* %weight6, align 4, !dbg !337
  %224 = fmul float %222, %223, !dbg !337
  %225 = load i32* %channel7, align 4, !dbg !337
  %226 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %225, !dbg !337
  %227 = load float* %226, align 4, !dbg !337
  %228 = fadd float %227, %224, !dbg !337
  store float %228, float* %226, align 4, !dbg !337
  br label %229, !dbg !338

; <label>:229                                     ; preds = %184
  %230 = load i32* %i4, align 4, !dbg !339
  %231 = add nsw i32 %230, 1, !dbg !339
  store i32 %231, i32* %i4, align 4, !dbg !339
  br label %157, !dbg !339

; <label>:232                                     ; preds = %157
  call void @llvm.dbg.declare(metadata !{float* %sum_return}, metadata !340), !dbg !341
  store float 0.000000e+00, float* %sum_return, align 4, !dbg !342
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquare}, metadata !343), !dbg !344
  store float 0.000000e+00, float* %sum_weight_returnSquare, align 4, !dbg !345
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_return}, metadata !346), !dbg !347
  store float 0.000000e+00, float* %sum_weight_return, align 4, !dbg !348
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB}, metadata !349), !dbg !350
  store float 0.000000e+00, float* %sum_weight_returnA_returnB, align 4, !dbg !351
  br label %233, !dbg !351

; <label>:233                                     ; preds = %232
  call void @llvm.dbg.declare(metadata !{i32* %i8}, metadata !352), !dbg !354
  store i32 0, i32* %i8, align 4, !dbg !355
  br label %234, !dbg !355

; <label>:234                                     ; preds = %258, %233
  %235 = load i32* %i8, align 4, !dbg !356
  %236 = icmp slt i32 %235, 6, !dbg !356
  br i1 %236, label %237, label %261, !dbg !356

; <label>:237                                     ; preds = %234
  %238 = load i32* %i8, align 4, !dbg !359
  %239 = getelementptr inbounds [6 x float]* %acc_return, i32 0, i32 %238, !dbg !359
  %240 = load float* %239, align 4, !dbg !359
  %241 = load float* %sum_return, align 4, !dbg !359
  %242 = fadd float %241, %240, !dbg !359
  store float %242, float* %sum_return, align 4, !dbg !359
  %243 = load i32* %i8, align 4, !dbg !361
  %244 = getelementptr inbounds [6 x float]* %acc_weight_returnSquare, i32 0, i32 %243, !dbg !361
  %245 = load float* %244, align 4, !dbg !361
  %246 = load float* %sum_weight_returnSquare, align 4, !dbg !361
  %247 = fadd float %246, %245, !dbg !361
  store float %247, float* %sum_weight_returnSquare, align 4, !dbg !361
  %248 = load i32* %i8, align 4, !dbg !362
  %249 = getelementptr inbounds [6 x float]* %acc_weight_return, i32 0, i32 %248, !dbg !362
  %250 = load float* %249, align 4, !dbg !362
  %251 = load float* %sum_weight_return, align 4, !dbg !362
  %252 = fadd float %251, %250, !dbg !362
  store float %252, float* %sum_weight_return, align 4, !dbg !362
  %253 = load i32* %i8, align 4, !dbg !363
  %254 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %253, !dbg !363
  %255 = load float* %254, align 4, !dbg !363
  %256 = load float* %sum_weight_returnA_returnB, align 4, !dbg !363
  %257 = fadd float %256, %255, !dbg !363
  store float %257, float* %sum_weight_returnA_returnB, align 4, !dbg !363
  br label %258, !dbg !364

; <label>:258                                     ; preds = %237
  %259 = load i32* %i8, align 4, !dbg !365
  %260 = add nsw i32 %259, 1, !dbg !365
  store i32 %260, i32* %i8, align 4, !dbg !365
  br label %234, !dbg !365

; <label>:261                                     ; preds = %234
  call void @llvm.dbg.declare(metadata !{i32* %i9}, metadata !366), !dbg !367
  %262 = load i32* %column_index, align 4, !dbg !368
  %263 = sub nsw i32 %262, 1, !dbg !368
  %264 = srem i32 %263, 252, !dbg !368
  store i32 %264, i32* %i9, align 4, !dbg !368
  %265 = load float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), align 4, !dbg !369
  %266 = load i32* %column_index, align 4, !dbg !369
  %267 = sub nsw i32 %266, 1, !dbg !369
  %268 = load float** %4, align 4, !dbg !369
  %269 = getelementptr inbounds float* %268, i32 %267, !dbg !369
  store float %265, float* %269, align 4, !dbg !369
  %270 = load float* %sum_return, align 4, !dbg !370
  %271 = load i32* %column_index, align 4, !dbg !370
  %272 = sub nsw i32 %271, 1, !dbg !370
  %273 = load float** %5, align 4, !dbg !370
  %274 = getelementptr inbounds float* %273, i32 %272, !dbg !370
  store float %270, float* %274, align 4, !dbg !370
  %275 = load float* %sum_weight_returnSquare, align 4, !dbg !371
  %276 = load i32* %column_index, align 4, !dbg !371
  %277 = sub nsw i32 %276, 1, !dbg !371
  %278 = load float** %6, align 4, !dbg !371
  %279 = getelementptr inbounds float* %278, i32 %277, !dbg !371
  store float %275, float* %279, align 4, !dbg !371
  %280 = load float* %sum_weight_return, align 4, !dbg !372
  %281 = load i32* %column_index, align 4, !dbg !372
  %282 = sub nsw i32 %281, 1, !dbg !372
  %283 = load float** %7, align 4, !dbg !372
  %284 = getelementptr inbounds float* %283, i32 %282, !dbg !372
  store float %280, float* %284, align 4, !dbg !372
  %285 = load float* %sum_weight_returnA_returnB, align 4, !dbg !373
  %286 = load i32* %column_index, align 4, !dbg !373
  %287 = sub nsw i32 %286, 1, !dbg !373
  %288 = load float** %8, align 4, !dbg !373
  %289 = getelementptr inbounds float* %288, i32 %287, !dbg !373
  store float %285, float* %289, align 4, !dbg !373
  %290 = load float* %sum_returnA, align 4, !dbg !374
  %291 = load i32* %column_index, align 4, !dbg !374
  %292 = sub nsw i32 %291, 1, !dbg !374
  %293 = load float** %9, align 4, !dbg !374
  %294 = getelementptr inbounds float* %293, i32 %292, !dbg !374
  store float %290, float* %294, align 4, !dbg !374
  %295 = load float* %sum_weight_returnSquareA, align 4, !dbg !375
  %296 = load i32* %column_index, align 4, !dbg !375
  %297 = sub nsw i32 %296, 1, !dbg !375
  %298 = load float** %10, align 4, !dbg !375
  %299 = getelementptr inbounds float* %298, i32 %297, !dbg !375
  store float %295, float* %299, align 4, !dbg !375
  %300 = load float* %sum_weight_returnA, align 4, !dbg !376
  %301 = load i32* %column_index, align 4, !dbg !376
  %302 = sub nsw i32 %301, 1, !dbg !376
  %303 = load float** %11, align 4, !dbg !376
  %304 = getelementptr inbounds float* %303, i32 %302, !dbg !376
  store float %300, float* %304, align 4, !dbg !376
  br label %305, !dbg !377

; <label>:305                                     ; preds = %261
  %306 = load i32* %column_index, align 4, !dbg !378
  %307 = add nsw i32 %306, 1, !dbg !378
  store i32 %307, i32* %column_index, align 4, !dbg !378
  br label %124, !dbg !378

; <label>:308                                     ; preds = %124
  ret void, !dbg !379
}

; Function Attrs: nounwind
define void @_Z7backEndiiPfS_S_S_S_S_S_S_S_(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, float* %sum_weight_in, float* %sum_return_in, float* %sum_weight_returnSquare_in, float* %sum_weight_return_in, float* %sum_weight_returnA_returnB_in, float* %sum_returnA_in, float* %sum_weight_returnSquareA_in, float* %sum_weight_returnA_in, float* %out_correlation) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %6 = alloca float*, align 4
  %7 = alloca float*, align 4
  %8 = alloca float*, align 4
  %9 = alloca float*, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %column_index = alloca i32, align 4
  %sum_weight = alloca float, align 4
  %sum_return = alloca float, align 4
  %sum_weight_returnSquare = alloca float, align 4
  %sum_weight_return = alloca float, align 4
  %sum_weight_returnA_returnB = alloca float, align 4
  %sum_returnA = alloca float, align 4
  %sum_weight_returnSquareA = alloca float, align 4
  %sum_weight_returnA = alloca float, align 4
  %meanReturnA = alloca float, align 4
  %meanReturnB = alloca float, align 4
  %volatilityA = alloca float, align 4
  %volatilityB = alloca float, align 4
  %covariance = alloca float, align 4
  %corr_temp = alloca float, align 4
  store i32 %NUMBER_OF_DAYS, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !380), !dbg !381
  store i32 %NUMBER_OF_INDICES, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !382), !dbg !383
  store float* %sum_weight_in, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !384), !dbg !385
  store float* %sum_return_in, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !386), !dbg !387
  store float* %sum_weight_returnSquare_in, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !388), !dbg !389
  store float* %sum_weight_return_in, float** %6, align 4
  call void @llvm.dbg.declare(metadata !{float** %6}, metadata !390), !dbg !391
  store float* %sum_weight_returnA_returnB_in, float** %7, align 4
  call void @llvm.dbg.declare(metadata !{float** %7}, metadata !392), !dbg !393
  store float* %sum_returnA_in, float** %8, align 4
  call void @llvm.dbg.declare(metadata !{float** %8}, metadata !394), !dbg !395
  store float* %sum_weight_returnSquareA_in, float** %9, align 4
  call void @llvm.dbg.declare(metadata !{float** %9}, metadata !396), !dbg !397
  store float* %sum_weight_returnA_in, float** %10, align 4
  call void @llvm.dbg.declare(metadata !{float** %10}, metadata !398), !dbg !399
  store float* %out_correlation, float** %11, align 4
  call void @llvm.dbg.declare(metadata !{float** %11}, metadata !400), !dbg !401
  call void @llvm.dbg.declare(metadata !{i32* %column_index}, metadata !402), !dbg !404
  store i32 1, i32* %column_index, align 4, !dbg !405
  br label %12, !dbg !405

; <label>:12                                      ; preds = %118, %0
  %13 = load i32* %column_index, align 4, !dbg !406
  %14 = load i32* %2, align 4, !dbg !406
  %15 = icmp slt i32 %13, %14, !dbg !406
  br i1 %15, label %16, label %121, !dbg !406

; <label>:16                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{float* %sum_weight}, metadata !409), !dbg !411
  %17 = load i32* %column_index, align 4, !dbg !412
  %18 = sub nsw i32 %17, 1, !dbg !412
  %19 = load float** %3, align 4, !dbg !412
  %20 = getelementptr inbounds float* %19, i32 %18, !dbg !412
  %21 = load float* %20, align 4, !dbg !412
  store float %21, float* %sum_weight, align 4, !dbg !412
  call void @llvm.dbg.declare(metadata !{float* %sum_return}, metadata !413), !dbg !414
  %22 = load i32* %column_index, align 4, !dbg !415
  %23 = sub nsw i32 %22, 1, !dbg !415
  %24 = load float** %4, align 4, !dbg !415
  %25 = getelementptr inbounds float* %24, i32 %23, !dbg !415
  %26 = load float* %25, align 4, !dbg !415
  store float %26, float* %sum_return, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquare}, metadata !416), !dbg !417
  %27 = load i32* %column_index, align 4, !dbg !418
  %28 = sub nsw i32 %27, 1, !dbg !418
  %29 = load float** %5, align 4, !dbg !418
  %30 = getelementptr inbounds float* %29, i32 %28, !dbg !418
  %31 = load float* %30, align 4, !dbg !418
  store float %31, float* %sum_weight_returnSquare, align 4, !dbg !418
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_return}, metadata !419), !dbg !420
  %32 = load i32* %column_index, align 4, !dbg !421
  %33 = sub nsw i32 %32, 1, !dbg !421
  %34 = load float** %6, align 4, !dbg !421
  %35 = getelementptr inbounds float* %34, i32 %33, !dbg !421
  %36 = load float* %35, align 4, !dbg !421
  store float %36, float* %sum_weight_return, align 4, !dbg !421
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB}, metadata !422), !dbg !423
  %37 = load i32* %column_index, align 4, !dbg !424
  %38 = sub nsw i32 %37, 1, !dbg !424
  %39 = load float** %7, align 4, !dbg !424
  %40 = getelementptr inbounds float* %39, i32 %38, !dbg !424
  %41 = load float* %40, align 4, !dbg !424
  store float %41, float* %sum_weight_returnA_returnB, align 4, !dbg !424
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA}, metadata !425), !dbg !426
  %42 = load i32* %column_index, align 4, !dbg !427
  %43 = sub nsw i32 %42, 1, !dbg !427
  %44 = load float** %8, align 4, !dbg !427
  %45 = getelementptr inbounds float* %44, i32 %43, !dbg !427
  %46 = load float* %45, align 4, !dbg !427
  store float %46, float* %sum_returnA, align 4, !dbg !427
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA}, metadata !428), !dbg !429
  %47 = load i32* %column_index, align 4, !dbg !430
  %48 = sub nsw i32 %47, 1, !dbg !430
  %49 = load float** %9, align 4, !dbg !430
  %50 = getelementptr inbounds float* %49, i32 %48, !dbg !430
  %51 = load float* %50, align 4, !dbg !430
  store float %51, float* %sum_weight_returnSquareA, align 4, !dbg !430
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA}, metadata !431), !dbg !432
  %52 = load i32* %column_index, align 4, !dbg !433
  %53 = sub nsw i32 %52, 1, !dbg !433
  %54 = load float** %10, align 4, !dbg !433
  %55 = getelementptr inbounds float* %54, i32 %53, !dbg !433
  %56 = load float* %55, align 4, !dbg !433
  store float %56, float* %sum_weight_returnA, align 4, !dbg !433
  call void @llvm.dbg.declare(metadata !{float* %meanReturnA}, metadata !434), !dbg !435
  %57 = load float* %sum_returnA, align 4, !dbg !436
  %58 = load i32* %1, align 4, !dbg !436
  %59 = sub nsw i32 %58, 1, !dbg !436
  %60 = sitofp i32 %59 to float, !dbg !436
  %61 = fdiv float %57, %60, !dbg !436
  store float %61, float* %meanReturnA, align 4, !dbg !436
  call void @llvm.dbg.declare(metadata !{float* %meanReturnB}, metadata !437), !dbg !438
  %62 = load float* %sum_return, align 4, !dbg !439
  %63 = load i32* %1, align 4, !dbg !439
  %64 = sub nsw i32 %63, 1, !dbg !439
  %65 = sitofp i32 %64 to float, !dbg !439
  %66 = fdiv float %62, %65, !dbg !439
  store float %66, float* %meanReturnB, align 4, !dbg !439
  call void @llvm.dbg.declare(metadata !{float* %volatilityA}, metadata !440), !dbg !441
  %67 = load float* %sum_weight_returnSquareA, align 4, !dbg !442
  %68 = load float* %meanReturnA, align 4, !dbg !442
  %69 = fmul float 2.000000e+00, %68, !dbg !442
  %70 = load float* %sum_weight_returnA, align 4, !dbg !442
  %71 = fmul float %69, %70, !dbg !442
  %72 = fsub float %67, %71, !dbg !442
  %73 = load float* %sum_weight, align 4, !dbg !442
  %74 = fdiv float %72, %73, !dbg !442
  %75 = load float* %meanReturnA, align 4, !dbg !442
  %76 = load float* %meanReturnA, align 4, !dbg !442
  %77 = fmul float %75, %76, !dbg !442
  %78 = fadd float %74, %77, !dbg !442
  %79 = call float @sqrtf(float %78) #1, !dbg !442
  store float %79, float* %volatilityA, align 4, !dbg !442
  call void @llvm.dbg.declare(metadata !{float* %volatilityB}, metadata !443), !dbg !444
  %80 = load float* %sum_weight_returnSquare, align 4, !dbg !445
  %81 = load float* %meanReturnB, align 4, !dbg !445
  %82 = fmul float 2.000000e+00, %81, !dbg !445
  %83 = load float* %sum_weight_return, align 4, !dbg !445
  %84 = fmul float %82, %83, !dbg !445
  %85 = fsub float %80, %84, !dbg !445
  %86 = load float* %sum_weight, align 4, !dbg !445
  %87 = fdiv float %85, %86, !dbg !445
  %88 = load float* %meanReturnB, align 4, !dbg !445
  %89 = load float* %meanReturnB, align 4, !dbg !445
  %90 = fmul float %88, %89, !dbg !445
  %91 = fadd float %87, %90, !dbg !445
  %92 = call float @sqrtf(float %91) #1, !dbg !445
  store float %92, float* %volatilityB, align 4, !dbg !445
  call void @llvm.dbg.declare(metadata !{float* %covariance}, metadata !446), !dbg !447
  %93 = load float* %sum_weight_returnA_returnB, align 4, !dbg !448
  %94 = load float* %meanReturnA, align 4, !dbg !448
  %95 = load float* %sum_weight_return, align 4, !dbg !448
  %96 = fmul float %94, %95, !dbg !448
  %97 = fsub float %93, %96, !dbg !448
  %98 = load float* %meanReturnB, align 4, !dbg !448
  %99 = load float* %sum_weight_returnA, align 4, !dbg !448
  %100 = fmul float %98, %99, !dbg !448
  %101 = fsub float %97, %100, !dbg !448
  %102 = load float* %sum_weight, align 4, !dbg !448
  %103 = fdiv float %101, %102, !dbg !448
  %104 = load float* %meanReturnA, align 4, !dbg !448
  %105 = load float* %meanReturnB, align 4, !dbg !448
  %106 = fmul float %104, %105, !dbg !448
  %107 = fadd float %103, %106, !dbg !448
  store float %107, float* %covariance, align 4, !dbg !448
  call void @llvm.dbg.declare(metadata !{float* %corr_temp}, metadata !449), !dbg !450
  %108 = load float* %covariance, align 4, !dbg !451
  %109 = load float* %volatilityA, align 4, !dbg !451
  %110 = load float* %volatilityB, align 4, !dbg !451
  %111 = fmul float %109, %110, !dbg !451
  %112 = fdiv float %108, %111, !dbg !451
  store float %112, float* %corr_temp, align 4, !dbg !451
  %113 = load float* %corr_temp, align 4, !dbg !452
  %114 = load i32* %column_index, align 4, !dbg !452
  %115 = sub nsw i32 %114, 1, !dbg !452
  %116 = load float** %11, align 4, !dbg !452
  %117 = getelementptr inbounds float* %116, i32 %115, !dbg !452
  store float %113, float* %117, align 4, !dbg !452
  br label %118, !dbg !453

; <label>:118                                     ; preds = %16
  %119 = load i32* %column_index, align 4, !dbg !454
  %120 = add nsw i32 %119, 1, !dbg !454
  store i32 %120, i32* %column_index, align 4, !dbg !454
  br label %12, !dbg !454

; <label>:121                                     ; preds = %12
  ret void, !dbg !455
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: nounwind
define internal void @_ZL15weight_rom_initPfi(float* %weightRom, i32 %NUMBER_OF_DAYS) #3 {
  %1 = alloca float*, align 4
  %2 = alloca i32, align 4
  %lambda = alloca float, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store float* %weightRom, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !456), !dbg !457
  store i32 %NUMBER_OF_DAYS, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !458), !dbg !459
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !460), !dbg !461
  store float 0x3FEE147AE0000000, float* %lambda, align 4, !dbg !462
  %3 = load float** %1, align 4, !dbg !463
  %4 = getelementptr inbounds float* %3, i32 0, !dbg !463
  store float 1.000000e+00, float* %4, align 4, !dbg !463
  %5 = load float** %1, align 4, !dbg !464
  %6 = getelementptr inbounds float* %5, i32 1, !dbg !464
  store float 1.000000e+00, float* %6, align 4, !dbg !464
  br label %7, !dbg !464

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !465), !dbg !467
  store i32 2, i32* %i, align 4, !dbg !468
  br label %8, !dbg !468

; <label>:8                                       ; preds = %22, %7
  %9 = load i32* %i, align 4, !dbg !469
  %10 = icmp slt i32 %9, 252, !dbg !469
  br i1 %10, label %11, label %25, !dbg !469

; <label>:11                                      ; preds = %8
  %12 = load float* %lambda, align 4, !dbg !472
  %13 = load i32* %i, align 4, !dbg !472
  %14 = sub nsw i32 %13, 1, !dbg !472
  %15 = load float** %1, align 4, !dbg !472
  %16 = getelementptr inbounds float* %15, i32 %14, !dbg !472
  %17 = load float* %16, align 4, !dbg !472
  %18 = fmul float %12, %17, !dbg !472
  %19 = load i32* %i, align 4, !dbg !472
  %20 = load float** %1, align 4, !dbg !472
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !472
  store float %18, float* %21, align 4, !dbg !472
  br label %22, !dbg !474

; <label>:22                                      ; preds = %11
  %23 = load i32* %i, align 4, !dbg !475
  %24 = add nsw i32 %23, 1, !dbg !475
  store i32 %24, i32* %i, align 4, !dbg !475
  br label %8, !dbg !475

; <label>:25                                      ; preds = %8
  br label %26, !dbg !476

; <label>:26                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !477), !dbg !479
  store i32 2, i32* %i1, align 4, !dbg !480
  br label %27, !dbg !480

; <label>:27                                      ; preds = %40, %26
  %28 = load i32* %i1, align 4, !dbg !481
  %29 = load i32* %2, align 4, !dbg !481
  %30 = icmp slt i32 %28, %29, !dbg !481
  br i1 %30, label %31, label %43, !dbg !481

; <label>:31                                      ; preds = %27
  %32 = load i32* %i1, align 4, !dbg !484
  %33 = load float** %1, align 4, !dbg !484
  %34 = getelementptr inbounds float* %33, i32 %32, !dbg !484
  %35 = load float* %34, align 4, !dbg !484
  %36 = load float** %1, align 4, !dbg !484
  %37 = getelementptr inbounds float* %36, i32 0, !dbg !484
  %38 = load float* %37, align 4, !dbg !484
  %39 = fadd float %38, %35, !dbg !484
  store float %39, float* %37, align 4, !dbg !484
  br label %40, !dbg !486

; <label>:40                                      ; preds = %31
  %41 = load i32* %i1, align 4, !dbg !487
  %42 = add nsw i32 %41, 1, !dbg !487
  store i32 %42, i32* %i1, align 4, !dbg !487
  br label %27, !dbg !487

; <label>:43                                      ; preds = %27
  ret void, !dbg !488
}

; Function Attrs: nounwind
declare float @logf(float) #3

; Function Attrs: nounwind
declare float @sqrtf(float) #3

define internal void @_GLOBAL__sub_I_correlation_accel_v3.cpp() section ".text.startup" {
  call void @__cxx_global_var_init(), !dbg !489
  ret void, !dbg !489
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!100, !101, !102, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !112}
!xidane.function_declaration_filename = !{!100, !114, !102, !114, !103, !115, !105, !115, !107, !115, !109, !115, !111, !116, !113, !116}
!xidane.function_argument_annotation = !{!103, !117}
!xidane.ExternC = !{!111, !113}
!llvm.module.flags = !{!118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !3, metadata !37, metadata !60, metadata !67, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease/../src/correlation_accel_v3.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src/correlation_accel_v3.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !12, metadata !16, metadata !28}
!4 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !6, i32 0, null, null, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!5 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wchar.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!6 = metadata !{metadata !7, metadata !9}
!7 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from _ZTSN11__mbstate_tUt_E]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"lconv", i32 53, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5lconv"} ; [ DW_TAG_structure_type ] [lconv] [line 53, size 0, align 0, offset 0] [decl] [from ]
!11 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/locale.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!12 = metadata !{i32 786434, metadata !13, metadata !14, metadata !"ios_base", i32 199, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt8ios_base"} ; [ DW_TAG_class_type ] [ios_base] [line 199, size 0, align 0, offset 0] [decl] [from ]
!13 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/ios_base.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!14 = metadata !{i32 786489, metadata !15, null, metadata !"std", i32 184} ; [ DW_TAG_namespace ] [std] [line 184]
!15 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/arm-xilinx-linux-gnueabi/bits/c++config.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!16 = metadata !{i32 786434, metadata !13, metadata !"_ZTSSt8ios_base", metadata !"Init", i32 533, i64 8, i64 8, i32 0, i32 0, null, metadata !17, i32 0, null, null, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_class_type ] [Init] [line 533, size 8, align 8, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !21, metadata !23, metadata !27}
!18 = metadata !{i32 786445, metadata !13, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_refcount", i32 541, i64 0, i64 0, i64 0, i32 4097, metadata !19, null} ; [ DW_TAG_member ] [_S_refcount] [line 541, size 0, align 0, offset 0] [private] [static] [from _Atomic_word]
!19 = metadata !{i32 786454, metadata !20, null, metadata !"_Atomic_word", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [_Atomic_word] [line 32, size 0, align 0, offset 0] [from int]
!20 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/arm-xilinx-linux-gnueabi/bits/atomic_word.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!21 = metadata !{i32 786445, metadata !13, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_synced_with_stdio", i32 542, i64 0, i64 0, i64 0, i32 4097, metadata !22, null} ; [ DW_TAG_member ] [_S_synced_with_stdio] [line 542, size 0, align 0, offset 0] [private] [static] [from bool]
!22 = metadata !{i32 786468, null, null, metadata !"bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!23 = metadata !{i32 786478, metadata !13, metadata !"_ZTSNSt8ios_base4InitE", metadata !"Init", metadata !"Init", metadata !"", i32 537, metadata !24, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 537} ; [ DW_TAG_subprogram ] [line 537] [Init]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !26}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 1088, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [artificial] [from _ZTSNSt8ios_base4InitE]
!27 = metadata !{i32 786478, metadata !13, metadata !"_ZTSNSt8ios_base4InitE", metadata !"~Init", metadata !"~Init", metadata !"", i32 538, metadata !24, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, null, i32 538} ; [ DW_TAG_subprogram ] [line 538] [~Init]
!28 = metadata !{i32 786455, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"", i32 85, i64 32, i64 32, i64 0, i32 0, null, metadata !29, i32 0, null, null, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_union_type ] [line 85, size 32, align 32, offset 0] [def] [from ]
!29 = metadata !{metadata !30, metadata !32}
!30 = metadata !{i32 786445, metadata !5, metadata !"_ZTSN11__mbstate_tUt_E", metadata !"__wch", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [__wch] [line 88, size 32, align 32, offset 0] [from unsigned int]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !5, metadata !"_ZTSN11__mbstate_tUt_E", metadata !"__wchb", i32 92, i64 32, i64 8, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [__wchb] [line 92, size 32, align 8, offset 0] [from ]
!33 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !34, metadata !35, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!34 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!37 = metadata !{metadata !38, metadata !43, metadata !50, metadata !53, metadata !54, metadata !57}
!38 = metadata !{i32 786478, metadata !39, metadata !40, metadata !"__cxx_global_var_init", metadata !"__cxx_global_var_init", metadata !"", i32 74, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__cxx_global_var_init, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [__cxx_global_var_init]
!39 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/iostream", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!40 = metadata !{i32 786473, metadata !39}        ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/iostream]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null}
!43 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"correlation_accel_v3", metadata !"correlation_accel_v3", metadata !"_Z20correlation_accel_v3iiPfS_", i32 40, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*)* @_Z20correlation_accel_v3iiPfS_, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 48] [correlation_accel_v3]
!44 = metadata !{metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!45 = metadata !{i32 786473, metadata !44}        ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !8, metadata !8, metadata !48, metadata !48}
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!49 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!50 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"frontEnd", metadata !"frontEnd", metadata !"_Z8frontEndiiPfS_S_S_S_S_S_S_S_", i32 211, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z8frontEndiiPfS_S_S_S_S_S_S_S_, null, null, metadata !2, i32 226} ; [ DW_TAG_subprogram ] [line 211] [def] [scope 226] [frontEnd]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !8, metadata !8, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48}
!53 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"backEnd", metadata !"backEnd", metadata !"_Z7backEndiiPfS_S_S_S_S_S_S_S_", i32 506, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z7backEndiiPfS_S_S_S_S_S_S_S_, null, null, metadata !2, i32 522} ; [ DW_TAG_subprogram ] [line 506] [def] [scope 522] [backEnd]
!54 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", i32 175, metadata !55, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32)* @_ZL15weight_rom_initPfi, null, null, metadata !2, i32 178} ; [ DW_TAG_subprogram ] [line 175] [local] [def] [scope 178] [weight_rom_init]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !48, metadata !8}
!57 = metadata !{i32 786478, metadata !1, metadata !58, metadata !"", metadata !"", metadata !"_GLOBAL__sub_I_correlation_accel_v3.cpp", i32 0, metadata !59, i1 true, i1 true, i32 0, i32 0, null, i32 64, i1 false, void ()* @_GLOBAL__sub_I_correlation_accel_v3.cpp, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 0] [local] [def]
!58 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease/../src/correlation_accel_v3.cpp]
!59 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62, metadata !66}
!61 = metadata !{i32 786484, i32 0, metadata !14, metadata !"__ioinit", metadata !"__ioinit", metadata !"_ZStL8__ioinit", metadata !40, i32 74, metadata !"_ZTSNSt8ios_base4InitE", i32 1, i32 1, %"class.std::ios_base::Init"* @_ZStL8__ioinit, null} ; [ DW_TAG_variable ] [__ioinit] [line 74] [local] [def]
!62 = metadata !{i32 786484, i32 0, metadata !50, metadata !"weight_rom", metadata !"weight_rom", metadata !"", metadata !45, i32 237, metadata !63, i32 1, i32 1, [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E10weight_rom, null} ; [ DW_TAG_variable ] [weight_rom] [line 237] [local] [def]
!63 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8064, i64 32, i32 0, i32 0, metadata !49, metadata !64, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8064, align 32, offset 0] [from float]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 252}      ; [ DW_TAG_subrange_type ] [0, 251]
!66 = metadata !{i32 786484, i32 0, metadata !50, metadata !"lnReturnA", metadata !"lnReturnA", metadata !"", metadata !45, i32 245, metadata !63, i32 1, i32 1, [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_E9lnReturnA, null} ; [ DW_TAG_variable ] [lnReturnA] [line 245] [local] [def]
!67 = metadata !{metadata !68, metadata !72, metadata !76, metadata !78, metadata !81, metadata !84, metadata !85, metadata !92, metadata !95, metadata !96, metadata !99}
!68 = metadata !{i32 786490, metadata !69, metadata !71, i32 56} ; [ DW_TAG_imported_module ]
!69 = metadata !{i32 786489, metadata !70, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!70 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/debug/debug.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!71 = metadata !{i32 786489, metadata !70, metadata !14, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!72 = metadata !{i32 786440, metadata !73, metadata !75, i32 44} ; [ DW_TAG_imported_declaration ]
!73 = metadata !{i32 786489, metadata !74, null, metadata !"__gnu_cxx", i32 68} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 68]
!74 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/cpp_type_traits.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!75 = metadata !{i32 786454, metadata !15, metadata !14, metadata !"size_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 186, size 0, align 0, offset 0] [from unsigned int]
!76 = metadata !{i32 786440, metadata !73, metadata !77, i32 45} ; [ DW_TAG_imported_declaration ]
!77 = metadata !{i32 786454, metadata !15, metadata !14, metadata !"ptrdiff_t", i32 187, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 187, size 0, align 0, offset 0] [from int]
!78 = metadata !{i32 786440, metadata !14, metadata !79, i32 64} ; [ DW_TAG_imported_declaration ]
!79 = metadata !{i32 786454, metadata !5, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!80 = metadata !{i32 786454, metadata !5, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from _ZTS11__mbstate_t]
!81 = metadata !{i32 786440, metadata !14, metadata !82, i32 139} ; [ DW_TAG_imported_declaration ]
!82 = metadata !{i32 786454, metadata !83, null, metadata !"wint_t", i32 353, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [wint_t] [line 353, size 0, align 0, offset 0] [from unsigned int]
!83 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include/stddef.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!84 = metadata !{i32 786440, metadata !14, metadata !"_ZTS5lconv", i32 53} ; [ DW_TAG_imported_declaration ]
!85 = metadata !{i32 786440, metadata !14, metadata !86, i32 82} ; [ DW_TAG_imported_declaration ]
!86 = metadata !{i32 786454, metadata !87, null, metadata !"wctrans_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [wctrans_t] [line 186, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wctype.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!89 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __int32_t]
!90 = metadata !{i32 786454, metadata !91, null, metadata !"__int32_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [__int32_t] [line 40, size 0, align 0, offset 0] [from int]
!91 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/types.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!92 = metadata !{i32 786440, metadata !14, metadata !93, i32 83} ; [ DW_TAG_imported_declaration ]
!93 = metadata !{i32 786454, metadata !87, null, metadata !"wctype_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [wctype_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!94 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!95 = metadata !{i32 786440, metadata !14, metadata !82, i32 84} ; [ DW_TAG_imported_declaration ]
!96 = metadata !{i32 786440, metadata !0, metadata !97, i32 673, metadata !"abi"} ; [ DW_TAG_imported_declaration ]
!97 = metadata !{i32 786489, metadata !98, null, metadata !"__cxxabiv1", i32 39} ; [ DW_TAG_namespace ] [__cxxabiv1] [line 39]
!98 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/cxxabi_forced.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease"}
!99 = metadata !{i32 786490, metadata !0, metadata !14, i32 42} ; [ DW_TAG_imported_module ]
!100 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitC1Ev}
!101 = metadata !{metadata !"void."}
!102 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev}
!103 = metadata !{void (i32, i32, float*, float*)* @_Z20correlation_accel_v3iiPfS_}
!104 = metadata !{metadata !"void.int.0.int.0.float [2520000].1.float [49995000].1"}
!105 = metadata !{void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z8frontEndiiPfS_S_S_S_S_S_S_S_}
!106 = metadata !{metadata !"void.int.0.int.0.float [2520000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1"}
!107 = metadata !{void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z7backEndiiPfS_S_S_S_S_S_S_S_}
!108 = metadata !{metadata !"void.int.0.int.0.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [10000].1.float [49995000].1"}
!109 = metadata !{void (float*, i32)* @_ZL15weight_rom_initPfi}
!110 = metadata !{metadata !"void.float [252].1.int.0"}
!111 = metadata !{float (float)* @logf}
!112 = metadata !{metadata !"float.float.0"}
!113 = metadata !{float (float)* @sqrtf}
!114 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/ios_base.h"}
!115 = metadata !{metadata !"../src/correlation_accel_v3.hpp"}
!116 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/mathcalls.h"}
!117 = metadata !{metadata !"in_indices,number_of_indices*number_of_days,,,AXIDMA_SIMPLE,AFI,0,, out_correlation,number_of_indices-1,,,AXIDMA_SIMPLE,AFI,0,, "}
!118 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!119 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!120 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!121 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!122 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!123 = metadata !{i32 74, i32 25, metadata !38, null}
!124 = metadata !{i32 786689, metadata !43, metadata !"number_of_days", metadata !45, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number_of_days] [line 41]
!125 = metadata !{i32 41, i32 14, metadata !43, null}
!126 = metadata !{i32 786689, metadata !43, metadata !"number_of_indices", metadata !45, i32 33554474, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number_of_indices] [line 42]
!127 = metadata !{i32 42, i32 14, metadata !43, null}
!128 = metadata !{i32 786689, metadata !43, metadata !"in_indices", metadata !45, i32 50331692, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_indices] [line 44]
!129 = metadata !{i32 44, i32 15, metadata !43, null}
!130 = metadata !{i32 786689, metadata !43, metadata !"out_correlation", metadata !45, i32 67108909, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_correlation] [line 45]
!131 = metadata !{i32 45, i32 17, metadata !43, null}
!132 = metadata !{i32 786688, metadata !43, metadata !"NUMBER_OF_DAYS", metadata !45, i32 57, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NUMBER_OF_DAYS] [line 57]
!133 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!134 = metadata !{i32 57, i32 12, metadata !43, null}
!135 = metadata !{i32 57, i32 2, metadata !43, null}
!136 = metadata !{i32 786688, metadata !43, metadata !"NUMBER_OF_INDICES", metadata !45, i32 58, metadata !133, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NUMBER_OF_INDICES] [line 58]
!137 = metadata !{i32 58, i32 12, metadata !43, null} ; [ DW_TAG_imported_module ]
!138 = metadata !{i32 58, i32 2, metadata !43, null} ; [ DW_TAG_imported_module ]
!139 = metadata !{i32 79, i32 2, metadata !43, null}
!140 = metadata !{i32 786688, metadata !43, metadata !"sum_weight", metadata !45, i32 79, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 79]
!141 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 0, i64 32, i32 0, i32 0, metadata !49, metadata !142, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 0, align 32, offset 0] [from float]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786465, i64 0, i64 -1}      ; [ DW_TAG_subrange_type ] [unbounded]
!144 = metadata !{i32 79, i32 8, metadata !43, null}
!145 = metadata !{i32 80, i32 2, metadata !43, null}
!146 = metadata !{i32 786688, metadata !43, metadata !"sum_return", metadata !45, i32 80, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_return] [line 80]
!147 = metadata !{i32 80, i32 8, metadata !43, null}
!148 = metadata !{i32 81, i32 2, metadata !43, null}
!149 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnSquare", metadata !45, i32 81, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare] [line 81]
!150 = metadata !{i32 81, i32 8, metadata !43, null}
!151 = metadata !{i32 82, i32 2, metadata !43, null}
!152 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_return", metadata !45, i32 82, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return] [line 82]
!153 = metadata !{i32 82, i32 8, metadata !43, null}
!154 = metadata !{i32 83, i32 2, metadata !43, null}
!155 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnA_returnB", metadata !45, i32 83, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB] [line 83]
!156 = metadata !{i32 83, i32 8, metadata !43, null}
!157 = metadata !{i32 84, i32 2, metadata !43, null}
!158 = metadata !{i32 786688, metadata !43, metadata !"sum_returnA", metadata !45, i32 84, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA] [line 84]
!159 = metadata !{i32 84, i32 8, metadata !43, null}
!160 = metadata !{i32 85, i32 2, metadata !43, null}
!161 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnSquareA", metadata !45, i32 85, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA] [line 85]
!162 = metadata !{i32 85, i32 8, metadata !43, null}
!163 = metadata !{i32 86, i32 2, metadata !43, null}
!164 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnA", metadata !45, i32 86, metadata !141, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA] [line 86]
!165 = metadata !{i32 86, i32 8, metadata !43, null}
!166 = metadata !{i32 118, i32 2, metadata !43, null}
!167 = metadata !{i32 132, i32 2, metadata !43, null}
!168 = metadata !{i32 149, i32 1, metadata !43, null}
!169 = metadata !{i32 786689, metadata !50, metadata !"NUMBER_OF_DAYS", metadata !45, i32 16777428, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 212]
!170 = metadata !{i32 212, i32 9, metadata !50, null}
!171 = metadata !{i32 786689, metadata !50, metadata !"NUMBER_OF_INDICES", metadata !45, i32 33554645, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_INDICES] [line 213]
!172 = metadata !{i32 213, i32 9, metadata !50, null}
!173 = metadata !{i32 786689, metadata !50, metadata !"in_indices", metadata !45, i32 50331862, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_indices] [line 214]
!174 = metadata !{i32 214, i32 11, metadata !50, null}
!175 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_out", metadata !45, i32 67109080, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_out] [line 216]
!176 = metadata !{i32 216, i32 11, metadata !50, null}
!177 = metadata !{i32 786689, metadata !50, metadata !"sum_return_out", metadata !45, i32 83886297, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_return_out] [line 217]
!178 = metadata !{i32 217, i32 11, metadata !50, null}
!179 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_returnSquare_out", metadata !45, i32 100663514, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquare_out] [line 218]
!180 = metadata !{i32 218, i32 11, metadata !50, null}
!181 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_return_out", metadata !45, i32 117440731, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_return_out] [line 219]
!182 = metadata !{i32 219, i32 11, metadata !50, null}
!183 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_returnA_returnB_out", metadata !45, i32 134217948, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_returnB_out] [line 220]
!184 = metadata !{i32 220, i32 11, metadata !50, null}
!185 = metadata !{i32 786689, metadata !50, metadata !"sum_returnA_out", metadata !45, i32 150995165, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_returnA_out] [line 221]
!186 = metadata !{i32 221, i32 11, metadata !50, null}
!187 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_returnSquareA_out", metadata !45, i32 167772382, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquareA_out] [line 222]
!188 = metadata !{i32 222, i32 11, metadata !50, null}
!189 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_returnA_out", metadata !45, i32 184549599, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_out] [line 223]
!190 = metadata !{i32 223, i32 11, metadata !50, null}
!191 = metadata !{i32 238, i32 2, metadata !50, null}
!192 = metadata !{i32 786688, metadata !50, metadata !"sum_weight", metadata !45, i32 239, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 239]
!193 = metadata !{i32 239, i32 8, metadata !50, null}
!194 = metadata !{i32 239, i32 2, metadata !50, null}
!195 = metadata !{i32 786688, metadata !50, metadata !"acc_return", metadata !45, i32 248, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_return] [line 248]
!196 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !49, metadata !197, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!197 = metadata !{metadata !198}
!198 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!199 = metadata !{i32 248, i32 8, metadata !50, null}
!200 = metadata !{i32 786688, metadata !50, metadata !"acc_weight_returnSquare", metadata !45, i32 249, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnSquare] [line 249]
!201 = metadata !{i32 249, i32 8, metadata !50, null}
!202 = metadata !{i32 786688, metadata !50, metadata !"acc_weight_return", metadata !45, i32 250, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_return] [line 250]
!203 = metadata !{i32 250, i32 8, metadata !50, null}
!204 = metadata !{i32 786688, metadata !50, metadata !"acc_weight_returnA_returnB", metadata !45, i32 251, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnA_returnB] [line 251]
!205 = metadata !{i32 251, i32 8, metadata !50, null}
!206 = metadata !{i32 786688, metadata !50, metadata !"shift_reg", metadata !45, i32 253, metadata !207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_reg] [line 253]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !49, metadata !208, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from float]
!208 = metadata !{metadata !209}
!209 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!210 = metadata !{i32 253, i32 8, metadata !50, null}
!211 = metadata !{i32 786688, metadata !50, metadata !"sum_returnA", metadata !45, i32 260, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA] [line 260]
!212 = metadata !{i32 260, i32 8, metadata !50, null}
!213 = metadata !{i32 260, i32 2, metadata !50, null}
!214 = metadata !{i32 786688, metadata !50, metadata !"sum_weight_returnSquareA", metadata !45, i32 261, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA] [line 261]
!215 = metadata !{i32 261, i32 8, metadata !50, null}
!216 = metadata !{i32 261, i32 2, metadata !50, null}
!217 = metadata !{i32 786688, metadata !50, metadata !"sum_weight_returnA", metadata !45, i32 262, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA] [line 262]
!218 = metadata !{i32 262, i32 8, metadata !50, null}
!219 = metadata !{i32 262, i32 2, metadata !50, null}
!220 = metadata !{i32 786688, metadata !221, metadata !"i", metadata !45, i32 269, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 269]
!221 = metadata !{i32 786443, metadata !44, metadata !50, i32 269, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!222 = metadata !{i32 269, i32 11, metadata !221, null}
!223 = metadata !{i32 269, i32 7, metadata !221, null}
!224 = metadata !{i32 269, i32 7, metadata !225, null}
!225 = metadata !{i32 786443, metadata !44, metadata !226, i32 269, i32 7, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!226 = metadata !{i32 786443, metadata !44, metadata !221, i32 269, i32 7, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!227 = metadata !{i32 273, i32 4, metadata !228, null}
!228 = metadata !{i32 786443, metadata !44, metadata !221, i32 269, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!229 = metadata !{i32 274, i32 4, metadata !228, null}
!230 = metadata !{i32 275, i32 4, metadata !228, null}
!231 = metadata !{i32 276, i32 4, metadata !228, null}
!232 = metadata !{i32 277, i32 2, metadata !228, null}
!233 = metadata !{i32 269, i32 39, metadata !221, null}
!234 = metadata !{i32 290, i32 12, metadata !50, null}
!235 = metadata !{i32 786688, metadata !236, metadata !"i", metadata !45, i32 294, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 294]
!236 = metadata !{i32 786443, metadata !44, metadata !50, i32 294, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!237 = metadata !{i32 294, i32 11, metadata !236, null}
!238 = metadata !{i32 294, i32 7, metadata !236, null}
!239 = metadata !{i32 294, i32 7, metadata !240, null}
!240 = metadata !{i32 786443, metadata !44, metadata !241, i32 294, i32 7, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!241 = metadata !{i32 786443, metadata !44, metadata !236, i32 294, i32 7, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!242 = metadata !{i32 319, i32 7, metadata !243, null}
!243 = metadata !{i32 786443, metadata !44, metadata !244, i32 319, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!244 = metadata !{i32 786443, metadata !44, metadata !236, i32 294, i32 47, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!245 = metadata !{i32 320, i32 16, metadata !246, null}
!246 = metadata !{i32 786443, metadata !44, metadata !243, i32 319, i32 14, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!247 = metadata !{i32 321, i32 4, metadata !246, null}
!248 = metadata !{i32 323, i32 14, metadata !249, null}
!249 = metadata !{i32 786443, metadata !44, metadata !243, i32 322, i32 18, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!250 = metadata !{i32 324, i32 14, metadata !249, null}
!251 = metadata !{i32 786688, metadata !244, metadata !"lnReturn", metadata !45, i32 330, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturn] [line 330]
!252 = metadata !{i32 330, i32 10, metadata !244, null}
!253 = metadata !{i32 330, i32 26, metadata !244, null}
!254 = metadata !{i32 786688, metadata !244, metadata !"weight", metadata !45, i32 331, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 331]
!255 = metadata !{i32 331, i32 10, metadata !244, null}
!256 = metadata !{i32 331, i32 4, metadata !244, null}
!257 = metadata !{i32 786688, metadata !244, metadata !"channel", metadata !45, i32 334, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [channel] [line 334]
!258 = metadata !{i32 334, i32 8, metadata !244, null}
!259 = metadata !{i32 334, i32 4, metadata !244, null}
!260 = metadata !{i32 336, i32 4, metadata !244, null}
!261 = metadata !{i32 339, i32 4, metadata !244, null}
!262 = metadata !{i32 342, i32 4, metadata !244, null}
!263 = metadata !{i32 345, i32 4, metadata !244, null}
!264 = metadata !{i32 346, i32 3, metadata !244, null}
!265 = metadata !{i32 294, i32 43, metadata !236, null}
!266 = metadata !{i32 346, i32 3, metadata !236, null}
!267 = metadata !{i32 786688, metadata !268, metadata !"i", metadata !45, i32 350, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 350]
!268 = metadata !{i32 786443, metadata !44, metadata !50, i32 350, i32 2, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!269 = metadata !{i32 350, i32 10, metadata !268, null}
!270 = metadata !{i32 350, i32 6, metadata !268, null}
!271 = metadata !{i32 350, i32 6, metadata !272, null}
!272 = metadata !{i32 786443, metadata !44, metadata !273, i32 350, i32 6, i32 2, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!273 = metadata !{i32 786443, metadata !44, metadata !268, i32 350, i32 6, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!274 = metadata !{i32 354, i32 3, metadata !275, null}
!275 = metadata !{i32 786443, metadata !44, metadata !268, i32 350, i32 42, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!276 = metadata !{i32 355, i32 3, metadata !275, null}
!277 = metadata !{i32 356, i32 3, metadata !275, null}
!278 = metadata !{i32 357, i32 2, metadata !275, null}
!279 = metadata !{i32 350, i32 38, metadata !268, null}
!280 = metadata !{i32 786688, metadata !281, metadata !"column_index", metadata !45, i32 362, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column_index] [line 362]
!281 = metadata !{i32 786443, metadata !44, metadata !50, i32 362, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!282 = metadata !{i32 362, i32 10, metadata !281, null}
!283 = metadata !{i32 362, i32 6, metadata !281, null}
!284 = metadata !{i32 362, i32 6, metadata !285, null}
!285 = metadata !{i32 786443, metadata !44, metadata !286, i32 362, i32 6, i32 3, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!286 = metadata !{i32 786443, metadata !44, metadata !281, i32 362, i32 6, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!287 = metadata !{i32 362, i32 78, metadata !288, null}
!288 = metadata !{i32 786443, metadata !44, metadata !289, i32 362, i32 78, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!289 = metadata !{i32 786443, metadata !44, metadata !281, i32 362, i32 78, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!290 = metadata !{i32 786688, metadata !291, metadata !"i", metadata !45, i32 365, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 365]
!291 = metadata !{i32 786443, metadata !44, metadata !289, i32 365, i32 4, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!292 = metadata !{i32 365, i32 12, metadata !291, null}
!293 = metadata !{i32 365, i32 8, metadata !291, null}
!294 = metadata !{i32 365, i32 8, metadata !295, null}
!295 = metadata !{i32 786443, metadata !44, metadata !296, i32 365, i32 8, i32 2, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!296 = metadata !{i32 786443, metadata !44, metadata !291, i32 365, i32 8, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!297 = metadata !{i32 369, i32 5, metadata !298, null}
!298 = metadata !{i32 786443, metadata !44, metadata !291, i32 365, i32 44, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!299 = metadata !{i32 370, i32 5, metadata !298, null}
!300 = metadata !{i32 371, i32 5, metadata !298, null}
!301 = metadata !{i32 372, i32 5, metadata !298, null}
!302 = metadata !{i32 373, i32 5, metadata !298, null}
!303 = metadata !{i32 374, i32 4, metadata !298, null}
!304 = metadata !{i32 365, i32 40, metadata !291, null}
!305 = metadata !{i32 786688, metadata !289, metadata !"index", metadata !45, i32 376, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 376]
!306 = metadata !{i32 376, i32 8, metadata !289, null}
!307 = metadata !{i32 376, i32 4, metadata !289, null}
!308 = metadata !{i32 389, i32 12, metadata !289, null}
!309 = metadata !{i32 786688, metadata !310, metadata !"i", metadata !45, i32 393, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 393]
!310 = metadata !{i32 786443, metadata !44, metadata !289, i32 393, i32 4, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!311 = metadata !{i32 393, i32 12, metadata !310, null}
!312 = metadata !{i32 393, i32 8, metadata !310, null}
!313 = metadata !{i32 393, i32 8, metadata !314, null}
!314 = metadata !{i32 786443, metadata !44, metadata !315, i32 393, i32 8, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!315 = metadata !{i32 786443, metadata !44, metadata !310, i32 393, i32 8, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!316 = metadata !{i32 418, i32 8, metadata !317, null}
!317 = metadata !{i32 786443, metadata !44, metadata !318, i32 418, i32 8, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!318 = metadata !{i32 786443, metadata !44, metadata !310, i32 393, i32 48, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!319 = metadata !{i32 419, i32 17, metadata !320, null}
!320 = metadata !{i32 786443, metadata !44, metadata !317, i32 418, i32 15, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!321 = metadata !{i32 420, i32 5, metadata !320, null}
!322 = metadata !{i32 422, i32 15, metadata !323, null}
!323 = metadata !{i32 786443, metadata !44, metadata !317, i32 421, i32 19, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!324 = metadata !{i32 423, i32 15, metadata !323, null}
!325 = metadata !{i32 786688, metadata !318, metadata !"lnReturn", metadata !45, i32 428, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturn] [line 428]
!326 = metadata !{i32 428, i32 11, metadata !318, null}
!327 = metadata !{i32 428, i32 23, metadata !318, null}
!328 = metadata !{i32 786688, metadata !318, metadata !"weight", metadata !45, i32 429, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 429]
!329 = metadata !{i32 429, i32 11, metadata !318, null}
!330 = metadata !{i32 429, i32 5, metadata !318, null}
!331 = metadata !{i32 786688, metadata !318, metadata !"channel", metadata !45, i32 432, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [channel] [line 432]
!332 = metadata !{i32 432, i32 9, metadata !318, null}
!333 = metadata !{i32 432, i32 5, metadata !318, null}
!334 = metadata !{i32 435, i32 5, metadata !318, null}
!335 = metadata !{i32 438, i32 5, metadata !318, null}
!336 = metadata !{i32 441, i32 5, metadata !318, null}
!337 = metadata !{i32 444, i32 5, metadata !318, null}
!338 = metadata !{i32 445, i32 4, metadata !318, null}
!339 = metadata !{i32 393, i32 44, metadata !310, null}
!340 = metadata !{i32 786688, metadata !289, metadata !"sum_return", metadata !45, i32 448, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_return] [line 448]
!341 = metadata !{i32 448, i32 9, metadata !289, null}
!342 = metadata !{i32 448, i32 3, metadata !289, null}
!343 = metadata !{i32 786688, metadata !289, metadata !"sum_weight_returnSquare", metadata !45, i32 449, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare] [line 449]
!344 = metadata !{i32 449, i32 9, metadata !289, null}
!345 = metadata !{i32 449, i32 3, metadata !289, null}
!346 = metadata !{i32 786688, metadata !289, metadata !"sum_weight_return", metadata !45, i32 450, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return] [line 450]
!347 = metadata !{i32 450, i32 9, metadata !289, null}
!348 = metadata !{i32 450, i32 3, metadata !289, null}
!349 = metadata !{i32 786688, metadata !289, metadata !"sum_weight_returnA_returnB", metadata !45, i32 451, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB] [line 451]
!350 = metadata !{i32 451, i32 9, metadata !289, null}
!351 = metadata !{i32 451, i32 3, metadata !289, null}
!352 = metadata !{i32 786688, metadata !353, metadata !"i", metadata !45, i32 454, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 454]
!353 = metadata !{i32 786443, metadata !44, metadata !289, i32 454, i32 3, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!354 = metadata !{i32 454, i32 11, metadata !353, null}
!355 = metadata !{i32 454, i32 7, metadata !353, null}
!356 = metadata !{i32 454, i32 7, metadata !357, null}
!357 = metadata !{i32 786443, metadata !44, metadata !358, i32 454, i32 7, i32 2, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!358 = metadata !{i32 786443, metadata !44, metadata !353, i32 454, i32 7, i32 1, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!359 = metadata !{i32 458, i32 4, metadata !360, null}
!360 = metadata !{i32 786443, metadata !44, metadata !353, i32 454, i32 43, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!361 = metadata !{i32 459, i32 4, metadata !360, null}
!362 = metadata !{i32 460, i32 4, metadata !360, null}
!363 = metadata !{i32 461, i32 4, metadata !360, null}
!364 = metadata !{i32 462, i32 3, metadata !360, null}
!365 = metadata !{i32 454, i32 39, metadata !353, null}
!366 = metadata !{i32 786688, metadata !289, metadata !"i", metadata !45, i32 473, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 473]
!367 = metadata !{i32 473, i32 7, metadata !289, null}
!368 = metadata !{i32 473, i32 3, metadata !289, null}
!369 = metadata !{i32 474, i32 3, metadata !289, null}
!370 = metadata !{i32 475, i32 3, metadata !289, null}
!371 = metadata !{i32 476, i32 3, metadata !289, null}
!372 = metadata !{i32 477, i32 3, metadata !289, null}
!373 = metadata !{i32 478, i32 3, metadata !289, null}
!374 = metadata !{i32 479, i32 3, metadata !289, null}
!375 = metadata !{i32 480, i32 3, metadata !289, null}
!376 = metadata !{i32 481, i32 3, metadata !289, null}
!377 = metadata !{i32 484, i32 1, metadata !289, null}
!378 = metadata !{i32 362, i32 62, metadata !281, null}
!379 = metadata !{i32 485, i32 1, metadata !50, null}
!380 = metadata !{i32 786689, metadata !53, metadata !"NUMBER_OF_DAYS", metadata !45, i32 16777723, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 507]
!381 = metadata !{i32 507, i32 9, metadata !53, null}
!382 = metadata !{i32 786689, metadata !53, metadata !"NUMBER_OF_INDICES", metadata !45, i32 33554940, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_INDICES] [line 508]
!383 = metadata !{i32 508, i32 9, metadata !53, null}
!384 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_in", metadata !45, i32 50332158, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_in] [line 510]
!385 = metadata !{i32 510, i32 11, metadata !53, null}
!386 = metadata !{i32 786689, metadata !53, metadata !"sum_return_in", metadata !45, i32 67109375, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_return_in] [line 511]
!387 = metadata !{i32 511, i32 11, metadata !53, null}
!388 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnSquare_in", metadata !45, i32 83886592, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquare_in] [line 512]
!389 = metadata !{i32 512, i32 11, metadata !53, null}
!390 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_return_in", metadata !45, i32 100663809, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_return_in] [line 513]
!391 = metadata !{i32 513, i32 11, metadata !53, null}
!392 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnA_returnB_in", metadata !45, i32 117441026, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_returnB_in] [line 514]
!393 = metadata !{i32 514, i32 11, metadata !53, null}
!394 = metadata !{i32 786689, metadata !53, metadata !"sum_returnA_in", metadata !45, i32 134218243, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_returnA_in] [line 515]
!395 = metadata !{i32 515, i32 11, metadata !53, null}
!396 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnSquareA_in", metadata !45, i32 150995460, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquareA_in] [line 516]
!397 = metadata !{i32 516, i32 11, metadata !53, null}
!398 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnA_in", metadata !45, i32 167772677, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_in] [line 517]
!399 = metadata !{i32 517, i32 11, metadata !53, null}
!400 = metadata !{i32 786689, metadata !53, metadata !"out_correlation", metadata !45, i32 184549895, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_correlation] [line 519]
!401 = metadata !{i32 519, i32 11, metadata !53, null}
!402 = metadata !{i32 786688, metadata !403, metadata !"column_index", metadata !45, i32 530, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column_index] [line 530]
!403 = metadata !{i32 786443, metadata !44, metadata !53, i32 530, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!404 = metadata !{i32 530, i32 10, metadata !403, null}
!405 = metadata !{i32 530, i32 6, metadata !403, null}
!406 = metadata !{i32 530, i32 6, metadata !407, null}
!407 = metadata !{i32 786443, metadata !44, metadata !408, i32 530, i32 6, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!408 = metadata !{i32 786443, metadata !44, metadata !403, i32 530, i32 6, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!409 = metadata !{i32 786688, metadata !410, metadata !"sum_weight", metadata !45, i32 541, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 541]
!410 = metadata !{i32 786443, metadata !44, metadata !403, i32 530, i32 77, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!411 = metadata !{i32 541, i32 9, metadata !410, null}
!412 = metadata !{i32 541, i32 3, metadata !410, null}
!413 = metadata !{i32 786688, metadata !410, metadata !"sum_return", metadata !45, i32 542, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_return] [line 542]
!414 = metadata !{i32 542, i32 9, metadata !410, null}
!415 = metadata !{i32 542, i32 3, metadata !410, null}
!416 = metadata !{i32 786688, metadata !410, metadata !"sum_weight_returnSquare", metadata !45, i32 543, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare] [line 543]
!417 = metadata !{i32 543, i32 9, metadata !410, null}
!418 = metadata !{i32 543, i32 3, metadata !410, null}
!419 = metadata !{i32 786688, metadata !410, metadata !"sum_weight_return", metadata !45, i32 544, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return] [line 544]
!420 = metadata !{i32 544, i32 9, metadata !410, null}
!421 = metadata !{i32 544, i32 3, metadata !410, null}
!422 = metadata !{i32 786688, metadata !410, metadata !"sum_weight_returnA_returnB", metadata !45, i32 545, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB] [line 545]
!423 = metadata !{i32 545, i32 9, metadata !410, null}
!424 = metadata !{i32 545, i32 3, metadata !410, null}
!425 = metadata !{i32 786688, metadata !410, metadata !"sum_returnA", metadata !45, i32 546, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA] [line 546]
!426 = metadata !{i32 546, i32 9, metadata !410, null}
!427 = metadata !{i32 546, i32 3, metadata !410, null}
!428 = metadata !{i32 786688, metadata !410, metadata !"sum_weight_returnSquareA", metadata !45, i32 547, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA] [line 547]
!429 = metadata !{i32 547, i32 9, metadata !410, null}
!430 = metadata !{i32 547, i32 3, metadata !410, null}
!431 = metadata !{i32 786688, metadata !410, metadata !"sum_weight_returnA", metadata !45, i32 548, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA] [line 548]
!432 = metadata !{i32 548, i32 9, metadata !410, null}
!433 = metadata !{i32 548, i32 3, metadata !410, null}
!434 = metadata !{i32 786688, metadata !410, metadata !"meanReturnA", metadata !45, i32 551, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [meanReturnA] [line 551]
!435 = metadata !{i32 551, i32 9, metadata !410, null}
!436 = metadata !{i32 551, i32 3, metadata !410, null}
!437 = metadata !{i32 786688, metadata !410, metadata !"meanReturnB", metadata !45, i32 552, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [meanReturnB] [line 552]
!438 = metadata !{i32 552, i32 9, metadata !410, null}
!439 = metadata !{i32 552, i32 3, metadata !410, null}
!440 = metadata !{i32 786688, metadata !410, metadata !"volatilityA", metadata !45, i32 554, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [volatilityA] [line 554]
!441 = metadata !{i32 554, i32 9, metadata !410, null}
!442 = metadata !{i32 554, i32 23, metadata !410, null}
!443 = metadata !{i32 786688, metadata !410, metadata !"volatilityB", metadata !45, i32 557, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [volatilityB] [line 557]
!444 = metadata !{i32 557, i32 9, metadata !410, null}
!445 = metadata !{i32 557, i32 23, metadata !410, null}
!446 = metadata !{i32 786688, metadata !410, metadata !"covariance", metadata !45, i32 560, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [covariance] [line 560]
!447 = metadata !{i32 560, i32 9, metadata !410, null}
!448 = metadata !{i32 560, i32 3, metadata !410, null}
!449 = metadata !{i32 786688, metadata !410, metadata !"corr_temp", metadata !45, i32 564, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [corr_temp] [line 564]
!450 = metadata !{i32 564, i32 9, metadata !410, null}
!451 = metadata !{i32 564, i32 3, metadata !410, null}
!452 = metadata !{i32 577, i32 7, metadata !410, null}
!453 = metadata !{i32 579, i32 2, metadata !410, null}
!454 = metadata !{i32 530, i32 62, metadata !403, null}
!455 = metadata !{i32 580, i32 1, metadata !53, null}
!456 = metadata !{i32 786689, metadata !54, metadata !"weightRom", metadata !45, i32 16777392, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weightRom] [line 176]
!457 = metadata !{i32 176, i32 9, metadata !54, null}
!458 = metadata !{i32 786689, metadata !54, metadata !"NUMBER_OF_DAYS", metadata !45, i32 33554609, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 177]
!459 = metadata !{i32 177, i32 7, metadata !54, null}
!460 = metadata !{i32 786688, metadata !54, metadata !"lambda", metadata !45, i32 179, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 179]
!461 = metadata !{i32 179, i32 8, metadata !54, null}
!462 = metadata !{i32 179, i32 2, metadata !54, null}
!463 = metadata !{i32 180, i32 2, metadata !54, null}
!464 = metadata !{i32 181, i32 2, metadata !54, null}
!465 = metadata !{i32 786688, metadata !466, metadata !"i", metadata !45, i32 184, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 184]
!466 = metadata !{i32 786443, metadata !44, metadata !54, i32 184, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!467 = metadata !{i32 184, i32 10, metadata !466, null}
!468 = metadata !{i32 184, i32 6, metadata !466, null}
!469 = metadata !{i32 184, i32 6, metadata !470, null}
!470 = metadata !{i32 786443, metadata !44, metadata !471, i32 184, i32 6, i32 2, i32 44} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!471 = metadata !{i32 786443, metadata !44, metadata !466, i32 184, i32 6, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!472 = metadata !{i32 185, i32 3, metadata !473, null}
!473 = metadata !{i32 786443, metadata !44, metadata !466, i32 184, i32 41, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!474 = metadata !{i32 186, i32 2, metadata !473, null}
!475 = metadata !{i32 184, i32 36, metadata !466, null}
!476 = metadata !{i32 186, i32 2, metadata !466, null}
!477 = metadata !{i32 786688, metadata !478, metadata !"i", metadata !45, i32 189, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 189]
!478 = metadata !{i32 786443, metadata !44, metadata !54, i32 189, i32 2, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!479 = metadata !{i32 189, i32 10, metadata !478, null}
!480 = metadata !{i32 189, i32 6, metadata !478, null}
!481 = metadata !{i32 189, i32 6, metadata !482, null}
!482 = metadata !{i32 786443, metadata !44, metadata !483, i32 189, i32 6, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!483 = metadata !{i32 786443, metadata !44, metadata !478, i32 189, i32 6, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!484 = metadata !{i32 190, i32 3, metadata !485, null}
!485 = metadata !{i32 786443, metadata !44, metadata !478, i32 189, i32 41, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
!486 = metadata !{i32 192, i32 2, metadata !485, null}
!487 = metadata !{i32 189, i32 37, metadata !478, null}
!488 = metadata !{i32 193, i32 1, metadata !54, null}
!489 = metadata !{i32 0, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !44, metadata !57} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_axis_ver3/src/correlation_accel_v3.cpp]
