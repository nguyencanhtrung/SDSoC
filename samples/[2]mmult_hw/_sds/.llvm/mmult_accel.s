; ModuleID = '/home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @_Z11mmult_accelPfS_S_(float* %in_A, float* %in_B, float* %out_C) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %result = alloca float, align 4
  %k = alloca i32, align 4
  store float* %in_A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !18), !dbg !19
  store float* %in_B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !20), !dbg !21
  store float* %out_C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !22), !dbg !23
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !24), !dbg !27
  store i32 0, i32* %row, align 4, !dbg !28
  br label %4, !dbg !28

; <label>:4                                       ; preds = %48, %0
  %5 = load i32* %row, align 4, !dbg !29
  %6 = icmp slt i32 %5, 32, !dbg !29
  br i1 %6, label %7, label %51, !dbg !29

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !32), !dbg !35
  store i32 0, i32* %col, align 4, !dbg !36
  br label %8, !dbg !36

; <label>:8                                       ; preds = %44, %7
  %9 = load i32* %col, align 4, !dbg !37
  %10 = icmp slt i32 %9, 32, !dbg !37
  br i1 %10, label %11, label %47, !dbg !37

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{float* %result}, metadata !40), !dbg !42
  store float 0.000000e+00, float* %result, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !44), !dbg !46
  store i32 0, i32* %k, align 4, !dbg !47
  br label %12, !dbg !47

; <label>:12                                      ; preds = %33, %11
  %13 = load i32* %k, align 4, !dbg !48
  %14 = icmp slt i32 %13, 32, !dbg !48
  br i1 %14, label %15, label %36, !dbg !48

; <label>:15                                      ; preds = %12
  %16 = load i32* %row, align 4, !dbg !51
  %17 = mul nsw i32 %16, 32, !dbg !51
  %18 = load i32* %k, align 4, !dbg !51
  %19 = add nsw i32 %17, %18, !dbg !51
  %20 = load float** %1, align 4, !dbg !51
  %21 = getelementptr inbounds float* %20, i32 %19, !dbg !51
  %22 = load float* %21, align 4, !dbg !51
  %23 = load i32* %k, align 4, !dbg !51
  %24 = mul nsw i32 %23, 32, !dbg !51
  %25 = load i32* %col, align 4, !dbg !51
  %26 = add nsw i32 %24, %25, !dbg !51
  %27 = load float** %2, align 4, !dbg !51
  %28 = getelementptr inbounds float* %27, i32 %26, !dbg !51
  %29 = load float* %28, align 4, !dbg !51
  %30 = fmul float %22, %29, !dbg !51
  %31 = load float* %result, align 4, !dbg !51
  %32 = fadd float %31, %30, !dbg !51
  store float %32, float* %result, align 4, !dbg !51
  br label %33, !dbg !53

; <label>:33                                      ; preds = %15
  %34 = load i32* %k, align 4, !dbg !54
  %35 = add nsw i32 %34, 1, !dbg !54
  store i32 %35, i32* %k, align 4, !dbg !54
  br label %12, !dbg !54

; <label>:36                                      ; preds = %12
  %37 = load float* %result, align 4, !dbg !55
  %38 = load i32* %row, align 4, !dbg !55
  %39 = mul nsw i32 %38, 32, !dbg !55
  %40 = load i32* %col, align 4, !dbg !55
  %41 = add nsw i32 %39, %40, !dbg !55
  %42 = load float** %3, align 4, !dbg !55
  %43 = getelementptr inbounds float* %42, i32 %41, !dbg !55
  store float %37, float* %43, align 4, !dbg !55
  br label %44, !dbg !56

; <label>:44                                      ; preds = %36
  %45 = load i32* %col, align 4, !dbg !57
  %46 = add nsw i32 %45, 1, !dbg !57
  store i32 %46, i32* %col, align 4, !dbg !57
  br label %8, !dbg !57

; <label>:47                                      ; preds = %8
  br label %48, !dbg !58

; <label>:48                                      ; preds = %47
  %49 = load i32* %row, align 4, !dbg !59
  %50 = add nsw i32 %49, 1, !dbg !59
  store i32 %50, i32* %row, align 4, !dbg !59
  br label %4, !dbg !59

; <label>:51                                      ; preds = %4
  ret void, !dbg !60
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!10, !11}
!xidane.function_declaration_filename = !{!10, !12}
!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp", metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mmult_accel", metadata !"mmult_accel", metadata !"_Z11mmult_accelPfS_S_", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z11mmult_accelPfS_S_, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 9] [mmult_accel]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{void (float*, float*, float*)* @_Z11mmult_accelPfS_S_}
!11 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!12 = metadata !{metadata !"/home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.h"}
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!16 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!17 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!18 = metadata !{i32 786689, metadata !4, metadata !"in_A", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_A] [line 6]
!19 = metadata !{i32 6, i32 25, metadata !4, null}
!20 = metadata !{i32 786689, metadata !4, metadata !"in_B", metadata !5, i32 33554439, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in_B] [line 7]
!21 = metadata !{i32 7, i32 25, metadata !4, null}
!22 = metadata !{i32 786689, metadata !4, metadata !"out_C", metadata !5, i32 50331656, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out_C] [line 8]
!23 = metadata !{i32 8, i32 25, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!24 = metadata !{i32 786688, metadata !25, metadata !"row", metadata !5, i32 10, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 10]
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 10, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!26 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!27 = metadata !{i32 10, i32 12, metadata !25, null}
!28 = metadata !{i32 10, i32 8, metadata !25, null}
!29 = metadata !{i32 10, i32 8, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 10, i32 8, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!31 = metadata !{i32 786443, metadata !1, metadata !25, i32 10, i32 8, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!32 = metadata !{i32 786688, metadata !33, metadata !"col", metadata !5, i32 11, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 11]
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 11, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!34 = metadata !{i32 786443, metadata !1, metadata !25, i32 10, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!35 = metadata !{i32 11, i32 14, metadata !33, null}
!36 = metadata !{i32 11, i32 10, metadata !33, null}
!37 = metadata !{i32 11, i32 10, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !39, i32 11, i32 10, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!39 = metadata !{i32 786443, metadata !1, metadata !33, i32 11, i32 10, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!40 = metadata !{i32 786688, metadata !41, metadata !"result", metadata !5, i32 12, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 12]
!41 = metadata !{i32 786443, metadata !1, metadata !33, i32 11, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!42 = metadata !{i32 12, i32 13, metadata !41, null}
!43 = metadata !{i32 12, i32 7, metadata !41, null}
!44 = metadata !{i32 786688, metadata !45, metadata !"k", metadata !5, i32 13, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 13]
!45 = metadata !{i32 786443, metadata !1, metadata !41, i32 13, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!46 = metadata !{i32 13, i32 16, metadata !45, null}
!47 = metadata !{i32 13, i32 12, metadata !45, null}
!48 = metadata !{i32 13, i32 12, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 13, i32 12, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!50 = metadata !{i32 786443, metadata !1, metadata !45, i32 13, i32 12, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!51 = metadata !{i32 14, i32 9, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !45, i32 13, i32 41, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/samples/mmult_hw//home/trungnguyen/SDSoC/samples/mmult_hw/mmult_accel.cpp]
!53 = metadata !{i32 15, i32 7, metadata !52, null}
!54 = metadata !{i32 13, i32 36, metadata !45, null}
!55 = metadata !{i32 16, i32 7, metadata !41, null}
!56 = metadata !{i32 17, i32 5, metadata !41, null}
!57 = metadata !{i32 11, i32 38, metadata !33, null}
!58 = metadata !{i32 18, i32 3, metadata !34, null}
!59 = metadata !{i32 10, i32 36, metadata !25, null}
!60 = metadata !{i32 19, i32 1, metadata !4, null}
