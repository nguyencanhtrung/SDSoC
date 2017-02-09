; ModuleID = '/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom = internal global [252 x float] zeroinitializer, align 4
@_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E9lnReturnA = internal global [252 x float] zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_correlation_accel_v4.cpp, i8* null }]

define internal void @__cxx_global_var_init() section ".text.startup" {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !128
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1, !dbg !128
  ret void, !dbg !128
}

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) #0

declare %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

define void @_Z20correlation_accel_v4iiPfS_(i32 %number_of_days, i32 %number_of_indices, float* %in_indices, float* %out_correlation) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float*, align 4
  %4 = alloca float*, align 4
  %NUMBER_OF_DAYS = alloca i32, align 4
  %NUMBER_OF_INDICES = alloca i32, align 4
  %ln_returnA_c1 = alloca [1255000 x float], align 4
  %weight_returnSquareA_c1 = alloca [1255000 x float], align 4
  %weight_returnA_c1 = alloca [1255000 x float], align 4
  %ln_returnA_c2 = alloca [1255000 x float], align 4
  %weight_returnSquareA_c2 = alloca [1255000 x float], align 4
  %weight_returnA_c2 = alloca [1255000 x float], align 4
  %sum_weight_c1 = alloca [1255000 x float], align 4
  %ln_returnB_c1 = alloca [1255000 x float], align 4
  %weight_returnSquareB_c1 = alloca [1255000 x float], align 4
  %weight_returnB_c1 = alloca [1255000 x float], align 4
  %weight_returnA_returnB_c1 = alloca [1255000 x float], align 4
  %sum_weight_c2 = alloca [1255000 x float], align 4
  %ln_returnB_c2 = alloca [1255000 x float], align 4
  %weight_returnSquareB_c2 = alloca [1255000 x float], align 4
  %weight_returnB_c2 = alloca [1255000 x float], align 4
  %weight_returnA_returnB_c2 = alloca [1255000 x float], align 4
  %sum_weight_stage2_c1 = alloca [5000 x float], align 4
  %sum_return_stage2_c1 = alloca [5000 x float], align 4
  %sum_weight_returnSquare_stage2_c1 = alloca [5000 x float], align 4
  %sum_weight_return_stage2_c1 = alloca [5000 x float], align 4
  %sum_weight_returnA_returnB_stage2_c1 = alloca [5000 x float], align 4
  %sum_returnA_stage2_c1 = alloca [5000 x float], align 4
  %sum_weight_returnSquareA_stage2_c1 = alloca [5000 x float], align 4
  %sum_weight_returnA_stage2_c1 = alloca [5000 x float], align 4
  %sum_weight_stage2_c2 = alloca [5000 x float], align 4
  %sum_return_stage2_c2 = alloca [5000 x float], align 4
  %sum_weight_returnSquare_stage2_c2 = alloca [5000 x float], align 4
  %sum_weight_return_stage2_c2 = alloca [5000 x float], align 4
  %sum_weight_returnA_returnB_stage2_c2 = alloca [5000 x float], align 4
  %sum_returnA_stage2_c2 = alloca [5000 x float], align 4
  %sum_weight_returnSquareA_stage2_c2 = alloca [5000 x float], align 4
  %sum_weight_returnA_stage2_c2 = alloca [5000 x float], align 4
  store i32 %number_of_days, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !129), !dbg !130
  store i32 %number_of_indices, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !131), !dbg !132
  store float* %in_indices, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !133), !dbg !134
  store float* %out_correlation, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !135), !dbg !136
  call void @llvm.dbg.declare(metadata !{i32* %NUMBER_OF_DAYS}, metadata !137), !dbg !139
  %5 = load i32* %1, align 4, !dbg !140
  store i32 %5, i32* %NUMBER_OF_DAYS, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata !{i32* %NUMBER_OF_INDICES}, metadata !141), !dbg !142
  %6 = load i32* %2, align 4, !dbg !143
  store i32 %6, i32* %NUMBER_OF_INDICES, align 4, !dbg !143
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %ln_returnA_c1}, metadata !144), !dbg !148
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnSquareA_c1}, metadata !149), !dbg !150
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnA_c1}, metadata !151), !dbg !152
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %ln_returnA_c2}, metadata !153), !dbg !154
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnSquareA_c2}, metadata !155), !dbg !156
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnA_c2}, metadata !157), !dbg !158
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %sum_weight_c1}, metadata !159), !dbg !160
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %ln_returnB_c1}, metadata !161), !dbg !162
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnSquareB_c1}, metadata !163), !dbg !164
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnB_c1}, metadata !165), !dbg !166
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnA_returnB_c1}, metadata !167), !dbg !168
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %sum_weight_c2}, metadata !169), !dbg !170
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %ln_returnB_c2}, metadata !171), !dbg !172
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnSquareB_c2}, metadata !173), !dbg !174
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnB_c2}, metadata !175), !dbg !176
  call void @llvm.dbg.declare(metadata !{[1255000 x float]* %weight_returnA_returnB_c2}, metadata !177), !dbg !178
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_stage2_c1}, metadata !179), !dbg !183
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_return_stage2_c1}, metadata !184), !dbg !185
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnSquare_stage2_c1}, metadata !186), !dbg !187
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_return_stage2_c1}, metadata !188), !dbg !189
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnA_returnB_stage2_c1}, metadata !190), !dbg !191
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_returnA_stage2_c1}, metadata !192), !dbg !193
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnSquareA_stage2_c1}, metadata !194), !dbg !195
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnA_stage2_c1}, metadata !196), !dbg !197
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_stage2_c2}, metadata !198), !dbg !199
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_return_stage2_c2}, metadata !200), !dbg !201
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnSquare_stage2_c2}, metadata !202), !dbg !203
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_return_stage2_c2}, metadata !204), !dbg !205
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnA_returnB_stage2_c2}, metadata !206), !dbg !207
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_returnA_stage2_c2}, metadata !208), !dbg !209
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnSquareA_stage2_c2}, metadata !210), !dbg !211
  call void @llvm.dbg.declare(metadata !{[5000 x float]* %sum_weight_returnA_stage2_c2}, metadata !212), !dbg !213
  %7 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !214
  %8 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !214
  %9 = load float** %3, align 4, !dbg !214
  %10 = getelementptr inbounds [1255000 x float]* %ln_returnA_c1, i32 0, i32 0, !dbg !214
  %11 = getelementptr inbounds [1255000 x float]* %weight_returnSquareA_c1, i32 0, i32 0, !dbg !214
  %12 = getelementptr inbounds [1255000 x float]* %weight_returnA_c1, i32 0, i32 0, !dbg !214
  %13 = getelementptr inbounds [1255000 x float]* %ln_returnA_c2, i32 0, i32 0, !dbg !214
  %14 = getelementptr inbounds [1255000 x float]* %weight_returnSquareA_c2, i32 0, i32 0, !dbg !214
  %15 = getelementptr inbounds [1255000 x float]* %weight_returnA_c2, i32 0, i32 0, !dbg !214
  %16 = getelementptr inbounds [1255000 x float]* %sum_weight_c1, i32 0, i32 0, !dbg !214
  %17 = getelementptr inbounds [1255000 x float]* %ln_returnB_c1, i32 0, i32 0, !dbg !214
  %18 = getelementptr inbounds [1255000 x float]* %weight_returnSquareB_c1, i32 0, i32 0, !dbg !214
  %19 = getelementptr inbounds [1255000 x float]* %weight_returnB_c1, i32 0, i32 0, !dbg !214
  %20 = getelementptr inbounds [1255000 x float]* %weight_returnA_returnB_c1, i32 0, i32 0, !dbg !214
  %21 = getelementptr inbounds [1255000 x float]* %sum_weight_c2, i32 0, i32 0, !dbg !214
  %22 = getelementptr inbounds [1255000 x float]* %ln_returnB_c2, i32 0, i32 0, !dbg !214
  %23 = getelementptr inbounds [1255000 x float]* %weight_returnSquareB_c2, i32 0, i32 0, !dbg !214
  %24 = getelementptr inbounds [1255000 x float]* %weight_returnB_c2, i32 0, i32 0, !dbg !214
  %25 = getelementptr inbounds [1255000 x float]* %weight_returnA_returnB_c2, i32 0, i32 0, !dbg !214
  call void @_Z8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %7, i32 %8, float* %9, float* %10, float* %11, float* %12, float* %13, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, float* %22, float* %23, float* %24, float* %25), !dbg !214
  %26 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !215
  %27 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !215
  %28 = getelementptr inbounds [1255000 x float]* %ln_returnA_c1, i32 0, i32 0, !dbg !215
  %29 = getelementptr inbounds [1255000 x float]* %weight_returnSquareA_c1, i32 0, i32 0, !dbg !215
  %30 = getelementptr inbounds [1255000 x float]* %weight_returnA_c1, i32 0, i32 0, !dbg !215
  %31 = getelementptr inbounds [1255000 x float]* %sum_weight_c1, i32 0, i32 0, !dbg !215
  %32 = getelementptr inbounds [1255000 x float]* %ln_returnB_c1, i32 0, i32 0, !dbg !215
  %33 = getelementptr inbounds [1255000 x float]* %weight_returnSquareB_c1, i32 0, i32 0, !dbg !215
  %34 = getelementptr inbounds [1255000 x float]* %weight_returnB_c1, i32 0, i32 0, !dbg !215
  %35 = getelementptr inbounds [1255000 x float]* %weight_returnA_returnB_c1, i32 0, i32 0, !dbg !215
  %36 = getelementptr inbounds [5000 x float]* %sum_weight_stage2_c1, i32 0, i32 0, !dbg !215
  %37 = getelementptr inbounds [5000 x float]* %sum_return_stage2_c1, i32 0, i32 0, !dbg !215
  %38 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquare_stage2_c1, i32 0, i32 0, !dbg !215
  %39 = getelementptr inbounds [5000 x float]* %sum_weight_return_stage2_c1, i32 0, i32 0, !dbg !215
  %40 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_returnB_stage2_c1, i32 0, i32 0, !dbg !215
  %41 = getelementptr inbounds [5000 x float]* %sum_returnA_stage2_c1, i32 0, i32 0, !dbg !215
  %42 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquareA_stage2_c1, i32 0, i32 0, !dbg !215
  %43 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_stage2_c1, i32 0, i32 0, !dbg !215
  call void @_Z6midEndiiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %26, i32 %27, i32 0, float* %28, float* %29, float* %30, float* %31, float* %32, float* %33, float* %34, float* %35, float* %36, float* %37, float* %38, float* %39, float* %40, float* %41, float* %42, float* %43), !dbg !215
  %44 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !216
  %45 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !216
  %46 = getelementptr inbounds [1255000 x float]* %ln_returnA_c2, i32 0, i32 0, !dbg !216
  %47 = getelementptr inbounds [1255000 x float]* %weight_returnSquareA_c2, i32 0, i32 0, !dbg !216
  %48 = getelementptr inbounds [1255000 x float]* %weight_returnA_c2, i32 0, i32 0, !dbg !216
  %49 = getelementptr inbounds [1255000 x float]* %sum_weight_c2, i32 0, i32 0, !dbg !216
  %50 = getelementptr inbounds [1255000 x float]* %ln_returnB_c2, i32 0, i32 0, !dbg !216
  %51 = getelementptr inbounds [1255000 x float]* %weight_returnSquareB_c2, i32 0, i32 0, !dbg !216
  %52 = getelementptr inbounds [1255000 x float]* %weight_returnB_c2, i32 0, i32 0, !dbg !216
  %53 = getelementptr inbounds [1255000 x float]* %weight_returnA_returnB_c2, i32 0, i32 0, !dbg !216
  %54 = getelementptr inbounds [5000 x float]* %sum_weight_stage2_c2, i32 0, i32 0, !dbg !216
  %55 = getelementptr inbounds [5000 x float]* %sum_return_stage2_c2, i32 0, i32 0, !dbg !216
  %56 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquare_stage2_c2, i32 0, i32 0, !dbg !216
  %57 = getelementptr inbounds [5000 x float]* %sum_weight_return_stage2_c2, i32 0, i32 0, !dbg !216
  %58 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_returnB_stage2_c2, i32 0, i32 0, !dbg !216
  %59 = getelementptr inbounds [5000 x float]* %sum_returnA_stage2_c2, i32 0, i32 0, !dbg !216
  %60 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquareA_stage2_c2, i32 0, i32 0, !dbg !216
  %61 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_stage2_c2, i32 0, i32 0, !dbg !216
  call void @_Z6midEndiiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %44, i32 %45, i32 1, float* %46, float* %47, float* %48, float* %49, float* %50, float* %51, float* %52, float* %53, float* %54, float* %55, float* %56, float* %57, float* %58, float* %59, float* %60, float* %61), !dbg !216
  %62 = load i32* %NUMBER_OF_DAYS, align 4, !dbg !217
  %63 = load i32* %NUMBER_OF_INDICES, align 4, !dbg !217
  %64 = getelementptr inbounds [5000 x float]* %sum_weight_stage2_c1, i32 0, i32 0, !dbg !217
  %65 = getelementptr inbounds [5000 x float]* %sum_return_stage2_c1, i32 0, i32 0, !dbg !217
  %66 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquare_stage2_c1, i32 0, i32 0, !dbg !217
  %67 = getelementptr inbounds [5000 x float]* %sum_weight_return_stage2_c1, i32 0, i32 0, !dbg !217
  %68 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_returnB_stage2_c1, i32 0, i32 0, !dbg !217
  %69 = getelementptr inbounds [5000 x float]* %sum_returnA_stage2_c1, i32 0, i32 0, !dbg !217
  %70 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquareA_stage2_c1, i32 0, i32 0, !dbg !217
  %71 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_stage2_c1, i32 0, i32 0, !dbg !217
  %72 = getelementptr inbounds [5000 x float]* %sum_weight_stage2_c2, i32 0, i32 0, !dbg !217
  %73 = getelementptr inbounds [5000 x float]* %sum_return_stage2_c2, i32 0, i32 0, !dbg !217
  %74 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquare_stage2_c2, i32 0, i32 0, !dbg !217
  %75 = getelementptr inbounds [5000 x float]* %sum_weight_return_stage2_c2, i32 0, i32 0, !dbg !217
  %76 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_returnB_stage2_c2, i32 0, i32 0, !dbg !217
  %77 = getelementptr inbounds [5000 x float]* %sum_returnA_stage2_c2, i32 0, i32 0, !dbg !217
  %78 = getelementptr inbounds [5000 x float]* %sum_weight_returnSquareA_stage2_c2, i32 0, i32 0, !dbg !217
  %79 = getelementptr inbounds [5000 x float]* %sum_weight_returnA_stage2_c2, i32 0, i32 0, !dbg !217
  %80 = load float** %4, align 4, !dbg !217
  call void @_Z7backEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %62, i32 %63, float* %64, float* %65, float* %66, float* %67, float* %68, float* %69, float* %70, float* %71, float* %72, float* %73, float* %74, float* %75, float* %76, float* %77, float* %78, float* %79, float* %80), !dbg !217
  ret void, !dbg !218
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

define void @_Z8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, float* %in_indices, float* %ln_returnA_out_c1, float* %weight_returnSquareA_out_c1, float* %weight_returnA_out_c1, float* %ln_returnA_out_c2, float* %weight_returnSquareA_out_c2, float* %weight_returnA_out_c2, float* %sum_weight_out_c1, float* %ln_returnB_out_c1, float* %weight_returnSquareB_out_c1, float* %weight_returnB_out_c1, float* %weight_returnA_returnB_out_c1, float* %sum_weight_out_c2, float* %ln_returnB_out_c2, float* %weight_returnSquareB_out_c2, float* %weight_returnB_out_c2, float* %weight_returnA_returnB_out_c2) #0 {
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
  %12 = alloca float*, align 4
  %13 = alloca float*, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
  %16 = alloca float*, align 4
  %17 = alloca float*, align 4
  %18 = alloca float*, align 4
  %19 = alloca float*, align 4
  %sum_weight = alloca float, align 4
  %shift_reg = alloca [2 x float], align 4
  %index_c1 = alloca i32, align 4
  %index_c2 = alloca i32, align 4
  %i = alloca i32, align 4
  %lnReturn = alloca float, align 4
  %column_index = alloca i32, align 4
  %index = alloca i32, align 4
  %i1 = alloca i32, align 4
  %lnReturn2 = alloca float, align 4
  %weight = alloca float, align 4
  %lnReturnA_temp = alloca float, align 4
  %weight_returnA_temp = alloca float, align 4
  %weight_returnSquareA_temp = alloca float, align 4
  %weight_returnB_temp = alloca float, align 4
  %weight_returnSquareB_temp = alloca float, align 4
  %weight_returnA_returnB_temp = alloca float, align 4
  store i32 %NUMBER_OF_DAYS, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !219), !dbg !220
  store i32 %NUMBER_OF_INDICES, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !221), !dbg !222
  store float* %in_indices, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !223), !dbg !224
  store float* %ln_returnA_out_c1, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !225), !dbg !226
  store float* %weight_returnSquareA_out_c1, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !227), !dbg !228
  store float* %weight_returnA_out_c1, float** %6, align 4
  call void @llvm.dbg.declare(metadata !{float** %6}, metadata !229), !dbg !230
  store float* %ln_returnA_out_c2, float** %7, align 4
  call void @llvm.dbg.declare(metadata !{float** %7}, metadata !231), !dbg !232
  store float* %weight_returnSquareA_out_c2, float** %8, align 4
  call void @llvm.dbg.declare(metadata !{float** %8}, metadata !233), !dbg !234
  store float* %weight_returnA_out_c2, float** %9, align 4
  call void @llvm.dbg.declare(metadata !{float** %9}, metadata !235), !dbg !236
  store float* %sum_weight_out_c1, float** %10, align 4
  call void @llvm.dbg.declare(metadata !{float** %10}, metadata !237), !dbg !238
  store float* %ln_returnB_out_c1, float** %11, align 4
  call void @llvm.dbg.declare(metadata !{float** %11}, metadata !239), !dbg !240
  store float* %weight_returnSquareB_out_c1, float** %12, align 4
  call void @llvm.dbg.declare(metadata !{float** %12}, metadata !241), !dbg !242
  store float* %weight_returnB_out_c1, float** %13, align 4
  call void @llvm.dbg.declare(metadata !{float** %13}, metadata !243), !dbg !244
  store float* %weight_returnA_returnB_out_c1, float** %14, align 4
  call void @llvm.dbg.declare(metadata !{float** %14}, metadata !245), !dbg !246
  store float* %sum_weight_out_c2, float** %15, align 4
  call void @llvm.dbg.declare(metadata !{float** %15}, metadata !247), !dbg !248
  store float* %ln_returnB_out_c2, float** %16, align 4
  call void @llvm.dbg.declare(metadata !{float** %16}, metadata !249), !dbg !250
  store float* %weight_returnSquareB_out_c2, float** %17, align 4
  call void @llvm.dbg.declare(metadata !{float** %17}, metadata !251), !dbg !252
  store float* %weight_returnB_out_c2, float** %18, align 4
  call void @llvm.dbg.declare(metadata !{float** %18}, metadata !253), !dbg !254
  store float* %weight_returnA_returnB_out_c2, float** %19, align 4
  call void @llvm.dbg.declare(metadata !{float** %19}, metadata !255), !dbg !256
  %20 = load i32* %1, align 4, !dbg !257
  call void @_ZL15weight_rom_initPfi(float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), i32 %20), !dbg !257
  call void @llvm.dbg.declare(metadata !{float* %sum_weight}, metadata !258), !dbg !259
  %21 = load float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), align 4, !dbg !260
  store float %21, float* %sum_weight, align 4, !dbg !260
  call void @llvm.dbg.declare(metadata !{[2 x float]* %shift_reg}, metadata !261), !dbg !265
  call void @llvm.dbg.declare(metadata !{i32* %index_c1}, metadata !266), !dbg !267
  store i32 0, i32* %index_c1, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata !{i32* %index_c2}, metadata !269), !dbg !270
  store i32 0, i32* %index_c2, align 4, !dbg !271
  %22 = load float** %3, align 4, !dbg !272
  %23 = getelementptr inbounds float* %22, i32 0, !dbg !272
  %24 = load float* %23, align 4, !dbg !272
  %25 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !272
  store float %24, float* %25, align 4, !dbg !272
  br label %26, !dbg !272

; <label>:26                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !273), !dbg !275
  store i32 1, i32* %i, align 4, !dbg !276
  br label %27, !dbg !276

; <label>:27                                      ; preds = %61, %26
  %28 = load i32* %i, align 4, !dbg !277
  %29 = load i32* %1, align 4, !dbg !277
  %30 = sub nsw i32 %29, 1, !dbg !277
  %31 = icmp sle i32 %28, %30, !dbg !277
  br i1 %31, label %32, label %64, !dbg !277

; <label>:32                                      ; preds = %27
  %33 = load i32* %i, align 4, !dbg !280
  %34 = icmp eq i32 %33, 1, !dbg !280
  br i1 %34, label %35, label %41, !dbg !280

; <label>:35                                      ; preds = %32
  %36 = load i32* %i, align 4, !dbg !283
  %37 = load float** %3, align 4, !dbg !283
  %38 = getelementptr inbounds float* %37, i32 %36, !dbg !283
  %39 = load float* %38, align 4, !dbg !283
  %40 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !283
  store float %39, float* %40, align 4, !dbg !283
  br label %50, !dbg !285

; <label>:41                                      ; preds = %32
  %42 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !286
  %43 = load float* %42, align 4, !dbg !286
  %44 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !286
  store float %43, float* %44, align 4, !dbg !286
  %45 = load i32* %i, align 4, !dbg !288
  %46 = load float** %3, align 4, !dbg !288
  %47 = getelementptr inbounds float* %46, i32 %45, !dbg !288
  %48 = load float* %47, align 4, !dbg !288
  %49 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !288
  store float %48, float* %49, align 4, !dbg !288
  br label %50

; <label>:50                                      ; preds = %41, %35
  call void @llvm.dbg.declare(metadata !{float* %lnReturn}, metadata !289), !dbg !290
  %51 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !291
  %52 = load float* %51, align 4, !dbg !291
  %53 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !291
  %54 = load float* %53, align 4, !dbg !291
  %55 = fdiv float %52, %54, !dbg !291
  %56 = call float @logf(float %55) #1, !dbg !291
  store float %56, float* %lnReturn, align 4, !dbg !291
  %57 = load float* %lnReturn, align 4, !dbg !292
  %58 = load i32* %i, align 4, !dbg !292
  %59 = sub nsw i32 %58, 1, !dbg !292
  %60 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E9lnReturnA, i32 0, i32 %59, !dbg !292
  store float %57, float* %60, align 4, !dbg !292
  br label %61, !dbg !293

; <label>:61                                      ; preds = %50
  %62 = load i32* %i, align 4, !dbg !294
  %63 = add nsw i32 %62, 1, !dbg !294
  store i32 %63, i32* %i, align 4, !dbg !294
  br label %27, !dbg !294

; <label>:64                                      ; preds = %27
  call void @llvm.dbg.declare(metadata !{i32* %column_index}, metadata !295), !dbg !297
  store i32 1, i32* %column_index, align 4, !dbg !298
  br label %65, !dbg !298

; <label>:65                                      ; preds = %219, %64
  %66 = load i32* %column_index, align 4, !dbg !299
  %67 = load i32* %2, align 4, !dbg !299
  %68 = icmp slt i32 %66, %67, !dbg !299
  br i1 %68, label %69, label %222, !dbg !299

; <label>:69                                      ; preds = %65
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !302), !dbg !304
  %70 = load i32* %column_index, align 4, !dbg !305
  %71 = load i32* %1, align 4, !dbg !305
  %72 = mul nsw i32 %70, %71, !dbg !305
  store i32 %72, i32* %index, align 4, !dbg !305
  %73 = load i32* %index, align 4, !dbg !306
  %74 = load float** %3, align 4, !dbg !306
  %75 = getelementptr inbounds float* %74, i32 %73, !dbg !306
  %76 = load float* %75, align 4, !dbg !306
  %77 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !306
  store float %76, float* %77, align 4, !dbg !306
  br label %78, !dbg !306

; <label>:78                                      ; preds = %69
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !307), !dbg !309
  store i32 1, i32* %i1, align 4, !dbg !310
  br label %79, !dbg !310

; <label>:79                                      ; preds = %215, %78
  %80 = load i32* %i1, align 4, !dbg !311
  %81 = load i32* %1, align 4, !dbg !311
  %82 = sub nsw i32 %81, 1, !dbg !311
  %83 = icmp sle i32 %80, %82, !dbg !311
  br i1 %83, label %84, label %218, !dbg !311

; <label>:84                                      ; preds = %79
  %85 = load i32* %i1, align 4, !dbg !314
  %86 = icmp eq i32 %85, 1, !dbg !314
  br i1 %86, label %87, label %95, !dbg !314

; <label>:87                                      ; preds = %84
  %88 = load i32* %index, align 4, !dbg !317
  %89 = load i32* %i1, align 4, !dbg !317
  %90 = add nsw i32 %88, %89, !dbg !317
  %91 = load float** %3, align 4, !dbg !317
  %92 = getelementptr inbounds float* %91, i32 %90, !dbg !317
  %93 = load float* %92, align 4, !dbg !317
  %94 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !317
  store float %93, float* %94, align 4, !dbg !317
  br label %106, !dbg !319

; <label>:95                                      ; preds = %84
  %96 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !320
  %97 = load float* %96, align 4, !dbg !320
  %98 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !320
  store float %97, float* %98, align 4, !dbg !320
  %99 = load i32* %index, align 4, !dbg !322
  %100 = load i32* %i1, align 4, !dbg !322
  %101 = add nsw i32 %99, %100, !dbg !322
  %102 = load float** %3, align 4, !dbg !322
  %103 = getelementptr inbounds float* %102, i32 %101, !dbg !322
  %104 = load float* %103, align 4, !dbg !322
  %105 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !322
  store float %104, float* %105, align 4, !dbg !322
  br label %106

; <label>:106                                     ; preds = %95, %87
  call void @llvm.dbg.declare(metadata !{float* %lnReturn2}, metadata !323), !dbg !324
  %107 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 1, !dbg !325
  %108 = load float* %107, align 4, !dbg !325
  %109 = getelementptr inbounds [2 x float]* %shift_reg, i32 0, i32 0, !dbg !325
  %110 = load float* %109, align 4, !dbg !325
  %111 = fdiv float %108, %110, !dbg !325
  %112 = call float @logf(float %111) #1, !dbg !325
  store float %112, float* %lnReturn2, align 4, !dbg !325
  call void @llvm.dbg.declare(metadata !{float* %weight}, metadata !326), !dbg !327
  %113 = load i32* %i1, align 4, !dbg !328
  %114 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 %113, !dbg !328
  %115 = load float* %114, align 4, !dbg !328
  store float %115, float* %weight, align 4, !dbg !328
  call void @llvm.dbg.declare(metadata !{float* %lnReturnA_temp}, metadata !329), !dbg !330
  %116 = load i32* %i1, align 4, !dbg !331
  %117 = sub nsw i32 %116, 1, !dbg !331
  %118 = getelementptr inbounds [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E9lnReturnA, i32 0, i32 %117, !dbg !331
  %119 = load float* %118, align 4, !dbg !331
  store float %119, float* %lnReturnA_temp, align 4, !dbg !331
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_temp}, metadata !332), !dbg !333
  %120 = load float* %lnReturnA_temp, align 4, !dbg !334
  %121 = load float* %weight, align 4, !dbg !334
  %122 = fmul float %120, %121, !dbg !334
  store float %122, float* %weight_returnA_temp, align 4, !dbg !334
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareA_temp}, metadata !335), !dbg !336
  %123 = load float* %lnReturnA_temp, align 4, !dbg !337
  %124 = load float* %lnReturnA_temp, align 4, !dbg !337
  %125 = fmul float %123, %124, !dbg !337
  %126 = load float* %weight, align 4, !dbg !337
  %127 = fmul float %125, %126, !dbg !337
  store float %127, float* %weight_returnSquareA_temp, align 4, !dbg !337
  call void @llvm.dbg.declare(metadata !{float* %weight_returnB_temp}, metadata !338), !dbg !339
  %128 = load float* %lnReturn2, align 4, !dbg !340
  %129 = load float* %weight, align 4, !dbg !340
  %130 = fmul float %128, %129, !dbg !340
  store float %130, float* %weight_returnB_temp, align 4, !dbg !340
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareB_temp}, metadata !341), !dbg !342
  %131 = load float* %lnReturn2, align 4, !dbg !343
  %132 = load float* %lnReturn2, align 4, !dbg !343
  %133 = fmul float %131, %132, !dbg !343
  %134 = load float* %weight, align 4, !dbg !343
  %135 = fmul float %133, %134, !dbg !343
  store float %135, float* %weight_returnSquareB_temp, align 4, !dbg !343
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_returnB_temp}, metadata !344), !dbg !345
  %136 = load float* %lnReturnA_temp, align 4, !dbg !346
  %137 = load float* %lnReturn2, align 4, !dbg !346
  %138 = fmul float %136, %137, !dbg !346
  %139 = load float* %weight, align 4, !dbg !346
  %140 = fmul float %138, %139, !dbg !346
  store float %140, float* %weight_returnA_returnB_temp, align 4, !dbg !346
  %141 = load i32* %column_index, align 4, !dbg !347
  %142 = srem i32 %141, 1, !dbg !347
  %143 = icmp eq i32 %142, 0, !dbg !347
  br i1 %143, label %144, label %179, !dbg !347

; <label>:144                                     ; preds = %106
  %145 = load float* %lnReturnA_temp, align 4, !dbg !349
  %146 = load i32* %index_c1, align 4, !dbg !349
  %147 = load float** %4, align 4, !dbg !349
  %148 = getelementptr inbounds float* %147, i32 %146, !dbg !349
  store float %145, float* %148, align 4, !dbg !349
  %149 = load float* %weight_returnSquareA_temp, align 4, !dbg !351
  %150 = load i32* %index_c1, align 4, !dbg !351
  %151 = load float** %5, align 4, !dbg !351
  %152 = getelementptr inbounds float* %151, i32 %150, !dbg !351
  store float %149, float* %152, align 4, !dbg !351
  %153 = load float* %weight_returnA_temp, align 4, !dbg !352
  %154 = load i32* %index_c1, align 4, !dbg !352
  %155 = load float** %6, align 4, !dbg !352
  %156 = getelementptr inbounds float* %155, i32 %154, !dbg !352
  store float %153, float* %156, align 4, !dbg !352
  %157 = load float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), align 4, !dbg !353
  %158 = load i32* %index_c1, align 4, !dbg !353
  %159 = load float** %10, align 4, !dbg !353
  %160 = getelementptr inbounds float* %159, i32 %158, !dbg !353
  store float %157, float* %160, align 4, !dbg !353
  %161 = load float* %lnReturn2, align 4, !dbg !354
  %162 = load i32* %index_c1, align 4, !dbg !354
  %163 = load float** %11, align 4, !dbg !354
  %164 = getelementptr inbounds float* %163, i32 %162, !dbg !354
  store float %161, float* %164, align 4, !dbg !354
  %165 = load float* %weight_returnSquareB_temp, align 4, !dbg !355
  %166 = load i32* %index_c1, align 4, !dbg !355
  %167 = load float** %12, align 4, !dbg !355
  %168 = getelementptr inbounds float* %167, i32 %166, !dbg !355
  store float %165, float* %168, align 4, !dbg !355
  %169 = load float* %weight_returnB_temp, align 4, !dbg !356
  %170 = load i32* %index_c1, align 4, !dbg !356
  %171 = load float** %13, align 4, !dbg !356
  %172 = getelementptr inbounds float* %171, i32 %170, !dbg !356
  store float %169, float* %172, align 4, !dbg !356
  %173 = load float* %weight_returnA_returnB_temp, align 4, !dbg !357
  %174 = load i32* %index_c1, align 4, !dbg !357
  %175 = load float** %14, align 4, !dbg !357
  %176 = getelementptr inbounds float* %175, i32 %174, !dbg !357
  store float %173, float* %176, align 4, !dbg !357
  %177 = load i32* %index_c1, align 4, !dbg !358
  %178 = add nsw i32 %177, 1, !dbg !358
  store i32 %178, i32* %index_c1, align 4, !dbg !358
  br label %214, !dbg !359

; <label>:179                                     ; preds = %106
  %180 = load float* %lnReturnA_temp, align 4, !dbg !360
  %181 = load i32* %index_c2, align 4, !dbg !360
  %182 = load float** %7, align 4, !dbg !360
  %183 = getelementptr inbounds float* %182, i32 %181, !dbg !360
  store float %180, float* %183, align 4, !dbg !360
  %184 = load float* %weight_returnSquareA_temp, align 4, !dbg !362
  %185 = load i32* %index_c2, align 4, !dbg !362
  %186 = load float** %8, align 4, !dbg !362
  %187 = getelementptr inbounds float* %186, i32 %185, !dbg !362
  store float %184, float* %187, align 4, !dbg !362
  %188 = load float* %weight_returnA_temp, align 4, !dbg !363
  %189 = load i32* %index_c2, align 4, !dbg !363
  %190 = load float** %9, align 4, !dbg !363
  %191 = getelementptr inbounds float* %190, i32 %189, !dbg !363
  store float %188, float* %191, align 4, !dbg !363
  %192 = load float* getelementptr inbounds ([252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom, i32 0, i32 0), align 4, !dbg !364
  %193 = load i32* %index_c2, align 4, !dbg !364
  %194 = load float** %15, align 4, !dbg !364
  %195 = getelementptr inbounds float* %194, i32 %193, !dbg !364
  store float %192, float* %195, align 4, !dbg !364
  %196 = load float* %lnReturn2, align 4, !dbg !365
  %197 = load i32* %index_c2, align 4, !dbg !365
  %198 = load float** %16, align 4, !dbg !365
  %199 = getelementptr inbounds float* %198, i32 %197, !dbg !365
  store float %196, float* %199, align 4, !dbg !365
  %200 = load float* %weight_returnSquareB_temp, align 4, !dbg !366
  %201 = load i32* %index_c2, align 4, !dbg !366
  %202 = load float** %17, align 4, !dbg !366
  %203 = getelementptr inbounds float* %202, i32 %201, !dbg !366
  store float %200, float* %203, align 4, !dbg !366
  %204 = load float* %weight_returnB_temp, align 4, !dbg !367
  %205 = load i32* %index_c2, align 4, !dbg !367
  %206 = load float** %18, align 4, !dbg !367
  %207 = getelementptr inbounds float* %206, i32 %205, !dbg !367
  store float %204, float* %207, align 4, !dbg !367
  %208 = load float* %weight_returnA_returnB_temp, align 4, !dbg !368
  %209 = load i32* %index_c2, align 4, !dbg !368
  %210 = load float** %19, align 4, !dbg !368
  %211 = getelementptr inbounds float* %210, i32 %209, !dbg !368
  store float %208, float* %211, align 4, !dbg !368
  %212 = load i32* %index_c2, align 4, !dbg !369
  %213 = add nsw i32 %212, 1, !dbg !369
  store i32 %213, i32* %index_c2, align 4, !dbg !369
  br label %214

; <label>:214                                     ; preds = %179, %144
  br label %215, !dbg !370

; <label>:215                                     ; preds = %214
  %216 = load i32* %i1, align 4, !dbg !371
  %217 = add nsw i32 %216, 1, !dbg !371
  store i32 %217, i32* %i1, align 4, !dbg !371
  br label %79, !dbg !371

; <label>:218                                     ; preds = %79
  br label %219, !dbg !372

; <label>:219                                     ; preds = %218
  %220 = load i32* %column_index, align 4, !dbg !373
  %221 = add nsw i32 %220, 1, !dbg !373
  store i32 %221, i32* %column_index, align 4, !dbg !373
  br label %65, !dbg !373

; <label>:222                                     ; preds = %65
  ret void, !dbg !374
}

; Function Attrs: nounwind
define void @_Z6midEndiiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, i32 %channel, float* %ln_returnA_in, float* %weight_returnSquareA_in, float* %weight_returnA_in, float* %sum_weight_in, float* %ln_returnB_in, float* %weight_returnSquareB_in, float* %weight_returnB_in, float* %weight_returnA_returnB_in, float* %sum_weight_out, float* %sum_return_out, float* %sum_weight_returnSquare_out, float* %sum_weight_return_out, float* %sum_weight_returnA_returnB_out, float* %sum_returnA_out, float* %sum_weight_returnSquareA_out, float* %sum_weight_returnA_out) #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float*, align 4
  %5 = alloca float*, align 4
  %6 = alloca float*, align 4
  %7 = alloca float*, align 4
  %8 = alloca float*, align 4
  %9 = alloca float*, align 4
  %10 = alloca float*, align 4
  %11 = alloca float*, align 4
  %12 = alloca float*, align 4
  %13 = alloca float*, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
  %16 = alloca float*, align 4
  %17 = alloca float*, align 4
  %18 = alloca float*, align 4
  %19 = alloca float*, align 4
  %upper_bound = alloca i32, align 4
  %column_index = alloca i32, align 4
  %acc_returnA = alloca [6 x float], align 4
  %acc_weight_returnSquareA = alloca [6 x float], align 4
  %acc_weight_returnA = alloca [6 x float], align 4
  %acc_returnB = alloca [6 x float], align 4
  %acc_weight_returnSquareB = alloca [6 x float], align 4
  %acc_weight_returnB = alloca [6 x float], align 4
  %acc_weight_returnA_returnB = alloca [6 x float], align 4
  %sum_returnA = alloca float, align 4
  %sum_weight_returnSquareA = alloca float, align 4
  %sum_weight_returnA = alloca float, align 4
  %sum_returnB = alloca float, align 4
  %sum_weight_returnSquareB = alloca float, align 4
  %sum_weight_returnB = alloca float, align 4
  %sum_weight_returnA_returnB = alloca float, align 4
  %sum_weight = alloca float, align 4
  %index = alloca i32, align 4
  %index_channel = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %lnReturnA_temp = alloca float, align 4
  %weight_returnA_temp = alloca float, align 4
  %weight_returnSquareA_temp = alloca float, align 4
  %lnReturnB_temp = alloca float, align 4
  %weight_returnB_temp = alloca float, align 4
  %weight_returnSquareB_temp = alloca float, align 4
  %weight_returnA_returnB_temp = alloca float, align 4
  %channel_id = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 %NUMBER_OF_DAYS, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !375), !dbg !376
  store i32 %NUMBER_OF_INDICES, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !377), !dbg !378
  store i32 %channel, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !379), !dbg !380
  store float* %ln_returnA_in, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !381), !dbg !382
  store float* %weight_returnSquareA_in, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !383), !dbg !384
  store float* %weight_returnA_in, float** %6, align 4
  call void @llvm.dbg.declare(metadata !{float** %6}, metadata !385), !dbg !386
  store float* %sum_weight_in, float** %7, align 4
  call void @llvm.dbg.declare(metadata !{float** %7}, metadata !387), !dbg !388
  store float* %ln_returnB_in, float** %8, align 4
  call void @llvm.dbg.declare(metadata !{float** %8}, metadata !389), !dbg !390
  store float* %weight_returnSquareB_in, float** %9, align 4
  call void @llvm.dbg.declare(metadata !{float** %9}, metadata !391), !dbg !392
  store float* %weight_returnB_in, float** %10, align 4
  call void @llvm.dbg.declare(metadata !{float** %10}, metadata !393), !dbg !394
  store float* %weight_returnA_returnB_in, float** %11, align 4
  call void @llvm.dbg.declare(metadata !{float** %11}, metadata !395), !dbg !396
  store float* %sum_weight_out, float** %12, align 4
  call void @llvm.dbg.declare(metadata !{float** %12}, metadata !397), !dbg !398
  store float* %sum_return_out, float** %13, align 4
  call void @llvm.dbg.declare(metadata !{float** %13}, metadata !399), !dbg !400
  store float* %sum_weight_returnSquare_out, float** %14, align 4
  call void @llvm.dbg.declare(metadata !{float** %14}, metadata !401), !dbg !402
  store float* %sum_weight_return_out, float** %15, align 4
  call void @llvm.dbg.declare(metadata !{float** %15}, metadata !403), !dbg !404
  store float* %sum_weight_returnA_returnB_out, float** %16, align 4
  call void @llvm.dbg.declare(metadata !{float** %16}, metadata !405), !dbg !406
  store float* %sum_returnA_out, float** %17, align 4
  call void @llvm.dbg.declare(metadata !{float** %17}, metadata !407), !dbg !408
  store float* %sum_weight_returnSquareA_out, float** %18, align 4
  call void @llvm.dbg.declare(metadata !{float** %18}, metadata !409), !dbg !410
  store float* %sum_weight_returnA_out, float** %19, align 4
  call void @llvm.dbg.declare(metadata !{float** %19}, metadata !411), !dbg !412
  call void @llvm.dbg.declare(metadata !{i32* %upper_bound}, metadata !413), !dbg !414
  %20 = load i32* %2, align 4, !dbg !415
  %21 = load i32* %3, align 4, !dbg !415
  %22 = sub nsw i32 %20, %21, !dbg !415
  %23 = sdiv i32 %22, 2, !dbg !415
  store i32 %23, i32* %upper_bound, align 4, !dbg !415
  call void @llvm.dbg.declare(metadata !{i32* %column_index}, metadata !416), !dbg !418
  store i32 1, i32* %column_index, align 4, !dbg !419
  br label %24, !dbg !419

; <label>:24                                      ; preds = %248, %0
  %25 = load i32* %column_index, align 4, !dbg !420
  %26 = load i32* %upper_bound, align 4, !dbg !420
  %27 = icmp sle i32 %25, %26, !dbg !420
  br i1 %27, label %28, label %251, !dbg !420

; <label>:28                                      ; preds = %24
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnA}, metadata !423), !dbg !428
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareA}, metadata !429), !dbg !430
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA}, metadata !431), !dbg !432
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_returnB}, metadata !433), !dbg !434
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnSquareB}, metadata !435), !dbg !436
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnB}, metadata !437), !dbg !438
  call void @llvm.dbg.declare(metadata !{[6 x float]* %acc_weight_returnA_returnB}, metadata !439), !dbg !440
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA}, metadata !441), !dbg !442
  store float 0.000000e+00, float* %sum_returnA, align 4, !dbg !443
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA}, metadata !444), !dbg !445
  store float 0.000000e+00, float* %sum_weight_returnSquareA, align 4, !dbg !446
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA}, metadata !447), !dbg !448
  store float 0.000000e+00, float* %sum_weight_returnA, align 4, !dbg !449
  call void @llvm.dbg.declare(metadata !{float* %sum_returnB}, metadata !450), !dbg !451
  store float 0.000000e+00, float* %sum_returnB, align 4, !dbg !452
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareB}, metadata !453), !dbg !454
  store float 0.000000e+00, float* %sum_weight_returnSquareB, align 4, !dbg !455
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnB}, metadata !456), !dbg !457
  store float 0.000000e+00, float* %sum_weight_returnB, align 4, !dbg !458
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB}, metadata !459), !dbg !460
  store float 0.000000e+00, float* %sum_weight_returnA_returnB, align 4, !dbg !461
  call void @llvm.dbg.declare(metadata !{float* %sum_weight}, metadata !462), !dbg !463
  store float 0.000000e+00, float* %sum_weight, align 4, !dbg !464
  call void @llvm.dbg.declare(metadata !{i32* %index}, metadata !465), !dbg !466
  %29 = load i32* %column_index, align 4, !dbg !467
  %30 = load i32* %1, align 4, !dbg !467
  %31 = mul nsw i32 %29, %30, !dbg !467
  store i32 %31, i32* %index, align 4, !dbg !467
  call void @llvm.dbg.declare(metadata !{i32* %index_channel}, metadata !468), !dbg !469
  %32 = load i32* %column_index, align 4, !dbg !470
  %33 = sub nsw i32 %32, 1, !dbg !470
  %34 = load i32* %1, align 4, !dbg !470
  %35 = sub nsw i32 %34, 1, !dbg !470
  %36 = mul nsw i32 %33, %35, !dbg !470
  store i32 %36, i32* %index_channel, align 4, !dbg !470
  br label %37, !dbg !470

; <label>:37                                      ; preds = %28
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !471), !dbg !473
  store i32 0, i32* %i, align 4, !dbg !474
  br label %38, !dbg !474

; <label>:38                                      ; preds = %56, %37
  %39 = load i32* %i, align 4, !dbg !475
  %40 = icmp slt i32 %39, 6, !dbg !475
  br i1 %40, label %41, label %59, !dbg !475

; <label>:41                                      ; preds = %38
  %42 = load i32* %i, align 4, !dbg !478
  %43 = getelementptr inbounds [6 x float]* %acc_returnB, i32 0, i32 %42, !dbg !478
  store float 0.000000e+00, float* %43, align 4, !dbg !478
  %44 = load i32* %i, align 4, !dbg !480
  %45 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i32 0, i32 %44, !dbg !480
  store float 0.000000e+00, float* %45, align 4, !dbg !480
  %46 = load i32* %i, align 4, !dbg !481
  %47 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i32 0, i32 %46, !dbg !481
  store float 0.000000e+00, float* %47, align 4, !dbg !481
  %48 = load i32* %i, align 4, !dbg !482
  %49 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %48, !dbg !482
  store float 0.000000e+00, float* %49, align 4, !dbg !482
  %50 = load i32* %i, align 4, !dbg !483
  %51 = getelementptr inbounds [6 x float]* %acc_returnA, i32 0, i32 %50, !dbg !483
  store float 0.000000e+00, float* %51, align 4, !dbg !483
  %52 = load i32* %i, align 4, !dbg !484
  %53 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i32 0, i32 %52, !dbg !484
  store float 0.000000e+00, float* %53, align 4, !dbg !484
  %54 = load i32* %i, align 4, !dbg !485
  %55 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i32 0, i32 %54, !dbg !485
  store float 0.000000e+00, float* %55, align 4, !dbg !485
  br label %56, !dbg !486

; <label>:56                                      ; preds = %41
  %57 = load i32* %i, align 4, !dbg !487
  %58 = add nsw i32 %57, 1, !dbg !487
  store i32 %58, i32* %i, align 4, !dbg !487
  br label %38, !dbg !487

; <label>:59                                      ; preds = %38
  br label %60, !dbg !488

; <label>:60                                      ; preds = %59
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !489), !dbg !491
  store i32 1, i32* %i1, align 4, !dbg !492
  br label %61, !dbg !492

; <label>:61                                      ; preds = %160, %60
  %62 = load i32* %i1, align 4, !dbg !493
  %63 = load i32* %1, align 4, !dbg !493
  %64 = sub nsw i32 %63, 1, !dbg !493
  %65 = icmp sle i32 %62, %64, !dbg !493
  br i1 %65, label %66, label %163, !dbg !493

; <label>:66                                      ; preds = %61
  call void @llvm.dbg.declare(metadata !{float* %lnReturnA_temp}, metadata !496), !dbg !498
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_temp}, metadata !499), !dbg !500
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareA_temp}, metadata !501), !dbg !502
  call void @llvm.dbg.declare(metadata !{float* %lnReturnB_temp}, metadata !503), !dbg !504
  call void @llvm.dbg.declare(metadata !{float* %weight_returnB_temp}, metadata !505), !dbg !506
  call void @llvm.dbg.declare(metadata !{float* %weight_returnSquareB_temp}, metadata !507), !dbg !508
  call void @llvm.dbg.declare(metadata !{float* %weight_returnA_returnB_temp}, metadata !509), !dbg !510
  call void @llvm.dbg.declare(metadata !{i32* %channel_id}, metadata !511), !dbg !512
  %67 = load i32* %i1, align 4, !dbg !513
  %68 = srem i32 %67, 6, !dbg !513
  store i32 %68, i32* %channel_id, align 4, !dbg !513
  %69 = load i32* %i1, align 4, !dbg !514
  %70 = sub nsw i32 %69, 1, !dbg !514
  %71 = load i32* %index_channel, align 4, !dbg !514
  %72 = add nsw i32 %70, %71, !dbg !514
  %73 = load float** %7, align 4, !dbg !514
  %74 = getelementptr inbounds float* %73, i32 %72, !dbg !514
  %75 = load float* %74, align 4, !dbg !514
  store float %75, float* %sum_weight, align 4, !dbg !514
  %76 = load i32* %i1, align 4, !dbg !515
  %77 = sub nsw i32 %76, 1, !dbg !515
  %78 = load i32* %index_channel, align 4, !dbg !515
  %79 = add nsw i32 %77, %78, !dbg !515
  %80 = load float** %4, align 4, !dbg !515
  %81 = getelementptr inbounds float* %80, i32 %79, !dbg !515
  %82 = load float* %81, align 4, !dbg !515
  store float %82, float* %lnReturnA_temp, align 4, !dbg !515
  %83 = load i32* %i1, align 4, !dbg !516
  %84 = sub nsw i32 %83, 1, !dbg !516
  %85 = load i32* %index_channel, align 4, !dbg !516
  %86 = add nsw i32 %84, %85, !dbg !516
  %87 = load float** %6, align 4, !dbg !516
  %88 = getelementptr inbounds float* %87, i32 %86, !dbg !516
  %89 = load float* %88, align 4, !dbg !516
  store float %89, float* %weight_returnA_temp, align 4, !dbg !516
  %90 = load i32* %i1, align 4, !dbg !517
  %91 = sub nsw i32 %90, 1, !dbg !517
  %92 = load i32* %index_channel, align 4, !dbg !517
  %93 = add nsw i32 %91, %92, !dbg !517
  %94 = load float** %5, align 4, !dbg !517
  %95 = getelementptr inbounds float* %94, i32 %93, !dbg !517
  %96 = load float* %95, align 4, !dbg !517
  store float %96, float* %weight_returnSquareA_temp, align 4, !dbg !517
  %97 = load i32* %i1, align 4, !dbg !518
  %98 = sub nsw i32 %97, 1, !dbg !518
  %99 = load i32* %index_channel, align 4, !dbg !518
  %100 = add nsw i32 %98, %99, !dbg !518
  %101 = load float** %8, align 4, !dbg !518
  %102 = getelementptr inbounds float* %101, i32 %100, !dbg !518
  %103 = load float* %102, align 4, !dbg !518
  store float %103, float* %lnReturnB_temp, align 4, !dbg !518
  %104 = load i32* %i1, align 4, !dbg !519
  %105 = sub nsw i32 %104, 1, !dbg !519
  %106 = load i32* %index_channel, align 4, !dbg !519
  %107 = add nsw i32 %105, %106, !dbg !519
  %108 = load float** %10, align 4, !dbg !519
  %109 = getelementptr inbounds float* %108, i32 %107, !dbg !519
  %110 = load float* %109, align 4, !dbg !519
  store float %110, float* %weight_returnB_temp, align 4, !dbg !519
  %111 = load i32* %i1, align 4, !dbg !520
  %112 = sub nsw i32 %111, 1, !dbg !520
  %113 = load i32* %index_channel, align 4, !dbg !520
  %114 = add nsw i32 %112, %113, !dbg !520
  %115 = load float** %9, align 4, !dbg !520
  %116 = getelementptr inbounds float* %115, i32 %114, !dbg !520
  %117 = load float* %116, align 4, !dbg !520
  store float %117, float* %weight_returnSquareB_temp, align 4, !dbg !520
  %118 = load i32* %i1, align 4, !dbg !521
  %119 = sub nsw i32 %118, 1, !dbg !521
  %120 = load i32* %index_channel, align 4, !dbg !521
  %121 = add nsw i32 %119, %120, !dbg !521
  %122 = load float** %11, align 4, !dbg !521
  %123 = getelementptr inbounds float* %122, i32 %121, !dbg !521
  %124 = load float* %123, align 4, !dbg !521
  store float %124, float* %weight_returnA_returnB_temp, align 4, !dbg !521
  %125 = load float* %lnReturnA_temp, align 4, !dbg !522
  %126 = load i32* %channel_id, align 4, !dbg !522
  %127 = getelementptr inbounds [6 x float]* %acc_returnA, i32 0, i32 %126, !dbg !522
  %128 = load float* %127, align 4, !dbg !522
  %129 = fadd float %128, %125, !dbg !522
  store float %129, float* %127, align 4, !dbg !522
  %130 = load float* %weight_returnSquareA_temp, align 4, !dbg !523
  %131 = load i32* %channel_id, align 4, !dbg !523
  %132 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i32 0, i32 %131, !dbg !523
  %133 = load float* %132, align 4, !dbg !523
  %134 = fadd float %133, %130, !dbg !523
  store float %134, float* %132, align 4, !dbg !523
  %135 = load float* %weight_returnA_temp, align 4, !dbg !524
  %136 = load i32* %channel_id, align 4, !dbg !524
  %137 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i32 0, i32 %136, !dbg !524
  %138 = load float* %137, align 4, !dbg !524
  %139 = fadd float %138, %135, !dbg !524
  store float %139, float* %137, align 4, !dbg !524
  %140 = load float* %lnReturnB_temp, align 4, !dbg !525
  %141 = load i32* %channel_id, align 4, !dbg !525
  %142 = getelementptr inbounds [6 x float]* %acc_returnB, i32 0, i32 %141, !dbg !525
  %143 = load float* %142, align 4, !dbg !525
  %144 = fadd float %143, %140, !dbg !525
  store float %144, float* %142, align 4, !dbg !525
  %145 = load float* %weight_returnSquareB_temp, align 4, !dbg !526
  %146 = load i32* %channel_id, align 4, !dbg !526
  %147 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i32 0, i32 %146, !dbg !526
  %148 = load float* %147, align 4, !dbg !526
  %149 = fadd float %148, %145, !dbg !526
  store float %149, float* %147, align 4, !dbg !526
  %150 = load float* %weight_returnB_temp, align 4, !dbg !527
  %151 = load i32* %channel_id, align 4, !dbg !527
  %152 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i32 0, i32 %151, !dbg !527
  %153 = load float* %152, align 4, !dbg !527
  %154 = fadd float %153, %150, !dbg !527
  store float %154, float* %152, align 4, !dbg !527
  %155 = load float* %weight_returnA_returnB_temp, align 4, !dbg !528
  %156 = load i32* %channel_id, align 4, !dbg !528
  %157 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %156, !dbg !528
  %158 = load float* %157, align 4, !dbg !528
  %159 = fadd float %158, %155, !dbg !528
  store float %159, float* %157, align 4, !dbg !528
  br label %160, !dbg !529

; <label>:160                                     ; preds = %66
  %161 = load i32* %i1, align 4, !dbg !530
  %162 = add nsw i32 %161, 1, !dbg !530
  store i32 %162, i32* %i1, align 4, !dbg !530
  br label %61, !dbg !530

; <label>:163                                     ; preds = %61
  br label %164, !dbg !531

; <label>:164                                     ; preds = %163
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !532), !dbg !534
  store i32 0, i32* %i2, align 4, !dbg !535
  br label %165, !dbg !535

; <label>:165                                     ; preds = %204, %164
  %166 = load i32* %i2, align 4, !dbg !536
  %167 = icmp slt i32 %166, 6, !dbg !536
  br i1 %167, label %168, label %207, !dbg !536

; <label>:168                                     ; preds = %165
  %169 = load i32* %i2, align 4, !dbg !539
  %170 = getelementptr inbounds [6 x float]* %acc_returnA, i32 0, i32 %169, !dbg !539
  %171 = load float* %170, align 4, !dbg !539
  %172 = load float* %sum_returnA, align 4, !dbg !539
  %173 = fadd float %172, %171, !dbg !539
  store float %173, float* %sum_returnA, align 4, !dbg !539
  %174 = load i32* %i2, align 4, !dbg !541
  %175 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareA, i32 0, i32 %174, !dbg !541
  %176 = load float* %175, align 4, !dbg !541
  %177 = load float* %sum_weight_returnSquareA, align 4, !dbg !541
  %178 = fadd float %177, %176, !dbg !541
  store float %178, float* %sum_weight_returnSquareA, align 4, !dbg !541
  %179 = load i32* %i2, align 4, !dbg !542
  %180 = getelementptr inbounds [6 x float]* %acc_weight_returnA, i32 0, i32 %179, !dbg !542
  %181 = load float* %180, align 4, !dbg !542
  %182 = load float* %sum_weight_returnA, align 4, !dbg !542
  %183 = fadd float %182, %181, !dbg !542
  store float %183, float* %sum_weight_returnA, align 4, !dbg !542
  %184 = load i32* %i2, align 4, !dbg !543
  %185 = getelementptr inbounds [6 x float]* %acc_returnB, i32 0, i32 %184, !dbg !543
  %186 = load float* %185, align 4, !dbg !543
  %187 = load float* %sum_returnB, align 4, !dbg !543
  %188 = fadd float %187, %186, !dbg !543
  store float %188, float* %sum_returnB, align 4, !dbg !543
  %189 = load i32* %i2, align 4, !dbg !544
  %190 = getelementptr inbounds [6 x float]* %acc_weight_returnSquareB, i32 0, i32 %189, !dbg !544
  %191 = load float* %190, align 4, !dbg !544
  %192 = load float* %sum_weight_returnSquareB, align 4, !dbg !544
  %193 = fadd float %192, %191, !dbg !544
  store float %193, float* %sum_weight_returnSquareB, align 4, !dbg !544
  %194 = load i32* %i2, align 4, !dbg !545
  %195 = getelementptr inbounds [6 x float]* %acc_weight_returnB, i32 0, i32 %194, !dbg !545
  %196 = load float* %195, align 4, !dbg !545
  %197 = load float* %sum_weight_returnB, align 4, !dbg !545
  %198 = fadd float %197, %196, !dbg !545
  store float %198, float* %sum_weight_returnB, align 4, !dbg !545
  %199 = load i32* %i2, align 4, !dbg !546
  %200 = getelementptr inbounds [6 x float]* %acc_weight_returnA_returnB, i32 0, i32 %199, !dbg !546
  %201 = load float* %200, align 4, !dbg !546
  %202 = load float* %sum_weight_returnA_returnB, align 4, !dbg !546
  %203 = fadd float %202, %201, !dbg !546
  store float %203, float* %sum_weight_returnA_returnB, align 4, !dbg !546
  br label %204, !dbg !547

; <label>:204                                     ; preds = %168
  %205 = load i32* %i2, align 4, !dbg !548
  %206 = add nsw i32 %205, 1, !dbg !548
  store i32 %206, i32* %i2, align 4, !dbg !548
  br label %165, !dbg !548

; <label>:207                                     ; preds = %165
  %208 = load float* %sum_weight, align 4, !dbg !549
  %209 = load i32* %column_index, align 4, !dbg !549
  %210 = sub nsw i32 %209, 1, !dbg !549
  %211 = load float** %12, align 4, !dbg !549
  %212 = getelementptr inbounds float* %211, i32 %210, !dbg !549
  store float %208, float* %212, align 4, !dbg !549
  %213 = load float* %sum_returnB, align 4, !dbg !550
  %214 = load i32* %column_index, align 4, !dbg !550
  %215 = sub nsw i32 %214, 1, !dbg !550
  %216 = load float** %13, align 4, !dbg !550
  %217 = getelementptr inbounds float* %216, i32 %215, !dbg !550
  store float %213, float* %217, align 4, !dbg !550
  %218 = load float* %sum_weight_returnSquareB, align 4, !dbg !551
  %219 = load i32* %column_index, align 4, !dbg !551
  %220 = sub nsw i32 %219, 1, !dbg !551
  %221 = load float** %14, align 4, !dbg !551
  %222 = getelementptr inbounds float* %221, i32 %220, !dbg !551
  store float %218, float* %222, align 4, !dbg !551
  %223 = load float* %sum_weight_returnB, align 4, !dbg !552
  %224 = load i32* %column_index, align 4, !dbg !552
  %225 = sub nsw i32 %224, 1, !dbg !552
  %226 = load float** %15, align 4, !dbg !552
  %227 = getelementptr inbounds float* %226, i32 %225, !dbg !552
  store float %223, float* %227, align 4, !dbg !552
  %228 = load float* %sum_weight_returnA_returnB, align 4, !dbg !553
  %229 = load i32* %column_index, align 4, !dbg !553
  %230 = sub nsw i32 %229, 1, !dbg !553
  %231 = load float** %16, align 4, !dbg !553
  %232 = getelementptr inbounds float* %231, i32 %230, !dbg !553
  store float %228, float* %232, align 4, !dbg !553
  %233 = load float* %sum_returnA, align 4, !dbg !554
  %234 = load i32* %column_index, align 4, !dbg !554
  %235 = sub nsw i32 %234, 1, !dbg !554
  %236 = load float** %17, align 4, !dbg !554
  %237 = getelementptr inbounds float* %236, i32 %235, !dbg !554
  store float %233, float* %237, align 4, !dbg !554
  %238 = load float* %sum_weight_returnSquareA, align 4, !dbg !555
  %239 = load i32* %column_index, align 4, !dbg !555
  %240 = sub nsw i32 %239, 1, !dbg !555
  %241 = load float** %18, align 4, !dbg !555
  %242 = getelementptr inbounds float* %241, i32 %240, !dbg !555
  store float %238, float* %242, align 4, !dbg !555
  %243 = load float* %sum_weight_returnA, align 4, !dbg !556
  %244 = load i32* %column_index, align 4, !dbg !556
  %245 = sub nsw i32 %244, 1, !dbg !556
  %246 = load float** %19, align 4, !dbg !556
  %247 = getelementptr inbounds float* %246, i32 %245, !dbg !556
  store float %243, float* %247, align 4, !dbg !556
  br label %248, !dbg !557

; <label>:248                                     ; preds = %207
  %249 = load i32* %column_index, align 4, !dbg !558
  %250 = add nsw i32 %249, 1, !dbg !558
  store i32 %250, i32* %column_index, align 4, !dbg !558
  br label %24, !dbg !558

; <label>:251                                     ; preds = %24
  ret void, !dbg !559
}

; Function Attrs: nounwind
define void @_Z7backEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_(i32 %NUMBER_OF_DAYS, i32 %NUMBER_OF_INDICES, float* %sum_weight_in_c1, float* %sum_return_in_c1, float* %sum_weight_returnSquare_in_c1, float* %sum_weight_return_in_c1, float* %sum_weight_returnA_returnB_in_c1, float* %sum_returnA_in_c1, float* %sum_weight_returnSquareA_in_c1, float* %sum_weight_returnA_in_c1, float* %sum_weight_in_c2, float* %sum_return_in_c2, float* %sum_weight_returnSquare_in_c2, float* %sum_weight_return_in_c2, float* %sum_weight_returnA_returnB_in_c2, float* %sum_returnA_in_c2, float* %sum_weight_returnSquareA_in_c2, float* %sum_weight_returnA_in_c2, float* %out_correlation) #3 {
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
  %12 = alloca float*, align 4
  %13 = alloca float*, align 4
  %14 = alloca float*, align 4
  %15 = alloca float*, align 4
  %16 = alloca float*, align 4
  %17 = alloca float*, align 4
  %18 = alloca float*, align 4
  %19 = alloca float*, align 4
  %index_c1 = alloca i32, align 4
  %index_c2 = alloca i32, align 4
  %sum_weight = alloca float, align 4
  %sum_return = alloca float, align 4
  %sum_weight_returnSquare = alloca float, align 4
  %sum_weight_return = alloca float, align 4
  %sum_weight_returnA_returnB = alloca float, align 4
  %sum_returnA = alloca float, align 4
  %sum_weight_returnSquareA = alloca float, align 4
  %sum_weight_returnA = alloca float, align 4
  %column_index = alloca i32, align 4
  %meanReturnA = alloca float, align 4
  %meanReturnB = alloca float, align 4
  %volatilityA = alloca float, align 4
  %volatilityB = alloca float, align 4
  %covariance = alloca float, align 4
  %corr_temp = alloca float, align 4
  store i32 %NUMBER_OF_DAYS, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !560), !dbg !561
  store i32 %NUMBER_OF_INDICES, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !562), !dbg !563
  store float* %sum_weight_in_c1, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !564), !dbg !565
  store float* %sum_return_in_c1, float** %4, align 4
  call void @llvm.dbg.declare(metadata !{float** %4}, metadata !566), !dbg !567
  store float* %sum_weight_returnSquare_in_c1, float** %5, align 4
  call void @llvm.dbg.declare(metadata !{float** %5}, metadata !568), !dbg !569
  store float* %sum_weight_return_in_c1, float** %6, align 4
  call void @llvm.dbg.declare(metadata !{float** %6}, metadata !570), !dbg !571
  store float* %sum_weight_returnA_returnB_in_c1, float** %7, align 4
  call void @llvm.dbg.declare(metadata !{float** %7}, metadata !572), !dbg !573
  store float* %sum_returnA_in_c1, float** %8, align 4
  call void @llvm.dbg.declare(metadata !{float** %8}, metadata !574), !dbg !575
  store float* %sum_weight_returnSquareA_in_c1, float** %9, align 4
  call void @llvm.dbg.declare(metadata !{float** %9}, metadata !576), !dbg !577
  store float* %sum_weight_returnA_in_c1, float** %10, align 4
  call void @llvm.dbg.declare(metadata !{float** %10}, metadata !578), !dbg !579
  store float* %sum_weight_in_c2, float** %11, align 4
  call void @llvm.dbg.declare(metadata !{float** %11}, metadata !580), !dbg !581
  store float* %sum_return_in_c2, float** %12, align 4
  call void @llvm.dbg.declare(metadata !{float** %12}, metadata !582), !dbg !583
  store float* %sum_weight_returnSquare_in_c2, float** %13, align 4
  call void @llvm.dbg.declare(metadata !{float** %13}, metadata !584), !dbg !585
  store float* %sum_weight_return_in_c2, float** %14, align 4
  call void @llvm.dbg.declare(metadata !{float** %14}, metadata !586), !dbg !587
  store float* %sum_weight_returnA_returnB_in_c2, float** %15, align 4
  call void @llvm.dbg.declare(metadata !{float** %15}, metadata !588), !dbg !589
  store float* %sum_returnA_in_c2, float** %16, align 4
  call void @llvm.dbg.declare(metadata !{float** %16}, metadata !590), !dbg !591
  store float* %sum_weight_returnSquareA_in_c2, float** %17, align 4
  call void @llvm.dbg.declare(metadata !{float** %17}, metadata !592), !dbg !593
  store float* %sum_weight_returnA_in_c2, float** %18, align 4
  call void @llvm.dbg.declare(metadata !{float** %18}, metadata !594), !dbg !595
  store float* %out_correlation, float** %19, align 4
  call void @llvm.dbg.declare(metadata !{float** %19}, metadata !596), !dbg !597
  call void @llvm.dbg.declare(metadata !{i32* %index_c1}, metadata !598), !dbg !599
  store i32 0, i32* %index_c1, align 4, !dbg !600
  call void @llvm.dbg.declare(metadata !{i32* %index_c2}, metadata !601), !dbg !602
  store i32 0, i32* %index_c2, align 4, !dbg !603
  call void @llvm.dbg.declare(metadata !{float* %sum_weight}, metadata !604), !dbg !605
  call void @llvm.dbg.declare(metadata !{float* %sum_return}, metadata !606), !dbg !607
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquare}, metadata !608), !dbg !609
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_return}, metadata !610), !dbg !611
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA_returnB}, metadata !612), !dbg !613
  call void @llvm.dbg.declare(metadata !{float* %sum_returnA}, metadata !614), !dbg !615
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnSquareA}, metadata !616), !dbg !617
  call void @llvm.dbg.declare(metadata !{float* %sum_weight_returnA}, metadata !618), !dbg !619
  call void @llvm.dbg.declare(metadata !{i32* %column_index}, metadata !620), !dbg !622
  store i32 1, i32* %column_index, align 4, !dbg !623
  br label %20, !dbg !623

; <label>:20                                      ; preds = %160, %0
  %21 = load i32* %column_index, align 4, !dbg !624
  %22 = load i32* %2, align 4, !dbg !624
  %23 = icmp slt i32 %21, %22, !dbg !624
  br i1 %23, label %24, label %163, !dbg !624

; <label>:24                                      ; preds = %20
  %25 = load i32* %column_index, align 4, !dbg !627
  %26 = srem i32 %25, 2, !dbg !627
  %27 = icmp eq i32 %26, 1, !dbg !627
  br i1 %27, label %28, label %63, !dbg !627

; <label>:28                                      ; preds = %24
  %29 = load i32* %index_c1, align 4, !dbg !630
  %30 = load float** %3, align 4, !dbg !630
  %31 = getelementptr inbounds float* %30, i32 %29, !dbg !630
  %32 = load float* %31, align 4, !dbg !630
  store float %32, float* %sum_weight, align 4, !dbg !630
  %33 = load i32* %index_c1, align 4, !dbg !632
  %34 = load float** %4, align 4, !dbg !632
  %35 = getelementptr inbounds float* %34, i32 %33, !dbg !632
  %36 = load float* %35, align 4, !dbg !632
  store float %36, float* %sum_return, align 4, !dbg !632
  %37 = load i32* %index_c1, align 4, !dbg !633
  %38 = load float** %5, align 4, !dbg !633
  %39 = getelementptr inbounds float* %38, i32 %37, !dbg !633
  %40 = load float* %39, align 4, !dbg !633
  store float %40, float* %sum_weight_returnSquare, align 4, !dbg !633
  %41 = load i32* %index_c1, align 4, !dbg !634
  %42 = load float** %6, align 4, !dbg !634
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !634
  %44 = load float* %43, align 4, !dbg !634
  store float %44, float* %sum_weight_return, align 4, !dbg !634
  %45 = load i32* %index_c1, align 4, !dbg !635
  %46 = load float** %7, align 4, !dbg !635
  %47 = getelementptr inbounds float* %46, i32 %45, !dbg !635
  %48 = load float* %47, align 4, !dbg !635
  store float %48, float* %sum_weight_returnA_returnB, align 4, !dbg !635
  %49 = load i32* %index_c1, align 4, !dbg !636
  %50 = load float** %8, align 4, !dbg !636
  %51 = getelementptr inbounds float* %50, i32 %49, !dbg !636
  %52 = load float* %51, align 4, !dbg !636
  store float %52, float* %sum_returnA, align 4, !dbg !636
  %53 = load i32* %index_c1, align 4, !dbg !637
  %54 = load float** %9, align 4, !dbg !637
  %55 = getelementptr inbounds float* %54, i32 %53, !dbg !637
  %56 = load float* %55, align 4, !dbg !637
  store float %56, float* %sum_weight_returnSquareA, align 4, !dbg !637
  %57 = load i32* %index_c1, align 4, !dbg !638
  %58 = load float** %10, align 4, !dbg !638
  %59 = getelementptr inbounds float* %58, i32 %57, !dbg !638
  %60 = load float* %59, align 4, !dbg !638
  store float %60, float* %sum_weight_returnA, align 4, !dbg !638
  %61 = load i32* %index_c1, align 4, !dbg !639
  %62 = add nsw i32 %61, 1, !dbg !639
  store i32 %62, i32* %index_c1, align 4, !dbg !639
  br label %98, !dbg !640

; <label>:63                                      ; preds = %24
  %64 = load i32* %index_c2, align 4, !dbg !641
  %65 = load float** %11, align 4, !dbg !641
  %66 = getelementptr inbounds float* %65, i32 %64, !dbg !641
  %67 = load float* %66, align 4, !dbg !641
  store float %67, float* %sum_weight, align 4, !dbg !641
  %68 = load i32* %index_c2, align 4, !dbg !643
  %69 = load float** %12, align 4, !dbg !643
  %70 = getelementptr inbounds float* %69, i32 %68, !dbg !643
  %71 = load float* %70, align 4, !dbg !643
  store float %71, float* %sum_return, align 4, !dbg !643
  %72 = load i32* %index_c2, align 4, !dbg !644
  %73 = load float** %13, align 4, !dbg !644
  %74 = getelementptr inbounds float* %73, i32 %72, !dbg !644
  %75 = load float* %74, align 4, !dbg !644
  store float %75, float* %sum_weight_returnSquare, align 4, !dbg !644
  %76 = load i32* %index_c2, align 4, !dbg !645
  %77 = load float** %14, align 4, !dbg !645
  %78 = getelementptr inbounds float* %77, i32 %76, !dbg !645
  %79 = load float* %78, align 4, !dbg !645
  store float %79, float* %sum_weight_return, align 4, !dbg !645
  %80 = load i32* %index_c2, align 4, !dbg !646
  %81 = load float** %15, align 4, !dbg !646
  %82 = getelementptr inbounds float* %81, i32 %80, !dbg !646
  %83 = load float* %82, align 4, !dbg !646
  store float %83, float* %sum_weight_returnA_returnB, align 4, !dbg !646
  %84 = load i32* %index_c2, align 4, !dbg !647
  %85 = load float** %16, align 4, !dbg !647
  %86 = getelementptr inbounds float* %85, i32 %84, !dbg !647
  %87 = load float* %86, align 4, !dbg !647
  store float %87, float* %sum_returnA, align 4, !dbg !647
  %88 = load i32* %index_c2, align 4, !dbg !648
  %89 = load float** %17, align 4, !dbg !648
  %90 = getelementptr inbounds float* %89, i32 %88, !dbg !648
  %91 = load float* %90, align 4, !dbg !648
  store float %91, float* %sum_weight_returnSquareA, align 4, !dbg !648
  %92 = load i32* %index_c2, align 4, !dbg !649
  %93 = load float** %18, align 4, !dbg !649
  %94 = getelementptr inbounds float* %93, i32 %92, !dbg !649
  %95 = load float* %94, align 4, !dbg !649
  store float %95, float* %sum_weight_returnA, align 4, !dbg !649
  %96 = load i32* %index_c2, align 4, !dbg !650
  %97 = add nsw i32 %96, 1, !dbg !650
  store i32 %97, i32* %index_c2, align 4, !dbg !650
  br label %98

; <label>:98                                      ; preds = %63, %28
  call void @llvm.dbg.declare(metadata !{float* %meanReturnA}, metadata !651), !dbg !652
  %99 = load float* %sum_returnA, align 4, !dbg !653
  %100 = load i32* %1, align 4, !dbg !653
  %101 = sub nsw i32 %100, 1, !dbg !653
  %102 = sitofp i32 %101 to float, !dbg !653
  %103 = fdiv float %99, %102, !dbg !653
  store float %103, float* %meanReturnA, align 4, !dbg !653
  call void @llvm.dbg.declare(metadata !{float* %meanReturnB}, metadata !654), !dbg !655
  %104 = load float* %sum_return, align 4, !dbg !656
  %105 = load i32* %1, align 4, !dbg !656
  %106 = sub nsw i32 %105, 1, !dbg !656
  %107 = sitofp i32 %106 to float, !dbg !656
  %108 = fdiv float %104, %107, !dbg !656
  store float %108, float* %meanReturnB, align 4, !dbg !656
  call void @llvm.dbg.declare(metadata !{float* %volatilityA}, metadata !657), !dbg !658
  %109 = load float* %sum_weight_returnSquareA, align 4, !dbg !659
  %110 = load float* %meanReturnA, align 4, !dbg !659
  %111 = fmul float 2.000000e+00, %110, !dbg !659
  %112 = load float* %sum_weight_returnA, align 4, !dbg !659
  %113 = fmul float %111, %112, !dbg !659
  %114 = fsub float %109, %113, !dbg !659
  %115 = load float* %sum_weight, align 4, !dbg !659
  %116 = fdiv float %114, %115, !dbg !659
  %117 = load float* %meanReturnA, align 4, !dbg !659
  %118 = load float* %meanReturnA, align 4, !dbg !659
  %119 = fmul float %117, %118, !dbg !659
  %120 = fadd float %116, %119, !dbg !659
  %121 = call float @sqrtf(float %120) #1, !dbg !659
  store float %121, float* %volatilityA, align 4, !dbg !659
  call void @llvm.dbg.declare(metadata !{float* %volatilityB}, metadata !660), !dbg !661
  %122 = load float* %sum_weight_returnSquare, align 4, !dbg !662
  %123 = load float* %meanReturnB, align 4, !dbg !662
  %124 = fmul float 2.000000e+00, %123, !dbg !662
  %125 = load float* %sum_weight_return, align 4, !dbg !662
  %126 = fmul float %124, %125, !dbg !662
  %127 = fsub float %122, %126, !dbg !662
  %128 = load float* %sum_weight, align 4, !dbg !662
  %129 = fdiv float %127, %128, !dbg !662
  %130 = load float* %meanReturnB, align 4, !dbg !662
  %131 = load float* %meanReturnB, align 4, !dbg !662
  %132 = fmul float %130, %131, !dbg !662
  %133 = fadd float %129, %132, !dbg !662
  %134 = call float @sqrtf(float %133) #1, !dbg !662
  store float %134, float* %volatilityB, align 4, !dbg !662
  call void @llvm.dbg.declare(metadata !{float* %covariance}, metadata !663), !dbg !664
  %135 = load float* %sum_weight_returnA_returnB, align 4, !dbg !665
  %136 = load float* %meanReturnA, align 4, !dbg !665
  %137 = load float* %sum_weight_return, align 4, !dbg !665
  %138 = fmul float %136, %137, !dbg !665
  %139 = fsub float %135, %138, !dbg !665
  %140 = load float* %meanReturnB, align 4, !dbg !665
  %141 = load float* %sum_weight_returnA, align 4, !dbg !665
  %142 = fmul float %140, %141, !dbg !665
  %143 = fsub float %139, %142, !dbg !665
  %144 = load float* %sum_weight, align 4, !dbg !665
  %145 = fdiv float %143, %144, !dbg !665
  %146 = load float* %meanReturnA, align 4, !dbg !665
  %147 = load float* %meanReturnB, align 4, !dbg !665
  %148 = fmul float %146, %147, !dbg !665
  %149 = fadd float %145, %148, !dbg !665
  store float %149, float* %covariance, align 4, !dbg !665
  call void @llvm.dbg.declare(metadata !{float* %corr_temp}, metadata !666), !dbg !667
  %150 = load float* %covariance, align 4, !dbg !668
  %151 = load float* %volatilityA, align 4, !dbg !668
  %152 = load float* %volatilityB, align 4, !dbg !668
  %153 = fmul float %151, %152, !dbg !668
  %154 = fdiv float %150, %153, !dbg !668
  store float %154, float* %corr_temp, align 4, !dbg !668
  %155 = load float* %corr_temp, align 4, !dbg !669
  %156 = load i32* %column_index, align 4, !dbg !669
  %157 = sub nsw i32 %156, 1, !dbg !669
  %158 = load float** %19, align 4, !dbg !669
  %159 = getelementptr inbounds float* %158, i32 %157, !dbg !669
  store float %155, float* %159, align 4, !dbg !669
  br label %160, !dbg !670

; <label>:160                                     ; preds = %98
  %161 = load i32* %column_index, align 4, !dbg !671
  %162 = add nsw i32 %161, 1, !dbg !671
  store i32 %162, i32* %column_index, align 4, !dbg !671
  br label %20, !dbg !671

; <label>:163                                     ; preds = %20
  ret void, !dbg !672
}

; Function Attrs: nounwind
define internal void @_ZL15weight_rom_initPfi(float* %weightRom, i32 %NUMBER_OF_DAYS) #3 {
  %1 = alloca float*, align 4
  %2 = alloca i32, align 4
  %lambda = alloca float, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store float* %weightRom, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !673), !dbg !674
  store i32 %NUMBER_OF_DAYS, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !675), !dbg !676
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !677), !dbg !678
  store float 0x3FEE147AE0000000, float* %lambda, align 4, !dbg !679
  %3 = load float** %1, align 4, !dbg !680
  %4 = getelementptr inbounds float* %3, i32 0, !dbg !680
  store float 1.000000e+00, float* %4, align 4, !dbg !680
  %5 = load float** %1, align 4, !dbg !681
  %6 = getelementptr inbounds float* %5, i32 1, !dbg !681
  store float 1.000000e+00, float* %6, align 4, !dbg !681
  br label %7, !dbg !681

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !682), !dbg !684
  store i32 2, i32* %i, align 4, !dbg !685
  br label %8, !dbg !685

; <label>:8                                       ; preds = %22, %7
  %9 = load i32* %i, align 4, !dbg !686
  %10 = icmp slt i32 %9, 252, !dbg !686
  br i1 %10, label %11, label %25, !dbg !686

; <label>:11                                      ; preds = %8
  %12 = load float* %lambda, align 4, !dbg !689
  %13 = load i32* %i, align 4, !dbg !689
  %14 = sub nsw i32 %13, 1, !dbg !689
  %15 = load float** %1, align 4, !dbg !689
  %16 = getelementptr inbounds float* %15, i32 %14, !dbg !689
  %17 = load float* %16, align 4, !dbg !689
  %18 = fmul float %12, %17, !dbg !689
  %19 = load i32* %i, align 4, !dbg !689
  %20 = load float** %1, align 4, !dbg !689
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !689
  store float %18, float* %21, align 4, !dbg !689
  br label %22, !dbg !691

; <label>:22                                      ; preds = %11
  %23 = load i32* %i, align 4, !dbg !692
  %24 = add nsw i32 %23, 1, !dbg !692
  store i32 %24, i32* %i, align 4, !dbg !692
  br label %8, !dbg !692

; <label>:25                                      ; preds = %8
  br label %26, !dbg !693

; <label>:26                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{i32* %i1}, metadata !694), !dbg !696
  store i32 2, i32* %i1, align 4, !dbg !697
  br label %27, !dbg !697

; <label>:27                                      ; preds = %40, %26
  %28 = load i32* %i1, align 4, !dbg !698
  %29 = load i32* %2, align 4, !dbg !698
  %30 = icmp slt i32 %28, %29, !dbg !698
  br i1 %30, label %31, label %43, !dbg !698

; <label>:31                                      ; preds = %27
  %32 = load i32* %i1, align 4, !dbg !701
  %33 = load float** %1, align 4, !dbg !701
  %34 = getelementptr inbounds float* %33, i32 %32, !dbg !701
  %35 = load float* %34, align 4, !dbg !701
  %36 = load float** %1, align 4, !dbg !701
  %37 = getelementptr inbounds float* %36, i32 0, !dbg !701
  %38 = load float* %37, align 4, !dbg !701
  %39 = fadd float %38, %35, !dbg !701
  store float %39, float* %37, align 4, !dbg !701
  br label %40, !dbg !703

; <label>:40                                      ; preds = %31
  %41 = load i32* %i1, align 4, !dbg !704
  %42 = add nsw i32 %41, 1, !dbg !704
  store i32 %42, i32* %i1, align 4, !dbg !704
  br label %27, !dbg !704

; <label>:43                                      ; preds = %27
  ret void, !dbg !705
}

; Function Attrs: nounwind
declare float @logf(float) #3

; Function Attrs: nounwind
declare float @sqrtf(float) #3

define internal void @_GLOBAL__sub_I_correlation_accel_v4.cpp() section ".text.startup" {
  call void @__cxx_global_var_init(), !dbg !706
  ret void, !dbg !706
}

attributes #0 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!103, !104, !105, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !117}
!xidane.function_declaration_filename = !{!103, !119, !105, !119, !106, !120, !108, !120, !110, !120, !112, !120, !114, !120, !116, !121, !118, !121}
!xidane.function_argument_annotation = !{!106, !122}
!xidane.ExternC = !{!116, !118}
!llvm.module.flags = !{!123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !3, metadata !37, metadata !63, metadata !70, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/../src/correlation_accel_v4.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src/correlation_accel_v4.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !10, metadata !12, metadata !16, metadata !28}
!4 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !6, i32 0, null, null, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!5 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wchar.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!6 = metadata !{metadata !7, metadata !9}
!7 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786445, metadata !5, metadata !"_ZTS11__mbstate_t", metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !"_ZTSN11__mbstate_tUt_E"} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from _ZTSN11__mbstate_tUt_E]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"lconv", i32 53, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTS5lconv"} ; [ DW_TAG_structure_type ] [lconv] [line 53, size 0, align 0, offset 0] [decl] [from ]
!11 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/locale.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!12 = metadata !{i32 786434, metadata !13, metadata !14, metadata !"ios_base", i32 199, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, metadata !"_ZTSSt8ios_base"} ; [ DW_TAG_class_type ] [ios_base] [line 199, size 0, align 0, offset 0] [decl] [from ]
!13 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/ios_base.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!14 = metadata !{i32 786489, metadata !15, null, metadata !"std", i32 184} ; [ DW_TAG_namespace ] [std] [line 184]
!15 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/arm-xilinx-linux-gnueabi/bits/c++config.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!16 = metadata !{i32 786434, metadata !13, metadata !"_ZTSSt8ios_base", metadata !"Init", i32 533, i64 8, i64 8, i32 0, i32 0, null, metadata !17, i32 0, null, null, metadata !"_ZTSNSt8ios_base4InitE"} ; [ DW_TAG_class_type ] [Init] [line 533, size 8, align 8, offset 0] [def] [from ]
!17 = metadata !{metadata !18, metadata !21, metadata !23, metadata !27}
!18 = metadata !{i32 786445, metadata !13, metadata !"_ZTSNSt8ios_base4InitE", metadata !"_S_refcount", i32 541, i64 0, i64 0, i64 0, i32 4097, metadata !19, null} ; [ DW_TAG_member ] [_S_refcount] [line 541, size 0, align 0, offset 0] [private] [static] [from _Atomic_word]
!19 = metadata !{i32 786454, metadata !20, null, metadata !"_Atomic_word", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [_Atomic_word] [line 32, size 0, align 0, offset 0] [from int]
!20 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/arm-xilinx-linux-gnueabi/bits/atomic_word.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
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
!37 = metadata !{metadata !38, metadata !43, metadata !50, metadata !53, metadata !56, metadata !57, metadata !60}
!38 = metadata !{i32 786478, metadata !39, metadata !40, metadata !"__cxx_global_var_init", metadata !"__cxx_global_var_init", metadata !"", i32 74, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__cxx_global_var_init, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [__cxx_global_var_init]
!39 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/iostream", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!40 = metadata !{i32 786473, metadata !39}        ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/iostream]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null}
!43 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"correlation_accel_v4", metadata !"correlation_accel_v4", metadata !"_Z20correlation_accel_v4iiPfS_", i32 40, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*)* @_Z20correlation_accel_v4iiPfS_, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 48] [correlation_accel_v4]
!44 = metadata !{metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!45 = metadata !{i32 786473, metadata !44}        ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !8, metadata !8, metadata !48, metadata !48}
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!49 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!50 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"frontEnd", metadata !"frontEnd", metadata !"_Z8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_", i32 350, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_, null, null, metadata !2, i32 375} ; [ DW_TAG_subprogram ] [line 350] [def] [scope 375] [frontEnd]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !8, metadata !8, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48}
!53 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"midEnd", metadata !"midEnd", metadata !"_Z6midEndiiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_", i32 607, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z6midEndiiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_, null, null, metadata !2, i32 632} ; [ DW_TAG_subprogram ] [line 607] [def] [scope 632] [midEnd]
!54 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48, metadata !48}
!56 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"backEnd", metadata !"backEnd", metadata !"_Z7backEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_", i32 806, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z7backEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_, null, null, metadata !2, i32 831} ; [ DW_TAG_subprogram ] [line 806] [def] [scope 831] [backEnd]
!57 = metadata !{i32 786478, metadata !44, metadata !45, metadata !"weight_rom_init", metadata !"weight_rom_init", metadata !"_ZL15weight_rom_initPfi", i32 302, metadata !58, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32)* @_ZL15weight_rom_initPfi, null, null, metadata !2, i32 305} ; [ DW_TAG_subprogram ] [line 302] [local] [def] [scope 305] [weight_rom_init]
!58 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !48, metadata !8}
!60 = metadata !{i32 786478, metadata !1, metadata !61, metadata !"", metadata !"", metadata !"_GLOBAL__sub_I_correlation_accel_v4.cpp", i32 0, metadata !62, i1 true, i1 true, i32 0, i32 0, null, i32 64, i1 false, void ()* @_GLOBAL__sub_I_correlation_accel_v4.cpp, null, null, metadata !2, i32 0} ; [ DW_TAG_subprogram ] [line 0] [local] [def]
!61 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease/../src/correlation_accel_v4.cpp]
!62 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !64, metadata !65, metadata !69}
!64 = metadata !{i32 786484, i32 0, metadata !14, metadata !"__ioinit", metadata !"__ioinit", metadata !"_ZStL8__ioinit", metadata !40, i32 74, metadata !"_ZTSNSt8ios_base4InitE", i32 1, i32 1, %"class.std::ios_base::Init"* @_ZStL8__ioinit, null} ; [ DW_TAG_variable ] [__ioinit] [line 74] [local] [def]
!65 = metadata !{i32 786484, i32 0, metadata !50, metadata !"weight_rom", metadata !"weight_rom", metadata !"", metadata !45, i32 386, metadata !66, i32 1, i32 1, [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E10weight_rom, null} ; [ DW_TAG_variable ] [weight_rom] [line 386] [local] [def]
!66 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8064, i64 32, i32 0, i32 0, metadata !49, metadata !67, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8064, align 32, offset 0] [from float]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 252}      ; [ DW_TAG_subrange_type ] [0, 251]
!69 = metadata !{i32 786484, i32 0, metadata !50, metadata !"lnReturnA", metadata !"lnReturnA", metadata !"", metadata !45, i32 394, metadata !66, i32 1, i32 1, [252 x float]* @_ZZ8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_E9lnReturnA, null} ; [ DW_TAG_variable ] [lnReturnA] [line 394] [local] [def]
!70 = metadata !{metadata !71, metadata !75, metadata !79, metadata !81, metadata !84, metadata !87, metadata !88, metadata !95, metadata !98, metadata !99, metadata !102}
!71 = metadata !{i32 786490, metadata !72, metadata !74, i32 56} ; [ DW_TAG_imported_module ]
!72 = metadata !{i32 786489, metadata !73, null, metadata !"__gnu_debug", i32 54} ; [ DW_TAG_namespace ] [__gnu_debug] [line 54]
!73 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/debug/debug.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!74 = metadata !{i32 786489, metadata !73, metadata !14, metadata !"__debug", i32 48} ; [ DW_TAG_namespace ] [__debug] [line 48]
!75 = metadata !{i32 786440, metadata !76, metadata !78, i32 44} ; [ DW_TAG_imported_declaration ]
!76 = metadata !{i32 786489, metadata !77, null, metadata !"__gnu_cxx", i32 68} ; [ DW_TAG_namespace ] [__gnu_cxx] [line 68]
!77 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/cpp_type_traits.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!78 = metadata !{i32 786454, metadata !15, metadata !14, metadata !"size_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 186, size 0, align 0, offset 0] [from unsigned int]
!79 = metadata !{i32 786440, metadata !76, metadata !80, i32 45} ; [ DW_TAG_imported_declaration ]
!80 = metadata !{i32 786454, metadata !15, metadata !14, metadata !"ptrdiff_t", i32 187, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 187, size 0, align 0, offset 0] [from int]
!81 = metadata !{i32 786440, metadata !14, metadata !82, i32 64} ; [ DW_TAG_imported_declaration ]
!82 = metadata !{i32 786454, metadata !5, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!83 = metadata !{i32 786454, metadata !5, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !"_ZTS11__mbstate_t"} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from _ZTS11__mbstate_t]
!84 = metadata !{i32 786440, metadata !14, metadata !85, i32 139} ; [ DW_TAG_imported_declaration ]
!85 = metadata !{i32 786454, metadata !86, null, metadata !"wint_t", i32 353, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [wint_t] [line 353, size 0, align 0, offset 0] [from unsigned int]
!86 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/lib/gcc/arm-xilinx-linux-gnueabi/4.8.3/include/stddef.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!87 = metadata !{i32 786440, metadata !14, metadata !"_ZTS5lconv", i32 53} ; [ DW_TAG_imported_declaration ]
!88 = metadata !{i32 786440, metadata !14, metadata !89, i32 82} ; [ DW_TAG_imported_declaration ]
!89 = metadata !{i32 786454, metadata !90, null, metadata !"wctrans_t", i32 186, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [wctrans_t] [line 186, size 0, align 0, offset 0] [from ]
!90 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/wctype.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!92 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from __int32_t]
!93 = metadata !{i32 786454, metadata !94, null, metadata !"__int32_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [__int32_t] [line 40, size 0, align 0, offset 0] [from int]
!94 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/types.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!95 = metadata !{i32 786440, metadata !14, metadata !96, i32 83} ; [ DW_TAG_imported_declaration ]
!96 = metadata !{i32 786454, metadata !90, null, metadata !"wctype_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [wctype_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!97 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786440, metadata !14, metadata !85, i32 84} ; [ DW_TAG_imported_declaration ]
!99 = metadata !{i32 786440, metadata !0, metadata !100, i32 673, metadata !"abi"} ; [ DW_TAG_imported_declaration ]
!100 = metadata !{i32 786489, metadata !101, null, metadata !"__cxxabiv1", i32 39} ; [ DW_TAG_namespace ] [__cxxabiv1] [line 39]
!101 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/cxxabi_forced.h", metadata !"/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease"}
!102 = metadata !{i32 786490, metadata !0, metadata !14, i32 42} ; [ DW_TAG_imported_module ]
!103 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitC1Ev}
!104 = metadata !{metadata !"void."}
!105 = metadata !{%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev}
!106 = metadata !{void (i32, i32, float*, float*)* @_Z20correlation_accel_v4iiPfS_}
!107 = metadata !{metadata !"void.int.0.int.0.float [2520000].1.float [49995000].1"}
!108 = metadata !{void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z8frontEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_}
!109 = metadata !{metadata !"void.int.0.int.0.float [2520000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1"}
!110 = metadata !{void (i32, i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z6midEndiiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_}
!111 = metadata !{metadata !"void.int.0.int.0.int.0.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [1255000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1"}
!112 = metadata !{void (i32, i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)* @_Z7backEndiiPfS_S_S_S_S_S_S_S_S_S_S_S_S_S_S_S_}
!113 = metadata !{metadata !"void.int.0.int.0.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [5000].1.float [49995000].1"}
!114 = metadata !{void (float*, i32)* @_ZL15weight_rom_initPfi}
!115 = metadata !{metadata !"void.float [252].1.int.0"}
!116 = metadata !{float (float)* @logf}
!117 = metadata !{metadata !"float.float.0"}
!118 = metadata !{float (float)* @sqrtf}
!119 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/include/c++/4.8.3/bits/ios_base.h"}
!120 = metadata !{metadata !"../src/correlation_accel_v4.hpp"}
!121 = metadata !{metadata !"/opt/Xilinx/SDSoC/2014.4/SDK/2014.4/gnu/arm/lin/arm-xilinx-linux-gnueabi/libc/usr/include/bits/mathcalls.h"}
!122 = metadata !{metadata !"in_indices,number_of_indices*number_of_days,,,AXIDMA_SG,AFI,0,, out_correlation,number_of_indices-1,,,AXIDMA_SIMPLE,AFI,0,, "}
!123 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!124 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!125 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!126 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!127 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!128 = metadata !{i32 74, i32 25, metadata !38, null}
!129 = metadata !{i32 786689, metadata !43, metadata !"number_of_days", metadata !45, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number_of_days] [line 41]
!130 = metadata !{i32 41, i32 14, metadata !43, null}
!131 = metadata !{i32 786689, metadata !43, metadata !"number_of_indices", metadata !45, i32 33554474, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [number_of_indices] [line 42]
!132 = metadata !{i32 42, i32 14, metadata !43, null}
!133 = metadata !{i32 786689, metadata !43, metadata !"in_indices", metadata !45, i32 50331692, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_indices] [line 44]
!134 = metadata !{i32 44, i32 15, metadata !43, null}
!135 = metadata !{i32 786689, metadata !43, metadata !"out_correlation", metadata !45, i32 67108909, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_correlation] [line 45]
!136 = metadata !{i32 45, i32 17, metadata !43, null}
!137 = metadata !{i32 786688, metadata !43, metadata !"NUMBER_OF_DAYS", metadata !45, i32 56, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NUMBER_OF_DAYS] [line 56]
!138 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!139 = metadata !{i32 56, i32 12, metadata !43, null}
!140 = metadata !{i32 56, i32 2, metadata !43, null}
!141 = metadata !{i32 786688, metadata !43, metadata !"NUMBER_OF_INDICES", metadata !45, i32 57, metadata !138, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NUMBER_OF_INDICES] [line 57]
!142 = metadata !{i32 57, i32 12, metadata !43, null}
!143 = metadata !{i32 57, i32 2, metadata !43, null}
!144 = metadata !{i32 786688, metadata !43, metadata !"ln_returnA_c1", metadata !45, i32 139, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ln_returnA_c1] [line 139]
!145 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40160000, i64 32, i32 0, i32 0, metadata !49, metadata !146, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40160000, align 32, offset 0] [from float]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786465, i64 0, i64 1255000} ; [ DW_TAG_subrange_type ] [0, 1254999]
!148 = metadata !{i32 139, i32 8, metadata !43, null}
!149 = metadata !{i32 786688, metadata !43, metadata !"weight_returnSquareA_c1", metadata !45, i32 140, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareA_c1] [line 140]
!150 = metadata !{i32 140, i32 8, metadata !43, null}
!151 = metadata !{i32 786688, metadata !43, metadata !"weight_returnA_c1", metadata !45, i32 141, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_c1] [line 141]
!152 = metadata !{i32 141, i32 8, metadata !43, null}
!153 = metadata !{i32 786688, metadata !43, metadata !"ln_returnA_c2", metadata !45, i32 143, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ln_returnA_c2] [line 143]
!154 = metadata !{i32 143, i32 8, metadata !43, null}
!155 = metadata !{i32 786688, metadata !43, metadata !"weight_returnSquareA_c2", metadata !45, i32 144, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareA_c2] [line 144]
!156 = metadata !{i32 144, i32 8, metadata !43, null}
!157 = metadata !{i32 786688, metadata !43, metadata !"weight_returnA_c2", metadata !45, i32 145, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_c2] [line 145]
!158 = metadata !{i32 145, i32 8, metadata !43, null}
!159 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_c1", metadata !45, i32 147, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_c1] [line 147]
!160 = metadata !{i32 147, i32 8, metadata !43, null}
!161 = metadata !{i32 786688, metadata !43, metadata !"ln_returnB_c1", metadata !45, i32 148, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ln_returnB_c1] [line 148]
!162 = metadata !{i32 148, i32 8, metadata !43, null}
!163 = metadata !{i32 786688, metadata !43, metadata !"weight_returnSquareB_c1", metadata !45, i32 149, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareB_c1] [line 149]
!164 = metadata !{i32 149, i32 8, metadata !43, null}
!165 = metadata !{i32 786688, metadata !43, metadata !"weight_returnB_c1", metadata !45, i32 150, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnB_c1] [line 150]
!166 = metadata !{i32 150, i32 8, metadata !43, null}
!167 = metadata !{i32 786688, metadata !43, metadata !"weight_returnA_returnB_c1", metadata !45, i32 151, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_returnB_c1] [line 151]
!168 = metadata !{i32 151, i32 8, metadata !43, null}
!169 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_c2", metadata !45, i32 153, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_c2] [line 153]
!170 = metadata !{i32 153, i32 8, metadata !43, null}
!171 = metadata !{i32 786688, metadata !43, metadata !"ln_returnB_c2", metadata !45, i32 154, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ln_returnB_c2] [line 154]
!172 = metadata !{i32 154, i32 8, metadata !43, null}
!173 = metadata !{i32 786688, metadata !43, metadata !"weight_returnSquareB_c2", metadata !45, i32 155, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareB_c2] [line 155]
!174 = metadata !{i32 155, i32 8, metadata !43, null}
!175 = metadata !{i32 786688, metadata !43, metadata !"weight_returnB_c2", metadata !45, i32 156, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnB_c2] [line 156]
!176 = metadata !{i32 156, i32 8, metadata !43, null}
!177 = metadata !{i32 786688, metadata !43, metadata !"weight_returnA_returnB_c2", metadata !45, i32 157, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_returnB_c2] [line 157]
!178 = metadata !{i32 157, i32 8, metadata !43, null}
!179 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_stage2_c1", metadata !45, i32 159, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_stage2_c1] [line 159]
!180 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160000, i64 32, i32 0, i32 0, metadata !49, metadata !181, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160000, align 32, offset 0] [from float]
!181 = metadata !{metadata !182}
!182 = metadata !{i32 786465, i64 0, i64 5000}    ; [ DW_TAG_subrange_type ] [0, 4999]
!183 = metadata !{i32 159, i32 8, metadata !43, null}
!184 = metadata !{i32 786688, metadata !43, metadata !"sum_return_stage2_c1", metadata !45, i32 160, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_return_stage2_c1] [line 160]
!185 = metadata !{i32 160, i32 8, metadata !43, null}
!186 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnSquare_stage2_c1", metadata !45, i32 161, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare_stage2_c1] [line 161]
!187 = metadata !{i32 161, i32 8, metadata !43, null}
!188 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_return_stage2_c1", metadata !45, i32 162, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return_stage2_c1] [line 162]
!189 = metadata !{i32 162, i32 8, metadata !43, null}
!190 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnA_returnB_stage2_c1", metadata !45, i32 163, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB_stage2_c1] [line 163]
!191 = metadata !{i32 163, i32 8, metadata !43, null}
!192 = metadata !{i32 786688, metadata !43, metadata !"sum_returnA_stage2_c1", metadata !45, i32 164, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA_stage2_c1] [line 164]
!193 = metadata !{i32 164, i32 8, metadata !43, null}
!194 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnSquareA_stage2_c1", metadata !45, i32 165, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA_stage2_c1] [line 165]
!195 = metadata !{i32 165, i32 8, metadata !43, null}
!196 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnA_stage2_c1", metadata !45, i32 166, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_stage2_c1] [line 166]
!197 = metadata !{i32 166, i32 8, metadata !43, null}
!198 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_stage2_c2", metadata !45, i32 169, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_stage2_c2] [line 169]
!199 = metadata !{i32 169, i32 8, metadata !43, null}
!200 = metadata !{i32 786688, metadata !43, metadata !"sum_return_stage2_c2", metadata !45, i32 170, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_return_stage2_c2] [line 170]
!201 = metadata !{i32 170, i32 8, metadata !43, null}
!202 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnSquare_stage2_c2", metadata !45, i32 171, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare_stage2_c2] [line 171]
!203 = metadata !{i32 171, i32 8, metadata !43, null}
!204 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_return_stage2_c2", metadata !45, i32 172, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return_stage2_c2] [line 172]
!205 = metadata !{i32 172, i32 8, metadata !43, null}
!206 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnA_returnB_stage2_c2", metadata !45, i32 173, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB_stage2_c2] [line 173]
!207 = metadata !{i32 173, i32 8, metadata !43, null}
!208 = metadata !{i32 786688, metadata !43, metadata !"sum_returnA_stage2_c2", metadata !45, i32 174, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA_stage2_c2] [line 174]
!209 = metadata !{i32 174, i32 8, metadata !43, null}
!210 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnSquareA_stage2_c2", metadata !45, i32 175, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA_stage2_c2] [line 175]
!211 = metadata !{i32 175, i32 8, metadata !43, null}
!212 = metadata !{i32 786688, metadata !43, metadata !"sum_weight_returnA_stage2_c2", metadata !45, i32 176, metadata !180, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_stage2_c2] [line 176]
!213 = metadata !{i32 176, i32 8, metadata !43, null}
!214 = metadata !{i32 179, i32 2, metadata !43, null}
!215 = metadata !{i32 204, i32 2, metadata !43, null}
!216 = metadata !{i32 228, i32 2, metadata !43, null}
!217 = metadata !{i32 252, i32 2, metadata !43, null}
!218 = metadata !{i32 276, i32 1, metadata !43, null}
!219 = metadata !{i32 786689, metadata !50, metadata !"NUMBER_OF_DAYS", metadata !45, i32 16777567, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 351]
!220 = metadata !{i32 351, i32 9, metadata !50, null}
!221 = metadata !{i32 786689, metadata !50, metadata !"NUMBER_OF_INDICES", metadata !45, i32 33554784, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_INDICES] [line 352]
!222 = metadata !{i32 352, i32 9, metadata !50, null}
!223 = metadata !{i32 786689, metadata !50, metadata !"in_indices", metadata !45, i32 50332001, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_indices] [line 353]
!224 = metadata !{i32 353, i32 11, metadata !50, null}
!225 = metadata !{i32 786689, metadata !50, metadata !"ln_returnA_out_c1", metadata !45, i32 67109219, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln_returnA_out_c1] [line 355]
!226 = metadata !{i32 355, i32 11, metadata !50, null}
!227 = metadata !{i32 786689, metadata !50, metadata !"weight_returnSquareA_out_c1", metadata !45, i32 83886436, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnSquareA_out_c1] [line 356]
!228 = metadata !{i32 356, i32 11, metadata !50, null}
!229 = metadata !{i32 786689, metadata !50, metadata !"weight_returnA_out_c1", metadata !45, i32 100663653, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnA_out_c1] [line 357]
!230 = metadata !{i32 357, i32 11, metadata !50, null}
!231 = metadata !{i32 786689, metadata !50, metadata !"ln_returnA_out_c2", metadata !45, i32 117440871, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln_returnA_out_c2] [line 359]
!232 = metadata !{i32 359, i32 11, metadata !50, null}
!233 = metadata !{i32 786689, metadata !50, metadata !"weight_returnSquareA_out_c2", metadata !45, i32 134218088, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnSquareA_out_c2] [line 360]
!234 = metadata !{i32 360, i32 11, metadata !50, null}
!235 = metadata !{i32 786689, metadata !50, metadata !"weight_returnA_out_c2", metadata !45, i32 150995305, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnA_out_c2] [line 361]
!236 = metadata !{i32 361, i32 11, metadata !50, null}
!237 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_out_c1", metadata !45, i32 167772523, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_out_c1] [line 363]
!238 = metadata !{i32 363, i32 11, metadata !50, null}
!239 = metadata !{i32 786689, metadata !50, metadata !"ln_returnB_out_c1", metadata !45, i32 184549740, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln_returnB_out_c1] [line 364]
!240 = metadata !{i32 364, i32 11, metadata !50, null}
!241 = metadata !{i32 786689, metadata !50, metadata !"weight_returnSquareB_out_c1", metadata !45, i32 201326957, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnSquareB_out_c1] [line 365]
!242 = metadata !{i32 365, i32 11, metadata !50, null}
!243 = metadata !{i32 786689, metadata !50, metadata !"weight_returnB_out_c1", metadata !45, i32 218104174, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnB_out_c1] [line 366]
!244 = metadata !{i32 366, i32 11, metadata !50, null}
!245 = metadata !{i32 786689, metadata !50, metadata !"weight_returnA_returnB_out_c1", metadata !45, i32 234881391, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnA_returnB_out_c1] [line 367]
!246 = metadata !{i32 367, i32 11, metadata !50, null}
!247 = metadata !{i32 786689, metadata !50, metadata !"sum_weight_out_c2", metadata !45, i32 251658609, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_out_c2] [line 369]
!248 = metadata !{i32 369, i32 11, metadata !50, null}
!249 = metadata !{i32 786689, metadata !50, metadata !"ln_returnB_out_c2", metadata !45, i32 268435826, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln_returnB_out_c2] [line 370]
!250 = metadata !{i32 370, i32 11, metadata !50, null}
!251 = metadata !{i32 786689, metadata !50, metadata !"weight_returnSquareB_out_c2", metadata !45, i32 285213043, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnSquareB_out_c2] [line 371]
!252 = metadata !{i32 371, i32 11, metadata !50, null}
!253 = metadata !{i32 786689, metadata !50, metadata !"weight_returnB_out_c2", metadata !45, i32 301990260, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnB_out_c2] [line 372]
!254 = metadata !{i32 372, i32 11, metadata !50, null}
!255 = metadata !{i32 786689, metadata !50, metadata !"weight_returnA_returnB_out_c2", metadata !45, i32 318767477, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnA_returnB_out_c2] [line 373]
!256 = metadata !{i32 373, i32 11, metadata !50, null}
!257 = metadata !{i32 387, i32 2, metadata !50, null}
!258 = metadata !{i32 786688, metadata !50, metadata !"sum_weight", metadata !45, i32 388, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 388]
!259 = metadata !{i32 388, i32 8, metadata !50, null}
!260 = metadata !{i32 388, i32 2, metadata !50, null}
!261 = metadata !{i32 786688, metadata !50, metadata !"shift_reg", metadata !45, i32 395, metadata !262, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift_reg] [line 395]
!262 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !49, metadata !263, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from float]
!263 = metadata !{metadata !264}
!264 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!265 = metadata !{i32 395, i32 8, metadata !50, null}
!266 = metadata !{i32 786688, metadata !50, metadata !"index_c1", metadata !45, i32 397, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_c1] [line 397]
!267 = metadata !{i32 397, i32 6, metadata !50, null}
!268 = metadata !{i32 397, i32 2, metadata !50, null}
!269 = metadata !{i32 786688, metadata !50, metadata !"index_c2", metadata !45, i32 398, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_c2] [line 398]
!270 = metadata !{i32 398, i32 6, metadata !50, null}
!271 = metadata !{i32 398, i32 2, metadata !50, null}
!272 = metadata !{i32 417, i32 12, metadata !50, null}
!273 = metadata !{i32 786688, metadata !274, metadata !"i", metadata !45, i32 421, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 421]
!274 = metadata !{i32 786443, metadata !44, metadata !50, i32 421, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!275 = metadata !{i32 421, i32 11, metadata !274, null}
!276 = metadata !{i32 421, i32 7, metadata !274, null}
!277 = metadata !{i32 421, i32 7, metadata !278, null}
!278 = metadata !{i32 786443, metadata !44, metadata !279, i32 421, i32 7, i32 2, i32 33} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!279 = metadata !{i32 786443, metadata !44, metadata !274, i32 421, i32 7, i32 1, i32 32} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!280 = metadata !{i32 446, i32 7, metadata !281, null}
!281 = metadata !{i32 786443, metadata !44, metadata !282, i32 446, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!282 = metadata !{i32 786443, metadata !44, metadata !274, i32 421, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!283 = metadata !{i32 447, i32 16, metadata !284, null}
!284 = metadata !{i32 786443, metadata !44, metadata !281, i32 446, i32 14, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!285 = metadata !{i32 448, i32 4, metadata !284, null}
!286 = metadata !{i32 450, i32 14, metadata !287, null}
!287 = metadata !{i32 786443, metadata !44, metadata !281, i32 449, i32 18, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!288 = metadata !{i32 451, i32 14, metadata !287, null}
!289 = metadata !{i32 786688, metadata !282, metadata !"lnReturn", metadata !45, i32 456, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturn] [line 456]
!290 = metadata !{i32 456, i32 10, metadata !282, null}
!291 = metadata !{i32 456, i32 26, metadata !282, null}
!292 = metadata !{i32 458, i32 4, metadata !282, null}
!293 = metadata !{i32 459, i32 3, metadata !282, null}
!294 = metadata !{i32 421, i32 43, metadata !274, null}
!295 = metadata !{i32 786688, metadata !296, metadata !"column_index", metadata !45, i32 463, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column_index] [line 463]
!296 = metadata !{i32 786443, metadata !44, metadata !50, i32 463, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!297 = metadata !{i32 463, i32 10, metadata !296, null}
!298 = metadata !{i32 463, i32 6, metadata !296, null}
!299 = metadata !{i32 463, i32 6, metadata !300, null}
!300 = metadata !{i32 786443, metadata !44, metadata !301, i32 463, i32 6, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!301 = metadata !{i32 786443, metadata !44, metadata !296, i32 463, i32 6, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!302 = metadata !{i32 786688, metadata !303, metadata !"index", metadata !45, i32 464, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 464]
!303 = metadata !{i32 786443, metadata !44, metadata !296, i32 463, i32 78, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!304 = metadata !{i32 464, i32 7, metadata !303, null}
!305 = metadata !{i32 464, i32 3, metadata !303, null}
!306 = metadata !{i32 476, i32 12, metadata !303, null}
!307 = metadata !{i32 786688, metadata !308, metadata !"i", metadata !45, i32 480, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 480]
!308 = metadata !{i32 786443, metadata !44, metadata !303, i32 480, i32 4, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!309 = metadata !{i32 480, i32 12, metadata !308, null}
!310 = metadata !{i32 480, i32 8, metadata !308, null}
!311 = metadata !{i32 480, i32 8, metadata !312, null}
!312 = metadata !{i32 786443, metadata !44, metadata !313, i32 480, i32 8, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!313 = metadata !{i32 786443, metadata !44, metadata !308, i32 480, i32 8, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!314 = metadata !{i32 505, i32 8, metadata !315, null}
!315 = metadata !{i32 786443, metadata !44, metadata !316, i32 505, i32 8, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!316 = metadata !{i32 786443, metadata !44, metadata !308, i32 480, i32 48, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!317 = metadata !{i32 506, i32 17, metadata !318, null}
!318 = metadata !{i32 786443, metadata !44, metadata !315, i32 505, i32 15, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!319 = metadata !{i32 507, i32 5, metadata !318, null}
!320 = metadata !{i32 509, i32 15, metadata !321, null}
!321 = metadata !{i32 786443, metadata !44, metadata !315, i32 508, i32 19, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!322 = metadata !{i32 510, i32 15, metadata !321, null}
!323 = metadata !{i32 786688, metadata !316, metadata !"lnReturn", metadata !45, i32 514, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturn] [line 514]
!324 = metadata !{i32 514, i32 10, metadata !316, null}
!325 = metadata !{i32 514, i32 26, metadata !316, null}
!326 = metadata !{i32 786688, metadata !316, metadata !"weight", metadata !45, i32 515, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight] [line 515]
!327 = metadata !{i32 515, i32 10, metadata !316, null}
!328 = metadata !{i32 515, i32 4, metadata !316, null}
!329 = metadata !{i32 786688, metadata !316, metadata !"lnReturnA_temp", metadata !45, i32 516, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturnA_temp] [line 516]
!330 = metadata !{i32 516, i32 10, metadata !316, null}
!331 = metadata !{i32 516, i32 4, metadata !316, null}
!332 = metadata !{i32 786688, metadata !316, metadata !"weight_returnA_temp", metadata !45, i32 517, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_temp] [line 517]
!333 = metadata !{i32 517, i32 10, metadata !316, null}
!334 = metadata !{i32 517, i32 4, metadata !316, null}
!335 = metadata !{i32 786688, metadata !316, metadata !"weight_returnSquareA_temp", metadata !45, i32 518, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareA_temp] [line 518]
!336 = metadata !{i32 518, i32 10, metadata !316, null}
!337 = metadata !{i32 518, i32 4, metadata !316, null}
!338 = metadata !{i32 786688, metadata !316, metadata !"weight_returnB_temp", metadata !45, i32 520, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnB_temp] [line 520]
!339 = metadata !{i32 520, i32 10, metadata !316, null}
!340 = metadata !{i32 520, i32 4, metadata !316, null}
!341 = metadata !{i32 786688, metadata !316, metadata !"weight_returnSquareB_temp", metadata !45, i32 521, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareB_temp] [line 521]
!342 = metadata !{i32 521, i32 10, metadata !316, null}
!343 = metadata !{i32 521, i32 4, metadata !316, null}
!344 = metadata !{i32 786688, metadata !316, metadata !"weight_returnA_returnB_temp", metadata !45, i32 522, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_returnB_temp] [line 522]
!345 = metadata !{i32 522, i32 10, metadata !316, null}
!346 = metadata !{i32 522, i32 4, metadata !316, null}
!347 = metadata !{i32 548, i32 7, metadata !348, null}
!348 = metadata !{i32 786443, metadata !44, metadata !316, i32 548, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!349 = metadata !{i32 549, i32 5, metadata !350, null}
!350 = metadata !{i32 786443, metadata !44, metadata !348, i32 548, i32 30, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!351 = metadata !{i32 550, i32 5, metadata !350, null}
!352 = metadata !{i32 551, i32 5, metadata !350, null}
!353 = metadata !{i32 553, i32 5, metadata !350, null}
!354 = metadata !{i32 554, i32 5, metadata !350, null}
!355 = metadata !{i32 555, i32 5, metadata !350, null}
!356 = metadata !{i32 556, i32 5, metadata !350, null}
!357 = metadata !{i32 557, i32 5, metadata !350, null}
!358 = metadata !{i32 558, i32 5, metadata !350, null}
!359 = metadata !{i32 559, i32 4, metadata !350, null}
!360 = metadata !{i32 560, i32 5, metadata !361, null}
!361 = metadata !{i32 786443, metadata !44, metadata !348, i32 559, i32 11, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!362 = metadata !{i32 561, i32 5, metadata !361, null}
!363 = metadata !{i32 562, i32 5, metadata !361, null}
!364 = metadata !{i32 564, i32 5, metadata !361, null}
!365 = metadata !{i32 565, i32 5, metadata !361, null}
!366 = metadata !{i32 566, i32 5, metadata !361, null}
!367 = metadata !{i32 567, i32 5, metadata !361, null}
!368 = metadata !{i32 568, i32 5, metadata !361, null}
!369 = metadata !{i32 569, i32 5, metadata !361, null}
!370 = metadata !{i32 573, i32 4, metadata !316, null}
!371 = metadata !{i32 480, i32 44, metadata !308, null}
!372 = metadata !{i32 574, i32 2, metadata !303, null}
!373 = metadata !{i32 463, i32 62, metadata !296, null}
!374 = metadata !{i32 575, i32 1, metadata !50, null}
!375 = metadata !{i32 786689, metadata !53, metadata !"NUMBER_OF_DAYS", metadata !45, i32 16777824, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 608]
!376 = metadata !{i32 608, i32 7, metadata !53, null}
!377 = metadata !{i32 786689, metadata !53, metadata !"NUMBER_OF_INDICES", metadata !45, i32 33555041, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_INDICES] [line 609]
!378 = metadata !{i32 609, i32 7, metadata !53, null}
!379 = metadata !{i32 786689, metadata !53, metadata !"channel", metadata !45, i32 50332258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [channel] [line 610]
!380 = metadata !{i32 610, i32 7, metadata !53, null}
!381 = metadata !{i32 786689, metadata !53, metadata !"ln_returnA_in", metadata !45, i32 67109476, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln_returnA_in] [line 612]
!382 = metadata !{i32 612, i32 9, metadata !53, null}
!383 = metadata !{i32 786689, metadata !53, metadata !"weight_returnSquareA_in", metadata !45, i32 83886693, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnSquareA_in] [line 613]
!384 = metadata !{i32 613, i32 9, metadata !53, null}
!385 = metadata !{i32 786689, metadata !53, metadata !"weight_returnA_in", metadata !45, i32 100663910, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnA_in] [line 614]
!386 = metadata !{i32 614, i32 9, metadata !53, null}
!387 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_in", metadata !45, i32 117441128, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_in] [line 616]
!388 = metadata !{i32 616, i32 9, metadata !53, null}
!389 = metadata !{i32 786689, metadata !53, metadata !"ln_returnB_in", metadata !45, i32 134218345, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ln_returnB_in] [line 617]
!390 = metadata !{i32 617, i32 9, metadata !53, null}
!391 = metadata !{i32 786689, metadata !53, metadata !"weight_returnSquareB_in", metadata !45, i32 150995562, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnSquareB_in] [line 618]
!392 = metadata !{i32 618, i32 9, metadata !53, null}
!393 = metadata !{i32 786689, metadata !53, metadata !"weight_returnB_in", metadata !45, i32 167772779, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnB_in] [line 619]
!394 = metadata !{i32 619, i32 9, metadata !53, null}
!395 = metadata !{i32 786689, metadata !53, metadata !"weight_returnA_returnB_in", metadata !45, i32 184549996, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weight_returnA_returnB_in] [line 620]
!396 = metadata !{i32 620, i32 9, metadata !53, null}
!397 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_out", metadata !45, i32 201327214, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_out] [line 622]
!398 = metadata !{i32 622, i32 9, metadata !53, null}
!399 = metadata !{i32 786689, metadata !53, metadata !"sum_return_out", metadata !45, i32 218104431, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_return_out] [line 623]
!400 = metadata !{i32 623, i32 9, metadata !53, null}
!401 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnSquare_out", metadata !45, i32 234881648, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquare_out] [line 624]
!402 = metadata !{i32 624, i32 9, metadata !53, null}
!403 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_return_out", metadata !45, i32 251658865, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_return_out] [line 625]
!404 = metadata !{i32 625, i32 9, metadata !53, null}
!405 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnA_returnB_out", metadata !45, i32 268436082, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_returnB_out] [line 626]
!406 = metadata !{i32 626, i32 9, metadata !53, null}
!407 = metadata !{i32 786689, metadata !53, metadata !"sum_returnA_out", metadata !45, i32 285213299, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_returnA_out] [line 627]
!408 = metadata !{i32 627, i32 9, metadata !53, null}
!409 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnSquareA_out", metadata !45, i32 301990516, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquareA_out] [line 628]
!410 = metadata !{i32 628, i32 9, metadata !53, null}
!411 = metadata !{i32 786689, metadata !53, metadata !"sum_weight_returnA_out", metadata !45, i32 318767733, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_out] [line 629]
!412 = metadata !{i32 629, i32 9, metadata !53, null}
!413 = metadata !{i32 786688, metadata !53, metadata !"upper_bound", metadata !45, i32 634, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upper_bound] [line 634]
!414 = metadata !{i32 634, i32 5, metadata !53, null}
!415 = metadata !{i32 634, i32 1, metadata !53, null}
!416 = metadata !{i32 786688, metadata !417, metadata !"column_index", metadata !45, i32 635, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column_index] [line 635]
!417 = metadata !{i32 786443, metadata !44, metadata !53, i32 635, i32 1, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!418 = metadata !{i32 635, i32 9, metadata !417, null}
!419 = metadata !{i32 635, i32 5, metadata !417, null}
!420 = metadata !{i32 635, i32 5, metadata !421, null}
!421 = metadata !{i32 786443, metadata !44, metadata !422, i32 635, i32 5, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!422 = metadata !{i32 786443, metadata !44, metadata !417, i32 635, i32 5, i32 1, i32 38} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!423 = metadata !{i32 786688, metadata !424, metadata !"acc_returnA", metadata !45, i32 637, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_returnA] [line 637]
!424 = metadata !{i32 786443, metadata !44, metadata !417, i32 635, i32 71, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!425 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !49, metadata !426, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!426 = metadata !{metadata !427}
!427 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!428 = metadata !{i32 637, i32 9, metadata !424, null}
!429 = metadata !{i32 786688, metadata !424, metadata !"acc_weight_returnSquareA", metadata !45, i32 638, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnSquareA] [line 638]
!430 = metadata !{i32 638, i32 9, metadata !424, null}
!431 = metadata !{i32 786688, metadata !424, metadata !"acc_weight_returnA", metadata !45, i32 639, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnA] [line 639]
!432 = metadata !{i32 639, i32 9, metadata !424, null}
!433 = metadata !{i32 786688, metadata !424, metadata !"acc_returnB", metadata !45, i32 641, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_returnB] [line 641]
!434 = metadata !{i32 641, i32 9, metadata !424, null}
!435 = metadata !{i32 786688, metadata !424, metadata !"acc_weight_returnSquareB", metadata !45, i32 642, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnSquareB] [line 642]
!436 = metadata !{i32 642, i32 9, metadata !424, null}
!437 = metadata !{i32 786688, metadata !424, metadata !"acc_weight_returnB", metadata !45, i32 643, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnB] [line 643]
!438 = metadata !{i32 643, i32 9, metadata !424, null}
!439 = metadata !{i32 786688, metadata !424, metadata !"acc_weight_returnA_returnB", metadata !45, i32 645, metadata !425, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [acc_weight_returnA_returnB] [line 645]
!440 = metadata !{i32 645, i32 9, metadata !424, null}
!441 = metadata !{i32 786688, metadata !424, metadata !"sum_returnA", metadata !45, i32 647, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA] [line 647]
!442 = metadata !{i32 647, i32 9, metadata !424, null}
!443 = metadata !{i32 647, i32 3, metadata !424, null}
!444 = metadata !{i32 786688, metadata !424, metadata !"sum_weight_returnSquareA", metadata !45, i32 648, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA] [line 648]
!445 = metadata !{i32 648, i32 9, metadata !424, null}
!446 = metadata !{i32 648, i32 3, metadata !424, null}
!447 = metadata !{i32 786688, metadata !424, metadata !"sum_weight_returnA", metadata !45, i32 649, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA] [line 649]
!448 = metadata !{i32 649, i32 9, metadata !424, null}
!449 = metadata !{i32 649, i32 3, metadata !424, null}
!450 = metadata !{i32 786688, metadata !424, metadata !"sum_returnB", metadata !45, i32 651, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnB] [line 651]
!451 = metadata !{i32 651, i32 9, metadata !424, null}
!452 = metadata !{i32 651, i32 3, metadata !424, null}
!453 = metadata !{i32 786688, metadata !424, metadata !"sum_weight_returnSquareB", metadata !45, i32 652, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareB] [line 652]
!454 = metadata !{i32 652, i32 9, metadata !424, null}
!455 = metadata !{i32 652, i32 3, metadata !424, null}
!456 = metadata !{i32 786688, metadata !424, metadata !"sum_weight_returnB", metadata !45, i32 653, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnB] [line 653]
!457 = metadata !{i32 653, i32 9, metadata !424, null}
!458 = metadata !{i32 653, i32 3, metadata !424, null}
!459 = metadata !{i32 786688, metadata !424, metadata !"sum_weight_returnA_returnB", metadata !45, i32 655, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB] [line 655]
!460 = metadata !{i32 655, i32 9, metadata !424, null}
!461 = metadata !{i32 655, i32 3, metadata !424, null}
!462 = metadata !{i32 786688, metadata !424, metadata !"sum_weight", metadata !45, i32 656, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 656]
!463 = metadata !{i32 656, i32 9, metadata !424, null}
!464 = metadata !{i32 656, i32 3, metadata !424, null}
!465 = metadata !{i32 786688, metadata !424, metadata !"index", metadata !45, i32 659, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 659]
!466 = metadata !{i32 659, i32 7, metadata !424, null}
!467 = metadata !{i32 659, i32 3, metadata !424, null}
!468 = metadata !{i32 786688, metadata !424, metadata !"index_channel", metadata !45, i32 660, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_channel] [line 660]
!469 = metadata !{i32 660, i32 7, metadata !424, null}
!470 = metadata !{i32 660, i32 3, metadata !424, null}
!471 = metadata !{i32 786688, metadata !472, metadata !"i", metadata !45, i32 663, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 663]
!472 = metadata !{i32 786443, metadata !44, metadata !424, i32 663, i32 3, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!473 = metadata !{i32 663, i32 11, metadata !472, null}
!474 = metadata !{i32 663, i32 7, metadata !472, null}
!475 = metadata !{i32 663, i32 7, metadata !476, null}
!476 = metadata !{i32 786443, metadata !44, metadata !477, i32 663, i32 7, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!477 = metadata !{i32 786443, metadata !44, metadata !472, i32 663, i32 7, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!478 = metadata !{i32 667, i32 4, metadata !479, null}
!479 = metadata !{i32 786443, metadata !44, metadata !472, i32 663, i32 43, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!480 = metadata !{i32 668, i32 4, metadata !479, null}
!481 = metadata !{i32 669, i32 4, metadata !479, null}
!482 = metadata !{i32 671, i32 4, metadata !479, null}
!483 = metadata !{i32 673, i32 4, metadata !479, null}
!484 = metadata !{i32 674, i32 4, metadata !479, null}
!485 = metadata !{i32 675, i32 4, metadata !479, null}
!486 = metadata !{i32 676, i32 3, metadata !479, null}
!487 = metadata !{i32 663, i32 39, metadata !472, null}
!488 = metadata !{i32 676, i32 3, metadata !472, null}
!489 = metadata !{i32 786688, metadata !490, metadata !"i", metadata !45, i32 680, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 680]
!490 = metadata !{i32 786443, metadata !44, metadata !424, i32 680, i32 3, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!491 = metadata !{i32 680, i32 11, metadata !490, null}
!492 = metadata !{i32 680, i32 7, metadata !490, null}
!493 = metadata !{i32 680, i32 7, metadata !494, null}
!494 = metadata !{i32 786443, metadata !44, metadata !495, i32 680, i32 7, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!495 = metadata !{i32 786443, metadata !44, metadata !490, i32 680, i32 7, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!496 = metadata !{i32 786688, metadata !497, metadata !"lnReturnA_temp", metadata !45, i32 682, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturnA_temp] [line 682]
!497 = metadata !{i32 786443, metadata !44, metadata !490, i32 680, i32 47, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!498 = metadata !{i32 682, i32 10, metadata !497, null}
!499 = metadata !{i32 786688, metadata !497, metadata !"weight_returnA_temp", metadata !45, i32 683, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_temp] [line 683]
!500 = metadata !{i32 683, i32 10, metadata !497, null}
!501 = metadata !{i32 786688, metadata !497, metadata !"weight_returnSquareA_temp", metadata !45, i32 684, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareA_temp] [line 684]
!502 = metadata !{i32 684, i32 10, metadata !497, null}
!503 = metadata !{i32 786688, metadata !497, metadata !"lnReturnB_temp", metadata !45, i32 686, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lnReturnB_temp] [line 686]
!504 = metadata !{i32 686, i32 10, metadata !497, null}
!505 = metadata !{i32 786688, metadata !497, metadata !"weight_returnB_temp", metadata !45, i32 687, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnB_temp] [line 687]
!506 = metadata !{i32 687, i32 10, metadata !497, null}
!507 = metadata !{i32 786688, metadata !497, metadata !"weight_returnSquareB_temp", metadata !45, i32 688, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnSquareB_temp] [line 688]
!508 = metadata !{i32 688, i32 10, metadata !497, null}
!509 = metadata !{i32 786688, metadata !497, metadata !"weight_returnA_returnB_temp", metadata !45, i32 690, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weight_returnA_returnB_temp] [line 690]
!510 = metadata !{i32 690, i32 10, metadata !497, null}
!511 = metadata !{i32 786688, metadata !497, metadata !"channel_id", metadata !45, i32 692, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [channel_id] [line 692]
!512 = metadata !{i32 692, i32 8, metadata !497, null}
!513 = metadata !{i32 692, i32 4, metadata !497, null}
!514 = metadata !{i32 708, i32 4, metadata !497, null}
!515 = metadata !{i32 709, i32 4, metadata !497, null}
!516 = metadata !{i32 710, i32 4, metadata !497, null}
!517 = metadata !{i32 711, i32 4, metadata !497, null}
!518 = metadata !{i32 713, i32 4, metadata !497, null}
!519 = metadata !{i32 714, i32 4, metadata !497, null}
!520 = metadata !{i32 715, i32 4, metadata !497, null}
!521 = metadata !{i32 716, i32 4, metadata !497, null}
!522 = metadata !{i32 718, i32 4, metadata !497, null}
!523 = metadata !{i32 719, i32 4, metadata !497, null}
!524 = metadata !{i32 720, i32 4, metadata !497, null}
!525 = metadata !{i32 722, i32 4, metadata !497, null}
!526 = metadata !{i32 723, i32 4, metadata !497, null}
!527 = metadata !{i32 724, i32 4, metadata !497, null}
!528 = metadata !{i32 726, i32 4, metadata !497, null}
!529 = metadata !{i32 727, i32 3, metadata !497, null}
!530 = metadata !{i32 680, i32 43, metadata !490, null}
!531 = metadata !{i32 727, i32 3, metadata !490, null}
!532 = metadata !{i32 786688, metadata !533, metadata !"i", metadata !45, i32 731, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 731]
!533 = metadata !{i32 786443, metadata !44, metadata !424, i32 731, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!534 = metadata !{i32 731, i32 11, metadata !533, null}
!535 = metadata !{i32 731, i32 7, metadata !533, null}
!536 = metadata !{i32 731, i32 7, metadata !537, null}
!537 = metadata !{i32 786443, metadata !44, metadata !538, i32 731, i32 7, i32 2, i32 44} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!538 = metadata !{i32 786443, metadata !44, metadata !533, i32 731, i32 7, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!539 = metadata !{i32 735, i32 4, metadata !540, null}
!540 = metadata !{i32 786443, metadata !44, metadata !533, i32 731, i32 43, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!541 = metadata !{i32 736, i32 4, metadata !540, null}
!542 = metadata !{i32 737, i32 4, metadata !540, null}
!543 = metadata !{i32 739, i32 4, metadata !540, null}
!544 = metadata !{i32 740, i32 4, metadata !540, null}
!545 = metadata !{i32 741, i32 4, metadata !540, null}
!546 = metadata !{i32 742, i32 4, metadata !540, null}
!547 = metadata !{i32 743, i32 3, metadata !540, null}
!548 = metadata !{i32 731, i32 39, metadata !533, null}
!549 = metadata !{i32 758, i32 4, metadata !424, null}
!550 = metadata !{i32 760, i32 4, metadata !424, null}
!551 = metadata !{i32 761, i32 4, metadata !424, null}
!552 = metadata !{i32 762, i32 4, metadata !424, null}
!553 = metadata !{i32 764, i32 4, metadata !424, null}
!554 = metadata !{i32 766, i32 4, metadata !424, null}
!555 = metadata !{i32 767, i32 4, metadata !424, null}
!556 = metadata !{i32 768, i32 4, metadata !424, null}
!557 = metadata !{i32 770, i32 2, metadata !424, null}
!558 = metadata !{i32 635, i32 56, metadata !417, null}
!559 = metadata !{i32 771, i32 1, metadata !53, null}
!560 = metadata !{i32 786689, metadata !56, metadata !"NUMBER_OF_DAYS", metadata !45, i32 16778023, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 807]
!561 = metadata !{i32 807, i32 9, metadata !56, null}
!562 = metadata !{i32 786689, metadata !56, metadata !"NUMBER_OF_INDICES", metadata !45, i32 33555240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_INDICES] [line 808]
!563 = metadata !{i32 808, i32 9, metadata !56, null}
!564 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_in_c1", metadata !45, i32 50332458, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_in_c1] [line 810]
!565 = metadata !{i32 810, i32 11, metadata !56, null}
!566 = metadata !{i32 786689, metadata !56, metadata !"sum_return_in_c1", metadata !45, i32 67109675, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_return_in_c1] [line 811]
!567 = metadata !{i32 811, i32 11, metadata !56, null}
!568 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnSquare_in_c1", metadata !45, i32 83886892, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquare_in_c1] [line 812]
!569 = metadata !{i32 812, i32 11, metadata !56, null}
!570 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_return_in_c1", metadata !45, i32 100664109, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_return_in_c1] [line 813]
!571 = metadata !{i32 813, i32 11, metadata !56, null}
!572 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnA_returnB_in_c1", metadata !45, i32 117441326, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_returnB_in_c1] [line 814]
!573 = metadata !{i32 814, i32 11, metadata !56, null}
!574 = metadata !{i32 786689, metadata !56, metadata !"sum_returnA_in_c1", metadata !45, i32 134218543, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_returnA_in_c1] [line 815]
!575 = metadata !{i32 815, i32 11, metadata !56, null}
!576 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnSquareA_in_c1", metadata !45, i32 150995760, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquareA_in_c1] [line 816]
!577 = metadata !{i32 816, i32 11, metadata !56, null}
!578 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnA_in_c1", metadata !45, i32 167772977, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_in_c1] [line 817]
!579 = metadata !{i32 817, i32 11, metadata !56, null}
!580 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_in_c2", metadata !45, i32 184550195, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_in_c2] [line 819]
!581 = metadata !{i32 819, i32 11, metadata !56, null}
!582 = metadata !{i32 786689, metadata !56, metadata !"sum_return_in_c2", metadata !45, i32 201327412, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_return_in_c2] [line 820]
!583 = metadata !{i32 820, i32 11, metadata !56, null}
!584 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnSquare_in_c2", metadata !45, i32 218104629, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquare_in_c2] [line 821]
!585 = metadata !{i32 821, i32 11, metadata !56, null}
!586 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_return_in_c2", metadata !45, i32 234881846, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_return_in_c2] [line 822]
!587 = metadata !{i32 822, i32 11, metadata !56, null}
!588 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnA_returnB_in_c2", metadata !45, i32 251659063, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_returnB_in_c2] [line 823]
!589 = metadata !{i32 823, i32 11, metadata !56, null}
!590 = metadata !{i32 786689, metadata !56, metadata !"sum_returnA_in_c2", metadata !45, i32 268436280, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_returnA_in_c2] [line 824]
!591 = metadata !{i32 824, i32 11, metadata !56, null}
!592 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnSquareA_in_c2", metadata !45, i32 285213497, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnSquareA_in_c2] [line 825]
!593 = metadata !{i32 825, i32 11, metadata !56, null}
!594 = metadata !{i32 786689, metadata !56, metadata !"sum_weight_returnA_in_c2", metadata !45, i32 301990714, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sum_weight_returnA_in_c2] [line 826]
!595 = metadata !{i32 826, i32 11, metadata !56, null}
!596 = metadata !{i32 786689, metadata !56, metadata !"out_correlation", metadata !45, i32 318767932, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_correlation] [line 828]
!597 = metadata !{i32 828, i32 11, metadata !56, null}
!598 = metadata !{i32 786688, metadata !56, metadata !"index_c1", metadata !45, i32 840, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_c1] [line 840]
!599 = metadata !{i32 840, i32 9, metadata !56, null}
!600 = metadata !{i32 840, i32 5, metadata !56, null}
!601 = metadata !{i32 786688, metadata !56, metadata !"index_c2", metadata !45, i32 841, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_c2] [line 841]
!602 = metadata !{i32 841, i32 9, metadata !56, null}
!603 = metadata !{i32 841, i32 5, metadata !56, null}
!604 = metadata !{i32 786688, metadata !56, metadata !"sum_weight", metadata !45, i32 843, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight] [line 843]
!605 = metadata !{i32 843, i32 8, metadata !56, null}
!606 = metadata !{i32 786688, metadata !56, metadata !"sum_return", metadata !45, i32 844, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_return] [line 844]
!607 = metadata !{i32 844, i32 8, metadata !56, null}
!608 = metadata !{i32 786688, metadata !56, metadata !"sum_weight_returnSquare", metadata !45, i32 845, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquare] [line 845]
!609 = metadata !{i32 845, i32 8, metadata !56, null}
!610 = metadata !{i32 786688, metadata !56, metadata !"sum_weight_return", metadata !45, i32 846, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_return] [line 846]
!611 = metadata !{i32 846, i32 8, metadata !56, null}
!612 = metadata !{i32 786688, metadata !56, metadata !"sum_weight_returnA_returnB", metadata !45, i32 848, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA_returnB] [line 848]
!613 = metadata !{i32 848, i32 8, metadata !56, null}
!614 = metadata !{i32 786688, metadata !56, metadata !"sum_returnA", metadata !45, i32 850, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_returnA] [line 850]
!615 = metadata !{i32 850, i32 8, metadata !56, null}
!616 = metadata !{i32 786688, metadata !56, metadata !"sum_weight_returnSquareA", metadata !45, i32 851, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnSquareA] [line 851]
!617 = metadata !{i32 851, i32 8, metadata !56, null}
!618 = metadata !{i32 786688, metadata !56, metadata !"sum_weight_returnA", metadata !45, i32 852, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum_weight_returnA] [line 852]
!619 = metadata !{i32 852, i32 8, metadata !56, null}
!620 = metadata !{i32 786688, metadata !621, metadata !"column_index", metadata !45, i32 854, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [column_index] [line 854]
!621 = metadata !{i32 786443, metadata !44, metadata !56, i32 854, i32 2, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!622 = metadata !{i32 854, i32 10, metadata !621, null}
!623 = metadata !{i32 854, i32 6, metadata !621, null}
!624 = metadata !{i32 854, i32 6, metadata !625, null}
!625 = metadata !{i32 786443, metadata !44, metadata !626, i32 854, i32 6, i32 2, i32 47} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!626 = metadata !{i32 786443, metadata !44, metadata !621, i32 854, i32 6, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!627 = metadata !{i32 855, i32 6, metadata !628, null}
!628 = metadata !{i32 786443, metadata !44, metadata !629, i32 855, i32 6, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!629 = metadata !{i32 786443, metadata !44, metadata !621, i32 854, i32 77, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!630 = metadata !{i32 866, i32 5, metadata !631, null}
!631 = metadata !{i32 786443, metadata !44, metadata !628, i32 855, i32 28, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!632 = metadata !{i32 867, i32 5, metadata !631, null}
!633 = metadata !{i32 868, i32 5, metadata !631, null}
!634 = metadata !{i32 869, i32 5, metadata !631, null}
!635 = metadata !{i32 870, i32 5, metadata !631, null}
!636 = metadata !{i32 871, i32 5, metadata !631, null}
!637 = metadata !{i32 872, i32 5, metadata !631, null}
!638 = metadata !{i32 873, i32 5, metadata !631, null}
!639 = metadata !{i32 875, i32 4, metadata !631, null}
!640 = metadata !{i32 876, i32 2, metadata !631, null}
!641 = metadata !{i32 887, i32 5, metadata !642, null}
!642 = metadata !{i32 786443, metadata !44, metadata !628, i32 876, i32 9, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!643 = metadata !{i32 888, i32 5, metadata !642, null}
!644 = metadata !{i32 889, i32 5, metadata !642, null}
!645 = metadata !{i32 890, i32 5, metadata !642, null}
!646 = metadata !{i32 891, i32 5, metadata !642, null}
!647 = metadata !{i32 892, i32 5, metadata !642, null}
!648 = metadata !{i32 893, i32 5, metadata !642, null}
!649 = metadata !{i32 894, i32 5, metadata !642, null}
!650 = metadata !{i32 896, i32 4, metadata !642, null}
!651 = metadata !{i32 786688, metadata !629, metadata !"meanReturnA", metadata !45, i32 899, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [meanReturnA] [line 899]
!652 = metadata !{i32 899, i32 9, metadata !629, null}
!653 = metadata !{i32 899, i32 3, metadata !629, null}
!654 = metadata !{i32 786688, metadata !629, metadata !"meanReturnB", metadata !45, i32 900, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [meanReturnB] [line 900]
!655 = metadata !{i32 900, i32 9, metadata !629, null}
!656 = metadata !{i32 900, i32 3, metadata !629, null}
!657 = metadata !{i32 786688, metadata !629, metadata !"volatilityA", metadata !45, i32 902, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [volatilityA] [line 902]
!658 = metadata !{i32 902, i32 9, metadata !629, null}
!659 = metadata !{i32 902, i32 23, metadata !629, null}
!660 = metadata !{i32 786688, metadata !629, metadata !"volatilityB", metadata !45, i32 905, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [volatilityB] [line 905]
!661 = metadata !{i32 905, i32 9, metadata !629, null}
!662 = metadata !{i32 905, i32 23, metadata !629, null}
!663 = metadata !{i32 786688, metadata !629, metadata !"covariance", metadata !45, i32 908, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [covariance] [line 908]
!664 = metadata !{i32 908, i32 9, metadata !629, null}
!665 = metadata !{i32 908, i32 3, metadata !629, null}
!666 = metadata !{i32 786688, metadata !629, metadata !"corr_temp", metadata !45, i32 912, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [corr_temp] [line 912]
!667 = metadata !{i32 912, i32 9, metadata !629, null}
!668 = metadata !{i32 912, i32 3, metadata !629, null}
!669 = metadata !{i32 925, i32 7, metadata !629, null}
!670 = metadata !{i32 927, i32 2, metadata !629, null}
!671 = metadata !{i32 854, i32 62, metadata !621, null}
!672 = metadata !{i32 928, i32 1, metadata !56, null}
!673 = metadata !{i32 786689, metadata !57, metadata !"weightRom", metadata !45, i32 16777519, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [weightRom] [line 303]
!674 = metadata !{i32 303, i32 9, metadata !57, null}
!675 = metadata !{i32 786689, metadata !57, metadata !"NUMBER_OF_DAYS", metadata !45, i32 33554736, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [NUMBER_OF_DAYS] [line 304]
!676 = metadata !{i32 304, i32 7, metadata !57, null}
!677 = metadata !{i32 786688, metadata !57, metadata !"lambda", metadata !45, i32 306, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 306]
!678 = metadata !{i32 306, i32 8, metadata !57, null}
!679 = metadata !{i32 306, i32 2, metadata !57, null}
!680 = metadata !{i32 307, i32 2, metadata !57, null}
!681 = metadata !{i32 308, i32 2, metadata !57, null}
!682 = metadata !{i32 786688, metadata !683, metadata !"i", metadata !45, i32 311, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 311]
!683 = metadata !{i32 786443, metadata !44, metadata !57, i32 311, i32 2, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!684 = metadata !{i32 311, i32 10, metadata !683, null}
!685 = metadata !{i32 311, i32 6, metadata !683, null}
!686 = metadata !{i32 311, i32 6, metadata !687, null}
!687 = metadata !{i32 786443, metadata !44, metadata !688, i32 311, i32 6, i32 2, i32 49} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!688 = metadata !{i32 786443, metadata !44, metadata !683, i32 311, i32 6, i32 1, i32 48} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!689 = metadata !{i32 312, i32 3, metadata !690, null}
!690 = metadata !{i32 786443, metadata !44, metadata !683, i32 311, i32 41, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!691 = metadata !{i32 313, i32 2, metadata !690, null}
!692 = metadata !{i32 311, i32 36, metadata !683, null}
!693 = metadata !{i32 313, i32 2, metadata !683, null}
!694 = metadata !{i32 786688, metadata !695, metadata !"i", metadata !45, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 316]
!695 = metadata !{i32 786443, metadata !44, metadata !57, i32 316, i32 2, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!696 = metadata !{i32 316, i32 10, metadata !695, null}
!697 = metadata !{i32 316, i32 6, metadata !695, null}
!698 = metadata !{i32 316, i32 6, metadata !699, null}
!699 = metadata !{i32 786443, metadata !44, metadata !700, i32 316, i32 6, i32 2, i32 51} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!700 = metadata !{i32 786443, metadata !44, metadata !695, i32 316, i32 6, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!701 = metadata !{i32 317, i32 3, metadata !702, null}
!702 = metadata !{i32 786443, metadata !44, metadata !695, i32 316, i32 41, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
!703 = metadata !{i32 319, i32 2, metadata !702, null}
!704 = metadata !{i32 316, i32 37, metadata !695, null}
!705 = metadata !{i32 320, i32 1, metadata !57, null}
!706 = metadata !{i32 0, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !44, metadata !60} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/SDRelease//home/trungnguyen/SDSoC/workspace/correlation_ver2_axis/correlation_accel_v4/src/correlation_accel_v4.cpp]
