; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @_Z12mmult_kernelPA16_fS0_Pf([16 x float]* %in_A, [16 x float]* %in_B, float* %out_C) #0 {
  %1 = alloca [16 x float]*, align 4
  %2 = alloca [16 x float]*, align 4
  %3 = alloca float*, align 4
  %index_a = alloca i32, align 4
  %index_b = alloca i32, align 4
  %index_d = alloca i32, align 4
  %result = alloca float, align 4
  %product_term = alloca float, align 4
  store [16 x float]* %in_A, [16 x float]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[16 x float]** %1}, metadata !28), !dbg !29
  store [16 x float]* %in_B, [16 x float]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[16 x float]** %2}, metadata !30), !dbg !31
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !32), !dbg !33
  call void @llvm.dbg.declare(metadata !{i32* %index_a}, metadata !34), !dbg !36
  call void @llvm.dbg.declare(metadata !{i32* %index_b}, metadata !37), !dbg !38
  call void @llvm.dbg.declare(metadata !{i32* %index_d}, metadata !39), !dbg !40
  store i32 0, i32* %index_a, align 4, !dbg !41
  br label %4, !dbg !41

; <label>:4                                       ; preds = %47, %0
  %5 = load i32* %index_a, align 4, !dbg !43
  %6 = icmp slt i32 %5, 16, !dbg !43
  br i1 %6, label %7, label %50, !dbg !43

; <label>:7                                       ; preds = %4
  store i32 0, i32* %index_b, align 4, !dbg !46
  br label %8, !dbg !46

; <label>:8                                       ; preds = %43, %7
  %9 = load i32* %index_b, align 4, !dbg !49
  %10 = icmp slt i32 %9, 16, !dbg !49
  br i1 %10, label %11, label %46, !dbg !49

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !52), !dbg !54
  store float 0.000000e+00, float* %result, align 4, !dbg !55
  store i32 0, i32* %index_d, align 4, !dbg !56
  br label %12, !dbg !56

; <label>:12                                      ; preds = %32, %11
  %13 = load i32* %index_d, align 4, !dbg !58
  %14 = icmp slt i32 %13, 16, !dbg !58
  br i1 %14, label %15, label %35, !dbg !58

; <label>:15                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{float* %product_term}, metadata !61), !dbg !63
  %16 = load i32* %index_d, align 4, !dbg !64
  %17 = load i32* %index_a, align 4, !dbg !64
  %18 = load [16 x float]** %1, align 4, !dbg !64
  %19 = getelementptr inbounds [16 x float]* %18, i32 %17, !dbg !64
  %20 = getelementptr inbounds [16 x float]* %19, i32 0, i32 %16, !dbg !64
  %21 = load float* %20, align 4, !dbg !64
  %22 = load i32* %index_b, align 4, !dbg !64
  %23 = load i32* %index_d, align 4, !dbg !64
  %24 = load [16 x float]** %2, align 4, !dbg !64
  %25 = getelementptr inbounds [16 x float]* %24, i32 %23, !dbg !64
  %26 = getelementptr inbounds [16 x float]* %25, i32 0, i32 %22, !dbg !64
  %27 = load float* %26, align 4, !dbg !64
  %28 = fmul float %21, %27, !dbg !64
  store float %28, float* %product_term, align 4, !dbg !64
  %29 = load float* %product_term, align 4, !dbg !65
  %30 = load float* %result, align 4, !dbg !65
  %31 = fadd float %30, %29, !dbg !65
  store float %31, float* %result, align 4, !dbg !65
  br label %32, !dbg !66

; <label>:32                                      ; preds = %15
  %33 = load i32* %index_d, align 4, !dbg !67
  %34 = add nsw i32 %33, 1, !dbg !67
  store i32 %34, i32* %index_d, align 4, !dbg !67
  br label %12, !dbg !67

; <label>:35                                      ; preds = %12
  %36 = load float* %result, align 4, !dbg !68
  %37 = load i32* %index_a, align 4, !dbg !68
  %38 = mul nsw i32 %37, 16, !dbg !68
  %39 = load i32* %index_b, align 4, !dbg !68
  %40 = add nsw i32 %38, %39, !dbg !68
  %41 = load float** %3, align 4, !dbg !68
  %42 = getelementptr inbounds float* %41, i32 %40, !dbg !68
  store float %36, float* %42, align 4, !dbg !68
  br label %43, !dbg !69

; <label>:43                                      ; preds = %35
  %44 = load i32* %index_b, align 4, !dbg !70
  %45 = add nsw i32 %44, 1, !dbg !70
  store i32 %45, i32* %index_b, align 4, !dbg !70
  br label %8, !dbg !70

; <label>:46                                      ; preds = %8
  br label %47, !dbg !71

; <label>:47                                      ; preds = %46
  %48 = load i32* %index_a, align 4, !dbg !72
  %49 = add nsw i32 %48, 1, !dbg !72
  store i32 %49, i32* %index_a, align 4, !dbg !72
  br label %4, !dbg !72

; <label>:50                                      ; preds = %4
  ret void, !dbg !73
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @_Z11mmult_accelPfS_S_(float* %in_A, float* %in_B, float* %out_C) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a_buf = alloca [16 x [16 x float]], align 4
  %b_buf = alloca [16 x [16 x float]], align 4
  store float* %in_A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !74), !dbg !75
  store float* %in_B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !76), !dbg !77
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !78), !dbg !79
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !80), !dbg !81
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !82), !dbg !83
  call void @llvm.dbg.declare(metadata !{[16 x [16 x float]]* %a_buf}, metadata !84), !dbg !87
  call void @llvm.dbg.declare(metadata !{[16 x [16 x float]]* %b_buf}, metadata !88), !dbg !89
  store i32 0, i32* %i, align 4, !dbg !90
  br label %4, !dbg !90

; <label>:4                                       ; preds = %27, %0
  %5 = load i32* %i, align 4, !dbg !92
  %6 = icmp slt i32 %5, 16, !dbg !92
  br i1 %6, label %7, label %30, !dbg !92

; <label>:7                                       ; preds = %4
  store i32 0, i32* %j, align 4, !dbg !95
  br label %8, !dbg !95

; <label>:8                                       ; preds = %23, %7
  %9 = load i32* %j, align 4, !dbg !98
  %10 = icmp slt i32 %9, 16, !dbg !98
  br i1 %10, label %11, label %26, !dbg !98

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4, !dbg !101
  %13 = mul nsw i32 %12, 16, !dbg !101
  %14 = load i32* %j, align 4, !dbg !101
  %15 = add nsw i32 %13, %14, !dbg !101
  %16 = load float** %1, align 4, !dbg !101
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !101
  %18 = load float* %17, align 4, !dbg !101
  %19 = load i32* %j, align 4, !dbg !101
  %20 = load i32* %i, align 4, !dbg !101
  %21 = getelementptr inbounds [16 x [16 x float]]* %a_buf, i32 0, i32 %20, !dbg !101
  %22 = getelementptr inbounds [16 x float]* %21, i32 0, i32 %19, !dbg !101
  store float %18, float* %22, align 4, !dbg !101
  br label %23, !dbg !103

; <label>:23                                      ; preds = %11
  %24 = load i32* %j, align 4, !dbg !104
  %25 = add nsw i32 %24, 1, !dbg !104
  store i32 %25, i32* %j, align 4, !dbg !104
  br label %8, !dbg !104

; <label>:26                                      ; preds = %8
  br label %27, !dbg !105

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !106
  %29 = add nsw i32 %28, 1, !dbg !106
  store i32 %29, i32* %i, align 4, !dbg !106
  br label %4, !dbg !106

; <label>:30                                      ; preds = %4
  store i32 0, i32* %i, align 4, !dbg !107
  br label %31, !dbg !107

; <label>:31                                      ; preds = %54, %30
  %32 = load i32* %i, align 4, !dbg !109
  %33 = icmp slt i32 %32, 16, !dbg !109
  br i1 %33, label %34, label %57, !dbg !109

; <label>:34                                      ; preds = %31
  store i32 0, i32* %j, align 4, !dbg !112
  br label %35, !dbg !112

; <label>:35                                      ; preds = %50, %34
  %36 = load i32* %j, align 4, !dbg !115
  %37 = icmp slt i32 %36, 16, !dbg !115
  br i1 %37, label %38, label %53, !dbg !115

; <label>:38                                      ; preds = %35
  %39 = load i32* %i, align 4, !dbg !118
  %40 = mul nsw i32 %39, 16, !dbg !118
  %41 = load i32* %j, align 4, !dbg !118
  %42 = add nsw i32 %40, %41, !dbg !118
  %43 = load float** %2, align 4, !dbg !118
  %44 = getelementptr inbounds float* %43, i32 %42, !dbg !118
  %45 = load float* %44, align 4, !dbg !118
  %46 = load i32* %j, align 4, !dbg !118
  %47 = load i32* %i, align 4, !dbg !118
  %48 = getelementptr inbounds [16 x [16 x float]]* %b_buf, i32 0, i32 %47, !dbg !118
  %49 = getelementptr inbounds [16 x float]* %48, i32 0, i32 %46, !dbg !118
  store float %45, float* %49, align 4, !dbg !118
  br label %50, !dbg !120

; <label>:50                                      ; preds = %38
  %51 = load i32* %j, align 4, !dbg !121
  %52 = add nsw i32 %51, 1, !dbg !121
  store i32 %52, i32* %j, align 4, !dbg !121
  br label %35, !dbg !121

; <label>:53                                      ; preds = %35
  br label %54, !dbg !122

; <label>:54                                      ; preds = %53
  %55 = load i32* %i, align 4, !dbg !123
  %56 = add nsw i32 %55, 1, !dbg !123
  store i32 %56, i32* %i, align 4, !dbg !123
  br label %31, !dbg !123

; <label>:57                                      ; preds = %31
  %58 = getelementptr inbounds [16 x [16 x float]]* %a_buf, i32 0, i32 0, !dbg !124
  %59 = getelementptr inbounds [16 x [16 x float]]* %b_buf, i32 0, i32 0, !dbg !124
  %60 = load float** %3, align 4, !dbg !124
  call void @_Z12mmult_kernelPA16_fS0_Pf([16 x float]* %58, [16 x float]* %59, float* %60), !dbg !124
  ret void, !dbg !125
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!17, !18, !19, !20}
!xidane.function_declaration_filename = !{!17, !21, !19, !22}
!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_kernel", metadata !"mmult_kernel", metadata !"_Z12mmult_kernelPA16_fS0_Pf", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([16 x float]*, [16 x float]*, float*)* @_Z12mmult_kernelPA16_fS0_Pf, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 9] [mmult_kernel]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !13}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!9 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !10, metadata !11, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786465, i64 0, i64 16}       ; [ DW_TAG_subrange_type ] [0, 15]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", i32 31, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z11mmult_accelPfS_S_, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 34] [mmult_accel]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{null, metadata !13, metadata !13, metadata !13}
!17 = metadata !{void ([16 x float]*, [16 x float]*, float*)* @_Z12mmult_kernelPA16_fS0_Pf}
!18 = metadata !{metadata !"void.float [16][16].1.float [16][16].1.float [256].1"}
!19 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!20 = metadata !{metadata !"void.float [256].1.float [256].1.float [256].1"}
!21 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp"}
!22 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.h"}
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!26 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!27 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"in_A", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 6]
!29 = metadata !{i32 6, i32 25, metadata !4, null}
!30 = metadata !{i32 786689, metadata !4, metadata !"in_B", metadata !5, i32 33554439, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 7]
!31 = metadata !{i32 7, i32 25, metadata !4, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"out_C", metadata !5, i32 50331656, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 8]
!33 = metadata !{i32 8, i32 25, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!34 = metadata !{i32 786688, metadata !4, metadata !"index_a", metadata !5, i32 14, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_a] [line 14]
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{i32 14, i32 7, metadata !4, null}
!37 = metadata !{i32 786688, metadata !4, metadata !"index_b", metadata !5, i32 14, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_b] [line 14]
!38 = metadata !{i32 14, i32 16, metadata !4, null}
!39 = metadata !{i32 786688, metadata !4, metadata !"index_d", metadata !5, i32 14, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index_d] [line 14]
!40 = metadata !{i32 14, i32 25, metadata !4, null}
!41 = metadata !{i32 16, i32 8, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!43 = metadata !{i32 16, i32 8, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !45, i32 16, i32 8, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!45 = metadata !{i32 786443, metadata !1, metadata !42, i32 16, i32 8, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!46 = metadata !{i32 17, i32 10, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !48, i32 17, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!48 = metadata !{i32 786443, metadata !1, metadata !42, i32 16, i32 51, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!49 = metadata !{i32 17, i32 10, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 17, i32 10, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!51 = metadata !{i32 786443, metadata !1, metadata !47, i32 17, i32 10, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!52 = metadata !{i32 786688, metadata !53, metadata !"result", metadata !5, i32 19, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 19]
!53 = metadata !{i32 786443, metadata !1, metadata !47, i32 17, i32 53, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!54 = metadata !{i32 19, i32 13, metadata !53, null}
!55 = metadata !{i32 19, i32 7, metadata !53, null}
!56 = metadata !{i32 20, i32 12, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !53, i32 20, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!58 = metadata !{i32 20, i32 12, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !60, i32 20, i32 12, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!60 = metadata !{i32 786443, metadata !1, metadata !57, i32 20, i32 12, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!61 = metadata !{i32 786688, metadata !62, metadata !"product_term", metadata !5, i32 23, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [product_term] [line 23]
!62 = metadata !{i32 786443, metadata !1, metadata !57, i32 20, i32 55, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!63 = metadata !{i32 23, i32 15, metadata !62, null}
!64 = metadata !{i32 23, i32 9, metadata !62, null}
!65 = metadata !{i32 24, i32 9, metadata !62, null}
!66 = metadata !{i32 25, i32 7, metadata !62, null}
!67 = metadata !{i32 20, i32 44, metadata !57, null}
!68 = metadata !{i32 26, i32 7, metadata !53, null}
!69 = metadata !{i32 27, i32 5, metadata !53, null}
!70 = metadata !{i32 17, i32 42, metadata !47, null}
!71 = metadata !{i32 28, i32 3, metadata !48, null}
!72 = metadata !{i32 16, i32 40, metadata !42, null}
!73 = metadata !{i32 29, i32 1, metadata !4, null}
!74 = metadata !{i32 786689, metadata !14, metadata !"in_A", metadata !5, i32 16777247, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 31]
!75 = metadata !{i32 31, i32 25, metadata !14, null}
!76 = metadata !{i32 786689, metadata !14, metadata !"in_B", metadata !5, i32 33554464, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 32]
!77 = metadata !{i32 32, i32 25, metadata !14, null}
!78 = metadata !{i32 786689, metadata !14, metadata !"out_C", metadata !5, i32 50331681, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 33]
!79 = metadata !{i32 33, i32 25, metadata !14, null}
!80 = metadata !{i32 786688, metadata !14, metadata !"i", metadata !5, i32 39, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!81 = metadata !{i32 39, i32 7, metadata !14, null}
!82 = metadata !{i32 786688, metadata !14, metadata !"j", metadata !5, i32 39, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 39]
!83 = metadata !{i32 39, i32 10, metadata !14, null}
!84 = metadata !{i32 786688, metadata !14, metadata !"a_buf", metadata !5, i32 40, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_buf] [line 40]
!85 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !10, metadata !86, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from float]
!86 = metadata !{metadata !12, metadata !12}
!87 = metadata !{i32 40, i32 9, metadata !14, null}
!88 = metadata !{i32 786688, metadata !14, metadata !"b_buf", metadata !5, i32 41, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_buf] [line 41]
!89 = metadata !{i32 41, i32 9, metadata !14, null}
!90 = metadata !{i32 44, i32 7, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !14, i32 44, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!92 = metadata !{i32 44, i32 7, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 44, i32 7, i32 2, i32 23} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!94 = metadata !{i32 786443, metadata !1, metadata !91, i32 44, i32 7, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!95 = metadata !{i32 45, i32 9, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !97, i32 45, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!97 = metadata !{i32 786443, metadata !1, metadata !91, i32 44, i32 28, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!98 = metadata !{i32 45, i32 9, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !100, i32 45, i32 9, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!100 = metadata !{i32 786443, metadata !1, metadata !96, i32 45, i32 9, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!101 = metadata !{i32 47, i32 7, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !96, i32 45, i32 30, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!103 = metadata !{i32 48, i32 5, metadata !102, null}
!104 = metadata !{i32 45, i32 25, metadata !96, null}
!105 = metadata !{i32 49, i32 3, metadata !97, null}
!106 = metadata !{i32 44, i32 23, metadata !91, null}
!107 = metadata !{i32 52, i32 7, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !14, i32 52, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!109 = metadata !{i32 52, i32 7, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !111, i32 52, i32 7, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!111 = metadata !{i32 786443, metadata !1, metadata !108, i32 52, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!112 = metadata !{i32 53, i32 9, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !114, i32 53, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!114 = metadata !{i32 786443, metadata !1, metadata !108, i32 52, i32 28, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!115 = metadata !{i32 53, i32 9, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !117, i32 53, i32 9, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!117 = metadata !{i32 786443, metadata !1, metadata !113, i32 53, i32 9, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!118 = metadata !{i32 55, i32 7, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !113, i32 53, i32 30, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_cascade//home/trungnguyen/SDSoC/samples/mmult_cascade/mmult_accel.cpp]
!120 = metadata !{i32 56, i32 5, metadata !119, null}
!121 = metadata !{i32 53, i32 25, metadata !113, null}
!122 = metadata !{i32 57, i32 3, metadata !114, null}
!123 = metadata !{i32 52, i32 23, metadata !108, null}
!124 = metadata !{i32 60, i32 3, metadata !14, null}
!125 = metadata !{i32 61, i32 1, metadata !14, null}
