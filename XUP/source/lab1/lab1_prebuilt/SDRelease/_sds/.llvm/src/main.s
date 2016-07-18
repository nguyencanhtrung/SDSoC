; ModuleID = 'C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i32, i32, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i32 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i32, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type { i32 (...)**, i32 }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type { %"class.std::locale::facet", %struct.__locale_struct*, i8, i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet" }
%"class.std::num_get" = type { %"class.std::locale::facet" }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@sw_sds_counter_total = global i64 0, align 8
@hw_sds_counter_total = global i64 0, align 8
@sw_sds_counter_num_calls = global i32 0, align 4
@hw_sds_counter_num_calls = global i32 0, align 4
@sw_sds_counter = global i64 0, align 8
@hw_sds_counter = global i64 0, align 8
@_ZSt4cout = external global %"class.std::basic_ostream"
@.str = private unnamed_addr constant [17 x i8] c"Testing mmult ..\00", align 1
@.str1 = private unnamed_addr constant [20 x i8] c"Average SW cycles: \00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"Average HW cycles: \00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"Testing with A_NROWS = A_NCOLS = B_NCOLS = B_NROWS = \00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"TEST \00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"PASSED\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Mismatch: data index=\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"d=\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c", dout=\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_main.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !157
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !dbg !157
  ret void, !dbg !157
}

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) #0

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: nounwind
define void @_Z12mmult_goldenPfS_S_(float* %in_arr, float* %in_arr2, float* %out_arr) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %result = alloca float, align 4
  %k = alloca i32, align 4
  store float* %in_arr, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !158), !dbg !159
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !160), !dbg !161
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !162), !dbg !163
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !164), !dbg !166
  store i32 0, i32* %row, align 4, !dbg !167
  br label %4, !dbg !167

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !168
  %6 = icmp slt i32 %5, 32, !dbg !168
  br i1 %6, label %7, label %51, !dbg !168

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !171), !dbg !174
  store i32 0, i32* %col, align 4, !dbg !175
  br label %8, !dbg !175

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !176
  %10 = icmp slt i32 %9, 32, !dbg !176
  br i1 %10, label %11, label %47, !dbg !176

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !179), !dbg !181
  store float 0.000000e+00, float* %result, align 4, !dbg !182
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !183), !dbg !185
  store i32 0, i32* %k, align 4, !dbg !186
  br label %12, !dbg !186

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !187
  %14 = icmp slt i32 %13, 32, !dbg !187
  br i1 %14, label %15, label %36, !dbg !187

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !190
  %17 = mul nsw i32 %16, 32, !dbg !190
  %18 = load i32* %k, align 4, !dbg !190
  %19 = add nsw i32 %17, %18, !dbg !190
  %20 = load float** %1, align 4, !dbg !190
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !190
  %22 = load float* %21, align 4, !dbg !190
  %23 = load i32* %k, align 4, !dbg !190
  %24 = mul nsw i32 %23, 32, !dbg !190
  %25 = load i32* %col, align 4, !dbg !190
  %26 = add nsw i32 %24, %25, !dbg !190
  %27 = load float** %2, align 4, !dbg !190
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !190
  %29 = load float* %28, align 4, !dbg !190
  %30 = fmul float %22, %29, !dbg !190
  %31 = load float* %result, align 4, !dbg !190
  %32 = fadd float %31, %30, !dbg !190
  store float %32, float* %result, align 4, !dbg !190
  br label %33, !dbg !192

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !193
  %35 = add nsw i32 %34, 1, !dbg !193
  store i32 %35, i32* %k, align 4, !dbg !193
  br label %12, !dbg !193

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !194
  %38 = load i32* %row, align 4, !dbg !194
  %39 = mul nsw i32 %38, 32, !dbg !194
  %40 = load i32* %col, align 4, !dbg !194
  %41 = add nsw i32 %39, %40, !dbg !194
  %42 = load float** %3, align 4, !dbg !194
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !194
  store float %37, float* %43, align 4, !dbg !194
  br label %44, !dbg !195

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !196
  %46 = add nsw i32 %45, 1, !dbg !196
  store i32 %46, i32* %col, align 4, !dbg !196
  br label %8, !dbg !196

; <label>:47                                      ; preds = %8
  br label %48, !dbg !197

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !198
  %50 = add nsw i32 %49, 1, !dbg !198
  store i32 %50, i32* %row, align 4, !dbg !198
  br label %4, !dbg !198

; <label>:51                                      ; preds = %4
  ret void, !dbg !199
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #3

; Function Attrs: nounwind
define void @_Z11madd_goldenPfS_S_(float* %in_arr, float* %in_arr2, float* %out_arr) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store float* %in_arr, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !200), !dbg !201
  store float* %in_arr2, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !202), !dbg !203
  store float* %out_arr, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !204), !dbg !205
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !206), !dbg !208
  store i32 0, i32* %row, align 4, !dbg !209
  br label %4, !dbg !209

; <label>:4                                       ; preds = %37, %0
  %5 = load i32* %row, align 4, !dbg !210
  %6 = icmp slt i32 %5, 32, !dbg !210
  br i1 %6, label %7, label %40, !dbg !210

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !213), !dbg !216
  store i32 0, i32* %col, align 4, !dbg !217
  br label %8, !dbg !217

; <label>:8                                       ; preds = %33, %7
  %9 = load i32* %col, align 4, !dbg !218
  %10 = icmp slt i32 %9, 32, !dbg !218
  br i1 %10, label %11, label %36, !dbg !218

; <label>:11                                      ; preds = %8
  %12 = load i32* %row, align 4, !dbg !221
  %13 = mul nsw i32 %12, 32, !dbg !221
  %14 = load i32* %col, align 4, !dbg !221
  %15 = add nsw i32 %13, %14, !dbg !221
  %16 = load float** %1, align 4, !dbg !221
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !221
  %18 = load float* %17, align 4, !dbg !221
  %19 = load i32* %row, align 4, !dbg !221
  %20 = mul nsw i32 %19, 32, !dbg !221
  %21 = load i32* %col, align 4, !dbg !221
  %22 = add nsw i32 %20, %21, !dbg !221
  %23 = load float** %2, align 4, !dbg !221
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !221
  %25 = load float* %24, align 4, !dbg !221
  %26 = fadd float %18, %25, !dbg !221
  %27 = load i32* %row, align 4, !dbg !221
  %28 = mul nsw i32 %27, 32, !dbg !221
  %29 = load i32* %col, align 4, !dbg !221
  %30 = add nsw i32 %28, %29, !dbg !221
  %31 = load float** %3, align 4, !dbg !221
  %32 = getelementptr inbounds float* %31, i32 %30, !dbg !221
  store float %26, float* %32, align 4, !dbg !221
  br label %33, !dbg !223

; <label>:33                                      ; preds = %11
  %34 = load i32* %col, align 4, !dbg !224
  %35 = add nsw i32 %34, 1, !dbg !224
  store i32 %35, i32* %col, align 4, !dbg !224
  br label %8, !dbg !224

; <label>:36                                      ; preds = %8
  br label %37, !dbg !225

; <label>:37                                      ; preds = %36
  %38 = load i32* %row, align 4, !dbg !226
  %39 = add nsw i32 %38, 1, !dbg !226
  store i32 %39, i32* %row, align 4, !dbg !226
  br label %4, !dbg !226

; <label>:40                                      ; preds = %4
  ret void, !dbg !227
}

define zeroext i1 @_Z13mmultadd_testPfS_S_S_S_(float* %A, float* %B, float* %C, float* %Ds, float* %D) #0 {
  %1 = alloca i1, align 1
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %6 = alloca float*, align 4
  %tmp1 = alloca [1024 x float], align 4
  %tmp2 = alloca [1024 x float], align 4
  %i = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store float* %A, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !228), !dbg !229
  store float* %B, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !230), !dbg !231
  store float* %C, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !232), !dbg !233
  store float* %Ds, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !234), !dbg !235
  store float* %D, float** %6, align 4
  call void @llvm.dbg.declare(metadata !{float** %6}, metadata !236), !dbg !237
  %7 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([17 x i8]* @.str, i32 0, i32 0)), !dbg !238
  %8 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %7, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !238
  call void @llvm.dbg.declare(metadata !{[1024 x float]* %tmp1}, metadata !239), !dbg !243
  call void @llvm.dbg.declare(metadata !{[1024 x float]* %tmp2}, metadata !244), !dbg !245
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !246), !dbg !248
  store i32 0, i32* %i, align 4, !dbg !249
  br label %9, !dbg !249

; <label>:9                                       ; preds = %73, %0
  %10 = load i32* %i, align 4, !dbg !250
  %11 = icmp slt i32 %10, 1024, !dbg !250
  br i1 %11, label %12, label %76, !dbg !250

; <label>:12                                      ; preds = %9
  %13 = load float** %2, align 4, !dbg !253
  %14 = load float** %3, align 4, !dbg !253
  %15 = load float** %4, align 4, !dbg !253
  %16 = load float** %5, align 4, !dbg !253
  %17 = load float** %6, align 4, !dbg !253
  call void @_ZL13mmultadd_initPfS_S_S_S_(float* %13, float* %14, float* %15, float* %16, float* %17), !dbg !253
  %18 = call i64 @sds_clock_counter(), !dbg !255
  store i64 %18, i64* @hw_sds_counter, align 8, !dbg !255
  %19 = load i32* @hw_sds_counter_num_calls, align 4, !dbg !255
  %20 = add i32 %19, 1, !dbg !255
  store i32 %20, i32* @hw_sds_counter_num_calls, align 4, !dbg !255
  %21 = load float** %2, align 4, !dbg !257
  %22 = load float** %3, align 4, !dbg !257
  %23 = getelementptr inbounds [1024 x float]* %tmp1, i32 0, i32 0, !dbg !257
  call void @_Z5mmultPfS_S_(float* %21, float* %22, float* %23), !dbg !257
  %24 = getelementptr inbounds [1024 x float]* %tmp1, i32 0, i32 0, !dbg !258
  %25 = load float** %4, align 4, !dbg !258
  %26 = load float** %6, align 4, !dbg !258
  call void @_Z4maddPfS_S_(float* %24, float* %25, float* %26), !dbg !258
  call void @llvm.dbg.declare(metadata !{i64* %tmp}, metadata !259), !dbg !261
  %27 = call i64 @sds_clock_counter(), !dbg !261
  store i64 %27, i64* %tmp, align 8, !dbg !261
  %28 = load i64* %tmp, align 8, !dbg !261
  %29 = load i64* @hw_sds_counter, align 8, !dbg !261
  %30 = icmp ult i64 %28, %29, !dbg !261
  br i1 %30, label %31, label %35, !dbg !261

; <label>:31                                      ; preds = %12
  %32 = load i64* @hw_sds_counter, align 8, !dbg !262
  %33 = load i64* %tmp, align 8, !dbg !262
  %34 = sub i64 %32, %33, !dbg !262
  br label %39, !dbg !262

; <label>:35                                      ; preds = %12
  %36 = load i64* %tmp, align 8, !dbg !264
  %37 = load i64* @hw_sds_counter, align 8, !dbg !264
  %38 = sub i64 %36, %37, !dbg !264
  br label %39, !dbg !264

; <label>:39                                      ; preds = %35, %31
  %40 = phi i64 [ %34, %31 ], [ %38, %35 ], !dbg !261
  %41 = load i64* @hw_sds_counter_total, align 8, !dbg !266
  %42 = add i64 %41, %40, !dbg !266
  store i64 %42, i64* @hw_sds_counter_total, align 8, !dbg !266
  %43 = call i64 @sds_clock_counter(), !dbg !269
  store i64 %43, i64* @sw_sds_counter, align 8, !dbg !269
  %44 = load i32* @sw_sds_counter_num_calls, align 4, !dbg !269
  %45 = add i32 %44, 1, !dbg !269
  store i32 %45, i32* @sw_sds_counter_num_calls, align 4, !dbg !269
  %46 = load float** %2, align 4, !dbg !271
  %47 = load float** %3, align 4, !dbg !271
  %48 = getelementptr inbounds [1024 x float]* %tmp2, i32 0, i32 0, !dbg !271
  call void @_Z12mmult_goldenPfS_S_(float* %46, float* %47, float* %48), !dbg !271
  %49 = getelementptr inbounds [1024 x float]* %tmp2, i32 0, i32 0, !dbg !272
  %50 = load float** %4, align 4, !dbg !272
  %51 = load float** %5, align 4, !dbg !272
  call void @_Z11madd_goldenPfS_S_(float* %49, float* %50, float* %51), !dbg !272
  call void @llvm.dbg.declare(metadata !{i64* %tmp3}, metadata !273), !dbg !275
  %52 = call i64 @sds_clock_counter(), !dbg !275
  store i64 %52, i64* %tmp3, align 8, !dbg !275
  %53 = load i64* %tmp3, align 8, !dbg !275
  %54 = load i64* @sw_sds_counter, align 8, !dbg !275
  %55 = icmp ult i64 %53, %54, !dbg !275
  br i1 %55, label %56, label %60, !dbg !275

; <label>:56                                      ; preds = %39
  %57 = load i64* @sw_sds_counter, align 8, !dbg !276
  %58 = load i64* %tmp3, align 8, !dbg !276
  %59 = sub i64 %57, %58, !dbg !276
  br label %64, !dbg !276

; <label>:60                                      ; preds = %39
  %61 = load i64* %tmp3, align 8, !dbg !278
  %62 = load i64* @sw_sds_counter, align 8, !dbg !278
  %63 = sub i64 %61, %62, !dbg !278
  br label %64, !dbg !278

; <label>:64                                      ; preds = %60, %56
  %65 = phi i64 [ %59, %56 ], [ %63, %60 ], !dbg !275
  %66 = load i64* @sw_sds_counter_total, align 8, !dbg !280
  %67 = add i64 %66, %65, !dbg !280
  store i64 %67, i64* @sw_sds_counter_total, align 8, !dbg !280
  %68 = load float** %6, align 4, !dbg !283
  %69 = load float** %5, align 4, !dbg !283
  %70 = call zeroext i1 @_ZL18mmult_result_checkPfS_(float* %68, float* %69), !dbg !283
  br i1 %70, label %72, label %71, !dbg !283

; <label>:71                                      ; preds = %64
  store i1 false, i1* %1, !dbg !285
  br label %91, !dbg !285

; <label>:72                                      ; preds = %64
  br label %73, !dbg !286

; <label>:73                                      ; preds = %72
  %74 = load i32* %i, align 4, !dbg !287
  %75 = add nsw i32 %74, 1, !dbg !287
  store i32 %75, i32* %i, align 4, !dbg !287
  br label %9, !dbg !287

; <label>:76                                      ; preds = %9
  %77 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([20 x i8]* @.str1, i32 0, i32 0)), !dbg !288
  %78 = load i64* @sw_sds_counter_total, align 8, !dbg !288
  %79 = load i32* @sw_sds_counter_num_calls, align 4, !dbg !288
  %80 = zext i32 %79 to i64, !dbg !288
  %81 = udiv i64 %78, %80, !dbg !288
  %82 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"* %77, i64 %81), !dbg !288
  %83 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %82, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !288
  %84 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0)), !dbg !289
  %85 = load i64* @hw_sds_counter_total, align 8, !dbg !289
  %86 = load i32* @hw_sds_counter_num_calls, align 4, !dbg !289
  %87 = zext i32 %86 to i64, !dbg !289
  %88 = udiv i64 %85, %87, !dbg !289
  %89 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"* %84, i64 %88), !dbg !289
  %90 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %89, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !289
  store i1 true, i1* %1, !dbg !290
  br label %91, !dbg !290

; <label>:91                                      ; preds = %76, %71
  %92 = load i1* %1, !dbg !291
  ret i1 %92, !dbg !291
}

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140), i8*) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(140)) #0

; Function Attrs: nounwind
define internal void @_ZL13mmultadd_initPfS_S_S_S_(float* %A, float* %B, float* %C, float* %Ds, float* %D) #2 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !292), !dbg !293
  store float* %B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !294), !dbg !295
  store float* %C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !296), !dbg !297
  store float* %Ds, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !298), !dbg !299
  store float* %D, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !300), !dbg !301
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !302), !dbg !303
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !304), !dbg !305
  store i32 0, i32* %i, align 4, !dbg !306
  br label %6, !dbg !306

; <label>:6                                       ; preds = %30, %0
  %7 = load i32* %i, align 4, !dbg !308
  %8 = icmp slt i32 %7, 32, !dbg !308
  br i1 %8, label %9, label %33, !dbg !308

; <label>:9                                       ; preds = %6
  store i32 0, i32* %j, align 4, !dbg !311
  br label %10, !dbg !311

; <label>:10                                      ; preds = %26, %9
  %11 = load i32* %j, align 4, !dbg !314
  %12 = icmp slt i32 %11, 32, !dbg !314
  br i1 %12, label %13, label %29, !dbg !314

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4, !dbg !317
  %15 = mul nsw i32 %14, 32, !dbg !317
  %16 = add nsw i32 1, %15, !dbg !317
  %17 = load i32* %j, align 4, !dbg !317
  %18 = add nsw i32 %16, %17, !dbg !317
  %19 = sitofp i32 %18 to float, !dbg !317
  %20 = load i32* %i, align 4, !dbg !317
  %21 = mul nsw i32 %20, 32, !dbg !317
  %22 = load i32* %j, align 4, !dbg !317
  %23 = add nsw i32 %21, %22, !dbg !317
  %24 = load float** %1, align 4, !dbg !317
  %25 = getelementptr inbounds float* %24, i32 %23, !dbg !317
  store float %19, float* %25, align 4, !dbg !317
  br label %26, !dbg !319

; <label>:26                                      ; preds = %13
  %27 = load i32* %j, align 4, !dbg !320
  %28 = add nsw i32 %27, 1, !dbg !320
  store i32 %28, i32* %j, align 4, !dbg !320
  br label %10, !dbg !320

; <label>:29                                      ; preds = %10
  br label %30, !dbg !321

; <label>:30                                      ; preds = %29
  %31 = load i32* %i, align 4, !dbg !322
  %32 = add nsw i32 %31, 1, !dbg !322
  store i32 %32, i32* %i, align 4, !dbg !322
  br label %6, !dbg !322

; <label>:33                                      ; preds = %6
  store i32 0, i32* %i, align 4, !dbg !323
  br label %34, !dbg !323

; <label>:34                                      ; preds = %55, %33
  %35 = load i32* %i, align 4, !dbg !325
  %36 = icmp slt i32 %35, 32, !dbg !325
  br i1 %36, label %37, label %58, !dbg !325

; <label>:37                                      ; preds = %34
  store i32 0, i32* %j, align 4, !dbg !328
  br label %38, !dbg !328

; <label>:38                                      ; preds = %51, %37
  %39 = load i32* %j, align 4, !dbg !331
  %40 = icmp slt i32 %39, 32, !dbg !331
  br i1 %40, label %41, label %54, !dbg !331

; <label>:41                                      ; preds = %38
  %42 = call i32 @rand() #1, !dbg !334
  %43 = srem i32 %42, 1024, !dbg !334
  %44 = sitofp i32 %43 to float, !dbg !334
  %45 = load i32* %i, align 4, !dbg !334
  %46 = mul nsw i32 %45, 32, !dbg !334
  %47 = load i32* %j, align 4, !dbg !334
  %48 = add nsw i32 %46, %47, !dbg !334
  %49 = load float** %2, align 4, !dbg !334
  %50 = getelementptr inbounds float* %49, i32 %48, !dbg !334
  store float %44, float* %50, align 4, !dbg !334
  br label %51, !dbg !336

; <label>:51                                      ; preds = %41
  %52 = load i32* %j, align 4, !dbg !337
  %53 = add nsw i32 %52, 1, !dbg !337
  store i32 %53, i32* %j, align 4, !dbg !337
  br label %38, !dbg !337

; <label>:54                                      ; preds = %38
  br label %55, !dbg !338

; <label>:55                                      ; preds = %54
  %56 = load i32* %i, align 4, !dbg !339
  %57 = add nsw i32 %56, 1, !dbg !339
  store i32 %57, i32* %i, align 4, !dbg !339
  br label %34, !dbg !339

; <label>:58                                      ; preds = %34
  store i32 0, i32* %i, align 4, !dbg !340
  br label %59, !dbg !340

; <label>:59                                      ; preds = %82, %58
  %60 = load i32* %i, align 4, !dbg !342
  %61 = icmp slt i32 %60, 32, !dbg !342
  br i1 %61, label %62, label %85, !dbg !342

; <label>:62                                      ; preds = %59
  store i32 0, i32* %j, align 4, !dbg !345
  br label %63, !dbg !345

; <label>:63                                      ; preds = %78, %62
  %64 = load i32* %j, align 4, !dbg !348
  %65 = icmp slt i32 %64, 32, !dbg !348
  br i1 %65, label %66, label %81, !dbg !348

; <label>:66                                      ; preds = %63
  %67 = load i32* %i, align 4, !dbg !351
  %68 = mul nsw i32 %67, 32, !dbg !351
  %69 = load i32* %j, align 4, !dbg !351
  %70 = sub nsw i32 %68, %69, !dbg !351
  %71 = sitofp i32 %70 to float, !dbg !351
  %72 = load i32* %i, align 4, !dbg !351
  %73 = mul nsw i32 %72, 32, !dbg !351
  %74 = load i32* %j, align 4, !dbg !351
  %75 = add nsw i32 %73, %74, !dbg !351
  %76 = load float** %3, align 4, !dbg !351
  %77 = getelementptr inbounds float* %76, i32 %75, !dbg !351
  store float %71, float* %77, align 4, !dbg !351
  br label %78, !dbg !353

; <label>:78                                      ; preds = %66
  %79 = load i32* %j, align 4, !dbg !354
  %80 = add nsw i32 %79, 1, !dbg !354
  store i32 %80, i32* %j, align 4, !dbg !354
  br label %63, !dbg !354

; <label>:81                                      ; preds = %63
  br label %82, !dbg !355

; <label>:82                                      ; preds = %81
  %83 = load i32* %i, align 4, !dbg !356
  %84 = add nsw i32 %83, 1, !dbg !356
  store i32 %84, i32* %i, align 4, !dbg !356
  br label %59, !dbg !356

; <label>:85                                      ; preds = %59
  store i32 0, i32* %i, align 4, !dbg !357
  br label %86, !dbg !357

; <label>:86                                      ; preds = %110, %85
  %87 = load i32* %i, align 4, !dbg !359
  %88 = icmp slt i32 %87, 32, !dbg !359
  br i1 %88, label %89, label %113, !dbg !359

; <label>:89                                      ; preds = %86
  store i32 0, i32* %j, align 4, !dbg !362
  br label %90, !dbg !362

; <label>:90                                      ; preds = %106, %89
  %91 = load i32* %j, align 4, !dbg !365
  %92 = icmp slt i32 %91, 32, !dbg !365
  br i1 %92, label %93, label %109, !dbg !365

; <label>:93                                      ; preds = %90
  %94 = load i32* %i, align 4, !dbg !368
  %95 = mul nsw i32 %94, 32, !dbg !368
  %96 = load i32* %j, align 4, !dbg !368
  %97 = add nsw i32 %95, %96, !dbg !368
  %98 = load float** %4, align 4, !dbg !368
  %99 = getelementptr inbounds float* %98, i32 %97, !dbg !368
  store float 0.000000e+00, float* %99, align 4, !dbg !368
  %100 = load i32* %i, align 4, !dbg !370
  %101 = mul nsw i32 %100, 32, !dbg !370
  %102 = load i32* %j, align 4, !dbg !370
  %103 = add nsw i32 %101, %102, !dbg !370
  %104 = load float** %5, align 4, !dbg !370
  %105 = getelementptr inbounds float* %104, i32 %103, !dbg !370
  store float 0.000000e+00, float* %105, align 4, !dbg !370
  br label %106, !dbg !371

; <label>:106                                     ; preds = %93
  %107 = load i32* %j, align 4, !dbg !372
  %108 = add nsw i32 %107, 1, !dbg !372
  store i32 %108, i32* %j, align 4, !dbg !372
  br label %90, !dbg !372

; <label>:109                                     ; preds = %90
  br label %110, !dbg !373

; <label>:110                                     ; preds = %109
  %111 = load i32* %i, align 4, !dbg !374
  %112 = add nsw i32 %111, 1, !dbg !374
  store i32 %112, i32* %i, align 4, !dbg !374
  br label %86, !dbg !374

; <label>:113                                     ; preds = %86
  ret void, !dbg !375
}

declare i64 @sds_clock_counter() #0

declare void @_Z5mmultPfS_S_(float*, float*, float*) #0

declare void @_Z4maddPfS_S_(float*, float*, float*) #0

define internal zeroext i1 @_ZL18mmult_result_checkPfS_(float* %D, float* %Ds) #0 {
  %1 = alloca i1, align 1
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  store float* %D, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !376), !dbg !377
  store float* %Ds, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !378), !dbg !379
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !380), !dbg !382
  store i32 0, i32* %i, align 4, !dbg !383
  br label %4, !dbg !383

; <label>:4                                       ; preds = %35, %0
  %5 = load i32* %i, align 4, !dbg !384
  %6 = icmp slt i32 %5, 1024, !dbg !384
  br i1 %6, label %7, label %38, !dbg !384

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !387
  %9 = load float** %3, align 4, !dbg !387
  %10 = getelementptr inbounds float* %9, i32 %8, !dbg !387
  %11 = load float* %10, align 4, !dbg !387
  %12 = load i32* %i, align 4, !dbg !387
  %13 = load float** %2, align 4, !dbg !387
  %14 = getelementptr inbounds float* %13, i32 %12, !dbg !387
  %15 = load float* %14, align 4, !dbg !387
  %16 = fcmp une float %11, %15, !dbg !387
  br i1 %16, label %17, label %34, !dbg !387

; <label>:17                                      ; preds = %7
  %18 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8]* @.str7, i32 0, i32 0)), !dbg !390
  %19 = load i32* %i, align 4, !dbg !390
  %20 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %18, i32 %19), !dbg !390
  %21 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %20, i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0)), !dbg !390
  %22 = load i32* %i, align 4, !dbg !390
  %23 = load float** %3, align 4, !dbg !390
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !390
  %25 = load float* %24, align 4, !dbg !390
  %26 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %21, float %25), !dbg !390
  %27 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %26, i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0)), !dbg !390
  %28 = load i32* %i, align 4, !dbg !390
  %29 = load float** %2, align 4, !dbg !390
  %30 = getelementptr inbounds float* %29, i32 %28, !dbg !390
  %31 = load float* %30, align 4, !dbg !390
  %32 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* %27, float %31), !dbg !390
  %33 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %32, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !390
  store i1 false, i1* %1, !dbg !392
  br label %39, !dbg !392

; <label>:34                                      ; preds = %7
  br label %35, !dbg !393

; <label>:35                                      ; preds = %34
  %36 = load i32* %i, align 4, !dbg !394
  %37 = add nsw i32 %36, 1, !dbg !394
  store i32 %37, i32* %i, align 4, !dbg !394
  br label %4, !dbg !394

; <label>:38                                      ; preds = %4
  store i1 true, i1* %1, !dbg !395
  br label %39, !dbg !395

; <label>:39                                      ; preds = %38, %17
  %40 = load i1* %1, !dbg !396
  ret i1 %40, !dbg !396
}

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEy(%"class.std::basic_ostream"*, i64) #0

define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %test_passed = alloca i32, align 4
  %A = alloca float*, align 4
  %B = alloca float*, align 4
  %C = alloca float*, align 4
  %Ds = alloca float*, align 4
  %D = alloca float*, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !397), !dbg !398
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !399), !dbg !400
  call void @llvm.dbg.declare(metadata !{i32* %test_passed}, metadata !401), !dbg !402
  store i32 0, i32* %test_passed, align 4, !dbg !403
  call void @llvm.dbg.declare(metadata !{float** %A}, metadata !404), !dbg !405
  call void @llvm.dbg.declare(metadata !{float** %B}, metadata !406), !dbg !407
  call void @llvm.dbg.declare(metadata !{float** %C}, metadata !408), !dbg !409
  call void @llvm.dbg.declare(metadata !{float** %Ds}, metadata !410), !dbg !411
  call void @llvm.dbg.declare(metadata !{float** %D}, metadata !412), !dbg !413
  %4 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([54 x i8]* @.str3, i32 0, i32 0)), !dbg !414
  %5 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %4, i32 32), !dbg !414
  %6 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %5, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !414
  %7 = call i8* @sds_alloc(i32 4096), !dbg !415
  %8 = bitcast i8* %7 to float*, !dbg !415
  store float* %8, float** %A, align 4, !dbg !415
  %9 = call i8* @sds_alloc(i32 4096), !dbg !416
  %10 = bitcast i8* %9 to float*, !dbg !416
  store float* %10, float** %B, align 4, !dbg !416
  %11 = call i8* @sds_alloc(i32 4096), !dbg !417
  %12 = bitcast i8* %11 to float*, !dbg !417
  store float* %12, float** %C, align 4, !dbg !417
  %13 = call i8* @sds_alloc(i32 4096), !dbg !418
  %14 = bitcast i8* %13 to float*, !dbg !418
  store float* %14, float** %D, align 4, !dbg !418
  %15 = call i8* @sds_alloc(i32 4096), !dbg !419
  %16 = bitcast i8* %15 to float*, !dbg !419
  store float* %16, float** %Ds, align 4, !dbg !419
  %17 = load float** %A, align 4, !dbg !420
  %18 = icmp ne float* %17, null, !dbg !420
  br i1 %18, label %19, label %31, !dbg !420

; <label>:19                                      ; preds = %0
  %20 = load float** %B, align 4, !dbg !422
  %21 = icmp ne float* %20, null, !dbg !422
  br i1 %21, label %22, label %31, !dbg !422

; <label>:22                                      ; preds = %19
  %23 = load float** %C, align 4, !dbg !424
  %24 = icmp ne float* %23, null, !dbg !424
  br i1 %24, label %25, label %31, !dbg !424

; <label>:25                                      ; preds = %22
  %26 = load float** %D, align 4, !dbg !426
  %27 = icmp ne float* %26, null, !dbg !426
  br i1 %27, label %28, label %31, !dbg !426

; <label>:28                                      ; preds = %25
  %29 = load float** %Ds, align 4, !dbg !428
  %30 = icmp ne float* %29, null, !dbg !428
  br i1 %30, label %62, label %31, !dbg !428

; <label>:31                                      ; preds = %28, %25, %22, %19, %0
  %32 = load float** %A, align 4, !dbg !430
  %33 = icmp ne float* %32, null, !dbg !430
  br i1 %33, label %34, label %37, !dbg !430

; <label>:34                                      ; preds = %31
  %35 = load float** %A, align 4, !dbg !433
  %36 = bitcast float* %35 to i8*, !dbg !433
  call void @sds_free(i8* %36), !dbg !433
  br label %37, !dbg !433

; <label>:37                                      ; preds = %34, %31
  %38 = load float** %B, align 4, !dbg !435
  %39 = icmp ne float* %38, null, !dbg !435
  br i1 %39, label %40, label %43, !dbg !435

; <label>:40                                      ; preds = %37
  %41 = load float** %B, align 4, !dbg !437
  %42 = bitcast float* %41 to i8*, !dbg !437
  call void @sds_free(i8* %42), !dbg !437
  br label %43, !dbg !437

; <label>:43                                      ; preds = %40, %37
  %44 = load float** %C, align 4, !dbg !439
  %45 = icmp ne float* %44, null, !dbg !439
  br i1 %45, label %46, label %49, !dbg !439

; <label>:46                                      ; preds = %43
  %47 = load float** %C, align 4, !dbg !441
  %48 = bitcast float* %47 to i8*, !dbg !441
  call void @sds_free(i8* %48), !dbg !441
  br label %49, !dbg !441

; <label>:49                                      ; preds = %46, %43
  %50 = load float** %D, align 4, !dbg !443
  %51 = icmp ne float* %50, null, !dbg !443
  br i1 %51, label %52, label %55, !dbg !443

; <label>:52                                      ; preds = %49
  %53 = load float** %D, align 4, !dbg !445
  %54 = bitcast float* %53 to i8*, !dbg !445
  call void @sds_free(i8* %54), !dbg !445
  br label %55, !dbg !445

; <label>:55                                      ; preds = %52, %49
  %56 = load float** %Ds, align 4, !dbg !447
  %57 = icmp ne float* %56, null, !dbg !447
  br i1 %57, label %58, label %61, !dbg !447

; <label>:58                                      ; preds = %55
  %59 = load float** %Ds, align 4, !dbg !449
  %60 = bitcast float* %59 to i8*, !dbg !449
  call void @sds_free(i8* %60), !dbg !449
  br label %61, !dbg !449

; <label>:61                                      ; preds = %58, %55
  store i32 2, i32* %1, !dbg !451
  br label %93, !dbg !451

; <label>:62                                      ; preds = %28
  %63 = load float** %A, align 4, !dbg !452
  %64 = load float** %B, align 4, !dbg !452
  %65 = load float** %C, align 4, !dbg !452
  %66 = load float** %Ds, align 4, !dbg !452
  %67 = load float** %D, align 4, !dbg !452
  %68 = call zeroext i1 @_Z13mmultadd_testPfS_S_S_S_(float* %63, float* %64, float* %65, float* %66, float* %67), !dbg !452
  %69 = zext i1 %68 to i32, !dbg !452
  store i32 %69, i32* %test_passed, align 4, !dbg !452
  %70 = load float** %A, align 4, !dbg !453
  %71 = bitcast float* %70 to i8*, !dbg !453
  call void @sds_free(i8* %71), !dbg !453
  %72 = load float** %B, align 4, !dbg !454
  %73 = bitcast float* %72 to i8*, !dbg !454
  call void @sds_free(i8* %73), !dbg !454
  %74 = load float** %C, align 4, !dbg !455
  %75 = bitcast float* %74 to i8*, !dbg !455
  call void @sds_free(i8* %75), !dbg !455
  %76 = load float** %D, align 4, !dbg !456
  %77 = bitcast float* %76 to i8*, !dbg !456
  call void @sds_free(i8* %77), !dbg !456
  %78 = load float** %Ds, align 4, !dbg !457
  %79 = bitcast float* %78 to i8*, !dbg !457
  call void @sds_free(i8* %79), !dbg !457
  %80 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) @_ZSt4cout, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)), !dbg !458
  %81 = load i32* %test_passed, align 4, !dbg !458
  %82 = icmp ne i32 %81, 0, !dbg !458
  br i1 %82, label %83, label %84, !dbg !458

; <label>:83                                      ; preds = %62
  br label %85, !dbg !459

; <label>:84                                      ; preds = %62
  br label %85, !dbg !461

; <label>:85                                      ; preds = %84, %83
  %86 = phi [7 x i8]* [ @.str5, %83 ], [ @.str6, %84 ], !dbg !458
  %87 = getelementptr inbounds [7 x i8]* %86, i32 0, i32 0, !dbg !463
  %88 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(140) %80, i8* %87), !dbg !463
  %89 = call dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %88, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !463
  %90 = load i32* %test_passed, align 4, !dbg !466
  %91 = icmp ne i32 %90, 0, !dbg !466
  %92 = select i1 %91, i32 0, i32 -1, !dbg !466
  store i32 %92, i32* %1, !dbg !466
  br label %93, !dbg !466

; <label>:93                                      ; preds = %85, %61
  %94 = load i32* %1, !dbg !467
  ret i32 %94, !dbg !467
}

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #0

declare i8* @sds_alloc(i32) #0

declare void @sds_free(i8*) #0

declare dereferenceable(140) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"*, float) #0

; Function Attrs: nounwind
declare i32 @rand() #2

define internal void @_GLOBAL__sub_I_main.cpp() section ".text.startup" {
  call void @__cxx_global_var_init(), !dbg !468
  ret void, !dbg !468
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!106, !107, !108, !107, !109, !110, !111, !110, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!xidane.function_declaration_filename = !{!106, !143, !108, !143, !109, !144, !111, !144, !112, !144, !114, !145, !116, !145, !118, !145, !120, !144, !122, !146, !124, !147, !126, !148, !127, !144, !129, !145, !131, !144, !133, !145, !135, !146, !137, !146, !139, !145, !141, !149}
!xidane.ExternC = !{!122, !135, !137, !141}
!xidane.function_argument_annotation = !{!124, !150, !126, !151}
!llvm.module.flags = !{!152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !3, metadata !37, metadata !68, metadata !77, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/../src\main.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src\5Cmain.cpp", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !12, metadata !16, metadata !28}
!4 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !6, i32 0, null, null, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!5 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cwchar.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!6 = metadata !{metadata !7, metadata !9}
!7 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from _ZTSN11__mbstate_tUt_E]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"lconv", i32 53, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5lconv"} ; [ DW_TAG_structure_type ] [lconv] [line 53, size 0, align 0, offset 0] [decl] [from ]
!11 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Clocale.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!12 = metadata !{i32 786434, metadata !13, metadata !14, metadata !"ios_base", i32 199, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt8ios_base"} ; [ DW_TAG_class_type ] [ios_base] [line 199, size 0, align 0, offset 0] [decl] [from ]
!13 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\5Cbits/ios_base.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!14 = metadata !{i32 786489, metadata !15, null, metadata !"std", i32 186} ; [ DW_TAG_namespace ] [std] [line 186]
!15 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2/arm-xilinx-linux-gnueabi\5Cbits/c++config.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!16 = metadata !{i32 786434, metadata !13, metadata !"_ZTSSt8ios_base", metadata !"Init", i32 533, i64 8, i64 8, i32 0, i32 0, null, metadata !17, i32 0, null, null, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_class_type ] [Init] [line 533, size 8, align 8, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !21, metadata !23, metadata !27}
!18 = metadata !{i32 786445, metadata !13, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_refcount", i32 541, i64 0, i64 0, i64 0, i32 4097, metadata !19, null} ; [ DW_TAG_member ] [_S_refcount] [line 541, size 0, align 0, offset 0] [private] [static] [from _Atomic_word]
!19 = metadata !{i32 786454, metadata !20, null, metadata !"_Atomic_word", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [_Atomic_word] [line 32, size 0, align 0, offset 0] [from int]
!20 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2/arm-xilinx-linux-gnueabi\5Cbits/atomic_word.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
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
!37 = metadata !{metadata !38, metadata !43, metadata !50, metadata !51, metadata !54, metadata !59, metadata !62, metadata !65}
!38 = metadata !{i32 786478, metadata !39, metadata !40, metadata !"__cxx_global_var_init", metadata !"__cxx_global_var_init", metadata !"", i32 74, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__cxx_global_var_init, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [__cxx_global_var_init]
!39 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\5Ciostream", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!40 = metadata !{i32 786473, metadata !39}        ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\iostream]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null}
!43 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"mmult_golden", metadata !"mmult_golden", metadata !"_Z12mmult_goldenPfS_S_", i32 53, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_, null, null, metadata !2, i32 54} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 54] [mmult_golden]
!44 = metadata !{metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!45 = metadata !{i32 786473, metadata !44}        ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !48, metadata !48, metadata !48}
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!49 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!50 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"madd_golden", metadata !"madd_golden", metadata !"_Z11madd_goldenPfS_S_", i32 66, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z11madd_goldenPfS_S_, null, null, metadata !2, i32 67} ; [ DW_TAG_subprogram ] [line 66] [def] [scope 67] [madd_golden]
!51 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"mmultadd_test", metadata !"mmultadd_test", metadata !"_Z13mmultadd_testPfS_S_S_S_", i32 88, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (float*, float*, float*, float*, float*)* @_Z13mmultadd_testPfS_S_S_S_, null, null, metadata !2, i32 89} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 89] [mmultadd_test]
!52 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !22, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48}
!54 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"main", metadata !"main", metadata !"", i32 118, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 118} ; [ DW_TAG_subprogram ] [line 118] [def] [main]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !8, metadata !8, metadata !57}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!59 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"mmult_result_check", metadata !"mmult_result_check", metadata !"_ZL18mmult_result_checkPfS_", i32 75, metadata !60, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (float*, float*)* @_ZL18mmult_result_checkPfS_, null, null, metadata !2, i32 76} ; [ DW_TAG_subprogram ] [line 75] [local] [def] [scope 76] [mmult_result_check]
!60 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !22, metadata !48, metadata !48}
!62 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"mmultadd_init", metadata !"mmultadd_init", metadata !"_ZL13mmultadd_initPfS_S_S_S_", i32 27, metadata !63, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*, float*, float*)* @_ZL13mmultadd_initPfS_S_S_S_, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 27] [local] [def] [scope 28] [mmultadd_init]
!63 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48}
!65 = metadata !{i32 786478, metadata !1, metadata !66, metadata !"", metadata !"", metadata !"_GLOBAL__sub_I_main.cpp", i32 0, metadata !67, i1 true, i1 true, i32 0, i32 0, null, i32 64, i1 false, void ()* @_GLOBAL__sub_I_main.cpp, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 0] [local] [def]
!66 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/../src\main.cpp]
!67 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{metadata !69, metadata !70, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76}
!69 = metadata !{i32 786484, i32 0, metadata !14, metadata !"__ioinit", metadata !"__ioinit", metadata !"_ZStL8__ioinit", metadata !40, i32 74, metadata !"_ZTSNSt8ios_base4InitE", i32 1, i32 1, %"class.std::ios_base::Init"* @_ZStL8__ioinit, null} ; [ DW_TAG_variable ] [__ioinit] [line 74] [local] [def]
!70 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter_total", metadata !"sw_sds_counter_total", metadata !"", metadata !45, i32 11, metadata !71, i32 0, i32 1, i64* @sw_sds_counter_total, null} ; [ DW_TAG_variable ] [sw_sds_counter_total] [line 11] [def]
!71 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786484, i32 0, null, metadata !"hw_sds_counter_total", metadata !"hw_sds_counter_total", metadata !"", metadata !45, i32 12, metadata !71, i32 0, i32 1, i64* @hw_sds_counter_total, null} ; [ DW_TAG_variable ] [hw_sds_counter_total] [line 12] [def]
!73 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter_num_calls", metadata !"sw_sds_counter_num_calls", metadata !"", metadata !45, i32 13, metadata !31, i32 0, i32 1, i32* @sw_sds_counter_num_calls, null} ; [ DW_TAG_variable ] [sw_sds_counter_num_calls] [line 13] [def]
!74 = metadata !{i32 786484, i32 0, null, metadata !"hw_sds_counter_num_calls", metadata !"hw_sds_counter_num_calls", metadata !"", metadata !45, i32 14, metadata !31, i32 0, i32 1, i32* @hw_sds_counter_num_calls, null} ; [ DW_TAG_variable ] [hw_sds_counter_num_calls] [line 14] [def]
!75 = metadata !{i32 786484, i32 0, null, metadata !"sw_sds_counter", metadata !"sw_sds_counter", metadata !"", metadata !45, i32 15, metadata !71, i32 0, i32 1, i64* @sw_sds_counter, null} ; [ DW_TAG_variable ] [sw_sds_counter] [line 15] [def]
!76 = metadata !{i32 786484, i32 0, null, metadata !"hw_sds_counter", metadata !"hw_sds_counter", metadata !"", metadata !45, i32 16, metadata !71, i32 0, i32 1, i64* @hw_sds_counter, null} ; [ DW_TAG_variable ] [hw_sds_counter] [line 16] [def]
!77 = metadata !{metadata !78, metadata !81, metadata !84, metadata !88, metadata !89, metadata !93, metadata !95, metadata !102, metadata !105}
!78 = metadata !{i32 786440, metadata !14, metadata !79, i32 64} ; [ DW_TAG_imported_declaration ]
!79 = metadata !{i32 786454, metadata !5, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!80 = metadata !{i32 786454, metadata !5, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from _ZTS11__mbstate_t]
!81 = metadata !{i32 786440, metadata !14, metadata !82, i32 139} ; [ DW_TAG_imported_declaration ]
!82 = metadata !{i32 786454, metadata !83, null, metadata !"wint_t", i32 353, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [wint_t] [line 353, size 0, align 0, offset 0] [from unsigned int]
!83 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/lib/gcc/arm-xilinx-linux-gnueabi/4.9.2/include\5Cstddef.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!84 = metadata !{i32 786490, metadata !85, metadata !87, i32 56} ; [ DW_TAG_imported_module ]
!85 = metadata !{i32 786489, metadata !86, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!86 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\5Cdebug/debug.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!87 = metadata !{i32 786489, metadata !86, metadata !14, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!88 = metadata !{i32 786440, metadata !14, metadata !"_ZTS5lconv", i32 53} ; [ DW_TAG_imported_declaration ]
!89 = metadata !{i32 786440, metadata !90, metadata !92, i32 44} ; [ DW_TAG_imported_declaration ]
!90 = metadata !{i32 786489, metadata !91, null, metadata !"__gnu_cxx", i32 241} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 241]
!91 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\5Ccwchar", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!92 = metadata !{i32 786454, metadata !15, metadata !14, metadata !"size_t", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 188, size 0, align 0, offset 0] [from unsigned int]
!93 = metadata !{i32 786440, metadata !90, metadata !94, i32 45} ; [ DW_TAG_imported_declaration ]
!94 = metadata !{i32 786454, metadata !15, metadata !14, metadata !"ptrdiff_t", i32 189, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 189, size 0, align 0, offset 0] [from int]
!95 = metadata !{i32 786440, metadata !14, metadata !96, i32 82} ; [ DW_TAG_imported_declaration ]
!96 = metadata !{i32 786454, metadata !97, null, metadata !"wctrans_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [wctrans_t] [line 186, size 0, align 0, offset 0] [from ]
!97 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cwctype.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!98 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!99 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __int32_t]
!100 = metadata !{i32 786454, metadata !101, null, metadata !"__int32_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [__int32_t] [line 40, size 0, align 0, offset 0] [from int]
!101 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cbits/types.h", metadata !"C:\5Cxup\5CSDSoC\5Clabs\5Clab1_prebuilt\5CSDRelease"}
!102 = metadata !{i32 786440, metadata !14, metadata !103, i32 83} ; [ DW_TAG_imported_declaration ]
!103 = metadata !{i32 786454, metadata !97, null, metadata !"wctype_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [wctype_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!104 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{i32 786440, metadata !14, metadata !82, i32 84} ; [ DW_TAG_imported_declaration ]
!106 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitC1Ev}
!107 = metadata !{metadata !"void."}
!108 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev}
!109 = metadata !{void (float*, float*, float*)* @_Z12mmult_goldenPfS_S_}
!110 = metadata !{metadata !"void.float *.1.float *.1.float *.1"}
!111 = metadata !{void (float*, float*, float*)* @_Z11madd_goldenPfS_S_}
!112 = metadata !{i1 (float*, float*, float*, float*, float*)* @_Z13mmultadd_testPfS_S_S_S_}
!113 = metadata !{metadata !"_Bool.float *.1.float *.1.float *.1.float *.1.float *.1"}
!114 = metadata !{%"class.std::basic_ostream"* (%"class.std::basic_ostream"*, i8*)* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc}
!115 = metadata !{metadata !"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0.const char *.1"}
!116 = metadata !{%"class.std::basic_ostream"* (%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*)* @_ZNSolsEPFRSoS_E}
!117 = metadata !{metadata !"__ostream_type .__ostream_type &(*)(__ostream_type &).1"}
!118 = metadata !{%"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_}
!119 = metadata !{metadata !"basic_ostream<char, struct std::char_traits<char> > .basic_ostream<char, struct std::char_traits<char> > &.0"}
!120 = metadata !{void (float*, float*, float*, float*, float*)* @_ZL13mmultadd_initPfS_S_S_S_}
!121 = metadata !{metadata !"void.float *.1.float *.1.float *.1.float *.1.float *.1"}
!122 = metadata !{i64 ()* @sds_clock_counter}
!123 = metadata !{metadata !"unsigned long long."}
!124 = metadata !{void (float*, float*, float*)* @_Z5mmultPfS_S_}
!125 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!126 = metadata !{void (float*, float*, float*)* @_Z4maddPfS_S_}
!127 = metadata !{i1 (float*, float*)* @_ZL18mmult_result_checkPfS_}
!128 = metadata !{metadata !"_Bool.float *.1.float *.1"}
!129 = metadata !{%"class.std::basic_ostream"* (%"class.std::basic_ostream"*, i64)* @_ZNSolsEy}
!130 = metadata !{metadata !"__ostream_type .unsigned long long.0"}
!131 = metadata !{i32 (i32, i8**)* @main}
!132 = metadata !{metadata !"int.int.0.char *[].1"}
!133 = metadata !{%"class.std::basic_ostream"* (%"class.std::basic_ostream"*, i32)* @_ZNSolsEi}
!134 = metadata !{metadata !"__ostream_type .int.0"}
!135 = metadata !{i8* (i32)* @sds_alloc}
!136 = metadata !{metadata !"void .size_t.0"}
!137 = metadata !{void (i8*)* @sds_free}
!138 = metadata !{metadata !"void.void *.1"}
!139 = metadata !{%"class.std::basic_ostream"* (%"class.std::basic_ostream"*, float)* @_ZNSolsEf}
!140 = metadata !{metadata !"__ostream_type .float.0"}
!141 = metadata !{i32 ()* @rand}
!142 = metadata !{metadata !"int."}
!143 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\5Cbits/ios_base.h"}
!144 = metadata !{metadata !"C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp"}
!145 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/include/c++/4.9.2\5Costream"}
!146 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/arm-xilinx-linux-gnueabi/include\5Csds_lib.h"}
!147 = metadata !{metadata !"../src/mmult.h"}
!148 = metadata !{metadata !"../src/madd.h"}
!149 = metadata !{metadata !"C:/Xilinx/SDSoC/2015.4/SDK/2015.4/gnu/arm/nt/arm-xilinx-linux-gnueabi/libc/usr/include\5Cstdlib.h"}
!150 = metadata !{metadata !"in_A,,,,,,,, in_B,,,,,,,, out_C,,,,,,,, "}
!151 = metadata !{metadata !"A,,,,,,,, B,,,,,,,, C,,,,,,,, "}
!152 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!153 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!154 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!155 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!156 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!157 = metadata !{i32 74, i32 25, metadata !38, null}
!158 = metadata !{i32 786689, metadata !43, metadata !"in_arr", metadata !45, i32 16777269, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 53]
!159 = metadata !{i32 53, i32 26, metadata !43, null}
!160 = metadata !{i32 786689, metadata !43, metadata !"in_arr2", metadata !45, i32 33554485, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 53]
!161 = metadata !{i32 53, i32 42, metadata !43, null}
!162 = metadata !{i32 786689, metadata !43, metadata !"out_arr", metadata !45, i32 50331701, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 53]
!163 = metadata !{i32 53, i32 58, metadata !43, null}
!164 = metadata !{i32 786688, metadata !165, metadata !"row", metadata !45, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 55]
!165 = metadata !{i32 786443, metadata !44, metadata !43, i32 55, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!166 = metadata !{i32 55, i32 15, metadata !165, null}
!167 = metadata !{i32 55, i32 11, metadata !165, null}
!168 = metadata !{i32 55, i32 11, metadata !169, null}
!169 = metadata !{i32 786443, metadata !44, metadata !170, i32 55, i32 11, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!170 = metadata !{i32 786443, metadata !44, metadata !165, i32 55, i32 11, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!171 = metadata !{i32 786688, metadata !172, metadata !"col", metadata !45, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 56]
!172 = metadata !{i32 786443, metadata !44, metadata !173, i32 56, i32 11, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!173 = metadata !{i32 786443, metadata !44, metadata !165, i32 55, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!174 = metadata !{i32 56, i32 20, metadata !172, null}
!175 = metadata !{i32 56, i32 16, metadata !172, null}
!176 = metadata !{i32 56, i32 16, metadata !177, null}
!177 = metadata !{i32 786443, metadata !44, metadata !178, i32 56, i32 16, i32 2, i32 48} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!178 = metadata !{i32 786443, metadata !44, metadata !172, i32 56, i32 16, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!179 = metadata !{i32 786688, metadata !180, metadata !"result", metadata !45, i32 57, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 57]
!180 = metadata !{i32 786443, metadata !44, metadata !172, i32 56, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!181 = metadata !{i32 57, i32 22, metadata !180, null}
!182 = metadata !{i32 57, i32 16, metadata !180, null}
!183 = metadata !{i32 786688, metadata !184, metadata !"k", metadata !45, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 58]
!184 = metadata !{i32 786443, metadata !44, metadata !180, i32 58, i32 16, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!185 = metadata !{i32 58, i32 25, metadata !184, null} ; [ DW_TAG_imported_module ]
!186 = metadata !{i32 58, i32 21, metadata !184, null} ; [ DW_TAG_imported_module ]
!187 = metadata !{i32 58, i32 21, metadata !188, null} ; [ DW_TAG_imported_module ]
!188 = metadata !{i32 786443, metadata !44, metadata !189, i32 58, i32 21, i32 2, i32 47} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!189 = metadata !{i32 786443, metadata !44, metadata !184, i32 58, i32 21, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!190 = metadata !{i32 59, i32 21, metadata !191, null}
!191 = metadata !{i32 786443, metadata !44, metadata !184, i32 58, i32 50, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!192 = metadata !{i32 60, i32 16, metadata !191, null}
!193 = metadata !{i32 58, i32 45, metadata !184, null} ; [ DW_TAG_imported_module ]
!194 = metadata !{i32 61, i32 16, metadata !180, null}
!195 = metadata !{i32 62, i32 11, metadata !180, null}
!196 = metadata !{i32 56, i32 44, metadata !172, null}
!197 = metadata !{i32 63, i32 6, metadata !173, null}
!198 = metadata !{i32 55, i32 39, metadata !165, null}
!199 = metadata !{i32 64, i32 1, metadata !43, null}
!200 = metadata !{i32 786689, metadata !50, metadata !"in_arr", metadata !45, i32 16777282, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr] [line 66]
!201 = metadata !{i32 66, i32 25, metadata !50, null}
!202 = metadata !{i32 786689, metadata !50, metadata !"in_arr2", metadata !45, i32 33554498, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_arr2] [line 66]
!203 = metadata !{i32 66, i32 40, metadata !50, null}
!204 = metadata !{i32 786689, metadata !50, metadata !"out_arr", metadata !45, i32 50331714, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_arr] [line 66]
!205 = metadata !{i32 66, i32 56, metadata !50, null}
!206 = metadata !{i32 786688, metadata !207, metadata !"row", metadata !45, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 68]
!207 = metadata !{i32 786443, metadata !44, metadata !50, i32 68, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!208 = metadata !{i32 68, i32 15, metadata !207, null}
!209 = metadata !{i32 68, i32 11, metadata !207, null}
!210 = metadata !{i32 68, i32 11, metadata !211, null}
!211 = metadata !{i32 786443, metadata !44, metadata !212, i32 68, i32 11, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!212 = metadata !{i32 786443, metadata !44, metadata !207, i32 68, i32 11, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!213 = metadata !{i32 786688, metadata !214, metadata !"col", metadata !45, i32 69, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 69]
!214 = metadata !{i32 786443, metadata !44, metadata !215, i32 69, i32 11, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!215 = metadata !{i32 786443, metadata !44, metadata !207, i32 68, i32 44, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!216 = metadata !{i32 69, i32 20, metadata !214, null}
!217 = metadata !{i32 69, i32 16, metadata !214, null}
!218 = metadata !{i32 69, i32 16, metadata !219, null}
!219 = metadata !{i32 786443, metadata !44, metadata !220, i32 69, i32 16, i32 2, i32 52} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!220 = metadata !{i32 786443, metadata !44, metadata !214, i32 69, i32 16, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!221 = metadata !{i32 70, i32 16, metadata !222, null}
!222 = metadata !{i32 786443, metadata !44, metadata !214, i32 69, i32 49, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!223 = metadata !{i32 71, i32 11, metadata !222, null}
!224 = metadata !{i32 69, i32 42, metadata !214, null}
!225 = metadata !{i32 72, i32 6, metadata !215, null}
!226 = metadata !{i32 68, i32 37, metadata !207, null}
!227 = metadata !{i32 73, i32 1, metadata !50, null}
!228 = metadata !{i32 786689, metadata !51, metadata !"A", metadata !45, i32 16777304, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 88]
!229 = metadata !{i32 88, i32 27, metadata !51, null}
!230 = metadata !{i32 786689, metadata !51, metadata !"B", metadata !45, i32 33554520, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 88]
!231 = metadata !{i32 88, i32 38, metadata !51, null}
!232 = metadata !{i32 786689, metadata !51, metadata !"C", metadata !45, i32 50331736, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 88]
!233 = metadata !{i32 88, i32 48, metadata !51, null}
!234 = metadata !{i32 786689, metadata !51, metadata !"Ds", metadata !45, i32 67108952, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ds] [line 88]
!235 = metadata !{i32 88, i32 57, metadata !51, null}
!236 = metadata !{i32 786689, metadata !51, metadata !"D", metadata !45, i32 83886168, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 88]
!237 = metadata !{i32 88, i32 68, metadata !51, null}
!238 = metadata !{i32 90, i32 6, metadata !51, null}
!239 = metadata !{i32 786688, metadata !51, metadata !"tmp1", metadata !45, i32 92, metadata !240, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp1] [line 92]
!240 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 32, i32 0, i32 0, metadata !49, metadata !241, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32768, align 32, offset 0] [from float]
!241 = metadata !{metadata !242}
!242 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!243 = metadata !{i32 92, i32 12, metadata !51, null}
!244 = metadata !{i32 786688, metadata !51, metadata !"tmp2", metadata !45, i32 92, metadata !240, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp2] [line 92]
!245 = metadata !{i32 92, i32 37, metadata !51, null}
!246 = metadata !{i32 786688, metadata !247, metadata !"i", metadata !45, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 94]
!247 = metadata !{i32 786443, metadata !44, metadata !51, i32 94, i32 6, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!248 = metadata !{i32 94, i32 15, metadata !247, null}
!249 = metadata !{i32 94, i32 11, metadata !247, null}
!250 = metadata !{i32 94, i32 11, metadata !251, null}
!251 = metadata !{i32 786443, metadata !44, metadata !252, i32 94, i32 11, i32 2, i32 63} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!252 = metadata !{i32 786443, metadata !44, metadata !247, i32 94, i32 11, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!253 = metadata !{i32 95, i32 11, metadata !254, null}
!254 = metadata !{i32 786443, metadata !44, metadata !247, i32 94, i32 42, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!255 = metadata !{i32 97, i32 11, metadata !256, null}
!256 = metadata !{i32 786443, metadata !44, metadata !254, i32 97, i32 11, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!257 = metadata !{i32 98, i32 11, metadata !254, null}
!258 = metadata !{i32 100, i32 11, metadata !254, null}
!259 = metadata !{i32 786688, metadata !260, metadata !"tmp", metadata !45, i32 101, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 101]
!260 = metadata !{i32 786443, metadata !44, metadata !254, i32 101, i32 11, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!261 = metadata !{i32 101, i32 11, metadata !260, null}
!262 = metadata !{i32 101, i32 11, metadata !263, null}
!263 = metadata !{i32 786443, metadata !44, metadata !260, i32 101, i32 11, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!264 = metadata !{i32 101, i32 11, metadata !265, null}
!265 = metadata !{i32 786443, metadata !44, metadata !260, i32 101, i32 11, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!266 = metadata !{i32 101, i32 11, metadata !267, null}
!267 = metadata !{i32 786443, metadata !44, metadata !268, i32 101, i32 11, i32 4, i32 58} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!268 = metadata !{i32 786443, metadata !44, metadata !260, i32 101, i32 11, i32 3, i32 57} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!269 = metadata !{i32 103, i32 11, metadata !270, null}
!270 = metadata !{i32 786443, metadata !44, metadata !254, i32 103, i32 11, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!271 = metadata !{i32 104, i32 11, metadata !254, null}
!272 = metadata !{i32 105, i32 11, metadata !254, null}
!273 = metadata !{i32 786688, metadata !274, metadata !"tmp", metadata !45, i32 106, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 106]
!274 = metadata !{i32 786443, metadata !44, metadata !254, i32 106, i32 11, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!275 = metadata !{i32 106, i32 11, metadata !274, null}
!276 = metadata !{i32 106, i32 11, metadata !277, null}
!277 = metadata !{i32 786443, metadata !44, metadata !274, i32 106, i32 11, i32 1, i32 59} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!278 = metadata !{i32 106, i32 11, metadata !279, null}
!279 = metadata !{i32 786443, metadata !44, metadata !274, i32 106, i32 11, i32 2, i32 60} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!280 = metadata !{i32 106, i32 11, metadata !281, null}
!281 = metadata !{i32 786443, metadata !44, metadata !282, i32 106, i32 11, i32 4, i32 62} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!282 = metadata !{i32 786443, metadata !44, metadata !274, i32 106, i32 11, i32 3, i32 61} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!283 = metadata !{i32 108, i32 16, metadata !284, null}
!284 = metadata !{i32 786443, metadata !44, metadata !254, i32 108, i32 15, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!285 = metadata !{i32 109, i32 16, metadata !284, null}
!286 = metadata !{i32 110, i32 6, metadata !254, null}
!287 = metadata !{i32 94, i32 37, metadata !247, null}
!288 = metadata !{i32 111, i32 6, metadata !51, null}
!289 = metadata !{i32 112, i32 6, metadata !51, null}
!290 = metadata !{i32 114, i32 6, metadata !51, null}
!291 = metadata !{i32 115, i32 1, metadata !51, null}
!292 = metadata !{i32 786689, metadata !62, metadata !"A", metadata !45, i32 16777243, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 27]
!293 = metadata !{i32 27, i32 34, metadata !62, null}
!294 = metadata !{i32 786689, metadata !62, metadata !"B", metadata !45, i32 33554459, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 27]
!295 = metadata !{i32 27, i32 44, metadata !62, null}
!296 = metadata !{i32 786689, metadata !62, metadata !"C", metadata !45, i32 50331675, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 27]
!297 = metadata !{i32 27, i32 54, metadata !62, null}
!298 = metadata !{i32 786689, metadata !62, metadata !"Ds", metadata !45, i32 67108891, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ds] [line 27]
!299 = metadata !{i32 27, i32 64, metadata !62, null}
!300 = metadata !{i32 786689, metadata !62, metadata !"D", metadata !45, i32 83886107, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 27]
!301 = metadata !{i32 27, i32 75, metadata !62, null}
!302 = metadata !{i32 786688, metadata !62, metadata !"i", metadata !45, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 29]
!303 = metadata !{i32 29, i32 10, metadata !62, null}
!304 = metadata !{i32 786688, metadata !62, metadata !"j", metadata !45, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 29]
!305 = metadata !{i32 29, i32 13, metadata !62, null}
!306 = metadata !{i32 30, i32 11, metadata !307, null}
!307 = metadata !{i32 786443, metadata !44, metadata !62, i32 30, i32 6, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!308 = metadata !{i32 30, i32 11, metadata !309, null}
!309 = metadata !{i32 786443, metadata !44, metadata !310, i32 30, i32 11, i32 2, i32 67} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!310 = metadata !{i32 786443, metadata !44, metadata !307, i32 30, i32 11, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!311 = metadata !{i32 31, i32 16, metadata !312, null}
!312 = metadata !{i32 786443, metadata !44, metadata !313, i32 31, i32 11, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!313 = metadata !{i32 786443, metadata !44, metadata !307, i32 30, i32 36, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!314 = metadata !{i32 31, i32 16, metadata !315, null}
!315 = metadata !{i32 786443, metadata !44, metadata !316, i32 31, i32 16, i32 2, i32 66} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!316 = metadata !{i32 786443, metadata !44, metadata !312, i32 31, i32 16, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!317 = metadata !{i32 32, i32 16, metadata !318, null}
!318 = metadata !{i32 786443, metadata !44, metadata !312, i32 31, i32 41, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!319 = metadata !{i32 33, i32 11, metadata !318, null}
!320 = metadata !{i32 31, i32 36, metadata !312, null}
!321 = metadata !{i32 34, i32 6, metadata !313, null}
!322 = metadata !{i32 30, i32 31, metadata !307, null}
!323 = metadata !{i32 35, i32 11, metadata !324, null}
!324 = metadata !{i32 786443, metadata !44, metadata !62, i32 35, i32 6, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!325 = metadata !{i32 35, i32 11, metadata !326, null}
!326 = metadata !{i32 786443, metadata !44, metadata !327, i32 35, i32 11, i32 2, i32 71} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!327 = metadata !{i32 786443, metadata !44, metadata !324, i32 35, i32 11, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!328 = metadata !{i32 36, i32 16, metadata !329, null}
!329 = metadata !{i32 786443, metadata !44, metadata !330, i32 36, i32 11, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!330 = metadata !{i32 786443, metadata !44, metadata !324, i32 35, i32 36, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!331 = metadata !{i32 36, i32 16, metadata !332, null}
!332 = metadata !{i32 786443, metadata !44, metadata !333, i32 36, i32 16, i32 2, i32 70} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!333 = metadata !{i32 786443, metadata !44, metadata !329, i32 36, i32 16, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!334 = metadata !{i32 37, i32 37, metadata !335, null}
!335 = metadata !{i32 786443, metadata !44, metadata !329, i32 36, i32 41, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!336 = metadata !{i32 38, i32 11, metadata !335, null}
!337 = metadata !{i32 36, i32 36, metadata !329, null}
!338 = metadata !{i32 39, i32 6, metadata !330, null}
!339 = metadata !{i32 35, i32 31, metadata !324, null}
!340 = metadata !{i32 40, i32 11, metadata !341, null}
!341 = metadata !{i32 786443, metadata !44, metadata !62, i32 40, i32 6, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!342 = metadata !{i32 40, i32 11, metadata !343, null}
!343 = metadata !{i32 786443, metadata !44, metadata !344, i32 40, i32 11, i32 2, i32 75} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!344 = metadata !{i32 786443, metadata !44, metadata !341, i32 40, i32 11, i32 1, i32 72} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!345 = metadata !{i32 41, i32 16, metadata !346, null}
!346 = metadata !{i32 786443, metadata !44, metadata !347, i32 41, i32 11, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!347 = metadata !{i32 786443, metadata !44, metadata !341, i32 40, i32 36, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!348 = metadata !{i32 41, i32 16, metadata !349, null}
!349 = metadata !{i32 786443, metadata !44, metadata !350, i32 41, i32 16, i32 2, i32 74} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!350 = metadata !{i32 786443, metadata !44, metadata !346, i32 41, i32 16, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!351 = metadata !{i32 42, i32 16, metadata !352, null}
!352 = metadata !{i32 786443, metadata !44, metadata !346, i32 41, i32 41, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!353 = metadata !{i32 43, i32 11, metadata !352, null}
!354 = metadata !{i32 41, i32 36, metadata !346, null}
!355 = metadata !{i32 44, i32 6, metadata !347, null}
!356 = metadata !{i32 40, i32 31, metadata !341, null}
!357 = metadata !{i32 45, i32 11, metadata !358, null}
!358 = metadata !{i32 786443, metadata !44, metadata !62, i32 45, i32 6, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!359 = metadata !{i32 45, i32 11, metadata !360, null}
!360 = metadata !{i32 786443, metadata !44, metadata !361, i32 45, i32 11, i32 2, i32 79} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!361 = metadata !{i32 786443, metadata !44, metadata !358, i32 45, i32 11, i32 1, i32 76} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!362 = metadata !{i32 46, i32 16, metadata !363, null}
!363 = metadata !{i32 786443, metadata !44, metadata !364, i32 46, i32 11, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!364 = metadata !{i32 786443, metadata !44, metadata !358, i32 45, i32 36, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!365 = metadata !{i32 46, i32 16, metadata !366, null}
!366 = metadata !{i32 786443, metadata !44, metadata !367, i32 46, i32 16, i32 2, i32 78} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!367 = metadata !{i32 786443, metadata !44, metadata !363, i32 46, i32 16, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!368 = metadata !{i32 47, i32 16, metadata !369, null}
!369 = metadata !{i32 786443, metadata !44, metadata !363, i32 46, i32 41, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!370 = metadata !{i32 48, i32 16, metadata !369, null}
!371 = metadata !{i32 49, i32 11, metadata !369, null}
!372 = metadata !{i32 46, i32 36, metadata !363, null}
!373 = metadata !{i32 50, i32 6, metadata !364, null}
!374 = metadata !{i32 45, i32 31, metadata !358, null}
!375 = metadata !{i32 51, i32 1, metadata !62, null}
!376 = metadata !{i32 786689, metadata !59, metadata !"D", metadata !45, i32 16777291, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 75]
!377 = metadata !{i32 75, i32 39, metadata !59, null}
!378 = metadata !{i32 786689, metadata !59, metadata !"Ds", metadata !45, i32 33554507, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ds] [line 75]
!379 = metadata !{i32 75, i32 49, metadata !59, null}
!380 = metadata !{i32 786688, metadata !381, metadata !"i", metadata !45, i32 77, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 77]
!381 = metadata !{i32 786443, metadata !44, metadata !59, i32 77, i32 6, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!382 = metadata !{i32 77, i32 15, metadata !381, null}
!383 = metadata !{i32 77, i32 11, metadata !381, null}
!384 = metadata !{i32 77, i32 11, metadata !385, null}
!385 = metadata !{i32 786443, metadata !44, metadata !386, i32 77, i32 11, i32 2, i32 81} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!386 = metadata !{i32 786443, metadata !44, metadata !381, i32 77, i32 11, i32 1, i32 80} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!387 = metadata !{i32 78, i32 15, metadata !388, null}
!388 = metadata !{i32 786443, metadata !44, metadata !389, i32 78, i32 15, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!389 = metadata !{i32 786443, metadata !44, metadata !381, i32 77, i32 50, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!390 = metadata !{i32 79, i32 16, metadata !391, null}
!391 = metadata !{i32 786443, metadata !44, metadata !388, i32 78, i32 30, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!392 = metadata !{i32 82, i32 16, metadata !391, null}
!393 = metadata !{i32 84, i32 6, metadata !389, null}
!394 = metadata !{i32 77, i32 45, metadata !381, null}
!395 = metadata !{i32 85, i32 6, metadata !59, null}
!396 = metadata !{i32 86, i32 1, metadata !59, null}
!397 = metadata !{i32 786689, metadata !54, metadata !"argc", metadata !45, i32 16777334, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 118]
!398 = metadata !{i32 118, i32 14, metadata !54, null}
!399 = metadata !{i32 786689, metadata !54, metadata !"argv", metadata !45, i32 33554550, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 118]
!400 = metadata !{i32 118, i32 26, metadata !54, null}
!401 = metadata !{i32 786688, metadata !54, metadata !"test_passed", metadata !45, i32 119, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test_passed] [line 119]
!402 = metadata !{i32 119, i32 10, metadata !54, null}
!403 = metadata !{i32 119, i32 6, metadata !54, null}
!404 = metadata !{i32 786688, metadata !54, metadata !"A", metadata !45, i32 120, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [A] [line 120]
!405 = metadata !{i32 120, i32 13, metadata !54, null}
!406 = metadata !{i32 786688, metadata !54, metadata !"B", metadata !45, i32 120, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [B] [line 120]
!407 = metadata !{i32 120, i32 17, metadata !54, null}
!408 = metadata !{i32 786688, metadata !54, metadata !"C", metadata !45, i32 120, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [C] [line 120]
!409 = metadata !{i32 120, i32 21, metadata !54, null}
!410 = metadata !{i32 786688, metadata !54, metadata !"Ds", metadata !45, i32 120, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Ds] [line 120]
!411 = metadata !{i32 120, i32 25, metadata !54, null}
!412 = metadata !{i32 786688, metadata !54, metadata !"D", metadata !45, i32 120, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D] [line 120]
!413 = metadata !{i32 120, i32 30, metadata !54, null}
!414 = metadata !{i32 122, i32 6, metadata !54, null}
!415 = metadata !{i32 125, i32 19, metadata !54, null}
!416 = metadata !{i32 126, i32 19, metadata !54, null}
!417 = metadata !{i32 127, i32 19, metadata !54, null}
!418 = metadata !{i32 128, i32 19, metadata !54, null}
!419 = metadata !{i32 129, i32 20, metadata !54, null}
!420 = metadata !{i32 131, i32 10, metadata !421, null}
!421 = metadata !{i32 786443, metadata !44, metadata !54, i32 131, i32 10, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!422 = metadata !{i32 131, i32 10, metadata !423, null}
!423 = metadata !{i32 786443, metadata !44, metadata !421, i32 131, i32 10, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!424 = metadata !{i32 131, i32 10, metadata !425, null}
!425 = metadata !{i32 786443, metadata !44, metadata !421, i32 131, i32 10, i32 2, i32 83} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!426 = metadata !{i32 131, i32 10, metadata !427, null}
!427 = metadata !{i32 786443, metadata !44, metadata !421, i32 131, i32 10, i32 3, i32 84} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!428 = metadata !{i32 131, i32 10, metadata !429, null}
!429 = metadata !{i32 786443, metadata !44, metadata !421, i32 131, i32 10, i32 4, i32 85} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!430 = metadata !{i32 132, i32 15, metadata !431, null}
!431 = metadata !{i32 786443, metadata !44, metadata !432, i32 132, i32 15, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!432 = metadata !{i32 786443, metadata !44, metadata !421, i32 131, i32 39, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!433 = metadata !{i32 132, i32 18, metadata !434, null}
!434 = metadata !{i32 786443, metadata !44, metadata !431, i32 132, i32 18, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!435 = metadata !{i32 133, i32 15, metadata !436, null}
!436 = metadata !{i32 786443, metadata !44, metadata !432, i32 133, i32 15, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!437 = metadata !{i32 133, i32 18, metadata !438, null}
!438 = metadata !{i32 786443, metadata !44, metadata !436, i32 133, i32 18, i32 1, i32 87} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!439 = metadata !{i32 134, i32 15, metadata !440, null}
!440 = metadata !{i32 786443, metadata !44, metadata !432, i32 134, i32 15, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!441 = metadata !{i32 134, i32 18, metadata !442, null}
!442 = metadata !{i32 786443, metadata !44, metadata !440, i32 134, i32 18, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!443 = metadata !{i32 135, i32 15, metadata !444, null}
!444 = metadata !{i32 786443, metadata !44, metadata !432, i32 135, i32 15, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!445 = metadata !{i32 135, i32 18, metadata !446, null}
!446 = metadata !{i32 786443, metadata !44, metadata !444, i32 135, i32 18, i32 1, i32 89} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!447 = metadata !{i32 136, i32 15, metadata !448, null}
!448 = metadata !{i32 786443, metadata !44, metadata !432, i32 136, i32 15, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!449 = metadata !{i32 136, i32 19, metadata !450, null}
!450 = metadata !{i32 786443, metadata !44, metadata !448, i32 136, i32 19, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!451 = metadata !{i32 137, i32 11, metadata !432, null}
!452 = metadata !{i32 140, i32 20, metadata !54, null}
!453 = metadata !{i32 142, i32 6, metadata !54, null}
!454 = metadata !{i32 143, i32 6, metadata !54, null}
!455 = metadata !{i32 144, i32 6, metadata !54, null}
!456 = metadata !{i32 145, i32 6, metadata !54, null}
!457 = metadata !{i32 146, i32 6, metadata !54, null}
!458 = metadata !{i32 148, i32 6, metadata !54, null}
!459 = metadata !{i32 148, i32 6, metadata !460, null}
!460 = metadata !{i32 786443, metadata !44, metadata !54, i32 148, i32 6, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!461 = metadata !{i32 148, i32 6, metadata !462, null}
!462 = metadata !{i32 786443, metadata !44, metadata !54, i32 148, i32 6, i32 2, i32 92} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!463 = metadata !{i32 148, i32 6, metadata !464, null}
!464 = metadata !{i32 786443, metadata !44, metadata !465, i32 148, i32 6, i32 4, i32 94} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!465 = metadata !{i32 786443, metadata !44, metadata !54, i32 148, i32 6, i32 3, i32 93} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
!466 = metadata !{i32 151, i32 6, metadata !54, null}
!467 = metadata !{i32 152, i32 1, metadata !54, null}
!468 = metadata !{i32 0, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !44, metadata !65} ; [ DW_TAG_lexical_block ] [C:\xup\SDSoC\labs\lab1_prebuilt\SDRelease/C:/xup/SDSoC/labs/lab1_prebuilt/src/main.cpp]
