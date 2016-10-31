; ModuleID = '/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7-xilinx-linux-gnueabi"

; Function Attrs: nounwind
define void @_Z4maddPfS_S_(float* %A, float* %B, float* %C) #0 {
  %1 = alloca float*, align 4
  %2 = alloca float*, align 4
  %3 = alloca float*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store float* %A, float** %1, align 4
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !19), !dbg !20
  store float* %B, float** %2, align 4
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !21), !dbg !22
  store float* %C, float** %3, align 4
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !23), !dbg !24
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !25), !dbg !27
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !28), !dbg !29
  store i32 0, i32* %i, align 4, !dbg !30
  br label %4, !dbg !30

; <label>:4                                       ; preds = %37, %0
  %5 = load i32* %i, align 4, !dbg !32
  %6 = icmp slt i32 %5, 32, !dbg !32
  br i1 %6, label %7, label %40, !dbg !32

; <label>:7                                       ; preds = %4
  store i32 0, i32* %j, align 4, !dbg !35
  br label %8, !dbg !35

; <label>:8                                       ; preds = %33, %7
  %9 = load i32* %j, align 4, !dbg !37
  %10 = icmp slt i32 %9, 32, !dbg !37
  br i1 %10, label %11, label %36, !dbg !37

; <label>:11                                      ; preds = %8
  %12 = load i32* %i, align 4, !dbg !40
  %13 = mul nsw i32 %12, 32, !dbg !40
  %14 = load i32* %j, align 4, !dbg !40
  %15 = add nsw i32 %13, %14, !dbg !40
  %16 = load float** %1, align 4, !dbg !40
  %17 = getelementptr inbounds float* %16, i32 %15, !dbg !40
  %18 = load float* %17, align 4, !dbg !40
  %19 = load i32* %i, align 4, !dbg !40
  %20 = mul nsw i32 %19, 32, !dbg !40
  %21 = load i32* %j, align 4, !dbg !40
  %22 = add nsw i32 %20, %21, !dbg !40
  %23 = load float** %2, align 4, !dbg !40
  %24 = getelementptr inbounds float* %23, i32 %22, !dbg !40
  %25 = load float* %24, align 4, !dbg !40
  %26 = fadd float %18, %25, !dbg !40
  %27 = load i32* %i, align 4, !dbg !40
  %28 = mul nsw i32 %27, 32, !dbg !40
  %29 = load i32* %j, align 4, !dbg !40
  %30 = add nsw i32 %28, %29, !dbg !40
  %31 = load float** %3, align 4, !dbg !40
  %32 = getelementptr inbounds float* %31, i32 %30, !dbg !40
  store float %26, float* %32, align 4, !dbg !40
  br label %33, !dbg !40

; <label>:33                                      ; preds = %11
  %34 = load i32* %j, align 4, !dbg !41
  %35 = add nsw i32 %34, 1, !dbg !41
  store i32 %35, i32* %j, align 4, !dbg !41
  br label %8, !dbg !41

; <label>:36                                      ; preds = %8
  br label %37, !dbg !42

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !43
  %39 = add nsw i32 %38, 1, !dbg !43
  store i32 %39, i32* %i, align 4, !dbg !43
  br label %4, !dbg !43

; <label>:40                                      ; preds = %4
  ret void, !dbg !44
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.function_declaration_type = !{!11, !12}
!xidane.function_declaration_filename = !{!11, !13}
!llvm.module.flags = !{!14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = metadata !{i32 786449, metadata !1, i32 4, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug/../src/madd.cpp] [DW_LANG_C_plus_plus]
!1 = metadata !{metadata !"../src/madd.cpp", metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"madd", metadata !"madd", metadata !"_Z4maddPfS_S_", i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @_Z4maddPfS_S_, null, null, metadata !2, i32 5} ; [ DW_TAG_subprogram ] [line 4] [def] [scope 5] [madd]
!5 = metadata !{metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp", metadata !"/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{void (float*, float*, float*)* @_Z4maddPfS_S_}
!12 = metadata !{metadata !"void.float [1024].1.float [1024].1.float [1024].1"}
!13 = metadata !{metadata !"../src/madd.h"}
!14 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!15 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!16 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!17 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!18 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!19 = metadata !{i32 786689, metadata !4, metadata !"A", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 4]
!20 = metadata !{i32 4, i32 17, metadata !4, null}
!21 = metadata !{i32 786689, metadata !4, metadata !"B", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 4]
!22 = metadata !{i32 4, i32 39, metadata !4, null}
!23 = metadata !{i32 786689, metadata !4, metadata !"C", metadata !6, i32 50331652, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 4]
!24 = metadata !{i32 4, i32 61, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !6, i32 6, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 6]
!26 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!27 = metadata !{i32 6, i32 7, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !6, i32 6, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 6]
!29 = metadata !{i32 6, i32 10, metadata !4, null}
!30 = metadata !{i32 8, i32 8, metadata !31, null} ; [ DW_TAG_imported_declaration ]
!31 = metadata !{i32 786443, metadata !5, metadata !4, i32 8, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!32 = metadata !{i32 8, i32 8, metadata !33, null} ; [ DW_TAG_imported_declaration ]
!33 = metadata !{i32 786443, metadata !5, metadata !34, i32 8, i32 8, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!34 = metadata !{i32 786443, metadata !5, metadata !31, i32 8, i32 8, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!35 = metadata !{i32 9, i32 10, metadata !36, null}
!36 = metadata !{i32 786443, metadata !5, metadata !31, i32 9, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!37 = metadata !{i32 9, i32 10, metadata !38, null}
!38 = metadata !{i32 786443, metadata !5, metadata !39, i32 9, i32 10, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!39 = metadata !{i32 786443, metadata !5, metadata !36, i32 9, i32 10, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [/home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/SDDebug//home/trungnguyen/SDSoC/tutorial/tut_workspace/matrix_mult_lab2/src/madd.cpp]
!40 = metadata !{i32 11, i32 7, metadata !36, null}
!41 = metadata !{i32 9, i32 28, metadata !36, null}
!42 = metadata !{i32 11, i32 48, metadata !36, null}
!43 = metadata !{i32 8, i32 26, metadata !31, null} ; [ DW_TAG_imported_declaration ]
!44 = metadata !{i32 13, i32 1, metadata !4, null}