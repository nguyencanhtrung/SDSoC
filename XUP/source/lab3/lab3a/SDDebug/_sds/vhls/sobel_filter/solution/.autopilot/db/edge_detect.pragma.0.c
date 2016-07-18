#1 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c"
#1 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c" 1
#1 "<built-in>" 1
#1 "<built-in>" 3
#147 "<built-in>" 3
#1 "<command line>" 1
#10 "<command line>"
#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2015 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************

 *
 * $Id$
 */
#283 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/



    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;

    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;

    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));

    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));

    void _ssdm_op_Return() __attribute__ ((nothrow));

    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));

    void _ssdm_op_SpecReset() __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface() __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));

    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));

    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */

    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));

    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));

    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));

    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));

    void _ssdm_SpecStream() __attribute__ ((nothrow));

    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));

    void _ssdm_SpecDependence() __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));

    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense() __attribute__ ((nothrow));


/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#11 "<command line>" 2
#1 "<built-in>" 2
#1 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c" 2
/*
 * edge_detect.c
 *
 *  Created on: May 29, 2015
 *      Author: shaunpur
 */


#1 "C:/xup/SDSoC/labs/lab3a/src/lab_design.h" 1
/*
 * lab_design.h
 *
 *  Created on: May 28, 2015
 *      Author: shaunpur
 */




/* includes */

#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
/* 7.8 Format conversion of integer types <inttypes.h> */





#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */





#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#18 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 3
/* mingw.org's version macros: these make gcc to define
   MINGW32_SUPPORTS_MT_EH and to use the _CRT_MT global
   and the __mingwthr_key_dtor() function from the MinGW
   CRT in its private gthr-win32.h header. */




/* MS does not prefix symbols by underscores for 64-bit.  */

/* As we have to support older gcc version, which are using underscores
   as symbol prefix for x64, we have to check here for the user label
   prefix defined by gcc.  */
#62 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 3
/* Use alias for msvcr80 export of get/set_output_format.  */




/* Set VC specific compiler target macros.  */
#10 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3


/* C/C++ specific language defines.  */
#32 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#147 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#225 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/*  High byte is the major version, low byte is the minor. */
#247 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/*typedef int __int128 __attribute__ ((__mode__ (TI)));*/
#277 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */








#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#674 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
#674 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3

#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
#675 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
#13 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 2 3


#pragma pack(push,_CRT_PACKING)








 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
#46 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
/* Use GCC builtins */
#102 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
#pragma pack(pop)
#277 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3


#pragma pack(push,_CRT_PACKING)
#316 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#370 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long size_t;
#380 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ssize_t;
#392 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long intptr_t;
#405 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long uintptr_t;
#418 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ptrdiff_t;
#428 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;
#456 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;







typedef __time64_t time_t;
#518 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#605 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* MSVC-isms: */

struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;






/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);





#pragma pack(pop)
#11 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 2 3

#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 1 3 4
/*===---- stdint.h - Standard header for sized integer types --------------===*\
 *
 * Copyright (c) 2009 Chris Lattner
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
\*===----------------------------------------------------------------------===*/




/* If we're hosted, fall back to the system's stdint.h, which might have
 * additional definitions.
 */



#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 1 3 4
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
/* ISO C9x  7.18  Integer types <stdint.h>
 * Based on ISO/IEC SC22/WG14 9899 Committee draft (SC22 N2794)
 *
 *  THIS SOFTWARE IS NOT COPYRIGHTED
 *
 *  Contributor: Danny Smith <danny_r_smith_2001@yahoo.co.nz>
 *
 *  This source code is offered for use in the public domain. You may
 *  use, modify or distribute it freely.
 *
 *  This code is distributed in the hope that it will be useful but
 *  WITHOUT ANY WARRANTY. ALL WARRANTIES, EXPRESS OR IMPLIED ARE HEREBY
 *  DISCLAIMED. This includes but is not limited to warranties of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 *  Date: 2000-12-02
 */






#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#28 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4




#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */






typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef unsigned short wchar_t;
#56 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#32 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4


/* 7.18.1.1  Exact-width integer types */
typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;

/* 7.18.1.2  Minimum-width integer types */
typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;

/*  7.18.1.3  Fastest minimum-width integer types
 *  Not actually guaranteed to be fastest for all purposes
 *  Here we use the exact-width types for 8 and 16-bit ints.
 */
typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;

/* 7.18.1.5  Greatest-width integer types */
__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;

/* 7.18.2  Limits of specified-width integer types */


/* 7.18.2.1  Limits of exact-width integer types */
#90 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
/* 7.18.2.2  Limits of minimum-width integer types */
#106 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
/* 7.18.2.3  Limits of fastest minimum-width integer types */
#122 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
/* 7.18.2.4  Limits of integer types capable of holding
    object pointers */
#134 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
/* 7.18.2.5  Limits of greatest-width integer types */




/* 7.18.3  Limits of other integer types */
#164 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
/*
 * wint_t is unsigned short for compatibility with MS runtime
 */






/* 7.18.4  Macros for integer constants */


/* 7.18.4.1  Macros for minimum-width integer constants

    Accoding to Douglas Gwyn <gwyn@arl.mil>:
	"This spec was changed in ISO/IEC 9899:1999 TC1; in ISO/IEC
	9899:1999 as initially published, the expansion was required
	to be an integer constant of precisely matching type, which
	is impossible to accomplish for the shorter types on most
	platforms, because C99 provides no standard way to designate
	an integer constant with width less than that of type int.
	TC1 changed this to require just an integer constant
	*expression* with *promoted* type."

	The trick used here is from Clive D W Feather.
*/




/*  The 'trick' doesn't work in C89 for long long because, without
    suffix, (val) will be evaluated as int, not intmax_t */







/* 7.18.4.2  Macros for greatest-width integer constants */
#33 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 2 3 4
#12 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 2 3


#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#56 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#14 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 2 3






typedef struct {
 intmax_t quot;
 intmax_t rem;
 } imaxdiv_t;

/* Restore to !define(__USE_MINGW_ANSI_STDIO) */

#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw_print_push.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

/* Undefine __mingw_<printf> macros.  */
#26 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 2 3




/* 7.8.1 Macros for format specifiers
 * 
 * MS runtime does not yet understand C9x standard "ll"
 * length specifier. It appears to treat "ll" as "l".
 * The non-standard I64 length specifier causes warning in GCC,
 * but understood by MS runtime functions.
 */

/* fprintf macros for signed types */
#90 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 3
/* fprintf macros for unsigned types */
#143 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 3
/*
 *   fscanf macros for signed int types
 *   NOTE: if 32-bit int is used for int_fast8_t and int_fast16_t
 *   (see stdint.h, 7.18.1.3), FAST8 and FAST16 should have
 *   no length identifiers
 */
#206 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 3
/* fscanf macros for unsigned int types */
#279 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 3
intmax_t imaxabs (intmax_t j);




imaxdiv_t imaxdiv (intmax_t numer, intmax_t denom);

/* 7.8.2 Conversion functions for greatest-width integer types */

intmax_t strtoimax (const char* __restrict__ nptr,
                            char** __restrict__ endptr, int base);
uintmax_t strtoumax (const char* __restrict__ nptr,
        char** __restrict__ endptr, int base);

intmax_t wcstoimax (const wchar_t* __restrict__ nptr,
                            wchar_t** __restrict__ endptr, int base);
uintmax_t wcstoumax (const wchar_t* __restrict__ nptr,
        wchar_t** __restrict__ endptr, int base);

/* Set PRI... and SCN... according to __USE_MINGW_ANSI_STDIO.  */

#1 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw_print_pop.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */

/* Define __mingw_<printf> macros.  */
#299 "C:/Xilinx/SDSoC/2015.4/VIVADO~1/2015.4/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\inttypes.h" 2 3
#12 "C:/xup/SDSoC/labs/lab3a/src/lab_design.h" 2






// pull out the color component and return as a value between 0 and 255
#27 "C:/xup/SDSoC/labs/lab3a/src/lab_design.h"
/* define types and structures */
#38 "C:/xup/SDSoC/labs/lab3a/src/lab_design.h"
typedef union pixel {
 struct {
  uint8_t red;
  uint8_t green;
  uint8_t blue;
 };
 struct {
  uint8_t gray;
 };
} pixel_t;

typedef struct frame {
 uint32_t height;
 uint32_t width;
 uint8_t *colorFrame; //Multiply by COLOR_CHANNELS for each color channel, RGB
 uint8_t *grayFrame;
} frame_t;
#9 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c" 2
#1 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.h" 1
/*
 * edge_detect.h
 *
 *  Created on: May 29, 2015
 *      Author: shaunpur
 */




/* macros */


/* function proto-types */

//#pragma SDS data sys_port(input:AFI, output:AFI)
#pragma SDS data buffer_depth(input:2073600, output:2073600)
int sobel_filter(uint8_t *input, uint8_t *output);
#10 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c" 2

/* macros */
#20 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c"
/* define types and structures */
typedef uint8_t window_t[3][3];
typedef uint8_t linebuffer_t[3][1920];

/* function prototypes */
static unsigned char sobel_operator(window_t window);
static void linebuffer_shift_up(linebuffer_t M, int col);
static uint8_t linebuffer_getval(linebuffer_t M, int RowIndex, int ColIndex);
static void linebuffer_insert_bottom(linebuffer_t M, uint8_t value, int col);
static void window_shift_right(window_t M);
static void window_insert(window_t M, uint8_t value, int row, int col);
static uint8_t window_getval(window_t M, int RowIndex, int ColIndex);

//Sobel Computation using a 3x3 neighborhood
static unsigned char sobel_operator(window_t window) {_ssdm_SpecArrayDimSize(window,3);
 short x_weight = 0;
 short y_weight = 0;

 short edge_weight;
 unsigned char edge_val;

 int i;
 int j;

 const short x_op[3][3] = { { -1, 0, 1 }, { -2, 0, 2 },
   { -1, 0, 1 } };
_ssdm_SpecConstant(x_op);
#45 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c"


 const short y_op[3][3] = { { 1, 2, 1 }, { 0, 0, 0 }, {
   -1, -2, -1 } };
_ssdm_SpecConstant(y_op);
#48 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c"


 //Compute approximation of the gradients in the X-Y direction
 for (i = 0; i < 3; i++) {
  for (j = 0; j < 3; j++) {

   // X direction gradient
   x_weight = x_weight + (window_getval(window, i, j) * x_op[i][j]);

   // Y direction gradient
   y_weight = y_weight + (window_getval(window, i, j) * y_op[i][j]);
  }
 }

 edge_weight = ((x_weight>0)? x_weight : -x_weight) + ((y_weight>0)? y_weight : -y_weight);

 //Edge thresholding
 if (edge_weight > 200)
  edge_weight = 255;
 else if (edge_weight < 100)
  edge_weight = 0;
 edge_val = (unsigned char) edge_weight;

 return edge_val;
}

//Main function for Sobel Filtering
//This function includes a line buffer for a streaming implementation
int sobel_filter(uint8_t *input, uint8_t *output) {
#pragma HLS LATENCY min=1
#76 "C:/xup/SDSoC/labs/lab3a/src/edge_detect.c"


#pragma AP INTERFACE ap_fifo port=input depth=2073600
#pragma AP INTERFACE ap_fifo port=output depth=2073600

 int row;
 int col;
 int index = 0;

 linebuffer_t buff_A;
 window_t buff_C;

 for (row = 0; row < 1080 + 1; row++) {
  for (col = 0; col < 1920 + 1; col++) {

#pragma AP PIPELINE II = 1

 // Temp values are used to reduce the number of memory reads
   unsigned short input_data = 0;
   unsigned char temp = 0;
   unsigned char tempx = 0;

   //Line Buffer fill
   if (col < 1920) {
    linebuffer_shift_up(buff_A, col);
    temp = linebuffer_getval(buff_A, 0, col);
   }

   //There is an offset to accomodate the active pixel region
   //There are only NUMCOLS and NUMROWS valid pixels in the image
   if ((col < 1920) & (row < 1080)) {
    unsigned char y;
    index = row * 1920 + col;
    input_data = input[index]; //[row*NUMCOLS+col];
    y = input_data >> 0;
    tempx = y;
    linebuffer_insert_bottom(buff_A, tempx, col);
   }

   //Shift the processing window to make room for the new column
   window_shift_right(buff_C);

   //The Sobel processing window only needs to store luminance values
   //rgb2y function computes the luminance from the color pixel
   if (col < 1920) {
    window_insert(buff_C, linebuffer_getval(buff_A, 2, col), 0, 2);
    window_insert(buff_C, temp, 1, 2);
    window_insert(buff_C, tempx, 2, 2);
   }

   unsigned char edge;
   //The sobel operator only works on the inner part of the image
   //This design assumes there are no edges on the boundary of the image
   //Sobel operation on the inner portion of the image
   edge = sobel_operator(buff_C);


   //The output image is offset from the input to account for the line buffer
   if (row > 0 && col > 0) {
    index = (row - 1) * 1920 + (col - 1);
    output[index] = (edge << 0) | 0;
   }
  }
 }
 return 0;
}

/* Line buffer shift up
 * Assumes new data pixel will be entered at the bottom of the line buffer
 * The bottom is row = 0
 */
static void linebuffer_shift_up(linebuffer_t M, int col) {_ssdm_SpecArrayDimSize(M,3);
#pragma AP inline
 int i;
 for (i = 3 - 1; i > 0; i--) {
#pragma AP unroll
 M[i][col] = M[i - 1][col];
 }
}

/* Line buffer getval
 * Returns the data value in the line buffer at position RowIndex, ColIndex
 */
static uint8_t linebuffer_getval(linebuffer_t M, int RowIndex, int ColIndex) {_ssdm_SpecArrayDimSize(M,3);
#pragma AP inline

 uint8_t return_value;
 return_value = M[RowIndex][ColIndex];
 return return_value;
}

/* Line buffer insert bottom
 * Inserts a new value in the bottom row of the line buffer at column = col
 * The bottom is row = 0
 */
static void linebuffer_insert_bottom(linebuffer_t M, uint8_t value, int col) {_ssdm_SpecArrayDimSize(M,3);
#pragma AP inline

 M[0][col] = value;
}

/* Window shift right
 * Moves all the contents of the window horizontally
 * Assumes new values will be placed in column = WIDOW_WIDTH-1
 */
static void window_shift_right(window_t M) {_ssdm_SpecArrayDimSize(M,3);
#pragma AP inline
 int i, j;
 for (i = 0; i < 3; i++) {
#pragma AP unroll
 for (j = 0; j < 3 - 1; j++) {
#pragma AP unroll
 M[i][j] = M[i][j + 1];
  }
 }
}

/* Window insert
 * Inserts a new value at any location of the window
 */
static void window_insert(window_t M, uint8_t value, int row, int col) {_ssdm_SpecArrayDimSize(M,3);
#pragma AP inline
 M[row][col] = value;
}

/* Window getval
 * Returns the value of any window location
 */
static uint8_t window_getval(window_t M, int RowIndex, int ColIndex) {_ssdm_SpecArrayDimSize(M,3);
#pragma AP inline
 uint8_t return_value;
 return_value = M[RowIndex][ColIndex];
 return return_value;
}
