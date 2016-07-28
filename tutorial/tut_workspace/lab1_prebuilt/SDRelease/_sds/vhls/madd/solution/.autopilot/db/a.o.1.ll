; ModuleID = 'C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/madd/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@str = internal constant [5 x i8] c"madd\00"      ; [#uses=1 type=[5 x i8]*]

; [#uses=0]
define void @madd(float* %A, float* %B, float* %C) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{float* %A}, i64 0, metadata !18), !dbg !19 ; [debug line = 4:17] [debug variable = A]
  call void @llvm.dbg.value(metadata !{float* %B}, i64 0, metadata !20), !dbg !21 ; [debug line = 4:33] [debug variable = B]
  call void @llvm.dbg.value(metadata !{float* %C}, i64 0, metadata !22), !dbg !23 ; [debug line = 4:49] [debug variable = C]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %A, i32 1024) nounwind, !dbg !24 ; [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %B, i32 1024) nounwind, !dbg !26 ; [debug line = 5:34]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %C, i32 1024) nounwind, !dbg !27 ; [debug line = 5:66]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !28 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %A, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !29 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecResource(float* %A, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !30 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %B, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !31 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecResource(float* %B, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !32 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %C, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !33 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecResource(float* %C, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !34 ; [debug line = 13:1]
  br label %1, !dbg !35                           ; [debug line = 18:8]

; <label>:1                                       ; preds = %3, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %3 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %i, 32, !dbg !35       ; [#uses=1 type=i1] [debug line = 18:8]
  br i1 %exitcond1, label %4, label %.preheader.preheader, !dbg !35 ; [debug line = 18:8]

.preheader.preheader:                             ; preds = %1
  %tmp = mul i32 %i, 32, !dbg !37                 ; [#uses=1 type=i32] [debug line = 21:2]
  br label %.preheader, !dbg !41                  ; [debug line = 19:10]

.preheader:                                       ; preds = %2, %.preheader.preheader
  %j = phi i32 [ %j.1, %2 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 32, !dbg !41        ; [#uses=1 type=i1] [debug line = 19:10]
  br i1 %exitcond, label %3, label %2, !dbg !41   ; [debug line = 19:10]

; <label>:2                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !42 ; [debug line = 20:2]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !43 ; [#uses=1 type=i32] [debug line = 20:39]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 20:1]
  %tmp.2 = add nsw i32 %j, %tmp, !dbg !37         ; [#uses=1 type=i32] [debug line = 21:2]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !37       ; [#uses=3 type=i64] [debug line = 21:2]
  %A.addr = getelementptr inbounds float* %A, i64 %tmp.3, !dbg !37 ; [#uses=1 type=float*] [debug line = 21:2]
  %A.load = load float* %A.addr, align 4, !dbg !37 ; [#uses=2 type=float] [debug line = 21:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %A.load) nounwind
  %B.addr = getelementptr inbounds float* %B, i64 %tmp.3, !dbg !37 ; [#uses=1 type=float*] [debug line = 21:2]
  %B.load = load float* %B.addr, align 4, !dbg !37 ; [#uses=2 type=float] [debug line = 21:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %B.load) nounwind
  %tmp.4 = fadd float %A.load, %B.load, !dbg !37  ; [#uses=1 type=float] [debug line = 21:2]
  %C.addr = getelementptr inbounds float* %C, i64 %tmp.3, !dbg !37 ; [#uses=1 type=float*] [debug line = 21:2]
  store float %tmp.4, float* %C.addr, align 4, !dbg !37 ; [debug line = 21:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !45 ; [#uses=0 type=i32] [debug line = 21:39]
  %j.1 = add nsw i32 %j, 1, !dbg !46              ; [#uses=1 type=i32] [debug line = 19:25]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !47), !dbg !46 ; [debug line = 19:25] [debug variable = j]
  br label %.preheader, !dbg !46                  ; [debug line = 19:25]

; <label>:3                                       ; preds = %.preheader
  %i.1 = add nsw i32 %i, 1, !dbg !48              ; [#uses=1 type=i32] [debug line = 18:23]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !49), !dbg !48 ; [debug line = 18:23] [debug variable = i]
  br label %1, !dbg !48                           ; [debug line = 18:23]

; <label>:4                                       ; preds = %1
  ret void, !dbg !50                              ; [debug line = 23:1]
}

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/madd/solution/.autopilot/db/madd.pragma.2.cpp", metadata !"c:/labs/lab1_prebuilt/SDRelease/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"madd", metadata !"madd", metadata !"_Z4maddPfS_S_", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, float*)* @madd, null, null, metadata !11, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"C:/labs/lab1_prebuilt/SDRelease/_sds/vhls/src/madd.cpp", metadata !"c:/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !16, i32 157, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"C:/Xilinx/SDSoC/2014.4/VIVADO~1/2014.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\5Cstdlib.h", metadata !"c:/labs/lab1_prebuilt/SDRelease/_sds/vhls", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786689, metadata !5, metadata !"A", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 4, i32 17, metadata !5, null}
!20 = metadata !{i32 786689, metadata !5, metadata !"B", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 4, i32 33, metadata !5, null}
!22 = metadata !{i32 786689, metadata !5, metadata !"C", metadata !6, i32 50331652, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!23 = metadata !{i32 4, i32 49, metadata !5, null}
!24 = metadata !{i32 5, i32 2, metadata !25, null}
!25 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 5, i32 34, metadata !25, null}
!27 = metadata !{i32 5, i32 66, metadata !25, null}
!28 = metadata !{i32 7, i32 1, metadata !25, null}
!29 = metadata !{i32 8, i32 1, metadata !25, null}
!30 = metadata !{i32 9, i32 1, metadata !25, null}
!31 = metadata !{i32 10, i32 1, metadata !25, null}
!32 = metadata !{i32 11, i32 1, metadata !25, null}
!33 = metadata !{i32 12, i32 1, metadata !25, null}
!34 = metadata !{i32 13, i32 1, metadata !25, null}
!35 = metadata !{i32 18, i32 8, metadata !36, null}
!36 = metadata !{i32 786443, metadata !25, i32 18, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 21, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !39, i32 20, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786443, metadata !40, i32 19, i32 29, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 786443, metadata !36, i32 19, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 19, i32 10, metadata !40, null}
!42 = metadata !{i32 20, i32 2, metadata !38, null}
!43 = metadata !{i32 20, i32 39, metadata !38, null}
!44 = metadata !{i32 20, i32 1, metadata !38, null}
!45 = metadata !{i32 21, i32 39, metadata !38, null}
!46 = metadata !{i32 19, i32 25, metadata !40, null}
!47 = metadata !{i32 786688, metadata !25, metadata !"j", metadata !6, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!48 = metadata !{i32 18, i32 23, metadata !36, null}
!49 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !6, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!50 = metadata !{i32 23, i32 1, metadata !25, null}
