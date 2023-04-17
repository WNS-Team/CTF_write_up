; ---------------------------------------------------------------------------

RUNTIME_FUNCTION struc ; (sizeof=0xC, mappedto_22)
                                        ; XREF: .pdata:ExceptionDir/r
                                        ; .pdata:000000000040600C/r ...
FunctionStart   dd ?                    ; offset rva
FunctionEnd     dd ?                    ; offset rva pastend
UnwindInfo      dd ?                    ; offset rva
RUNTIME_FUNCTION ends

; ---------------------------------------------------------------------------

UNWIND_INFO_HDR struc ; (sizeof=0x4, mappedto_23)
                                        ; XREF: .xdata:stru_407000/r
                                        ; .xdata:stru_407004/r ...
Ver3_Flags      db ?                    ; base 16
PrologSize      db ?                    ; base 16
CntUnwindCodes  db ?                    ; base 16
FrReg_FrRegOff  db ?                    ; base 16
UNWIND_INFO_HDR ends

; ---------------------------------------------------------------------------

UNWIND_CODE     struc ; (sizeof=0x2, mappedto_24)
                                        ; XREF: .xdata:0000000000407008/r
                                        ; .xdata:0000000000407010/r ...
PrologOff       db ?                    ; base 16
OpCode_OpInfo   db ?                    ; base 16
UNWIND_CODE     ends

; ---------------------------------------------------------------------------

C_SCOPE_TABLE   struc ; (sizeof=0x10, mappedto_25)
                                        ; XREF: .xdata:0000000000407038/r
                                        ; .xdata:0000000000407058/r
Begin           dd ?                    ; offset rva
End             dd ?                    ; offset rva pastend
Handler         dd ?                    ; offset rva
Target          dd ?                    ; offset rva
C_SCOPE_TABLE   ends

; ---------------------------------------------------------------------------

_STARTUPINFOA   struc ; (sizeof=0x68, align=0x8, copyof_26)
                                        ; XREF: __tmainCRTStartup/r
cb              dd ?
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
lpReserved      dq ?                    ; offset
lpDesktop       dq ?                    ; offset
lpTitle         dq ?                    ; offset
dwX             dd ?
dwY             dd ?
dwXSize         dd ?
dwYSize         dd ?
dwXCountChars   dd ?
dwYCountChars   dd ?
dwFillAttribute dd ?
dwFlags         dd ?                    ; XREF: __tmainCRTStartup+17F/r
wShowWindow     dw ?                    ; XREF: __tmainCRTStartup:loc_401430/r
cbReserved2     dw ?
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
lpReserved2     dq ?                    ; offset
hStdInput       dq ?                    ; offset
hStdOutput      dq ?                    ; offset
hStdError       dq ?                    ; offset
_STARTUPINFOA   ends

; ---------------------------------------------------------------------------

_FILETIME       struc ; (sizeof=0x8, align=0x4, copyof_34)
                                        ; XREF: __security_init_cookie/r
dwLowDateTime   dd ?                    ; XREF: __security_init_cookie+1E/w
                                        ; __security_init_cookie+4B/r
dwHighDateTime  dd ?
_FILETIME       ends

; ---------------------------------------------------------------------------

LARGE_INTEGER   union ; (sizeof=0x8, align=0x8, copyof_35)
                                        ; XREF: __security_init_cookie+74/r
                                        ; __security_init_cookie/r
anonymous_0     _LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ?
u               _LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ?
QuadPart        dq ?
LARGE_INTEGER   ends

; ---------------------------------------------------------------------------

_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E struc ; (sizeof=0x8, align=0x4, copyof_37)
                                        ; XREF: LARGE_INTEGER/r
                                        ; LARGE_INTEGER/r
LowPart         dd ?
HighPart        dd ?
_LARGE_INTEGER::$837407842DC9087486FDFA5FEB63B74E ends

; ---------------------------------------------------------------------------

_CONTEXT        struc ; (sizeof=0x4D0, align=0x10, copyof_40)
                                        ; XREF: .bss:GS_ContextRecord/r
P1Home          dq ?
P2Home          dq ?
P3Home          dq ?
P4Home          dq ?
P5Home          dq ?
P6Home          dq ?
ContextFlags    dd ?
_MxCsr          dd ?
SegCs           dw ?
SegDs           dw ?
SegEs           dw ?
SegFs           dw ?
SegGs           dw ?
SegSs           dw ?
EFlags          dd ?
Dr0             dq ?
Dr1             dq ?
Dr2             dq ?
Dr3             dq ?
Dr6             dq ?
Dr7             dq ?
_Rax            dq ?
_Rcx            dq ?                    ; XREF: __report_gsfailure+7C/w
_Rdx            dq ?
_Rbx            dq ?
_Rsp            dq ?                    ; XREF: __report_gsfailure+EC/w
_Rbp            dq ?
_Rsi            dq ?
_Rdi            dq ?
_R8             dq ?
_R9             dq ?
_R10            dq ?
_R11            dq ?
_R12            dq ?
_R13            dq ?
_R14            dq ?
_R15            dq ?
_Rip            dq ?                    ; XREF: __report_gsfailure+1A/r
                                        ; __report_gsfailure:loc_4024E3/r ...
anonymous_0     _CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB ?
VectorRegister  M128A 26 dup(?)
VectorControl   dq ?
DebugControl    dq ?
LastBranchToRip dq ?
LastBranchFromRip dq ?
LastExceptionToRip dq ?
LastExceptionFromRip dq ?
_CONTEXT        ends

; ---------------------------------------------------------------------------

_CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB union ; (sizeof=0x200, align=0x10, copyof_42)
                                        ; XREF: _CONTEXT/r
FltSave         XMM_SAVE_AREA32 ?
anonymous_0     _CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB::$897D11C01F73F7E79A06B0B9ED9B9414 ?
_CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB ends

; ---------------------------------------------------------------------------

XMM_SAVE_AREA32 struc ; (sizeof=0x200, align=0x10, copyof_43)
                                        ; XREF: _CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB/r
ControlWord     dw ?
StatusWord      dw ?
TagWord         db ?
Reserved1       db ?
ErrorOpcode     dw ?
ErrorOffset     dd ?
ErrorSelector   dw ?
Reserved2       dw ?
DataOffset      dd ?
DataSelector    dw ?
Reserved3       dw ?
_MxCsr          dd ?
MxCsr_Mask      dd ?
FloatRegisters  M128A 8 dup(?)
XmmRegisters    M128A 16 dup(?)
Reserved4       db 96 dup(?)
XMM_SAVE_AREA32 ends

; ---------------------------------------------------------------------------

M128A           struc ; (sizeof=0x10, align=0x10, copyof_46)
                                        ; XREF: XMM_SAVE_AREA32/r
                                        ; XMM_SAVE_AREA32/r ...
Low             dq ?
High            dq ?
M128A           ends

; ---------------------------------------------------------------------------

_CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB::$897D11C01F73F7E79A06B0B9ED9B9414 struc ; (sizeof=0x1A0, align=0x10, copyof_49)
                                        ; XREF: _CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB/r
Header          M128A 2 dup(?)
Legacy          M128A 8 dup(?)
_Xmm0           M128A ?
_Xmm1           M128A ?
_Xmm2           M128A ?
_Xmm3           M128A ?
_Xmm4           M128A ?
_Xmm5           M128A ?
_Xmm6           M128A ?
_Xmm7           M128A ?
_Xmm8           M128A ?
_Xmm9           M128A ?
_Xmm10          M128A ?
_Xmm11          M128A ?
_Xmm12          M128A ?
_Xmm13          M128A ?
_Xmm14          M128A ?
_Xmm15          M128A ?
_CONTEXT::$D2ECA93702C646ACAFACD524BE9E8FEB::$897D11C01F73F7E79A06B0B9ED9B9414 ends

; ---------------------------------------------------------------------------

_EXCEPTION_POINTERS struc ; (sizeof=0x10, align=0x8, copyof_50)
                                        ; XREF: .rdata:GS_ExceptionPointers/r
ExceptionRecord dq ?                    ; offset
ContextRecord   dq ?                    ; offset
_EXCEPTION_POINTERS ends

; ---------------------------------------------------------------------------

_MEMORY_BASIC_INFORMATION struc ; (sizeof=0x30, align=0x8, copyof_57)
                                        ; XREF: __write_memory.part.0/r
BaseAddress     dq ?                    ; XREF: __write_memory_part_0+13D/r ; offset
AllocationBase  dq ?                    ; offset
AllocationProtect dd ?
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
RegionSize      dq ?                    ; XREF: __write_memory_part_0+142/r
State           dd ?
Protect         dd ?                    ; XREF: __write_memory_part_0+BA/r
Type            dd ?
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
                db ? ; undefined
_MEMORY_BASIC_INFORMATION ends

; ---------------------------------------------------------------------------

_IMAGE_RUNTIME_FUNCTION_ENTRY struc ; (sizeof=0xC, align=0x4, copyof_59)
                                        ; XREF: .bss:emu_pdata/r
BeginAddress    dd ?
EndAddress      dd ?
anonymous_0     _IMAGE_RUNTIME_FUNCTION_ENTRY::$1FC7DDE9AB0EB2C3B18F286E3EAA9FDE ?
_IMAGE_RUNTIME_FUNCTION_ENTRY ends

; ---------------------------------------------------------------------------

_IMAGE_RUNTIME_FUNCTION_ENTRY::$1FC7DDE9AB0EB2C3B18F286E3EAA9FDE union ; (sizeof=0x4, align=0x4, copyof_60)
                                        ; XREF: _IMAGE_RUNTIME_FUNCTION_ENTRY/r
UnwindInfoAddress dd ?
UnwindData      dd ?
_IMAGE_RUNTIME_FUNCTION_ENTRY::$1FC7DDE9AB0EB2C3B18F286E3EAA9FDE ends

; ---------------------------------------------------------------------------

_RTL_CRITICAL_SECTION struc ; (sizeof=0x28, align=0x8, copyof_61)
                                        ; XREF: .bss:__mingwthr_cs/r
DebugInfo       dq ?                    ; offset
LockCount       dd ?
RecursionCount  dd ?
OwningThread    dq ?                    ; offset
LockSemaphore   dq ?                    ; offset
SpinCount       dq ?
_RTL_CRITICAL_SECTION ends


;
; +-------------------------------------------------------------------------+
; |      This file was generated by The Interactive Disassembler (IDA)      |
; |           Copyright (c) 2022 Hex-Rays, <support@hex-rays.com>           |
; |                      License info: 48-18FF-976C-9D                      |
; |                       Think-Cell Operations GmbH                        |
; +-------------------------------------------------------------------------+
;
; Input SHA256 : D822249FC531A8D3D5929AA08941DF81B05CF66E018A76DF3D44603441CEC61C
; Input MD5    : 151AB42DEB14AE1D2A6B91BE2CC03850
; Input CRC32  : CEB5F389

; File Name   : C:\Users\Admin\Downloads\Функциональный ад\task5.exe
; Format      : Portable executable for AMD64 (PE)
; Imagebase   : 400000
; Timestamp   : 62C3D185 (Tue Jul 05 05:52:05 2022)
; Section 1. (virtual address 00001000)
; Virtual size                  : 00002988 (  10632.)
; Section size in file          : 00002A00 (  10752.)
; Offset to raw data for section: 00000400
; Flags 60500060: Text Data Executable Readable
; Alignment     : 16 bytes
; OS type         :  MS Windows
; Application type:  Executable

                .686p
                .mmx
                .model flat

; ===========================================================================

; Segment type: Pure code
; Segment permissions: Read/Execute
_text           segment para public 'CODE' use64
                assume cs:_text
                ;org 401000h
                assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing

; =============== S U B R O U T I N E =======================================


; void __cdecl _mingw_invalidParameterHandler(const wchar_t *, const wchar_t *, const wchar_t *, unsigned int, uintptr_t)
__mingw_invalidParameterHandler proc near
                                        ; DATA XREF: __tmainCRTStartup+E8↓o
                                        ; .pdata:ExceptionDir↓o
                retn
__mingw_invalidParameterHandler endp

; ---------------------------------------------------------------------------
algn_401001:                            ; DATA XREF: .pdata:ExceptionDir↓o
                align 10h

; =============== S U B R O U T I N E =======================================


pre_c_init      proc near               ; DATA XREF: .pdata:000000000040600C↓o
                                        ; .CRT:mingw_pcinit↓o
                sub     rsp, 28h
                mov     rax, cs:_refptr_mingw_initltsdrot_force
                xor     edx, edx
                mov     dword ptr [rax], 1
                mov     rax, cs:_refptr_mingw_initltsdyn_force
                mov     dword ptr [rax], 1
                mov     rax, cs:_refptr_mingw_initltssuo_force
                mov     dword ptr [rax], 1
                mov     rax, cs:_refptr_mingw_initcharmax
                mov     dword ptr [rax], 1
                mov     rax, cs:_refptr___image_base__
                cmp     word ptr [rax], 5A4Dh
                jz      short loc_4010D0

loc_401058:                             ; CODE XREF: pre_c_init+CD↓j
                                        ; pre_c_init+E3↓j ...
                mov     rax, cs:_refptr_mingw_app_type
                mov     cs:managedapp, edx
                mov     eax, [rax]
                test    eax, eax
                jz      short loc_4010C2
                mov     ecx, 2          ; Type
                call    __set_app_type

loc_401075:                             ; CODE XREF: pre_c_init+BC↓j
                mov     rcx, 0FFFFFFFFFFFFFFFFh
                call    _encode_pointer
                mov     rdx, cs:_refptr___onexitend
                mov     [rdx], rax
                mov     rdx, cs:_refptr___onexitbegin
                mov     [rdx], rax
                mov     rax, cs:_refptr__fmode
                mov     edx, [rax]
                mov     rax, cs:_refptr___imp__fmode
                mov     rax, [rax]
                mov     [rax], edx
                call    _setargv
                mov     rax, cs:_refptr__MINGW_INSTALL_DEBUG_MATHERR
                cmp     dword ptr [rax], 1
                jz      short loc_401120
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------

loc_4010C2:                             ; CODE XREF: pre_c_init+59↑j
                mov     ecx, 1          ; Type
                call    __set_app_type
                jmp     short loc_401075
; ---------------------------------------------------------------------------
                align 10h

loc_4010D0:                             ; CODE XREF: pre_c_init+46↑j
                movsxd  rcx, dword ptr [rax+3Ch]
                add     rax, rcx
                cmp     dword ptr [rax], 4550h
                jnz     loc_401058
                movzx   ecx, word ptr [rax+18h]
                cmp     cx, 10Bh
                jz      short loc_401133
                cmp     cx, 20Bh
                jnz     loc_401058
                cmp     dword ptr [rax+84h], 0Eh
                jbe     loc_401058
                mov     ecx, [rax+0F8h]
                xor     edx, edx
                test    ecx, ecx
                setnz   dl
                jmp     loc_401058
; ---------------------------------------------------------------------------
                align 20h

loc_401120:                             ; CODE XREF: pre_c_init+A9↑j
                lea     rcx, _matherr
                call    __mingw_setusermatherr
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------

loc_401133:                             ; CODE XREF: pre_c_init+DC↑j
                cmp     dword ptr [rax+74h], 0Eh
                jbe     loc_401058
                mov     r8d, [rax+0E8h]
                xor     edx, edx
                test    r8d, r8d
                setnz   dl
                jmp     loc_401058
pre_c_init      endp

; ---------------------------------------------------------------------------
algn_401151:                            ; DATA XREF: .pdata:000000000040600C↓o
                align 20h

; =============== S U B R O U T I N E =======================================


pre_cpp_init    proc near               ; DATA XREF: .pdata:0000000000406018↓o
                                        ; .CRT:mingw_pcppinit↓o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     rax, cs:_refptr__newmode
                lea     r8, envp
                lea     rdx, argv
                lea     rcx, argc
                mov     eax, [rax]
                mov     cs:__bss_start__, eax
                lea     rax, __bss_start__
                mov     [rsp+38h+var_18], rax
                mov     rax, cs:_refptr__dowildcard
                mov     r9d, [rax]
                call    __getmainargs
                nop
                add     rsp, 38h
                retn
pre_cpp_init    endp

; ---------------------------------------------------------------------------
algn_4011A9:                            ; DATA XREF: .pdata:0000000000406018↓o
                align 10h
; [00000326 BYTES: COLLAPSED FUNCTION __tmainCRTStartup. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_4014D6:                            ; DATA XREF: .pdata:0000000000406024↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public WinMainCRTStartup
WinMainCRTStartup proc near             ; DATA XREF: .pdata:0000000000406030↓o

; FUNCTION CHUNK AT 0000000000402ED0 SIZE 000001E7 BYTES

; __unwind { // __C_specific_handler
                sub     rsp, 28h

_l_startw:                              ; DATA XREF: .xdata:0000000000407038↓o
;   __try { // __except at _l_endw
                mov     rax, cs:_refptr_mingw_app_type
                mov     dword ptr [rax], 1
                call    __security_init_cookie
                call    __tmainCRTStartup
                nop
;   } // starts at 4014E4

_l_endw:                                ; DATA XREF: .xdata:0000000000407038↓o
;   __except(_gnu_exception_handler) // owned by 4014E4
                nop
                add     rsp, 28h
                retn
; } // starts at 4014E0
WinMainCRTStartup endp

; ---------------------------------------------------------------------------
algn_401502:                            ; DATA XREF: .pdata:0000000000406030↓o
                align 10h
; [00000022 BYTES: COLLAPSED FUNCTION mainCRTStartup. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_401532:                            ; DATA XREF: .pdata:000000000040603C↓o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

                public __gcc_register_frame
__gcc_register_frame proc near          ; CODE XREF: register_frame_ctor+5↓j
                                        ; DATA XREF: .pdata:0000000000406048↓o
                push    rbp
                mov     rbp, rsp
                lea     rcx, __gcc_deregister_frame
                pop     rbp
                jmp     atexit
__gcc_register_frame endp

; ---------------------------------------------------------------------------
algn_401551:                            ; DATA XREF: .pdata:0000000000406048↓o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

                public __gcc_deregister_frame
__gcc_deregister_frame proc near        ; DATA XREF: __gcc_register_frame+4↑o
                                        ; .pdata:0000000000406054↓o
                push    rbp
                mov     rbp, rsp
                pop     rbp
                retn
__gcc_deregister_frame endp

; ---------------------------------------------------------------------------
algn_401566:                            ; DATA XREF: .pdata:0000000000406054↓o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_10()
                public func_10
func_10         proc near               ; DATA XREF: .pdata:0000000000406060↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, Buffer     ; "19"
                call    puts
                lea     rcx, aR         ; "R"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_10         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_11()
                public func_11
func_11         proc near               ; DATA XREF: .pdata:0000000000406060↓o
                                        ; .pdata:000000000040606C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a94        ; "94"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_11         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_12()
                public func_12
func_12         proc near               ; DATA XREF: .pdata:000000000040606C↓o
                                        ; .pdata:0000000000406078↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a13        ; "13"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_12         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_13()
                public func_13
func_13         proc near               ; DATA XREF: .pdata:0000000000406078↓o
                                        ; .pdata:0000000000406084↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a41        ; "41"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_13         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_14()
                public func_14
func_14         proc near               ; DATA XREF: .pdata:0000000000406084↓o
                                        ; .pdata:0000000000406090↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a90        ; "90"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_14         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_15()
                public func_15
func_15         proc near               ; DATA XREF: .pdata:0000000000406090↓o
                                        ; .pdata:000000000040609C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a40        ; "40"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_15         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_16()
                public func_16
func_16         proc near               ; DATA XREF: .pdata:000000000040609C↓o
                                        ; .pdata:00000000004060A8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a25        ; "25"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_16         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_17()
                public func_17
func_17         proc near               ; DATA XREF: .pdata:00000000004060A8↓o
                                        ; .pdata:00000000004060B4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a30        ; "30"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_17         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_18()
                public func_18
func_18         proc near               ; DATA XREF: .pdata:00000000004060B4↓o
                                        ; .pdata:00000000004060C0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a50        ; "50"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_18         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_19()
                public func_19
func_19         proc near               ; DATA XREF: .pdata:00000000004060C0↓o
                                        ; .pdata:00000000004060CC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a18        ; "18"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_19         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_20()
                public func_20
func_20         proc near               ; DATA XREF: .pdata:00000000004060CC↓o
                                        ; .pdata:00000000004060D8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a53        ; "53"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_20         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_21()
                public func_21
func_21         proc near               ; DATA XREF: .pdata:00000000004060D8↓o
                                        ; .pdata:00000000004060E4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a23        ; "23"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_21         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_22()
                public func_22
func_22         proc near               ; DATA XREF: .pdata:00000000004060E4↓o
                                        ; .pdata:00000000004060F0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a68        ; "68"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_22         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_23()
                public func_23
func_23         proc near               ; DATA XREF: .pdata:00000000004060F0↓o
                                        ; .pdata:00000000004060FC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a35        ; "35"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_23         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_24()
                public func_24
func_24         proc near               ; DATA XREF: .pdata:00000000004060FC↓o
                                        ; .pdata:0000000000406108↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a49        ; "49"
                call    puts
                lea     rcx, a3         ; "3"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_24         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_25()
                public func_25
func_25         proc near               ; DATA XREF: .pdata:0000000000406108↓o
                                        ; .pdata:0000000000406114↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a56        ; "56"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_25         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_26()
                public func_26
func_26         proc near               ; DATA XREF: .pdata:0000000000406114↓o
                                        ; .pdata:0000000000406120↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a33        ; "33"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_26         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_27()
                public func_27
func_27         proc near               ; DATA XREF: .pdata:0000000000406120↓o
                                        ; .pdata:000000000040612C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a17        ; "17"
                call    puts
                lea     rcx, aY         ; "Y"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_27         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_28()
                public func_28
func_28         proc near               ; DATA XREF: .pdata:000000000040612C↓o
                                        ; .pdata:0000000000406138↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a55        ; "55"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_28         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_29()
                public func_29
func_29         proc near               ; DATA XREF: .pdata:0000000000406138↓o
                                        ; .pdata:0000000000406144↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a92        ; "92"
                call    puts
                lea     rcx, aB         ; "B"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_29         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_30()
                public func_30
func_30         proc near               ; DATA XREF: .pdata:0000000000406144↓o
                                        ; .pdata:0000000000406150↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a51        ; "51"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_30         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_31()
                public func_31
func_31         proc near               ; DATA XREF: .pdata:0000000000406150↓o
                                        ; .pdata:000000000040615C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a71        ; "71"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_31         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_32()
                public func_32
func_32         proc near               ; DATA XREF: .pdata:000000000040615C↓o
                                        ; .pdata:0000000000406168↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a72        ; "72"
                call    puts
                lea     rcx, aE         ; "E"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_32         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_33()
                public func_33
func_33         proc near               ; DATA XREF: .pdata:0000000000406168↓o
                                        ; .pdata:0000000000406174↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a45        ; "45"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_33         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_34()
                public func_34
func_34         proc near               ; DATA XREF: .pdata:0000000000406174↓o
                                        ; .pdata:0000000000406180↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a43        ; "43"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_34         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_35()
                public func_35
func_35         proc near               ; DATA XREF: .pdata:0000000000406180↓o
                                        ; .pdata:000000000040618C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a86        ; "86"
                call    puts
                lea     rcx, aV         ; "V"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_35         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_36()
                public func_36
func_36         proc near               ; DATA XREF: .pdata:000000000040618C↓o
                                        ; .pdata:0000000000406198↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a59        ; "59"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_36         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_37()
                public func_37
func_37         proc near               ; DATA XREF: .pdata:0000000000406198↓o
                                        ; .pdata:00000000004061A4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a85        ; "85"
                call    puts
                lea     rcx, asc_405060 ; "{"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_37         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_38()
                public func_38
func_38         proc near               ; DATA XREF: .pdata:00000000004061A4↓o
                                        ; .pdata:00000000004061B0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a83        ; "83"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_38         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_39()
                public func_39
func_39         proc near               ; DATA XREF: .pdata:00000000004061B0↓o
                                        ; .pdata:00000000004061BC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a75        ; "75"
                call    puts
                lea     rcx, aY         ; "Y"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_39         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_40()
                public func_40
func_40         proc near               ; DATA XREF: .pdata:00000000004061BC↓o
                                        ; .pdata:00000000004061C8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a88        ; "88"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_40         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_41()
                public func_41
func_41         proc near               ; DATA XREF: .pdata:00000000004061C8↓o
                                        ; .pdata:00000000004061D4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a61        ; "61"
                call    puts
                lea     rcx, aD         ; "D"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_41         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_42()
                public func_42
func_42         proc near               ; DATA XREF: .pdata:00000000004061D4↓o
                                        ; .pdata:00000000004061E0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a52        ; "52"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_42         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_43()
                public func_43
func_43         proc near               ; DATA XREF: .pdata:00000000004061E0↓o
                                        ; .pdata:00000000004061EC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a42        ; "42"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_43         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_44()
                public func_44
func_44         proc near               ; DATA XREF: .pdata:00000000004061EC↓o
                                        ; .pdata:00000000004061F8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a15        ; "15"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_44         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_45()
                public func_45
func_45         proc near               ; DATA XREF: .pdata:00000000004061F8↓o
                                        ; .pdata:0000000000406204↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a99        ; "99"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_45         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_46()
                public func_46
func_46         proc near               ; DATA XREF: .pdata:0000000000406204↓o
                                        ; .pdata:0000000000406210↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a20        ; "20"
                call    puts
                lea     rcx, aR         ; "R"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_46         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_47()
                public func_47
func_47         proc near               ; DATA XREF: .pdata:0000000000406210↓o
                                        ; .pdata:000000000040621C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a93        ; "93"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_47         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_48()
                public func_48
func_48         proc near               ; DATA XREF: .pdata:000000000040621C↓o
                                        ; .pdata:0000000000406228↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a29        ; "29"
                call    puts
                lea     rcx, asc_405085 ; "}"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_48         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_49()
                public func_49
func_49         proc near               ; DATA XREF: .pdata:0000000000406228↓o
                                        ; .pdata:0000000000406234↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a69        ; "69"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_49         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_50()
                public func_50
func_50         proc near               ; DATA XREF: .pdata:0000000000406234↓o
                                        ; .pdata:0000000000406240↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a84        ; "84"
                call    puts
                lea     rcx, asc_40508D ; "_"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_50         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_51()
                public func_51
func_51         proc near               ; DATA XREF: .pdata:0000000000406240↓o
                                        ; .pdata:000000000040624C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a26        ; "26"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_51         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_52()
                public func_52
func_52         proc near               ; DATA XREF: .pdata:000000000040624C↓o
                                        ; .pdata:0000000000406258↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a63        ; "63"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_52         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_53()
                public func_53
func_53         proc near               ; DATA XREF: .pdata:0000000000406258↓o
                                        ; .pdata:0000000000406264↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a67        ; "67"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_53         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_54()
                public func_54
func_54         proc near               ; DATA XREF: .pdata:0000000000406264↓o
                                        ; .pdata:0000000000406270↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a78        ; "78"
                call    puts
                lea     rcx, aT         ; "T"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_54         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_55()
                public func_55
func_55         proc near               ; DATA XREF: .pdata:0000000000406270↓o
                                        ; .pdata:000000000040627C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a48        ; "48"
                call    puts
                lea     rcx, aC         ; "C"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_55         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_56()
                public func_56
func_56         proc near               ; DATA XREF: .pdata:000000000040627C↓o
                                        ; .pdata:0000000000406288↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a81        ; "81"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_56         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_57()
                public func_57
func_57         proc near               ; DATA XREF: .pdata:0000000000406288↓o
                                        ; .pdata:0000000000406294↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a97        ; "97"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_57         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_58()
                public func_58
func_58         proc near               ; DATA XREF: .pdata:0000000000406294↓o
                                        ; .pdata:00000000004062A0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a36        ; "36"
                call    puts
                lea     rcx, aS         ; "S"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_58         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_59()
                public func_59
func_59         proc near               ; DATA XREF: .pdata:00000000004062A0↓o
                                        ; .pdata:00000000004062AC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a47        ; "47"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_59         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_60()
                public func_60
func_60         proc near               ; DATA XREF: .pdata:00000000004062AC↓o
                                        ; .pdata:00000000004062B8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a21        ; "21"
                call    puts
                lea     rcx, aA         ; "A"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_60         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_61()
                public func_61
func_61         proc near               ; DATA XREF: .pdata:00000000004062B8↓o
                                        ; .pdata:00000000004062C4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a70        ; "70"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_61         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_62()
                public func_62
func_62         proc near               ; DATA XREF: .pdata:00000000004062C4↓o
                                        ; .pdata:00000000004062D0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a79        ; "79"
                call    puts
                lea     rcx, aA         ; "A"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_62         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_63()
                public func_63
func_63         proc near               ; DATA XREF: .pdata:00000000004062D0↓o
                                        ; .pdata:00000000004062DC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a28        ; "28"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_63         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_64()
                public func_64
func_64         proc near               ; DATA XREF: .pdata:00000000004062DC↓o
                                        ; .pdata:00000000004062E8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a34        ; "34"
                call    puts
                lea     rcx, aO         ; "O"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_64         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_65()
                public func_65
func_65         proc near               ; DATA XREF: .pdata:00000000004062E8↓o
                                        ; .pdata:00000000004062F4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a44        ; "44"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_65         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_66()
                public func_66
func_66         proc near               ; DATA XREF: .pdata:00000000004062F4↓o
                                        ; .pdata:0000000000406300↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a16        ; "16"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_66         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_67()
                public func_67
func_67         proc near               ; DATA XREF: .pdata:0000000000406300↓o
                                        ; .pdata:000000000040630C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a73        ; "73"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_67         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_68()
                public func_68
func_68         proc near               ; DATA XREF: .pdata:000000000040630C↓o
                                        ; .pdata:0000000000406318↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a11        ; "11"
                call    puts
                lea     rcx, aT         ; "T"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_68         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_69()
                public func_69
func_69         proc near               ; DATA XREF: .pdata:0000000000406318↓o
                                        ; .pdata:0000000000406324↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a27        ; "27"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_69         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_70()
                public func_70
func_70         proc near               ; DATA XREF: .pdata:0000000000406324↓o
                                        ; .pdata:0000000000406330↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a31        ; "31"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_70         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_71()
                public func_71
func_71         proc near               ; DATA XREF: .pdata:0000000000406330↓o
                                        ; .pdata:000000000040633C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a66        ; "66"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_71         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_72()
                public func_72
func_72         proc near               ; DATA XREF: .pdata:000000000040633C↓o
                                        ; .pdata:0000000000406348↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a22        ; "22"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_72         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_73()
                public func_73
func_73         proc near               ; DATA XREF: .pdata:0000000000406348↓o
                                        ; .pdata:0000000000406354↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a46        ; "46"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_73         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_74()
                public func_74
func_74         proc near               ; DATA XREF: .pdata:0000000000406354↓o
                                        ; .pdata:0000000000406360↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a60        ; "60"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_74         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_75()
                public func_75
func_75         proc near               ; DATA XREF: .pdata:0000000000406360↓o
                                        ; .pdata:000000000040636C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a82        ; "82"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_75         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_76()
                public func_76
func_76         proc near               ; DATA XREF: .pdata:000000000040636C↓o
                                        ; .pdata:0000000000406378↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a96        ; "96"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_76         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_77()
                public func_77
func_77         proc near               ; DATA XREF: .pdata:0000000000406378↓o
                                        ; .pdata:0000000000406384↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a91        ; "91"
                call    puts
                lea     rcx, aA         ; "A"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_77         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_78()
                public func_78
func_78         proc near               ; DATA XREF: .pdata:0000000000406384↓o
                                        ; .pdata:0000000000406390↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a54        ; "54"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_78         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_79()
                public func_79
func_79         proc near               ; DATA XREF: .pdata:0000000000406390↓o
                                        ; .pdata:000000000040639C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a58        ; "58"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_79         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_80()
                public func_80
func_80         proc near               ; DATA XREF: .pdata:000000000040639C↓o
                                        ; .pdata:00000000004063A8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a57        ; "57"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_80         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_81()
                public func_81
func_81         proc near               ; DATA XREF: .pdata:00000000004063A8↓o
                                        ; .pdata:00000000004063B4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a10        ; "10"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_81         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_82()
                public func_82
func_82         proc near               ; DATA XREF: .pdata:00000000004063B4↓o
                                        ; .pdata:00000000004063C0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a89        ; "89"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_82         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_83()
                public func_83
func_83         proc near               ; DATA XREF: .pdata:00000000004063C0↓o
                                        ; .pdata:00000000004063CC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a32        ; "32"
                call    puts
                lea     rcx, aN         ; "N"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_83         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_84()
                public func_84
func_84         proc near               ; DATA XREF: .pdata:00000000004063CC↓o
                                        ; .pdata:00000000004063D8↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a80        ; "80"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_84         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_85()
                public func_85
func_85         proc near               ; DATA XREF: .pdata:00000000004063D8↓o
                                        ; .pdata:00000000004063E4↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a62        ; "62"
                call    puts
                lea     rcx, aD         ; "D"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_85         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_86()
                public func_86
func_86         proc near               ; DATA XREF: .pdata:00000000004063E4↓o
                                        ; .pdata:00000000004063F0↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a12        ; "12"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_86         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_87()
                public func_87
func_87         proc near               ; DATA XREF: .pdata:00000000004063F0↓o
                                        ; .pdata:00000000004063FC↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a64        ; "64"
                call    puts
                lea     rcx, aG         ; "G"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_87         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_88()
                public func_88
func_88         proc near               ; DATA XREF: .pdata:00000000004063FC↓o
                                        ; .pdata:0000000000406408↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a87        ; "87"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_88         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_89()
                public func_89
func_89         proc near               ; DATA XREF: .pdata:0000000000406408↓o
                                        ; .pdata:0000000000406414↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a95        ; "95"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_89         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_90()
                public func_90
func_90         proc near               ; DATA XREF: .pdata:0000000000406414↓o
                                        ; .pdata:0000000000406420↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a24        ; "24"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_90         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_91()
                public func_91
func_91         proc near               ; DATA XREF: .pdata:0000000000406420↓o
                                        ; .pdata:000000000040642C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a65        ; "65"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_91         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_92()
                public func_92
func_92         proc near               ; DATA XREF: .pdata:000000000040642C↓o
                                        ; .pdata:0000000000406438↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a76        ; "76"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_92         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_93()
                public func_93
func_93         proc near               ; DATA XREF: .pdata:0000000000406438↓o
                                        ; .pdata:0000000000406444↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a98        ; "98"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_93         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_94()
                public func_94
func_94         proc near               ; DATA XREF: .pdata:0000000000406444↓o
                                        ; .pdata:0000000000406450↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a37        ; "37"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_94         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_95()
                public func_95
func_95         proc near               ; DATA XREF: .pdata:0000000000406450↓o
                                        ; .pdata:000000000040645C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a39        ; "39"
                call    puts
                lea     rcx, a3         ; "3"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_95         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_96()
                public func_96
func_96         proc near               ; DATA XREF: .pdata:000000000040645C↓o
                                        ; .pdata:0000000000406468↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a77        ; "77"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_96         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_97()
                public func_97
func_97         proc near               ; DATA XREF: .pdata:0000000000406468↓o
                                        ; .pdata:0000000000406474↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a38        ; "38"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_97         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_98()
                public func_98
func_98         proc near               ; DATA XREF: .pdata:0000000000406474↓o
                                        ; .pdata:0000000000406480↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a100       ; "100"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_98         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl func_99()
                public func_99
func_99         proc near               ; DATA XREF: .pdata:0000000000406480↓o
                                        ; .pdata:000000000040648C↓o
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                lea     rcx, a14        ; "14"
                call    puts
                lea     rcx, asc_40508D ; "_"
                call    puts
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
func_99         endp


; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

; int __cdecl main(int argc, const char **argv, const char **envp)
                public main
main            proc near               ; CODE XREF: __tmainCRTStartup+242↑p
                                        ; DATA XREF: .pdata:000000000040648C↓o ...
                push    rbp
                mov     rbp, rsp
                sub     rsp, 20h
                call    __main
                mov     eax, 0
                add     rsp, 20h
                pop     rbp
                retn
main            endp

; ---------------------------------------------------------------------------
algn_40219A:                            ; DATA XREF: .pdata:0000000000406498↓o
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION __C_specific_handler. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION Sleep. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION SetUnhandledExceptionFilter. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION GetStartupInfoA. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h

; =============== S U B R O U T I N E =======================================


; __int64 __fastcall mingw_onexit(_QWORD)
                public mingw_onexit
mingw_onexit    proc near               ; CODE XREF: atexit+4↓p
                                        ; DATA XREF: .pdata:00000000004064A4↓o

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                mov     rcx, cs:__onexitbegin
                call    _decode_pointer
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                mov     [rsp+38h+var_18], rax
                jnz     short loc_402200
                mov     rax, cs:_refptr___imp__onexit
                mov     rcx, rbx
                call    qword ptr [rax]
                mov     rbx, rax
                mov     rax, rbx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_402200:                             ; CODE XREF: mingw_onexit+1D↑j
                mov     ecx, 8
                call    _lock
                mov     rcx, cs:__onexitbegin
                call    _decode_pointer
                mov     rcx, cs:__onexitend
                mov     [rsp+38h+var_18], rax
                call    _decode_pointer
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rbx
                lea     r8, [rsp+38h+var_10]
                mov     [rsp+38h+var_10], rax
                call    __dllonexit
                mov     rcx, [rsp+38h+var_18]
                mov     rbx, rax
                call    _encode_pointer
                mov     rcx, [rsp+38h+var_10]
                mov     cs:__onexitbegin, rax
                call    _encode_pointer
                mov     ecx, 8
                mov     cs:__onexitend, rax
                call    _unlock
                mov     rax, rbx
                add     rsp, 30h
                pop     rbx
                retn
mingw_onexit    endp

; ---------------------------------------------------------------------------
algn_402276:                            ; DATA XREF: .pdata:00000000004064A4↓o
                align 20h

; =============== S U B R O U T I N E =======================================


; int __cdecl atexit(void (__cdecl *)())
                public atexit
atexit          proc near               ; CODE XREF: __gcc_register_frame+C↑j
                                        ; __do_global_ctors+48↓j

                                        ; DATA XREF: ...
                sub     rsp, 28h
                call    mingw_onexit
                test    rax, rax
                setz    al
                movzx   eax, al
                neg     eax
                add     rsp, 28h
                retn
atexit          endp

; ---------------------------------------------------------------------------
algn_402299:                            ; DATA XREF: .pdata:00000000004064B0↓o
                align 20h

; =============== S U B R O U T I N E =======================================


; void (*_do_global_dtors())(void)
                public __do_global_dtors
__do_global_dtors proc near             ; DATA XREF: __do_global_ctors:loc_40231B↓o
                                        ; .pdata:00000000004064BC↓o
                sub     rsp, 28h
                mov     rax, cs:p_93750
                mov     rax, [rax]
                test    rax, rax
                jz      short loc_4022D0

loc_4022B3:                             ; CODE XREF: __do_global_dtors+2E↓j
                call    rax
                mov     rax, cs:p_93750
                lea     rdx, [rax+8]
                mov     rax, [rax+8]
                mov     cs:p_93750, rdx
                test    rax, rax
                jnz     short loc_4022B3

loc_4022D0:                             ; CODE XREF: __do_global_dtors+11↑j
                add     rsp, 28h
                retn
__do_global_dtors endp

; ---------------------------------------------------------------------------
algn_4022D5:                            ; DATA XREF: .pdata:00000000004064BC↓o
                align 20h

; =============== S U B R O U T I N E =======================================


; int _do_global_ctors()
                public __do_global_ctors
__do_global_ctors proc near             ; CODE XREF: __main+1A↓j
                                        ; DATA XREF: .pdata:00000000004064C8↓o
                push    rsi
                push    rbx
                sub     rsp, 28h
                mov     rcx, cs:_refptr___CTOR_LIST__
                mov     rdx, [rcx]
                cmp     edx, 0FFFFFFFFh
                mov     eax, edx
                jz      short loc_402330

loc_4022F7:                             ; CODE XREF: __do_global_ctors+64↓j
                test    eax, eax
                jz      short loc_40231B
                mov     edx, eax
                sub     eax, 1
                lea     rbx, [rcx+rdx*8]
                sub     rdx, rax
                lea     rsi, [rcx+rdx*8-8]
                nop     dword ptr [rax+00h]

loc_402310:                             ; CODE XREF: __do_global_ctors+39↓j
                call    qword ptr [rbx]
                sub     rbx, 8
                cmp     rbx, rsi
                jnz     short loc_402310

loc_40231B:                             ; CODE XREF: __do_global_ctors+19↑j
                lea     rcx, __do_global_dtors
                add     rsp, 28h
                pop     rbx
                pop     rsi
                jmp     atexit
; ---------------------------------------------------------------------------
                align 10h

loc_402330:                             ; CODE XREF: __do_global_ctors+15↑j
                xor     eax, eax
                jmp     short loc_402336
; ---------------------------------------------------------------------------

loc_402334:                             ; CODE XREF: __do_global_ctors+62↓j
                mov     eax, edx

loc_402336:                             ; CODE XREF: __do_global_ctors+52↑j
                lea     r8d, [rax+1]
                cmp     qword ptr [rcx+r8*8], 0
                mov     rdx, r8
                jnz     short loc_402334
                jmp     short loc_4022F7
__do_global_ctors endp

; ---------------------------------------------------------------------------
algn_402346:                            ; DATA XREF: .pdata:00000000004064C8↓o
                align 10h

; =============== S U B R O U T I N E =======================================


; __int64 _main()
                public __main
__main          proc near               ; CODE XREF: __tmainCRTStartup+215↑p
                                        ; main+8↑p
                                        ; DATA XREF: ...
                mov     eax, cs:initialized
                test    eax, eax
                jz      short loc_402360
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_402360:                             ; CODE XREF: __main+8↑j
                mov     cs:initialized, 1
                jmp     __do_global_ctors
__main          endp

; ---------------------------------------------------------------------------
algn_40236F:                            ; DATA XREF: .pdata:00000000004064D4↓o
                align 10h

; =============== S U B R O U T I N E =======================================


my_lconv_init   proc near               ; DATA XREF: .pdata:00000000004064E0↓o
                                        ; .CRT:__mingw_pinit↓o
                jmp     cs:__imp___lconv_init
my_lconv_init   endp

; ---------------------------------------------------------------------------
algn_402377:                            ; DATA XREF: .pdata:00000000004064E0↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public _setargv
_setargv        proc near               ; CODE XREF: pre_c_init+9A↑p
                                        ; DATA XREF: .pdata:00000000004064EC↓o
                xor     eax, eax
                retn
_setargv        endp

; ---------------------------------------------------------------------------
algn_402383:                            ; DATA XREF: .pdata:00000000004064EC↓o
                align 10h

; =============== S U B R O U T I N E =======================================


; void __cdecl _security_init_cookie()
                public __security_init_cookie
__security_init_cookie proc near        ; CODE XREF: WinMainCRTStartup+11↑p
                                        ; mainCRTStartup+11↑p
                                        ; DATA XREF: ...

SystemTimeAsFileTime= _FILETIME ptr -38h
PerformanceCount= LARGE_INTEGER ptr -30h

                push    r12
                push    rbp
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 30h
                mov     rbx, cs:__security_cookie
                mov     rax, 2B992DDFA232h
                cmp     rbx, rax
                mov     qword ptr [rsp+58h+SystemTimeAsFileTime.dwLowDateTime], 0
                jz      short loc_4023D0
                not     rbx
                mov     cs:__security_cookie_complement, rbx
                add     rsp, 30h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_4023D0:                             ; CODE XREF: __security_init_cookie+27↑j
                lea     rcx, [rsp+58h+SystemTimeAsFileTime] ; lpSystemTimeAsFileTime
                call    cs:__imp_GetSystemTimeAsFileTime
                mov     rsi, qword ptr [rsp+58h+SystemTimeAsFileTime.dwLowDateTime]
                call    cs:__imp_GetCurrentProcessId
                mov     r12d, eax
                call    cs:__imp_GetCurrentThreadId
                mov     ebp, eax
                call    cs:__imp_GetTickCount
                lea     rcx, [rsp+58h+PerformanceCount] ; lpPerformanceCount
                mov     edi, eax
                call    cs:__imp_QueryPerformanceCounter
                xor     rsi, qword ptr [rsp+58h+PerformanceCount]
                mov     eax, r12d
                mov     rdx, 0FFFFFFFFFFFFh
                xor     rax, rsi
                mov     esi, ebp
                xor     rsi, rax
                mov     eax, edi
                xor     rax, rsi
                and     rax, rdx
                cmp     rax, rbx
                jz      short loc_402450
                mov     rdx, rax
                not     rdx

loc_402431:                             ; CODE XREF: __security_init_cookie+D4↓j
                mov     cs:__security_cookie, rax
                mov     cs:__security_cookie_complement, rdx
                add     rsp, 30h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402450:                             ; CODE XREF: __security_init_cookie+99↑j
                mov     rdx, 0FFFFD466D2205DCCh
                mov     rax, 2B992DDFA233h
                jmp     short loc_402431
__security_init_cookie endp

; ---------------------------------------------------------------------------
algn_402466:                            ; DATA XREF: .pdata:00000000004064F8↓o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn bp-based frame

; void __cdecl __noreturn _report_gsfailure(uintptr_t StackCookie)
                public __report_gsfailure
__report_gsfailure proc near            ; DATA XREF: .pdata:0000000000406504↓o

ContextRecord   = qword ptr -50h
HandlerData     = qword ptr -48h
EstablisherFrame= qword ptr -40h
ContextPointers = qword ptr -38h
ImageBase       = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s8          = byte ptr  8

                push    rbp
                push    rsi
                push    rbx
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rsi, rcx
                lea     rcx, GS_ContextRecord ; ContextRecord
                call    cs:__imp_RtlCaptureContext
                mov     rbx, cs:GS_ContextRecord._Rip
                lea     rdx, [rbp+ImageBase] ; ImageBase
                xor     r8d, r8d        ; HistoryTable
                mov     rcx, rbx        ; ControlPc
                call    cs:__imp_RtlLookupFunctionEntry
                test    rax, rax
                jz      loc_40254D
                lea     rdx, [rbp+var_20]
                mov     r9, rax         ; FunctionEntry
                mov     r8, rbx         ; ControlPc
                mov     [rsp+70h+ContextPointers], 0 ; ContextPointers
                lea     rcx, GS_ContextRecord
                mov     [rsp+70h+EstablisherFrame], rdx ; EstablisherFrame
                lea     rdx, [rbp+var_18]
                mov     [rsp+70h+ContextRecord], rcx ; ContextRecord
                xor     ecx, ecx        ; HandlerType
                mov     [rsp+70h+HandlerData], rdx ; HandlerData
                mov     rdx, [rbp+ImageBase] ; ImageBase
                call    cs:__imp_RtlVirtualUnwind

loc_4024E3:                             ; CODE XREF: __report_gsfailure+F3↓j
                mov     rax, cs:GS_ContextRecord._Rip
                xor     ecx, ecx        ; lpTopLevelExceptionFilter
                mov     cs:GS_ContextRecord._Rcx, rsi
                mov     cs:qword_408550, rax
                mov     rax, 1C0000409h
                mov     cs:GS_ExceptionRecord, rax
                mov     rax, cs:__security_cookie
                mov     [rbp+var_10], rax
                mov     rax, cs:__security_cookie_complement
                mov     [rbp+var_8], rax
                call    cs:__imp_SetUnhandledExceptionFilter
                lea     rcx, GS_ExceptionPointers ; ExceptionInfo
                call    cs:__imp_UnhandledExceptionFilter
                call    cs:__imp_GetCurrentProcess
                mov     edx, 0C0000409h ; uExitCode
                mov     rcx, rax        ; hProcess
                call    cs:__imp_TerminateProcess
                call    abort
; ---------------------------------------------------------------------------

loc_40254D:                             ; CODE XREF: __report_gsfailure+34↑j
                mov     rax, [rbp+18h]
                mov     cs:GS_ContextRecord._Rip, rax
                lea     rax, [rbp+var_s8]
                mov     cs:GS_ContextRecord._Rsp, rax
                jmp     loc_4024E3
__report_gsfailure endp

; ---------------------------------------------------------------------------
algn_402568:                            ; DATA XREF: .pdata:0000000000406504↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public __dyn_tls_dtor
__dyn_tls_dtor  proc near               ; DATA XREF: .pdata:0000000000406510↓o
                                        ; .CRT:__xl_d↓o
                sub     rsp, 28h
                cmp     edx, 3
                jz      short loc_402590
                test    edx, edx
                jz      short loc_402590
                mov     eax, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402590:                             ; CODE XREF: __dyn_tls_dtor+7↑j
                                        ; __dyn_tls_dtor+B↑j
                call    __mingw_TLScallback
                mov     eax, 1
                add     rsp, 28h
                retn
__dyn_tls_dtor  endp

; ---------------------------------------------------------------------------
algn_40259F:                            ; DATA XREF: .pdata:0000000000406510↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public __dyn_tls_init
__dyn_tls_init  proc near               ; DATA XREF: .rdata:__dyn_tls_init_callback↓o
                                        ; .pdata:000000000040651C↓o ...
                push    rsi
                push    rbx
                sub     rsp, 28h
                mov     rax, cs:_refptr__CRT_MT
                cmp     dword ptr [rax], 2
                jz      short loc_4025B8
                mov     dword ptr [rax], 2

loc_4025B8:                             ; CODE XREF: __dyn_tls_init+10↑j
                cmp     edx, 2
                jz      short loc_4025D0
                cmp     edx, 1
                jz      short loc_402602

loc_4025C2:                             ; CODE XREF: __dyn_tls_init+41↓j
                mov     eax, 1
                add     rsp, 28h
                pop     rbx
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_4025D0:                             ; CODE XREF: __dyn_tls_init+1B↑j
                lea     rbx, __xd_z
                lea     rsi, __xd_z
                cmp     rsi, rbx
                jz      short loc_4025C2

loc_4025E3:                             ; CODE XREF: __dyn_tls_init+54↓j
                mov     rax, [rbx]
                test    rax, rax
                jz      short loc_4025ED
                call    rax

loc_4025ED:                             ; CODE XREF: __dyn_tls_init+49↑j
                add     rbx, 8
                cmp     rsi, rbx
                jnz     short loc_4025E3
                mov     eax, 1
                add     rsp, 28h
                pop     rbx
                pop     rsi
                retn
; ---------------------------------------------------------------------------

loc_402602:                             ; CODE XREF: __dyn_tls_init+20↑j
                call    __mingw_TLScallback
                mov     eax, 1
                add     rsp, 28h
                pop     rbx
                pop     rsi
                retn
__dyn_tls_init  endp

; ---------------------------------------------------------------------------
algn_402613:                            ; DATA XREF: .pdata:000000000040651C↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public __tlregdtor
__tlregdtor     proc near               ; DATA XREF: .pdata:0000000000406528↓o
                xor     eax, eax
                retn
__tlregdtor     endp

; ---------------------------------------------------------------------------
algn_402623:                            ; DATA XREF: .pdata:0000000000406528↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public __mingw_raise_matherr
__mingw_raise_matherr proc near         ; DATA XREF: .pdata:0000000000406534↓o

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

                sub     rsp, 58h
                mov     rax, cs:stUserMathErr
                test    rax, rax
                jz      short loc_40266C
                movsd   xmm0, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], ecx
                lea     rcx, [rsp+58h+var_38]
                mov     [rsp+58h+var_30], rdx
                movsd   [rsp+58h+var_28], xmm2
                movsd   [rsp+58h+var_20], xmm3
                movsd   [rsp+58h+var_18], xmm0
                call    rax ; stUserMathErr
                nop

loc_40266C:                             ; CODE XREF: __mingw_raise_matherr+E↑j
                add     rsp, 58h
                retn
__mingw_raise_matherr endp

; ---------------------------------------------------------------------------
algn_402671:                            ; DATA XREF: .pdata:0000000000406534↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public __mingw_setusermatherr
__mingw_setusermatherr proc near        ; CODE XREF: pre_c_init+117↑p
                                        ; DATA XREF: .pdata:0000000000406540↓o
                mov     cs:stUserMathErr, rcx
                jmp     __setusermatherr
__mingw_setusermatherr endp

; ---------------------------------------------------------------------------
algn_40268C:                            ; DATA XREF: .pdata:0000000000406540↓o
                align 10h

; =============== S U B R O U T I N E =======================================


; int __cdecl matherr(struct _exception *Except)
                public _matherr
_matherr        proc near               ; DATA XREF: pre_c_init:loc_401120↑o
                                        ; .rdata:_refptr__matherr↓o ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h

                push    rsi
                push    rbx
                sub     rsp, 78h
                movaps  [rsp+88h+var_48], xmm6
                movaps  [rsp+88h+var_38], xmm7
                movaps  [rsp+88h+var_28], xmm8
                cmp     dword ptr [rcx], 6 ; switch 7 cases
                ja      def_4026BF      ; jumptable 00000000004026BF default case, case 0
                mov     eax, [rcx]
                lea     rdx, jpt_4026BF
                movsxd  rax, ds:(jpt_4026BF - 405284h)[rdx+rax*4]
                add     rax, rdx
                jmp     rax             ; switch jump
; ---------------------------------------------------------------------------

loc_4026C1:                             ; CODE XREF: _matherr+2F↑j
                                        ; DATA XREF: .rdata:jpt_4026BF↓o
                lea     rbx, aArgumentDomain ; jumptable 00000000004026BF case 1

loc_4026C8:                             ; CODE XREF: _matherr+9B↓j
                                        ; _matherr+A7↓j ...
                mov     rsi, [rcx+8]
                movsd   xmm8, qword ptr [rcx+20h]
                movsd   xmm7, qword ptr [rcx+18h]
                movsd   xmm6, qword ptr [rcx+10h]
                call    __iob_func
                movsd   [rsp+88h+var_58], xmm8
                mov     r9, rsi
                mov     r8, rbx
                movsd   [rsp+88h+var_60], xmm7
                lea     rcx, [rax+60h]  ; Stream
                movsd   [rsp+88h+var_68], xmm6
                lea     rdx, Format     ; "_matherr(): %s in %s(%g, %g)  (retval=%"...
                call    fprintf
                nop
                movaps  xmm6, [rsp+88h+var_48]
                xor     eax, eax
                movaps  xmm7, [rsp+88h+var_38]
                movaps  xmm8, [rsp+88h+var_28]
                add     rsp, 78h
                pop     rbx
                pop     rsi
                retn
; ---------------------------------------------------------------------------

loc_402724:                             ; CODE XREF: _matherr+2F↑j
                                        ; DATA XREF: .rdata:jpt_4026BF↓o
                lea     rbx, aArgumentSingul ; jumptable 00000000004026BF case 2
                jmp     short loc_4026C8
; ---------------------------------------------------------------------------
                align 10h

loc_402730:                             ; CODE XREF: _matherr+2F↑j
                                        ; DATA XREF: .rdata:jpt_4026BF↓o
                lea     rbx, aOverflowRangeE ; jumptable 00000000004026BF case 3
                jmp     short loc_4026C8
; ---------------------------------------------------------------------------
                align 20h

loc_402740:                             ; CODE XREF: _matherr+2F↑j
                                        ; DATA XREF: .rdata:jpt_4026BF↓o
                lea     rbx, aTheResultIsToo ; jumptable 00000000004026BF case 4
                jmp     loc_4026C8
; ---------------------------------------------------------------------------
                align 10h

loc_402750:                             ; CODE XREF: _matherr+2F↑j
                                        ; DATA XREF: .rdata:jpt_4026BF↓o
                lea     rbx, aTotalLossOfSig ; jumptable 00000000004026BF case 5
                jmp     loc_4026C8
; ---------------------------------------------------------------------------
                align 20h

loc_402760:                             ; CODE XREF: _matherr+2F↑j
                                        ; DATA XREF: .rdata:jpt_4026BF↓o
                lea     rbx, aPartialLossOfS ; jumptable 00000000004026BF case 6
                jmp     loc_4026C8
; ---------------------------------------------------------------------------
                align 10h

def_4026BF:                             ; CODE XREF: _matherr+19↑j
                                        ; _matherr+2F↑j
                                        ; DATA XREF: ...
                lea     rbx, aUnknownError ; jumptable 00000000004026BF default case, case 0
                jmp     loc_4026C8
_matherr        endp

; ---------------------------------------------------------------------------
algn_40277C:                            ; DATA XREF: .pdata:000000000040654C↓o
                align 20h

; =============== S U B R O U T I N E =======================================


; void __cdecl fpreset()
                public fpreset
fpreset         proc near               ; CODE XREF: __tmainCRTStartup+F4↑p
                                        ; __mingw_SEH_error_handler+11F↓p ...
                fninit
                retn
fpreset         endp

; ---------------------------------------------------------------------------
algn_402783:                            ; DATA XREF: .pdata:0000000000406558↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public _decode_pointer
_decode_pointer proc near               ; CODE XREF: mingw_onexit+F↑p
                                        ; mingw_onexit+51↑p ...
                mov     rax, rcx
                retn
_decode_pointer endp

; ---------------------------------------------------------------------------
algn_402794:                            ; DATA XREF: .pdata:0000000000406564↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public _encode_pointer
_encode_pointer proc near               ; CODE XREF: pre_c_init+6C↑p
                                        ; mingw_onexit+86↑p ...
                mov     rax, rcx
                retn
_encode_pointer endp

; ---------------------------------------------------------------------------
algn_4027A4:                            ; DATA XREF: .pdata:0000000000406570↓o
                align 10h

; =============== S U B R O U T I N E =======================================


__write_memory_part_0 proc near         ; CODE XREF: _pei386_runtime_relocator+ED↓p
                                        ; _pei386_runtime_relocator+1D3↓p ...

Buffer          = _MEMORY_BASIC_INFORMATION ptr -58h

                push    r12
                push    rbp
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 50h
                movsxd  rsi, cs:maxSections
                test    esi, esi
                mov     rbx, rcx
                mov     rbp, rdx
                mov     rdi, r8
                jle     loc_402938
                mov     rax, cs:the_secs
                xor     ecx, ecx
                add     rax, 18h
                nop

loc_4027E0:                             ; CODE XREF: __write_memory_part_0+55↓j
                mov     rdx, [rax]
                cmp     rbx, rdx
                jb      short loc_4027FC
                mov     r8, [rax+8]
                mov     r8d, [r8+8]
                add     rdx, r8
                cmp     rbx, rdx
                jb      loc_402885

loc_4027FC:                             ; CODE XREF: __write_memory_part_0+36↑j
                add     ecx, 1
                add     rax, 28h ; '('
                cmp     ecx, esi
                jnz     short loc_4027E0

loc_402807:                             ; CODE XREF: __write_memory_part_0+18A↓j
                mov     rcx, rbx
                call    __mingw_GetSectionForAddress
                test    rax, rax
                mov     r12, rax
                jz      loc_40296D
                mov     rax, cs:the_secs
                lea     rsi, [rsi+rsi*4]
                shl     rsi, 3
                add     rax, rsi
                mov     [rax+20h], r12
                mov     dword ptr [rax], 0
                call    _GetPEImageBase
                mov     ecx, [r12+0Ch]
                lea     rdx, [rsp+78h+Buffer] ; lpBuffer
                mov     r8d, 30h ; '0'  ; dwLength
                add     rcx, rax        ; lpAddress
                mov     rax, cs:the_secs
                mov     [rax+rsi+18h], rcx
                call    cs:__imp_VirtualQuery
                test    rax, rax
                jz      loc_402950
                mov     eax, [rsp+78h+Buffer.Protect]
                lea     edx, [rax-4]
                and     edx, 0FFFFFFFBh
                jz      short loc_40287E
                sub     eax, 40h ; '@'
                and     eax, 0FFFFFFBFh
                jnz     short loc_4028E0

loc_40287E:                             ; CODE XREF: __write_memory_part_0+C4↑j
                                        ; __write_memory_part_0+15A↓j
                add     cs:maxSections, 1

loc_402885:                             ; CODE XREF: __write_memory_part_0+46↑j
                cmp     edi, 8
                jnb     short loc_4028B3
                test    dil, 4
                jnz     loc_402924
                test    edi, edi
                jz      short loc_4028A8
                movzx   eax, byte ptr [rbp+0]
                test    dil, 2
                mov     [rbx], al
                jnz     loc_40293F

loc_4028A8:                             ; CODE XREF: __write_memory_part_0+E6↑j
                                        ; __write_memory_part_0+115↓j ...
                add     rsp, 50h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                pop     r12
                retn
; ---------------------------------------------------------------------------

loc_4028B3:                             ; CODE XREF: __write_memory_part_0+D8↑j
                mov     eax, edi
                sub     edi, 1
                mov     rdx, [rbp+rax-8]
                cmp     edi, 8
                mov     [rbx+rax-8], rdx
                jb      short loc_4028A8
                and     edi, 0FFFFFFF8h
                xor     eax, eax

loc_4028CC:                             ; CODE XREF: __write_memory_part_0+12C↓j
                mov     edx, eax
                add     eax, 8
                mov     rcx, [rbp+rdx+0]
                cmp     eax, edi
                mov     [rbx+rdx], rcx
                jb      short loc_4028CC
                jmp     short loc_4028A8
; ---------------------------------------------------------------------------

loc_4028E0:                             ; CODE XREF: __write_memory_part_0+CC↑j
                add     rsi, cs:the_secs
                mov     r8d, 40h ; '@'  ; flNewProtect
                mov     rcx, [rsp+78h+Buffer.BaseAddress] ; lpAddress
                mov     rdx, [rsp+78h+Buffer.RegionSize] ; dwSize
                mov     r9, rsi         ; lpflOldProtect
                mov     [rsi+8], rcx
                mov     [rsi+10h], rdx
                call    cs:__imp_VirtualProtect
                test    eax, eax
                jnz     loc_40287E
                call    cs:__imp_GetLastError
                lea     rcx, aVirtualprotect ; "  VirtualProtect failed with code 0x%x"
                mov     edx, eax
                call    __report_error
; ---------------------------------------------------------------------------

loc_402924:                             ; CODE XREF: __write_memory_part_0+DE↑j
                mov     eax, [rbp+0]
                mov     edi, edi
                mov     [rbx], eax
                mov     eax, [rbp+rdi-4]
                mov     [rbx+rdi-4], eax
                jmp     loc_4028A8
; ---------------------------------------------------------------------------

loc_402938:                             ; CODE XREF: __write_memory_part_0+1C↑j
                xor     esi, esi
                jmp     loc_402807
; ---------------------------------------------------------------------------

loc_40293F:                             ; CODE XREF: __write_memory_part_0+F2↑j
                mov     edi, edi
                movzx   eax, word ptr [rbp+rdi-2]
                mov     [rbx+rdi-2], ax
                jmp     loc_4028A8
; ---------------------------------------------------------------------------

loc_402950:                             ; CODE XREF: __write_memory_part_0+B4↑j
                mov     rax, cs:the_secs
                lea     rcx, aVirtualqueryFa ; "  VirtualQuery failed for %d bytes at a"...
                mov     edx, [r12+8]
                mov     r8, [rax+rsi+18h]
                call    __report_error
; ---------------------------------------------------------------------------

loc_40296D:                             ; CODE XREF: __write_memory_part_0+65↑j
                lea     rcx, aAddressPHasNoI ; "Address %p has no image-section"
                mov     rdx, rbx
                call    __report_error
__write_memory_part_0 endp

; ---------------------------------------------------------------------------
                db 90h
algn_40297D:                            ; DATA XREF: .pdata:000000000040657C↓o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0FFFFFFFFFFFFFFF0h

                public _pei386_runtime_relocator
_pei386_runtime_relocator proc near     ; CODE XREF: __tmainCRTStartup:loc_401277↑p
                                        ; DATA XREF: .pdata:0000000000406588↓o

var_50          = byte ptr -50h
flOldProtect    = dword ptr -48h

                push    rbp
                push    r15
                push    r14
                push    r13
                push    r12
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 38h
                lea     rbp, [rsp+80h]
                mov     ebx, cs:was_init_95084
                test    ebx, ebx
                jz      short loc_4029B3

loc_4029A2:                             ; CODE XREF: _pei386_runtime_relocator+8A↓j
                                        ; _pei386_runtime_relocator+A3↓j ...
                lea     rsp, [rbp-48h]
                pop     rbx
                pop     rsi
                pop     rdi
                pop     r12
                pop     r13
                pop     r14
                pop     r15
                pop     rbp
                retn
; ---------------------------------------------------------------------------

loc_4029B3:                             ; CODE XREF: _pei386_runtime_relocator+20↑j
                mov     cs:was_init_95084, 1
                call    __mingw_GetSectionCount
                cdqe
                lea     rax, [rax+rax*4]
                lea     rax, ds:1Eh[rax*8]
                and     rax, 0FFFFFFFFFFFFFFF0h
                call    ___chkstk_ms
                mov     r12, cs:_refptr___RUNTIME_PSEUDO_RELOC_LIST_END__
                mov     cs:maxSections, 0
                mov     rsi, cs:_refptr___RUNTIME_PSEUDO_RELOC_LIST__
                sub     rsp, rax
                lea     rax, [rsp+70h+var_50]
                mov     cs:the_secs, rax
                mov     rax, r12
                sub     rax, rsi
                cmp     rax, 7
                jle     short loc_4029A2
                cmp     rax, 0Bh
                mov     edx, [rsi]
                jle     loc_402AE0
                test    edx, edx
                jz      loc_402AC4

loc_402A20:                             ; CODE XREF: _pei386_runtime_relocator+149↓j
                                        ; _pei386_runtime_relocator+162↓j ...
                cmp     rsi, r12
                jnb     loc_4029A2
                lea     r14, [rsi+8]
                add     r12, 7
                mov     r13, cs:_refptr___image_base__
                lea     rdi, [rbp-10h+flOldProtect]
                sub     r12, r14
                shr     r12, 3
                lea     r12, [rsi+r12*8+8]
                jmp     short loc_402A54
; ---------------------------------------------------------------------------
                align 10h

loc_402A50:                             ; CODE XREF: _pei386_runtime_relocator+F5↓j
                add     r14, 8

loc_402A54:                             ; CODE XREF: _pei386_runtime_relocator+C8↑j
                mov     ecx, [rsi+4]
                mov     r8d, 4
                mov     rdx, rdi
                mov     eax, [rsi]
                mov     rsi, r14
                add     rcx, r13
                add     eax, [rcx]
                mov     [rbp-10h+flOldProtect], eax
                call    __write_memory_part_0
                cmp     r14, r12
                jnz     short loc_402A50

loc_402A77:                             ; CODE XREF: _pei386_runtime_relocator+1DF↓j
                mov     eax, cs:maxSections
                xor     esi, esi
                mov     r12, cs:__imp_VirtualProtect
                test    eax, eax
                jle     loc_4029A2
                xchg    ax, ax

loc_402A90:                             ; CODE XREF: _pei386_runtime_relocator+13D↓j
                mov     rax, cs:the_secs
                add     rax, rsi
                mov     r8d, [rax]      ; flNewProtect
                test    r8d, r8d
                jz      short loc_402AB0
                mov     rdx, [rax+10h]  ; dwSize
                mov     r9, rdi         ; lpflOldProtect
                mov     rcx, [rax+8]    ; lpAddress
                call    r12 ; __imp_VirtualProtect

loc_402AB0:                             ; CODE XREF: _pei386_runtime_relocator+120↑j
                add     ebx, 1
                add     rsi, 28h ; '('
                cmp     ebx, cs:maxSections
                jl      short loc_402A90
                jmp     loc_4029A2
; ---------------------------------------------------------------------------

loc_402AC4:                             ; CODE XREF: _pei386_runtime_relocator+9A↑j
                mov     ecx, [rsi+4]
                test    ecx, ecx
                jnz     loc_402A20
                mov     edx, [rsi+8]
                test    edx, edx
                jnz     short loc_402AF3
                mov     edx, [rsi+0Ch]
                add     rsi, 0Ch
                nop     dword ptr [rax]

loc_402AE0:                             ; CODE XREF: _pei386_runtime_relocator+92↑j
                test    edx, edx
                jnz     loc_402A20
                mov     eax, [rsi+4]
                test    eax, eax
                jnz     loc_402A20

loc_402AF3:                             ; CODE XREF: _pei386_runtime_relocator+154↑j
                mov     edx, [rsi+8]
                cmp     edx, 1
                jnz     loc_402C2E
                mov     r13, cs:_refptr___image_base__
                add     rsi, 0Ch
                mov     r15, 0FFFFFFFF00000000h
                lea     r14, [rbp-10h+flOldProtect]
                cmp     rsi, r12
                jb      short loc_402B65
                jmp     loc_4029A2
; ---------------------------------------------------------------------------

loc_402B22:                             ; CODE XREF: _pei386_runtime_relocator+1FA↓j
                jbe     loc_402BE0
                cmp     edx, 20h ; ' '
                jz      loc_402BB0
                cmp     edx, 40h ; '@'
                jnz     loc_402C1A
                mov     rdx, [rcx]
                mov     r8d, 8
                mov     rdi, r14
                sub     rdx, rax
                add     rdx, r9
                mov     qword ptr [rbp-10h+flOldProtect], rdx
                mov     rdx, r14
                call    __write_memory_part_0

loc_402B58:                             ; CODE XREF: _pei386_runtime_relocator+22D↓j
                                        ; _pei386_runtime_relocator+25A↓j ...
                add     rsi, 0Ch
                cmp     rsi, r12
                jnb     loc_402A77

loc_402B65:                             ; CODE XREF: _pei386_runtime_relocator+19B↑j
                mov     ecx, [rsi+4]
                mov     eax, [rsi]
                movzx   edx, byte ptr [rsi+8]
                add     rcx, r13
                add     rax, r13
                cmp     edx, 10h
                mov     r9, [rax]
                jnz     short loc_402B22
                movzx   r8d, word ptr [rcx]
                mov     rdx, r14
                mov     rdi, r14
                mov     r10, r8
                or      r10, 0FFFFFFFFFFFF0000h
                test    r8w, r8w
                cmovs   r8, r10
                sub     r8, rax
                add     r8, r9
                mov     qword ptr [rbp-10h+flOldProtect], r8
                mov     r8d, 2
                call    __write_memory_part_0
                jmp     short loc_402B58
; ---------------------------------------------------------------------------
                align 10h

loc_402BB0:                             ; CODE XREF: _pei386_runtime_relocator+1AB↑j
                mov     edx, [rcx]
                mov     rdi, r14
                mov     r8, rdx
                or      rdx, r15
                test    r8d, r8d
                cmovns  rdx, r8
                mov     r8d, 4
                sub     rdx, rax
                add     rdx, r9
                mov     qword ptr [rbp-10h+flOldProtect], rdx
                mov     rdx, r14
                call    __write_memory_part_0
                jmp     loc_402B58
; ---------------------------------------------------------------------------
                align 20h

loc_402BE0:                             ; CODE XREF: _pei386_runtime_relocator:loc_402B22↑j
                cmp     edx, 8
                jnz     short loc_402C1A
                movzx   r8d, byte ptr [rcx]
                mov     rdx, r14
                mov     rdi, r14
                mov     r10, r8
                or      r10, 0FFFFFFFFFFFFFF00h
                test    r8b, r8b
                cmovs   r8, r10
                sub     r8, rax
                add     r8, r9
                mov     qword ptr [rbp-10h+flOldProtect], r8
                mov     r8d, 1
                call    __write_memory_part_0
                jmp     loc_402B58
; ---------------------------------------------------------------------------

loc_402C1A:                             ; CODE XREF: _pei386_runtime_relocator+1B4↑j
                                        ; _pei386_runtime_relocator+263↑j
                lea     rcx, aUnknownPseudoR ; "  Unknown pseudo relocation bit size %d"...
                mov     qword ptr [rbp-10h+flOldProtect], 0
                call    __report_error
; ---------------------------------------------------------------------------

loc_402C2E:                             ; CODE XREF: _pei386_runtime_relocator+179↑j
                lea     rcx, aUnknownPseudoR_0 ; "  Unknown pseudo relocation protocol ve"...
                call    __report_error
_pei386_runtime_relocator endp

; ---------------------------------------------------------------------------
                db 90h
algn_402C3B:                            ; DATA XREF: .pdata:0000000000406588↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public __mingw_SEH_error_handler
__mingw_SEH_error_handler proc near     ; DATA XREF: __mingw_init_ehandler+6B↓o
                                        ; .pdata:0000000000406594↓o
                sub     rsp, 28h
                mov     eax, [rcx]
                cmp     eax, 0C0000091h
                ja      short loc_402CB0
                cmp     eax, 0C000008Dh
                jnb     short loc_402CCF
                cmp     eax, 0C0000008h
                jz      loc_402D64
                ja      loc_402D30
                cmp     eax, 80000002h
                jz      loc_402D64
                cmp     eax, 0C0000005h
                jnz     loc_402D3E
                xor     edx, edx        ; Function
                mov     ecx, 0Bh        ; Signal
                call    signal
                cmp     rax, 1
                jz      loc_402DC0
                test    rax, rax
                jz      loc_402DD6
                mov     ecx, 0Bh
                call    rax
                xor     eax, eax

loc_402CA3:                             ; CODE XREF: __mingw_SEH_error_handler+157↓j
                                        ; __mingw_SEH_error_handler+171↓j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402CB0:                             ; CODE XREF: __mingw_SEH_error_handler+B↑j
                cmp     eax, 0C0000094h
                jz      loc_402D70
                ja      short loc_402CF4
                cmp     eax, 0C0000092h
                jz      loc_402D64
                cmp     eax, 0C0000093h
                jnz     short loc_402D3E

loc_402CCF:                             ; CODE XREF: __mingw_SEH_error_handler+12↑j
                xor     edx, edx        ; Function
                mov     ecx, 8          ; Signal
                call    signal
                cmp     rax, 1
                jz      short loc_402D50

loc_402CE1:                             ; CODE XREF: __mingw_SEH_error_handler+140↓j
                test    rax, rax
                jz      short loc_402D3E
                mov     ecx, 8
                call    rax
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------

loc_402CF4:                             ; CODE XREF: __mingw_SEH_error_handler+7B↑j
                cmp     eax, 0C0000095h
                jz      short loc_402D64
                cmp     eax, 0C0000096h
                jnz     short loc_402D3E

loc_402D02:                             ; CODE XREF: __mingw_SEH_error_handler+F5↓j
                xor     edx, edx        ; Function
                mov     ecx, 4          ; Signal
                call    signal
                cmp     rax, 1
                jz      loc_402DA0
                test    rax, rax
                jz      loc_402DD6
                mov     ecx, 4
                call    rax
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402D30:                             ; CODE XREF: __mingw_SEH_error_handler+1F↑j
                cmp     eax, 0C000001Dh
                jz      short loc_402D02
                cmp     eax, 0C000008Ch
                jz      short loc_402D64

loc_402D3E:                             ; CODE XREF: __mingw_SEH_error_handler+35↑j
                                        ; __mingw_SEH_error_handler+8D↑j ...
                mov     eax, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402D50:                             ; CODE XREF: __mingw_SEH_error_handler+9F↑j
                mov     edx, 1          ; Function
                mov     ecx, 8          ; Signal
                call    signal
                call    fpreset

loc_402D64:                             ; CODE XREF: __mingw_SEH_error_handler+19↑j
                                        ; __mingw_SEH_error_handler+2A↑j ...
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402D70:                             ; CODE XREF: __mingw_SEH_error_handler+75↑j
                xor     edx, edx        ; Function
                mov     ecx, 8          ; Signal
                call    signal
                cmp     rax, 1
                jnz     loc_402CE1
                mov     edx, 1          ; Function
                mov     ecx, 8          ; Signal
                call    signal
                xor     eax, eax
                jmp     loc_402CA3
; ---------------------------------------------------------------------------
                align 20h

loc_402DA0:                             ; CODE XREF: __mingw_SEH_error_handler+D2↑j
                mov     edx, 1          ; Function
                mov     ecx, 4          ; Signal
                call    signal
                xor     eax, eax
                jmp     loc_402CA3
; ---------------------------------------------------------------------------
                align 20h

loc_402DC0:                             ; CODE XREF: __mingw_SEH_error_handler+4B↑j
                mov     edx, 1          ; Function
                mov     ecx, 0Bh        ; Signal
                call    signal
                xor     eax, eax
                jmp     loc_402CA3
; ---------------------------------------------------------------------------

loc_402DD6:                             ; CODE XREF: __mingw_SEH_error_handler+54↑j
                                        ; __mingw_SEH_error_handler+DB↑j
                mov     eax, 4
                jmp     loc_402CA3
__mingw_SEH_error_handler endp


; =============== S U B R O U T I N E =======================================


                public __mingw_init_ehandler
__mingw_init_ehandler proc near         ; CODE XREF: __tmainCRTStartup+E3↑p
                                        ; DATA XREF: .pdata:0000000000406594↓o ...
                push    r12
                push    rbp
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 20h
                call    _GetPEImageBase
                mov     rbp, rax
                mov     eax, cs:was_here_94915
                test    eax, eax
                jnz     short loc_402E21
                test    rbp, rbp
                jz      short loc_402E21
                lea     rcx, Str2       ; ".pdata"
                mov     cs:was_here_94915, 1
                call    _FindPESectionByName
                test    rax, rax
                jz      short loc_402E30

loc_402E1C:                             ; CODE XREF: __mingw_init_ehandler+C5↓j
                                        ; __mingw_init_ehandler+E0↓j
                mov     eax, 1

loc_402E21:                             ; CODE XREF: __mingw_init_ehandler+1A↑j
                                        ; __mingw_init_ehandler+1F↑j
                add     rsp, 20h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_402E30:                             ; CODE XREF: __mingw_init_ehandler+3A↑j
                lea     rbx, emu_pdata
                mov     ecx, 30h ; '0'
                xor     esi, esi
                lea     rdx, emu_xdata
                mov     rdi, rbx
                rep stosq
                lea     r12, __mingw_SEH_error_handler
                mov     ecx, 20h ; ' '
                mov     rdi, rdx
                rep stosq
                sub     r12, rbp
                mov     rdi, rdx
                jmp     short loc_402E93
; ---------------------------------------------------------------------------

loc_402E65:                             ; CODE XREF: __mingw_init_ehandler+BE↓j
                mov     byte ptr [rdi], 9
                add     rsi, 1
                add     rbx, 0Ch
                mov     [rdi+4], r12d
                mov     ecx, [rax+0Ch]
                mov     [rbx-0Ch], ecx
                add     ecx, [rax+8]
                mov     rax, rdi
                add     rdi, 8
                sub     rax, rbp
                mov     [rbx-4], eax
                mov     [rbx-8], ecx
                cmp     rsi, 20h ; ' '
                jz      short loc_402EC5

loc_402E93:                             ; CODE XREF: __mingw_init_ehandler+83↑j
                mov     rcx, rsi
                call    _FindPESectionExec
                test    rax, rax
                jnz     short loc_402E65
                test    rsi, rsi
                mov     edx, esi        ; EntryCount
                jz      loc_402E1C
                nop     dword ptr [rax+rax+00h]

loc_402EB0:                             ; CODE XREF: __mingw_init_ehandler+EA↓j
                lea     rcx, emu_pdata  ; FunctionTable
                mov     r8, rbp         ; BaseAddress
                call    cs:__imp_RtlAddFunctionTable
                jmp     loc_402E1C
; ---------------------------------------------------------------------------

loc_402EC5:                             ; CODE XREF: __mingw_init_ehandler+B1↑j
                mov     edx, 20h ; ' '
                jmp     short loc_402EB0
__mingw_init_ehandler endp

; ---------------------------------------------------------------------------
algn_402ECC:                            ; DATA XREF: .pdata:00000000004065A0↓o
                align 10h
; [000001E7 BYTES: COLLAPSED CHUNK OF FUNCTION mainCRTStartup. PRESS CTRL-NUMPAD+ TO EXPAND]
algn_4030B7:                            ; DATA XREF: .pdata:00000000004065AC↓o
                align 20h

; =============== S U B R O U T I N E =======================================


__mingwthr_run_key_dtors_part_0 proc near
                                        ; CODE XREF: __mingw_TLScallback+24↓p
                                        ; __mingw_TLScallback:loc_403320↓p
                                        ; DATA XREF: ...
                push    rbp
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 28h
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                call    cs:__imp_EnterCriticalSection
                mov     rbx, cs:key_dtor_list
                test    rbx, rbx
                jz      short loc_403114
                mov     rbp, cs:__imp_TlsGetValue
                mov     rdi, cs:__imp_GetLastError
                nop

loc_4030F0:                             ; CODE XREF: __mingwthr_run_key_dtors_part_0+52↓j
                mov     ecx, [rbx]      ; dwTlsIndex
                call    rbp ; __imp_TlsGetValue
                mov     rsi, rax
                call    rdi ; __imp_GetLastError
                test    eax, eax
                jnz     short loc_40310B
                test    rsi, rsi
                jz      short loc_40310B
                mov     rax, [rbx+8]
                mov     rcx, rsi
                call    rax

loc_40310B:                             ; CODE XREF: __mingwthr_run_key_dtors_part_0+3B↑j
                                        ; __mingwthr_run_key_dtors_part_0+40↑j
                mov     rbx, [rbx+10h]
                test    rbx, rbx
                jnz     short loc_4030F0

loc_403114:                             ; CODE XREF: __mingwthr_run_key_dtors_part_0+1F↑j
                lea     rcx, __mingwthr_cs
                add     rsp, 28h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                jmp     cs:__imp_LeaveCriticalSection
__mingwthr_run_key_dtors_part_0 endp

; ---------------------------------------------------------------------------
algn_40312A:                            ; DATA XREF: .pdata:00000000004065B8↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public ___w64_mingwthr_add_key_dtor
___w64_mingwthr_add_key_dtor proc near  ; DATA XREF: .pdata:00000000004065C4↓o
                push    rbp
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 28h
                mov     eax, cs:__mingwthr_cs_init
                xor     esi, esi
                test    eax, eax
                mov     ebp, ecx
                mov     rdi, rdx
                jnz     short loc_403154

loc_403149:                             ; CODE XREF: ___w64_mingwthr_add_key_dtor+7D↓j
                mov     eax, esi
                add     rsp, 28h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------

loc_403154:                             ; CODE XREF: ___w64_mingwthr_add_key_dtor+17↑j
                mov     edx, 18h        ; Size
                mov     ecx, 1          ; Count
                call    calloc
                test    rax, rax
                mov     rbx, rax
                jz      short loc_4031A8
                mov     [rax], ebp
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                mov     [rax+8], rdi
                call    cs:__imp_EnterCriticalSection
                mov     rax, cs:key_dtor_list
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                mov     cs:key_dtor_list, rbx
                mov     [rbx+10h], rax
                call    cs:__imp_LeaveCriticalSection
                mov     eax, esi
                add     rsp, 28h
                pop     rbx
                pop     rsi
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------

loc_4031A8:                             ; CODE XREF: ___w64_mingwthr_add_key_dtor+39↑j
                mov     esi, 0FFFFFFFFh
                jmp     short loc_403149
___w64_mingwthr_add_key_dtor endp

; ---------------------------------------------------------------------------
algn_4031AF:                            ; DATA XREF: .pdata:00000000004065C4↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public ___w64_mingwthr_remove_key_dtor
___w64_mingwthr_remove_key_dtor proc near
                                        ; DATA XREF: .pdata:00000000004065D0↓o
                push    rbx
                sub     rsp, 20h
                mov     eax, cs:__mingwthr_cs_init
                test    eax, eax
                mov     ebx, ecx
                jnz     short loc_4031D0
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_4031D0:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+F↑j
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                call    cs:__imp_EnterCriticalSection
                mov     rax, cs:key_dtor_list
                test    rax, rax
                jz      short loc_403203
                mov     edx, [rax]
                cmp     ebx, edx
                jnz     short loc_4031FA
                jmp     short loc_403240
; ---------------------------------------------------------------------------

loc_4031F1:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+51↓j
                mov     edx, [rcx]
                cmp     edx, ebx
                jz      short loc_403220
                mov     rax, rcx

loc_4031FA:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+3D↑j
                mov     rcx, [rax+10h]  ; Block
                test    rcx, rcx
                jnz     short loc_4031F1

loc_403203:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+37↑j
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                call    cs:__imp_LeaveCriticalSection

loc_403210:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+8A↓j
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_403220:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+45↑j
                mov     rdx, [rcx+10h]
                mov     [rax+10h], rdx

loc_403228:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+9E↓j
                call    free
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                call    cs:__imp_LeaveCriticalSection
                jmp     short loc_403210
; ---------------------------------------------------------------------------
                align 20h

loc_403240:                             ; CODE XREF: ___w64_mingwthr_remove_key_dtor+3F↑j
                mov     rdx, [rax+10h]
                mov     rcx, rax
                mov     cs:key_dtor_list, rdx
                jmp     short loc_403228
___w64_mingwthr_remove_key_dtor endp


; =============== S U B R O U T I N E =======================================


                public __mingw_TLScallback
__mingw_TLScallback proc near           ; CODE XREF: __dyn_tls_dtor:loc_402590↑p
                                        ; __dyn_tls_init:loc_402602↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                cmp     edx, 1
                jz      loc_4032F0
                jb      short loc_403290
                cmp     edx, 2
                jz      short loc_403280
                cmp     edx, 3
                jnz     short loc_403285
                mov     eax, cs:__mingwthr_cs_init
                test    eax, eax
                jz      short loc_403285
                call    __mingwthr_run_key_dtors_part_0
                jmp     short loc_403285
; ---------------------------------------------------------------------------
                align 20h

loc_403280:                             ; CODE XREF: __mingw_TLScallback+13↑j
                call    fpreset

loc_403285:                             ; CODE XREF: __mingw_TLScallback+18↑j
                                        ; __mingw_TLScallback+22↑j ...
                mov     eax, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------

loc_403290:                             ; CODE XREF: __mingw_TLScallback+E↑j
                mov     eax, cs:__mingwthr_cs_init
                test    eax, eax
                jnz     loc_403320

loc_40329E:                             ; CODE XREF: __mingw_TLScallback+D5↓j
                mov     eax, cs:__mingwthr_cs_init
                cmp     eax, 1
                jnz     short loc_403285
                mov     rcx, cs:key_dtor_list ; Block
                test    rcx, rcx
                jz      short loc_4032C6

loc_4032B5:                             ; CODE XREF: __mingw_TLScallback+74↓j
                mov     rbx, [rcx+10h]
                call    free
                test    rbx, rbx
                mov     rcx, rbx
                jnz     short loc_4032B5

loc_4032C6:                             ; CODE XREF: __mingw_TLScallback+63↑j
                lea     rcx, __mingwthr_cs
                mov     cs:key_dtor_list, 0
                mov     cs:__mingwthr_cs_init, 0
                call    cs:__IAT_start__
                jmp     short loc_403285
; ---------------------------------------------------------------------------
                align 10h

loc_4032F0:                             ; CODE XREF: __mingw_TLScallback+8↑j
                mov     eax, cs:__mingwthr_cs_init
                test    eax, eax
                jz      short loc_403310

loc_4032FA:                             ; CODE XREF: __mingw_TLScallback+CD↓j
                mov     cs:__mingwthr_cs_init, 1
                mov     eax, 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_403310:                             ; CODE XREF: __mingw_TLScallback+A8↑j
                lea     rcx, __mingwthr_cs ; lpCriticalSection
                call    cs:__imp_InitializeCriticalSection
                jmp     short loc_4032FA
; ---------------------------------------------------------------------------
                align 20h

loc_403320:                             ; CODE XREF: __mingw_TLScallback+48↑j
                call    __mingwthr_run_key_dtors_part_0
                jmp     loc_40329E
__mingw_TLScallback endp

; ---------------------------------------------------------------------------
algn_40332A:                            ; DATA XREF: .pdata:00000000004065DC↓o
                align 10h

; =============== S U B R O U T I N E =======================================


_ValidateImageBase_part_0 proc near     ; CODE XREF: _ValidateImageBase:loc_403360↓j
                                        ; _FindPESectionByName+26↓p ...
                movsxd  rax, dword ptr [rcx+3Ch]
                add     rcx, rax
                xor     eax, eax
                cmp     dword ptr [rcx], 4550h
                jz      short loc_403342
                retn
; ---------------------------------------------------------------------------

loc_403342:                             ; CODE XREF: _ValidateImageBase_part_0+F↑j
                xor     eax, eax
                cmp     word ptr [rcx+18h], 20Bh
                setz    al
                retn
_ValidateImageBase_part_0 endp

; ---------------------------------------------------------------------------
algn_40334E:                            ; DATA XREF: .pdata:00000000004065E8↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public _ValidateImageBase
_ValidateImageBase proc near            ; DATA XREF: .pdata:00000000004065F4↓o
                cmp     word ptr [rcx], 5A4Dh
                jz      short loc_403360
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_403360:                             ; CODE XREF: _ValidateImageBase+5↑j
                jmp     short _ValidateImageBase_part_0
_ValidateImageBase endp

; ---------------------------------------------------------------------------
algn_403362:                            ; DATA XREF: .pdata:00000000004065F4↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public _FindPESection
_FindPESection  proc near               ; DATA XREF: .pdata:0000000000406600↓o
                movsxd  rax, dword ptr [rcx+3Ch]
                add     rcx, rax
                movzx   eax, word ptr [rcx+14h]
                lea     rax, [rcx+rax+18h]
                movzx   ecx, word ptr [rcx+6]
                test    ecx, ecx
                jz      short loc_4033B1
                sub     ecx, 1
                lea     rcx, [rcx+rcx*4]
                lea     r9, [rax+rcx*8+28h]

loc_403394:                             ; CODE XREF: _FindPESection+3F↓j
                mov     r8d, [rax+0Ch]
                cmp     r8, rdx
                mov     rcx, r8
                ja      short loc_4033A8
                add     ecx, [rax+8]
                cmp     rcx, rdx
                ja      short locret_4033B3

loc_4033A8:                             ; CODE XREF: _FindPESection+2E↑j
                add     rax, 28h ; '('
                cmp     rax, r9
                jnz     short loc_403394

loc_4033B1:                             ; CODE XREF: _FindPESection+16↑j
                xor     eax, eax

locret_4033B3:                          ; CODE XREF: _FindPESection+36↑j
                retn
_FindPESection  endp

; ---------------------------------------------------------------------------
algn_4033B4:                            ; DATA XREF: .pdata:0000000000406600↓o
                align 20h

; =============== S U B R O U T I N E =======================================


; __int64 __fastcall FindPESectionByName(char *Str2)
                public _FindPESectionByName
_FindPESectionByName proc near          ; CODE XREF: __mingw_init_ehandler+32↑p
                                        ; DATA XREF: .pdata:000000000040660C↓o
                push    rdi
                push    rsi
                push    rbx
                sub     rsp, 20h
                mov     rsi, rcx
                call    strlen
                cmp     rax, 8
                ja      short loc_403440
                mov     rdx, cs:_refptr___image_base__
                cmp     word ptr [rdx], 5A4Dh
                jnz     short loc_403440
                mov     rcx, rdx
                call    _ValidateImageBase_part_0
                test    eax, eax
                jz      short loc_403440
                movsxd  rcx, dword ptr [rdx+3Ch]
                add     rcx, rdx
                movzx   eax, word ptr [rcx+14h]
                lea     rbx, [rcx+rax+18h]
                movzx   eax, word ptr [rcx+6]
                test    eax, eax
                jz      short loc_403440
                sub     eax, 1
                lea     rax, [rax+rax*4]
                lea     rdi, [rbx+rax*8+28h]
                jmp     short loc_40341E
; ---------------------------------------------------------------------------

loc_403415:                             ; CODE XREF: _FindPESectionByName+71↓j
                add     rbx, 28h ; '('
                cmp     rbx, rdi
                jz      short loc_403440

loc_40341E:                             ; CODE XREF: _FindPESectionByName+53↑j
                mov     r8d, 8          ; MaxCount
                mov     rdx, rsi        ; Str2
                mov     rcx, rbx        ; Str1
                call    strncmp
                test    eax, eax
                jnz     short loc_403415
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                pop     rsi
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_403440:                             ; CODE XREF: _FindPESectionByName+13↑j
                                        ; _FindPESectionByName+21↑j ...
                xor     ebx, ebx
                mov     rax, rbx
                add     rsp, 20h
                pop     rbx
                pop     rsi
                pop     rdi
                retn
_FindPESectionByName endp

; ---------------------------------------------------------------------------
algn_40344D:                            ; DATA XREF: .pdata:000000000040660C↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public __mingw_GetSectionForAddress
__mingw_GetSectionForAddress proc near  ; CODE XREF: __write_memory_part_0+5A↑p
                                        ; DATA XREF: .pdata:0000000000406618↓o
                sub     rsp, 28h
                mov     r8, cs:_refptr___image_base__
                cmp     word ptr [r8], 5A4Dh
                mov     rdx, rcx
                jnz     short loc_4034BD
                mov     rcx, r8
                call    _ValidateImageBase_part_0
                test    eax, eax
                jz      short loc_4034BD
                movsxd  rax, dword ptr [r8+3Ch]
                mov     rcx, rdx
                sub     rcx, r8
                add     r8, rax
                movzx   edx, word ptr [r8+6]
                movzx   eax, word ptr [r8+14h]
                test    edx, edx
                lea     rax, [r8+rax+18h]
                jz      short loc_4034BD
                sub     edx, 1
                lea     rdx, [rdx+rdx*4]
                lea     r9, [rax+rdx*8+28h]
                xchg    ax, ax

loc_4034A0:                             ; CODE XREF: __mingw_GetSectionForAddress+6B↓j
                mov     r8d, [rax+0Ch]
                cmp     rcx, r8
                mov     rdx, r8
                jb      short loc_4034B4
                add     edx, [rax+8]
                cmp     rcx, rdx
                jb      short loc_4034BF

loc_4034B4:                             ; CODE XREF: __mingw_GetSectionForAddress+5A↑j
                add     rax, 28h ; '('
                cmp     rax, r9
                jnz     short loc_4034A0

loc_4034BD:                             ; CODE XREF: __mingw_GetSectionForAddress+14↑j
                                        ; __mingw_GetSectionForAddress+20↑j ...
                xor     eax, eax

loc_4034BF:                             ; CODE XREF: __mingw_GetSectionForAddress+62↑j
                add     rsp, 28h
                retn
__mingw_GetSectionForAddress endp

; ---------------------------------------------------------------------------
algn_4034C4:                            ; DATA XREF: .pdata:0000000000406618↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public __mingw_GetSectionCount
__mingw_GetSectionCount proc near       ; CODE XREF: _pei386_runtime_relocator+3D↑p
                                        ; DATA XREF: .pdata:0000000000406624↓o
                sub     rsp, 28h
                mov     rdx, cs:_refptr___image_base__
                xor     r8d, r8d
                cmp     word ptr [rdx], 5A4Dh
                jz      short loc_4034F0

loc_4034E5:                             ; CODE XREF: __mingw_GetSectionCount+2A↓j
                mov     eax, r8d
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_4034F0:                             ; CODE XREF: __mingw_GetSectionCount+13↑j
                mov     rcx, rdx
                call    _ValidateImageBase_part_0
                test    eax, eax
                jz      short loc_4034E5
                movsxd  rax, dword ptr [rdx+3Ch]
                movzx   r8d, word ptr [rax+rdx+6]
                mov     eax, r8d
                add     rsp, 28h
                retn
__mingw_GetSectionCount endp

; ---------------------------------------------------------------------------
algn_40350E:                            ; DATA XREF: .pdata:0000000000406624↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public _FindPESectionExec
_FindPESectionExec proc near            ; CODE XREF: __mingw_init_ehandler+B6↑p
                                        ; DATA XREF: .pdata:0000000000406630↓o
                sub     rsp, 28h
                mov     r8, cs:_refptr___image_base__
                cmp     word ptr [r8], 5A4Dh
                mov     rdx, rcx
                jnz     short loc_403578
                mov     rcx, r8
                call    _ValidateImageBase_part_0
                test    eax, eax
                jz      short loc_403578
                movsxd  rcx, dword ptr [r8+3Ch]
                add     rcx, r8
                movzx   eax, word ptr [rcx+14h]
                lea     rax, [rcx+rax+18h]
                movzx   ecx, word ptr [rcx+6]
                test    ecx, ecx
                jz      short loc_403578
                sub     ecx, 1
                lea     rcx, [rcx+rcx*4]
                lea     rcx, [rax+rcx*8+28h]
                db      2Eh
                nop     word ptr [rax+rax+00000000h]

loc_403560:                             ; CODE XREF: _FindPESectionExec+66↓j
                test    byte ptr [rax+27h], 20h
                jz      short loc_40356F
                test    rdx, rdx
                jz      short loc_40357A
                sub     rdx, 1

loc_40356F:                             ; CODE XREF: _FindPESectionExec+54↑j
                add     rax, 28h ; '('
                cmp     rax, rcx
                jnz     short loc_403560

loc_403578:                             ; CODE XREF: _FindPESectionExec+14↑j
                                        ; _FindPESectionExec+20↑j ...
                xor     eax, eax

loc_40357A:                             ; CODE XREF: _FindPESectionExec+59↑j
                add     rsp, 28h
                retn
_FindPESectionExec endp

; ---------------------------------------------------------------------------
algn_40357F:                            ; DATA XREF: .pdata:0000000000406630↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public _GetPEImageBase
_GetPEImageBase proc near               ; CODE XREF: __write_memory_part_0+87↑p
                                        ; __mingw_init_ehandler+A↑p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     rdx, cs:_refptr___image_base__
                cmp     word ptr [rdx], 5A4Dh
                jnz     short loc_4035B0
                mov     rcx, rdx
                call    _ValidateImageBase_part_0
                test    eax, eax
                mov     eax, 0
                cmovnz  rax, rdx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_4035B0:                             ; CODE XREF: _GetPEImageBase+10↑j
                xor     eax, eax
                add     rsp, 28h
                retn
_GetPEImageBase endp

; ---------------------------------------------------------------------------
algn_4035B7:                            ; DATA XREF: .pdata:000000000040663C↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public _IsNonwritableInCurrentImage
_IsNonwritableInCurrentImage proc near  ; DATA XREF: .pdata:0000000000406648↓o
                sub     rsp, 28h
                mov     r8, cs:_refptr___image_base__
                xor     eax, eax
                cmp     word ptr [r8], 5A4Dh
                mov     rdx, rcx
                jz      short loc_4035E0

loc_4035D8:                             ; CODE XREF: _IsNonwritableInCurrentImage+2A↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_4035E0:                             ; CODE XREF: _IsNonwritableInCurrentImage+16↑j
                mov     rcx, r8
                call    _ValidateImageBase_part_0
                test    eax, eax
                jz      short loc_4035D8
                movsxd  rax, dword ptr [r8+3Ch]
                mov     rcx, rdx
                sub     rcx, r8
                add     r8, rax
                movzx   edx, word ptr [r8+6]
                movzx   eax, word ptr [r8+14h]
                test    edx, edx
                lea     rax, [r8+rax+18h]
                jz      short loc_40363D
                sub     edx, 1
                lea     rdx, [rdx+rdx*4]
                lea     r9, [rax+rdx*8+28h]
                nop     dword ptr [rax+rax+00000000h]

loc_403620:                             ; CODE XREF: _IsNonwritableInCurrentImage+7B↓j
                mov     r8d, [rax+0Ch]
                cmp     rcx, r8
                mov     rdx, r8
                jb      short loc_403634
                add     edx, [rax+8]
                cmp     rcx, rdx
                jb      short loc_403644

loc_403634:                             ; CODE XREF: _IsNonwritableInCurrentImage+6A↑j
                add     rax, 28h ; '('
                cmp     rax, r9
                jnz     short loc_403620

loc_40363D:                             ; CODE XREF: _IsNonwritableInCurrentImage+4A↑j
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------

loc_403644:                             ; CODE XREF: _IsNonwritableInCurrentImage+72↑j
                mov     eax, [rax+24h]
                not     eax
                shr     eax, 1Fh
                add     rsp, 28h
                retn
_IsNonwritableInCurrentImage endp

; ---------------------------------------------------------------------------
algn_403651:                            ; DATA XREF: .pdata:0000000000406648↓o
                align 20h

; =============== S U B R O U T I N E =======================================


                public __mingw_enum_import_library_names
__mingw_enum_import_library_names proc near
                                        ; DATA XREF: .pdata:0000000000406654↓o
                sub     rsp, 28h
                mov     r11, cs:_refptr___image_base__
                cmp     word ptr [r11], 5A4Dh
                mov     r9d, ecx
                jnz     short loc_4036CE
                mov     rcx, r11
                call    _ValidateImageBase_part_0
                test    eax, eax
                jz      short loc_4036CE
                movsxd  rax, dword ptr [r11+3Ch]
                add     rax, r11
                mov     edx, [rax+90h]
                test    edx, edx
                jz      short loc_4036CE
                movzx   ecx, word ptr [rax+14h]
                lea     rcx, [rax+rcx+18h]
                movzx   eax, word ptr [rax+6]
                test    eax, eax
                jz      short loc_4036CE
                sub     eax, 1
                lea     rax, [rax+rax*4]
                lea     rax, [rcx+rax*8+28h]

loc_4036B0:                             ; CODE XREF: __mingw_enum_import_library_names+6C↓j
                mov     r10d, [rcx+0Ch]
                cmp     rdx, r10
                mov     r8, r10
                jb      short loc_4036C5
                add     r8d, [rcx+8]
                cmp     rdx, r8
                jb      short loc_4036D5

loc_4036C5:                             ; CODE XREF: __mingw_enum_import_library_names+5A↑j
                add     rcx, 28h ; '('
                cmp     rcx, rax
                jnz     short loc_4036B0

loc_4036CE:                             ; CODE XREF: __mingw_enum_import_library_names+14↑j
                                        ; __mingw_enum_import_library_names+20↑j ...
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------

loc_4036D5:                             ; CODE XREF: __mingw_enum_import_library_names+63↑j
                add     rdx, r11
                jnz     short loc_4036E8
                jmp     short loc_4036CE
; ---------------------------------------------------------------------------
                align 20h

loc_4036E0:                             ; CODE XREF: __mingw_enum_import_library_names+99↓j
                sub     r9d, 1
                add     rdx, 14h

loc_4036E8:                             ; CODE XREF: __mingw_enum_import_library_names+78↑j
                mov     ecx, [rdx+4]
                test    ecx, ecx
                jnz     short loc_4036F6
                mov     eax, [rdx+0Ch]
                test    eax, eax
                jz      short loc_4036CE

loc_4036F6:                             ; CODE XREF: __mingw_enum_import_library_names+8D↑j
                test    r9d, r9d
                jg      short loc_4036E0
                mov     eax, [rdx+0Ch]
                add     rax, r11
                add     rsp, 28h
                retn
__mingw_enum_import_library_names endp

; ---------------------------------------------------------------------------
algn_403706:                            ; DATA XREF: .pdata:0000000000406654↓o
                align 10h

; =============== S U B R O U T I N E =======================================


                public ___chkstk_ms
___chkstk_ms    proc near               ; CODE XREF: _pei386_runtime_relocator+54↑p

arg_0           = byte ptr  8

                push    rcx
                push    rax
                cmp     rax, 1000h
                lea     rcx, [rsp+10h+arg_0]
                jb      short loc_403738

loc_40371F:                             ; CODE XREF: ___chkstk_ms+26↓j
                sub     rcx, 1000h
                or      qword ptr [rcx], 0
                sub     rax, 1000h
                cmp     rax, 1000h
                ja      short loc_40371F

loc_403738:                             ; CODE XREF: ___chkstk_ms+D↑j
                sub     rcx, rax
                or      qword ptr [rcx], 0
                pop     rax
                pop     rcx
                retn
___chkstk_ms    endp

; ---------------------------------------------------------------------------
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION vfprintf. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION strncmp. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION strlen. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION signal. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION puts. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION memcpy. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION malloc. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION fwrite. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION free. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION fprintf. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION exit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION calloc. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION abort. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION _unlock. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION _onexit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION _lock. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION _initterm. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION _cexit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION _amsg_exit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION __setusermatherr. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION __set_app_type. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION __lconv_init. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION __iob_func. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION __getmainargs. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION __dllonexit. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h

; =============== S U B R O U T I N E =======================================


; _invalid_parameter_handler __cdecl get_invalid_parameter_handler()
                public _get_invalid_parameter_handler
_get_invalid_parameter_handler proc near
                                        ; DATA XREF: .data:__imp__get_invalid_parameter_handler↓o
                                        ; .pdata:0000000000406660↓o
                mov     rax, cs:handler
                retn
_get_invalid_parameter_handler endp

; ---------------------------------------------------------------------------
algn_403828:                            ; DATA XREF: .pdata:0000000000406660↓o
                align 10h

; =============== S U B R O U T I N E =======================================


; _invalid_parameter_handler __cdecl set_invalid_parameter_handler(_invalid_parameter_handler Handler)
                public _set_invalid_parameter_handler
_set_invalid_parameter_handler proc near
                                        ; CODE XREF: __tmainCRTStartup+EF↑p
                                        ; DATA XREF: .data:__imp__set_invalid_parameter_handler↓o ...
                mov     rax, rcx
                xchg    rax, cs:handler
                retn
_set_invalid_parameter_handler endp

; ---------------------------------------------------------------------------
algn_40383B:                            ; DATA XREF: .pdata:000000000040666C↓o
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION VirtualQuery. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION VirtualProtect. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION UnhandledExceptionFilter. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION TlsGetValue. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION TerminateProcess. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION RtlVirtualUnwind. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION RtlLookupFunctionEntry. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION RtlCaptureContext. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION RtlAddFunctionTable. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION QueryPerformanceCounter. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION LeaveCriticalSection. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION InitializeCriticalSection. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION GetTickCount. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION GetSystemTimeAsFileTime. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION GetLastError. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION GetCurrentThreadId. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 20h
; [00000006 BYTES: COLLAPSED FUNCTION GetCurrentProcessId. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8
; [00000006 BYTES: COLLAPSED FUNCTION GetCurrentProcess. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 10h
; [00000006 BYTES: COLLAPSED FUNCTION EnterCriticalSection. PRESS CTRL-NUMPAD+ TO EXPAND]
                align 8

; =============== S U B R O U T I N E =======================================


; void __stdcall DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection)
                public DeleteCriticalSection
DeleteCriticalSection proc near
                jmp     cs:__IAT_start__
DeleteCriticalSection endp

; ---------------------------------------------------------------------------
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

; void __fastcall __noreturn _report_error(char *Format)
__report_error  proc near               ; CODE XREF: __write_memory_part_0+16F↑p
                                        ; __write_memory_part_0+1B8↑p ...

ArgList         = qword ptr -20h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                push    rsi
                push    rbx
                sub     rsp, 38h
                lea     rax, [rsp+48h+arg_8]
                mov     rbx, rcx
                mov     [rsp+48h+arg_8], rdx
                mov     [rsp+48h+arg_10], r8
                mov     [rsp+48h+arg_18], r9
                mov     [rsp+48h+ArgList], rax
                call    __iob_func
                mov     r8d, 1Bh        ; ElementCount
                mov     edx, 1          ; ElementSize
                lea     r9, [rax+60h]   ; Stream
                lea     rcx, aMingwW64Runtim ; "Mingw-w64 runtime failure:\n"
                call    fwrite
                mov     rsi, [rsp+48h+ArgList]
                call    __iob_func
                mov     rdx, rbx        ; Format
                lea     rcx, [rax+60h]  ; Stream
                mov     r8, rsi         ; ArgList
                call    vfprintf
                call    abort
; ---------------------------------------------------------------------------
                db 90h
__report_error  endp

algn_403941:                            ; DATA XREF: .pdata:0000000000406678↓o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

register_frame_ctor proc near           ; DATA XREF: .pdata:0000000000406684↓o
                push    rbp
                mov     rbp, rsp
                pop     rbp
                jmp     __gcc_register_frame
register_frame_ctor endp

; ---------------------------------------------------------------------------
algn_40395A:                            ; DATA XREF: .pdata:0000000000406684↓o
                align 20h
                public ___CTOR_LIST__
; func_ptr __CTOR_LIST__[]
___CTOR_LIST__  dq 0FFFFFFFFFFFFFFFFh, 403950h, 0
                                        ; DATA XREF: .rdata:_refptr___CTOR_LIST__↓o
                public __DTOR_LIST__
; func_ptr _DTOR_LIST__[]
__DTOR_LIST__   dq 0FFFFFFFFFFFFFFFFh
qword_403980    dq 10h dup(0)           ; DATA XREF: .data:p_93750↓o
                dq 0C0h dup(?)
_text           ends

; Section 2. (virtual address 00004000)
; Virtual size                  : 000000A0 (    160.)
; Section size in file          : 00000200 (    512.)
; Offset to raw data for section: 00002E00
; Flags C0500040: Data Readable Writable
; Alignment     : 16 bytes
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read/Write
_data           segment para public 'DATA' use64
                assume cs:_data
                ;org 404000h
                public __mingw_winmain_nShowCmd
__mingw_winmain_nShowCmd dd 0Ah         ; DATA XREF: __tmainCRTStartup:loc_40133F↑w
                align 10h
p_93750         dq offset qword_403980  ; DATA XREF: __do_global_dtors+4↑r
                                        ; __do_global_dtors+15↑r ...
                align 20h
                public __native_vcclrit_reason
__native_vcclrit_reason db 0FFh
                db 0FFh
                db 0FFh
                db 0FFh
                public __native_dllmain_reason
__native_dllmain_reason db 0FFh
                db 0FFh
                db 0FFh
                db 0FFh
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public _dowildcard
_dowildcard     db 0FFh                 ; DATA XREF: .rdata:_refptr__dowildcard↓o
                db 0FFh
                db 0FFh
                db 0FFh
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public _charmax
; int charmax
_charmax        dd 0FFh
                align 10h
                public _CRT_MT
_CRT_MT         db    2                 ; DATA XREF: .rdata:_refptr__CRT_MT↓o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public _MINGW_INSTALL_DEBUG_MATHERR
_MINGW_INSTALL_DEBUG_MATHERR db 0FFh    ; DATA XREF: .rdata:_refptr__MINGW_INSTALL_DEBUG_MATHERR↓o
                db 0FFh
                db 0FFh
                db 0FFh
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public __imp__get_invalid_parameter_handler
; _invalid_parameter_handler __cdecl _get_invalid_parameter_handler()
__imp__get_invalid_parameter_handler dq offset _get_invalid_parameter_handler
                public __imp__set_invalid_parameter_handler
; _invalid_parameter_handler __cdecl _set_invalid_parameter_handler(_invalid_parameter_handler Handler)
__imp__set_invalid_parameter_handler dq offset _set_invalid_parameter_handler
                public __security_cookie
; uintptr_t _security_cookie
__security_cookie dq 2B992DDFA232h      ; DATA XREF: __security_init_cookie+A↑r
                                        ; __security_init_cookie:loc_402431↑w ...
                align 10h
                public __security_cookie_complement
__security_cookie_complement dq 0FFFFD466D2205DCDh
                                        ; DATA XREF: __security_init_cookie+2C↑w
                                        ; __security_init_cookie+A8↑w ...
                align 20h
                public __data_end__
__data_end__    db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                align 1000h
_data           ends

; Section 3. (virtual address 00005000)
; Virtual size                  : 000005E0 (   1504.)
; Section size in file          : 00000600 (   1536.)
; Offset to raw data for section: 00003000
; Flags 40500040: Data Readable
; Alignment     : 16 bytes
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read
_rdata          segment para public 'DATA' use64
                assume cs:_rdata
                ;org 405000h
; const char Buffer[3]
Buffer          db '19',0               ; DATA XREF: func_10+8↑o
; const char aR[2]
aR              db 'R',0                ; DATA XREF: func_10+14↑o
                                        ; func_46+14↑o
; const char a94[3]
a94             db '94',0               ; DATA XREF: func_11+8↑o
; const char a13[3]
a13             db '13',0               ; DATA XREF: func_12+8↑o
; const char a41[3]
a41             db '41',0               ; DATA XREF: func_13+8↑o
; const char a90[3]
a90             db '90',0               ; DATA XREF: func_14+8↑o
; const char a40[3]
a40             db '40',0               ; DATA XREF: func_15+8↑o
; const char a25[3]
a25             db '25',0               ; DATA XREF: func_16+8↑o
; const char a30[3]
a30             db '30',0               ; DATA XREF: func_17+8↑o
; const char a50[3]
a50             db '50',0               ; DATA XREF: func_18+8↑o
; const char a18[3]
a18             db '18',0               ; DATA XREF: func_19+8↑o
; const char a53[3]
a53             db '53',0               ; DATA XREF: func_20+8↑o
; const char a23[3]
a23             db '23',0               ; DATA XREF: func_21+8↑o
; const char a68[3]
a68             db '68',0               ; DATA XREF: func_22+8↑o
; const char a35[3]
a35             db '35',0               ; DATA XREF: func_23+8↑o
; const char a49[3]
a49             db '49',0               ; DATA XREF: func_24+8↑o
; const char a3[2]
a3              db '3',0                ; DATA XREF: func_24+14↑o
                                        ; func_95+14↑o
; const char a56[3]
a56             db '56',0               ; DATA XREF: func_25+8↑o
; const char a33[3]
a33             db '33',0               ; DATA XREF: func_26+8↑o
; const char a17[3]
a17             db '17',0               ; DATA XREF: func_27+8↑o
; const char aY[2]
aY              db 'Y',0                ; DATA XREF: func_27+14↑o
                                        ; func_39+14↑o
; const char a55[3]
a55             db '55',0               ; DATA XREF: func_28+8↑o
; const char a92[3]
a92             db '92',0               ; DATA XREF: func_29+8↑o
; const char aB[2]
aB              db 'B',0                ; DATA XREF: func_29+14↑o
; const char a51[3]
a51             db '51',0               ; DATA XREF: func_30+8↑o
; const char a71[3]
a71             db '71',0               ; DATA XREF: func_31+8↑o
; const char a72[3]
a72             db '72',0               ; DATA XREF: func_32+8↑o
; const char aE[2]
aE              db 'E',0                ; DATA XREF: func_32+14↑o
; const char a45[3]
a45             db '45',0               ; DATA XREF: func_33+8↑o
; const char a43[3]
a43             db '43',0               ; DATA XREF: func_34+8↑o
; const char a86[3]
a86             db '86',0               ; DATA XREF: func_35+8↑o
; const char aV[2]
aV              db 'V',0                ; DATA XREF: func_35+14↑o
; const char a59[3]
a59             db '59',0               ; DATA XREF: func_36+8↑o
; const char a85[3]
a85             db '85',0               ; DATA XREF: func_37+8↑o
; const char asc_405060[2]
asc_405060      db '{',0                ; DATA XREF: func_37+14↑o
; const char a83[3]
a83             db '83',0               ; DATA XREF: func_38+8↑o
; const char a75[3]
a75             db '75',0               ; DATA XREF: func_39+8↑o
; const char a88[3]
a88             db '88',0               ; DATA XREF: func_40+8↑o
; const char a61[3]
a61             db '61',0               ; DATA XREF: func_41+8↑o
; const char aD[2]
aD              db 'D',0                ; DATA XREF: func_41+14↑o
                                        ; func_85+14↑o
; const char a52[3]
a52             db '52',0               ; DATA XREF: func_42+8↑o
; const char a42[3]
a42             db '42',0               ; DATA XREF: func_43+8↑o
; const char a15[3]
a15             db '15',0               ; DATA XREF: func_44+8↑o
; const char a99[3]
a99             db '99',0               ; DATA XREF: func_45+8↑o
; const char a20[3]
a20             db '20',0               ; DATA XREF: func_46+8↑o
; const char a93[3]
a93             db '93',0               ; DATA XREF: func_47+8↑o
; const char a29[3]
a29             db '29',0               ; DATA XREF: func_48+8↑o
; const char asc_405085[2]
asc_405085      db '}',0                ; DATA XREF: func_48+14↑o
; const char a69[3]
a69             db '69',0               ; DATA XREF: func_49+8↑o
; const char a84[3]
a84             db '84',0               ; DATA XREF: func_50+8↑o
; const char asc_40508D[2]
asc_40508D      db '_',0                ; DATA XREF: func_50+14↑o
                                        ; func_99+14↑o
; const char a26[3]
a26             db '26',0               ; DATA XREF: func_51+8↑o
; const char a63[3]
a63             db '63',0               ; DATA XREF: func_52+8↑o
; const char a67[3]
a67             db '67',0               ; DATA XREF: func_53+8↑o
; const char a78[3]
a78             db '78',0               ; DATA XREF: func_54+8↑o
; const char aT[2]
aT              db 'T',0                ; DATA XREF: func_54+14↑o
                                        ; func_68+14↑o
; const char a48[3]
a48             db '48',0               ; DATA XREF: func_55+8↑o
; const char aC[2]
aC              db 'C',0                ; DATA XREF: func_55+14↑o
; const char a81[3]
a81             db '81',0               ; DATA XREF: func_56+8↑o
; const char a97[3]
a97             db '97',0               ; DATA XREF: func_57+8↑o
; const char a36[3]
a36             db '36',0               ; DATA XREF: func_58+8↑o
; const char aS[2]
aS              db 'S',0                ; DATA XREF: func_58+14↑o
; const char a47[3]
a47             db '47',0               ; DATA XREF: func_59+8↑o
; const char a21[3]
a21             db '21',0               ; DATA XREF: func_60+8↑o
; const char aA[2]
aA              db 'A',0                ; DATA XREF: func_60+14↑o
                                        ; func_62+14↑o ...
; const char a70[3]
a70             db '70',0               ; DATA XREF: func_61+8↑o
; const char a79[3]
a79             db '79',0               ; DATA XREF: func_62+8↑o
; const char a28[3]
a28             db '28',0               ; DATA XREF: func_63+8↑o
; const char a34[3]
a34             db '34',0               ; DATA XREF: func_64+8↑o
; const char aO[2]
aO              db 'O',0                ; DATA XREF: func_64+14↑o
; const char a44[3]
a44             db '44',0               ; DATA XREF: func_65+8↑o
; const char a16[3]
a16             db '16',0               ; DATA XREF: func_66+8↑o
; const char a73[3]
a73             db '73',0               ; DATA XREF: func_67+8↑o
; const char a11[3]
a11             db '11',0               ; DATA XREF: func_68+8↑o
; const char a27[3]
a27             db '27',0               ; DATA XREF: func_69+8↑o
; const char a31[3]
a31             db '31',0               ; DATA XREF: func_70+8↑o
; const char a66[3]
a66             db '66',0               ; DATA XREF: func_71+8↑o
; const char a22[3]
a22             db '22',0               ; DATA XREF: func_72+8↑o
; const char a46[3]
a46             db '46',0               ; DATA XREF: func_73+8↑o
; const char a60[3]
a60             db '60',0               ; DATA XREF: func_74+8↑o
; const char a82[3]
a82             db '82',0               ; DATA XREF: func_75+8↑o
; const char a96[3]
a96             db '96',0               ; DATA XREF: func_76+8↑o
; const char a91[3]
a91             db '91',0               ; DATA XREF: func_77+8↑o
; const char a54[3]
a54             db '54',0               ; DATA XREF: func_78+8↑o
; const char a58[3]
a58             db '58',0               ; DATA XREF: func_79+8↑o
; const char a57[3]
a57             db '57',0               ; DATA XREF: func_80+8↑o
; const char a10[3]
a10             db '10',0               ; DATA XREF: func_81+8↑o
; const char a89[3]
a89             db '89',0               ; DATA XREF: func_82+8↑o
; const char a32[3]
a32             db '32',0               ; DATA XREF: func_83+8↑o
; const char aN[2]
aN              db 'N',0                ; DATA XREF: func_83+14↑o
; const char a80[3]
a80             db '80',0               ; DATA XREF: func_84+8↑o
; const char a62[3]
a62             db '62',0               ; DATA XREF: func_85+8↑o
; const char a12[3]
a12             db '12',0               ; DATA XREF: func_86+8↑o
; const char a64[3]
a64             db '64',0               ; DATA XREF: func_87+8↑o
; const char aG[2]
aG              db 'G',0                ; DATA XREF: func_87+14↑o
; const char a87[3]
a87             db '87',0               ; DATA XREF: func_88+8↑o
; const char a95[3]
a95             db '95',0               ; DATA XREF: func_89+8↑o
; const char a24[3]
a24             db '24',0               ; DATA XREF: func_90+8↑o
; const char a65[3]
a65             db '65',0               ; DATA XREF: func_91+8↑o
; const char a76[3]
a76             db '76',0               ; DATA XREF: func_92+8↑o
; const char a98[3]
a98             db '98',0               ; DATA XREF: func_93+8↑o
; const char a37[3]
a37             db '37',0               ; DATA XREF: func_94+8↑o
; const char a39[3]
a39             db '39',0               ; DATA XREF: func_95+8↑o
; const char a77[3]
a77             db '77',0               ; DATA XREF: func_96+8↑o
; const char a38[3]
a38             db '38',0               ; DATA XREF: func_97+8↑o
; const char a100[4]
a100            db '100',0              ; DATA XREF: func_98+8↑o
; const char a14[3]
a14             db '14',0               ; DATA XREF: func_99+8↑o
                align 20h
; const struct _EXCEPTION_POINTERS GS_ExceptionPointers
GS_ExceptionPointers _EXCEPTION_POINTERS <offset GS_ExceptionRecord, \
                                        ; DATA XREF: __report_gsfailure+B7↑o
                                     offset GS_ContextRecord>
                public __dyn_tls_init_callback
__dyn_tls_init_callback dq offset __dyn_tls_init
                                        ; DATA XREF: .rdata:_refptr___dyn_tls_init_callback↓o
                align 20h
aArgumentDomain db 'Argument domain error (DOMAIN)',0
                                        ; DATA XREF: _matherr:loc_4026C1↑o
aArgumentSingul db 'Argument singularity (SIGN)',0
                                        ; DATA XREF: _matherr:loc_402724↑o
                align 20h
aOverflowRangeE db 'Overflow range error (OVERFLOW)',0
                                        ; DATA XREF: _matherr:loc_402730↑o
aPartialLossOfS db 'Partial loss of significance (PLOSS)',0
                                        ; DATA XREF: _matherr:loc_402760↑o
                align 8
aTotalLossOfSig db 'Total loss of significance (TLOSS)',0
                                        ; DATA XREF: _matherr:loc_402750↑o
                align 10h
aTheResultIsToo db 'The result is too small to be represented (UNDERFLOW)',0
                                        ; DATA XREF: _matherr:loc_402740↑o
aUnknownError   db 'Unknown error',0    ; DATA XREF: _matherr:def_4026BF↑o
                align 8
; const char Format[]
Format          db '_matherr(): %s in %s(%g, %g)  (retval=%g)',0Ah,0
                                        ; DATA XREF: _matherr+6E↑o
                align 4
jpt_4026BF      dd offset def_4026BF - 405284h
                                        ; DATA XREF: _matherr+21↑o
                                        ; _matherr+28↑r
                dd offset loc_4026C1 - 405284h ; jump table for switch statement
                dd offset loc_402724 - 405284h
                dd offset loc_402730 - 405284h
                dd offset loc_402740 - 405284h
                dd offset loc_402750 - 405284h
                dd offset loc_402760 - 405284h
aMingwW64Runtim db 'Mingw-w64 runtime failure:',0Ah,0
                                        ; DATA XREF: __report_error+36↑o
                align 20h
; const char aAddressPHasNoI[]
aAddressPHasNoI db 'Address %p has no image-section',0
                                        ; DATA XREF: __write_memory_part_0:loc_40296D↑o
; const char aVirtualqueryFa[]
aVirtualqueryFa db '  VirtualQuery failed for %d bytes at address %p',0
                                        ; DATA XREF: __write_memory_part_0+1A7↑o
                align 8
; const char aVirtualprotect[]
aVirtualprotect db '  VirtualProtect failed with code 0x%x',0
                                        ; DATA XREF: __write_memory_part_0+166↑o
                align 20h
; const char aUnknownPseudoR_0[]
aUnknownPseudoR_0 db '  Unknown pseudo relocation protocol version %d.',0Ah,0
                                        ; DATA XREF: _pei386_runtime_relocator:loc_402C2E↑o
                align 8
; const char aUnknownPseudoR[]
aUnknownPseudoR db '  Unknown pseudo relocation bit size %d.',0Ah,0
                                        ; DATA XREF: _pei386_runtime_relocator:loc_402C1A↑o
                align 10h
; const char Str2[]
Str2            db '.pdata',0           ; DATA XREF: __mingw_init_ehandler+21↑o
                align 20h
                public _refptr__CRT_MT
_refptr__CRT_MT dq offset _CRT_MT       ; DATA XREF: __dyn_tls_init+6↑r
                align 10h
                public _refptr__MINGW_INSTALL_DEBUG_MATHERR
_refptr__MINGW_INSTALL_DEBUG_MATHERR dq offset _MINGW_INSTALL_DEBUG_MATHERR
                                        ; DATA XREF: pre_c_init+9F↑r
                align 20h
                public _refptr___CTOR_LIST__
_refptr___CTOR_LIST__ dq offset ___CTOR_LIST__
                                        ; DATA XREF: __do_global_ctors+6↑r
                align 10h
                public _refptr___RUNTIME_PSEUDO_RELOC_LIST_END__
_refptr___RUNTIME_PSEUDO_RELOC_LIST_END__ dq offset __RUNTIME_PSEUDO_RELOC_LIST_END__
                                        ; DATA XREF: _pei386_runtime_relocator+59↑r
                align 20h
                public _refptr___RUNTIME_PSEUDO_RELOC_LIST__
_refptr___RUNTIME_PSEUDO_RELOC_LIST__ dq offset __RUNTIME_PSEUDO_RELOC_LIST_END__
                                        ; DATA XREF: _pei386_runtime_relocator+6A↑r
                align 10h
                public _refptr___dyn_tls_init_callback
_refptr___dyn_tls_init_callback dq offset __dyn_tls_init_callback
                                        ; DATA XREF: __tmainCRTStartup:loc_40125C↑r
                align 20h
                public _refptr___image_base__
_refptr___image_base__ dq 400000h       ; DATA XREF: pre_c_init+3A↑r
                                        ; __tmainCRTStartup+F9↑r ...
                align 10h
                public _refptr___imp___initenv
_refptr___imp___initenv dq offset __imp___initenv
                                        ; DATA XREF: __tmainCRTStartup+21A↑r
                align 20h
                public _refptr___imp__acmdln
_refptr___imp__acmdln dq offset __imp__acmdln
                                        ; DATA XREF: __tmainCRTStartup+109↑r
                align 10h
                public _refptr___imp__fmode
_refptr___imp__fmode dq offset __imp__fmode
                                        ; DATA XREF: pre_c_init+8E↑r
                align 20h
                public _refptr___imp__onexit
_refptr___imp__onexit dq offset __imp__onexit
                                        ; DATA XREF: mingw_onexit+1F↑r
                align 10h
                public _refptr___mingw_oldexcpt_handler
_refptr___mingw_oldexcpt_handler dq offset __mingw_oldexcpt_handler
                                        ; DATA XREF: __tmainCRTStartup+D9↑r
                align 20h
                public _refptr___native_startup_lock
_refptr___native_startup_lock dq offset __native_startup_lock
                                        ; DATA XREF: __tmainCRTStartup+3D↑r
                align 10h
                public _refptr___native_startup_state
_refptr___native_startup_state dq offset __native_startup_state
                                        ; DATA XREF: __tmainCRTStartup+71↑r
                                        ; __tmainCRTStartup:loc_401440↑r
                align 20h
                public _refptr___onexitbegin
_refptr___onexitbegin dq offset __onexitbegin
                                        ; DATA XREF: pre_c_init+7B↑r
                align 10h
                public _refptr___onexitend
_refptr___onexitend dq offset __onexitend
                                        ; DATA XREF: pre_c_init+71↑r
                align 20h
                public _refptr___xc_a
; _PVFV *const refptr___xc_a
_refptr___xc_a  dq offset __xc_a        ; DATA XREF: __tmainCRTStartup+2C3↑r
                align 10h
                public _refptr___xc_z
; _PVFV *const refptr___xc_z
_refptr___xc_z  dq offset __xc_z        ; DATA XREF: __tmainCRTStartup:loc_40146C↑r
                align 20h
                public _refptr___xi_a
; _PVFV *const refptr___xi_a
_refptr___xi_a  dq offset __xi_a        ; DATA XREF: __tmainCRTStartup+30D↑r
                align 10h
                public _refptr___xi_z
; _PVFV *const refptr___xi_z
_refptr___xi_z  dq offset __xi_z        ; DATA XREF: __tmainCRTStartup:loc_4014B0↑r
                align 20h
                public _refptr__dowildcard
_refptr__dowildcard dq offset _dowildcard
                                        ; DATA XREF: pre_cpp_init+34↑r
                align 10h
                public _refptr__fmode
_refptr__fmode  dq offset _fmode        ; DATA XREF: pre_c_init+85↑r
                align 20h
                public _refptr__gnu_exception_handler
_refptr__gnu_exception_handler dq offset _gnu_exception_handler
                align 10h
                public _refptr__matherr
_refptr__matherr dq offset _matherr
                align 20h
                public _refptr__newmode
_refptr__newmode dq offset _newmode     ; DATA XREF: pre_cpp_init+4↑r
                align 10h
                public _refptr_mingw_app_type
_refptr_mingw_app_type dq offset mingw_app_type
                                        ; DATA XREF: pre_c_init:loc_401058↑r
                                        ; __tmainCRTStartup+21↑r ...
                align 20h
                public _refptr_mingw_initcharmax
_refptr_mingw_initcharmax dq offset mingw_initcharmax
                                        ; DATA XREF: pre_c_init+2D↑r
                align 10h
                public _refptr_mingw_initltsdrot_force
_refptr_mingw_initltsdrot_force dq offset mingw_initltsdrot_force
                                        ; DATA XREF: pre_c_init+4↑r
                align 20h
                public _refptr_mingw_initltsdyn_force
_refptr_mingw_initltsdyn_force dq offset mingw_initltsdyn_force
                                        ; DATA XREF: pre_c_init+13↑r
                align 10h
                public _refptr_mingw_initltssuo_force
_refptr_mingw_initltssuo_force dq offset mingw_initltssuo_force
                                        ; DATA XREF: pre_c_init+20↑r
                align 20h
aGccX8664PosixS db 'GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.2.0',0
                align 20h
                public __RUNTIME_PSEUDO_RELOC_LIST_END__
__RUNTIME_PSEUDO_RELOC_LIST_END__ db    0
                                        ; DATA XREF: .rdata:_refptr___RUNTIME_PSEUDO_RELOC_LIST_END__↑o
                                        ; .rdata:_refptr___RUNTIME_PSEUDO_RELOC_LIST__↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                align 1000h
_rdata          ends

; Section 4. (virtual address 00006000)
; Virtual size                  : 00000690 (   1680.)
; Section size in file          : 00000800 (   2048.)
; Offset to raw data for section: 00003600
; Flags 40300040: Data Readable
; Alignment     : 4 bytes
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read
_pdata          segment dword public 'DATA' use64
                assume cs:_pdata
                ;org 406000h
ExceptionDir    RUNTIME_FUNCTION <rva __mingw_invalidParameterHandler, \
                                  rva algn_401001, rva stru_407000>
                RUNTIME_FUNCTION <rva pre_c_init, rva algn_401151, rva stru_407004>
                RUNTIME_FUNCTION <rva pre_cpp_init, rva algn_4011A9, rva stru_40700C>
                RUNTIME_FUNCTION <rva __tmainCRTStartup, rva algn_4014D6, \
                                  rva stru_407014>
                RUNTIME_FUNCTION <rva WinMainCRTStartup, rva algn_401502, \
                                  rva stru_407028>
                RUNTIME_FUNCTION <rva mainCRTStartup, rva algn_401532, \
                                  rva stru_407048>
                RUNTIME_FUNCTION <rva __gcc_register_frame, rva algn_401551, \
                                  rva stru_407068>
                RUNTIME_FUNCTION <rva __gcc_deregister_frame, rva algn_401566, \
                                  rva stru_407070>
                RUNTIME_FUNCTION <rva func_10, rva func_11, rva stru_407078>
                RUNTIME_FUNCTION <rva func_11, rva func_12, rva stru_407084>
                RUNTIME_FUNCTION <rva func_12, rva func_13, rva stru_407090>
                RUNTIME_FUNCTION <rva func_13, rva func_14, rva stru_40709C>
                RUNTIME_FUNCTION <rva func_14, rva func_15, rva stru_4070A8>
                RUNTIME_FUNCTION <rva func_15, rva func_16, rva stru_4070B4>
                RUNTIME_FUNCTION <rva func_16, rva func_17, rva stru_4070C0>
                RUNTIME_FUNCTION <rva func_17, rva func_18, rva stru_4070CC>
                RUNTIME_FUNCTION <rva func_18, rva func_19, rva stru_4070D8>
                RUNTIME_FUNCTION <rva func_19, rva func_20, rva stru_4070E4>
                RUNTIME_FUNCTION <rva func_20, rva func_21, rva stru_4070F0>
                RUNTIME_FUNCTION <rva func_21, rva func_22, rva stru_4070FC>
                RUNTIME_FUNCTION <rva func_22, rva func_23, rva stru_407108>
                RUNTIME_FUNCTION <rva func_23, rva func_24, rva stru_407114>
                RUNTIME_FUNCTION <rva func_24, rva func_25, rva stru_407120>
                RUNTIME_FUNCTION <rva func_25, rva func_26, rva stru_40712C>
                RUNTIME_FUNCTION <rva func_26, rva func_27, rva stru_407138>
                RUNTIME_FUNCTION <rva func_27, rva func_28, rva stru_407144>
                RUNTIME_FUNCTION <rva func_28, rva func_29, rva stru_407150>
                RUNTIME_FUNCTION <rva func_29, rva func_30, rva stru_40715C>
                RUNTIME_FUNCTION <rva func_30, rva func_31, rva stru_407168>
                RUNTIME_FUNCTION <rva func_31, rva func_32, rva stru_407174>
                RUNTIME_FUNCTION <rva func_32, rva func_33, rva stru_407180>
                RUNTIME_FUNCTION <rva func_33, rva func_34, rva stru_40718C>
                RUNTIME_FUNCTION <rva func_34, rva func_35, rva stru_407198>
                RUNTIME_FUNCTION <rva func_35, rva func_36, rva stru_4071A4>
                RUNTIME_FUNCTION <rva func_36, rva func_37, rva stru_4071B0>
                RUNTIME_FUNCTION <rva func_37, rva func_38, rva stru_4071BC>
                RUNTIME_FUNCTION <rva func_38, rva func_39, rva stru_4071C8>
                RUNTIME_FUNCTION <rva func_39, rva func_40, rva stru_4071D4>
                RUNTIME_FUNCTION <rva func_40, rva func_41, rva stru_4071E0>
                RUNTIME_FUNCTION <rva func_41, rva func_42, rva stru_4071EC>
                RUNTIME_FUNCTION <rva func_42, rva func_43, rva stru_4071F8>
                RUNTIME_FUNCTION <rva func_43, rva func_44, rva stru_407204>
                RUNTIME_FUNCTION <rva func_44, rva func_45, rva stru_407210>
                RUNTIME_FUNCTION <rva func_45, rva func_46, rva stru_40721C>
                RUNTIME_FUNCTION <rva func_46, rva func_47, rva stru_407228>
                RUNTIME_FUNCTION <rva func_47, rva func_48, rva stru_407234>
                RUNTIME_FUNCTION <rva func_48, rva func_49, rva stru_407240>
                RUNTIME_FUNCTION <rva func_49, rva func_50, rva stru_40724C>
                RUNTIME_FUNCTION <rva func_50, rva func_51, rva stru_407258>
                RUNTIME_FUNCTION <rva func_51, rva func_52, rva stru_407264>
                RUNTIME_FUNCTION <rva func_52, rva func_53, rva stru_407270>
                RUNTIME_FUNCTION <rva func_53, rva func_54, rva stru_40727C>
                RUNTIME_FUNCTION <rva func_54, rva func_55, rva stru_407288>
                RUNTIME_FUNCTION <rva func_55, rva func_56, rva stru_407294>
                RUNTIME_FUNCTION <rva func_56, rva func_57, rva stru_4072A0>
                RUNTIME_FUNCTION <rva func_57, rva func_58, rva stru_4072AC>
                RUNTIME_FUNCTION <rva func_58, rva func_59, rva stru_4072B8>
                RUNTIME_FUNCTION <rva func_59, rva func_60, rva stru_4072C4>
                RUNTIME_FUNCTION <rva func_60, rva func_61, rva stru_4072D0>
                RUNTIME_FUNCTION <rva func_61, rva func_62, rva stru_4072DC>
                RUNTIME_FUNCTION <rva func_62, rva func_63, rva stru_4072E8>
                RUNTIME_FUNCTION <rva func_63, rva func_64, rva stru_4072F4>
                RUNTIME_FUNCTION <rva func_64, rva func_65, rva stru_407300>
                RUNTIME_FUNCTION <rva func_65, rva func_66, rva stru_40730C>
                RUNTIME_FUNCTION <rva func_66, rva func_67, rva stru_407318>
                RUNTIME_FUNCTION <rva func_67, rva func_68, rva stru_407324>
                RUNTIME_FUNCTION <rva func_68, rva func_69, rva stru_407330>
                RUNTIME_FUNCTION <rva func_69, rva func_70, rva stru_40733C>
                RUNTIME_FUNCTION <rva func_70, rva func_71, rva stru_407348>
                RUNTIME_FUNCTION <rva func_71, rva func_72, rva stru_407354>
                RUNTIME_FUNCTION <rva func_72, rva func_73, rva stru_407360>
                RUNTIME_FUNCTION <rva func_73, rva func_74, rva stru_40736C>
                RUNTIME_FUNCTION <rva func_74, rva func_75, rva stru_407378>
                RUNTIME_FUNCTION <rva func_75, rva func_76, rva stru_407384>
                RUNTIME_FUNCTION <rva func_76, rva func_77, rva stru_407390>
                RUNTIME_FUNCTION <rva func_77, rva func_78, rva stru_40739C>
                RUNTIME_FUNCTION <rva func_78, rva func_79, rva stru_4073A8>
                RUNTIME_FUNCTION <rva func_79, rva func_80, rva stru_4073B4>
                RUNTIME_FUNCTION <rva func_80, rva func_81, rva stru_4073C0>
                RUNTIME_FUNCTION <rva func_81, rva func_82, rva stru_4073CC>
                RUNTIME_FUNCTION <rva func_82, rva func_83, rva stru_4073D8>
                RUNTIME_FUNCTION <rva func_83, rva func_84, rva stru_4073E4>
                RUNTIME_FUNCTION <rva func_84, rva func_85, rva stru_4073F0>
                RUNTIME_FUNCTION <rva func_85, rva func_86, rva stru_4073FC>
                RUNTIME_FUNCTION <rva func_86, rva func_87, rva stru_407408>
                RUNTIME_FUNCTION <rva func_87, rva func_88, rva stru_407414>
                RUNTIME_FUNCTION <rva func_88, rva func_89, rva stru_407420>
                RUNTIME_FUNCTION <rva func_89, rva func_90, rva stru_40742C>
                RUNTIME_FUNCTION <rva func_90, rva func_91, rva stru_407438>
                RUNTIME_FUNCTION <rva func_91, rva func_92, rva stru_407444>
                RUNTIME_FUNCTION <rva func_92, rva func_93, rva stru_407450>
                RUNTIME_FUNCTION <rva func_93, rva func_94, rva stru_40745C>
                RUNTIME_FUNCTION <rva func_94, rva func_95, rva stru_407468>
                RUNTIME_FUNCTION <rva func_95, rva func_96, rva stru_407474>
                RUNTIME_FUNCTION <rva func_96, rva func_97, rva stru_407480>
                RUNTIME_FUNCTION <rva func_97, rva func_98, rva stru_40748C>
                RUNTIME_FUNCTION <rva func_98, rva func_99, rva stru_407498>
                RUNTIME_FUNCTION <rva func_99, rva main, rva stru_4074A4>
                RUNTIME_FUNCTION <rva main, rva algn_40219A, rva stru_4074B0>
                RUNTIME_FUNCTION <rva mingw_onexit, rva algn_402276, rva stru_4074BC>
                RUNTIME_FUNCTION <rva atexit, rva algn_402299, rva stru_4074C4>
                RUNTIME_FUNCTION <rva __do_global_dtors, rva algn_4022D5, \
                                  rva stru_4074CC>
                RUNTIME_FUNCTION <rva __do_global_ctors, rva algn_402346, \
                                  rva stru_4074D4>
                RUNTIME_FUNCTION <rva __main, rva algn_40236F, rva stru_4074E0>
                RUNTIME_FUNCTION <rva my_lconv_init, rva algn_402377, rva stru_4074E4>
                RUNTIME_FUNCTION <rva _setargv, rva algn_402383, rva stru_4074E8>
                RUNTIME_FUNCTION <rva __security_init_cookie, rva algn_402466, \
                                  rva stru_4074EC>
                RUNTIME_FUNCTION <rva __report_gsfailure, rva algn_402568, \
                                  rva stru_4074FC>
                RUNTIME_FUNCTION <rva __dyn_tls_dtor, rva algn_40259F, \
                                  rva stru_40750C>
                RUNTIME_FUNCTION <rva __dyn_tls_init, rva algn_402613, \
                                  rva stru_407514>
                RUNTIME_FUNCTION <rva __tlregdtor, rva algn_402623, rva stru_407520>
                RUNTIME_FUNCTION <rva __mingw_raise_matherr, rva algn_402671, \
                                  rva stru_407524>
                RUNTIME_FUNCTION <rva __mingw_setusermatherr, rva algn_40268C, \
                                  rva stru_40752C>
                RUNTIME_FUNCTION <rva _matherr, rva algn_40277C, rva stru_407530>
                RUNTIME_FUNCTION <rva fpreset, rva algn_402783, rva stru_407548>
                RUNTIME_FUNCTION <rva _decode_pointer, rva algn_402794, \
                                  rva stru_40754C>
                RUNTIME_FUNCTION <rva _encode_pointer, rva algn_4027A4, \
                                  rva stru_407550>
                RUNTIME_FUNCTION <rva __write_memory_part_0, rva algn_40297D, \
                                  rva stru_407560>
                RUNTIME_FUNCTION <rva _pei386_runtime_relocator, rva algn_402C3B, \
                                  rva stru_407570>
                RUNTIME_FUNCTION <rva __mingw_SEH_error_handler, \
                                  rva __mingw_init_ehandler, rva stru_407588>
                RUNTIME_FUNCTION <rva __mingw_init_ehandler, rva algn_402ECC, \
                                  rva stru_407590>
                RUNTIME_FUNCTION <rva _gnu_exception_handler, rva algn_4030B7, \
                                  rva stru_4075A0>
                RUNTIME_FUNCTION <rva __mingwthr_run_key_dtors_part_0, \
                                  rva algn_40312A, rva stru_4075A8>
                RUNTIME_FUNCTION <rva ___w64_mingwthr_add_key_dtor, rva algn_4031AF, \
                                  rva stru_4075B8>
                RUNTIME_FUNCTION <rva ___w64_mingwthr_remove_key_dtor, \
                                  rva __mingw_TLScallback, rva stru_4075C8>
                RUNTIME_FUNCTION <rva __mingw_TLScallback, rva algn_40332A, \
                                  rva stru_4075D0>
                RUNTIME_FUNCTION <rva _ValidateImageBase_part_0, rva algn_40334E, \
                                  rva stru_4075D8>
                RUNTIME_FUNCTION <rva _ValidateImageBase, rva algn_403362, \
                                  rva stru_4075DC>
                RUNTIME_FUNCTION <rva _FindPESection, rva algn_4033B4, \
                                  rva stru_4075E0>
                RUNTIME_FUNCTION <rva _FindPESectionByName, rva algn_40344D, \
                                  rva stru_4075E4>
                RUNTIME_FUNCTION <rva __mingw_GetSectionForAddress, rva algn_4034C4, \
                                  rva stru_4075F0>
                RUNTIME_FUNCTION <rva __mingw_GetSectionCount, rva algn_40350E, \
                                  rva stru_4075F8>
                RUNTIME_FUNCTION <rva _FindPESectionExec, rva algn_40357F, \
                                  rva stru_407600>
                RUNTIME_FUNCTION <rva _GetPEImageBase, rva algn_4035B7, \
                                  rva stru_407608>
                RUNTIME_FUNCTION <rva _IsNonwritableInCurrentImage, rva algn_403651, \
                                  rva stru_407610>
                RUNTIME_FUNCTION <rva __mingw_enum_import_library_names, \
                                  rva algn_403706, rva stru_407618>
                RUNTIME_FUNCTION <rva _get_invalid_parameter_handler, rva algn_403828,\
                                  rva stru_407620>
                RUNTIME_FUNCTION <rva _set_invalid_parameter_handler, rva algn_40383B,\
                                  rva stru_407624>
                RUNTIME_FUNCTION <rva __report_error, rva algn_403941, \
                                  rva stru_407554>
                RUNTIME_FUNCTION <rva register_frame_ctor, rva algn_40395A, \
                                  rva stru_407628>
                align 1000h
_pdata          ends

; Section 5. (virtual address 00007000)
; Virtual size                  : 00000630 (   1584.)
; Section size in file          : 00000800 (   2048.)
; Offset to raw data for section: 00003E00
; Flags 40300040: Data Readable
; Alignment     : 4 bytes
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read
_xdata          segment dword public 'DATA' use64
                assume cs:_xdata
                ;org 407000h
stru_407000     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:ExceptionDir↑o
stru_407004     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:000000000040600C↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_40700C     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406018↑o
                UNWIND_CODE <4, 62h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407014     UNWIND_INFO_HDR <1, 0Fh, 8, 0>
                                        ; DATA XREF: .pdata:0000000000406024↑o
                UNWIND_CODE <0Fh, 1>    ; UWOP_ALLOC_LARGE
                dw 13h
                UNWIND_CODE <8, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <7, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <6, 70h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <5, 50h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <4, 0C0h>   ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 0D0h>   ; UWOP_PUSH_NONVOL
stru_407028     UNWIND_INFO_HDR <9, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406030↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
                dd rva __C_specific_handler
                dd 1
                C_SCOPE_TABLE <rva _l_startw, rva _l_endw, rva _gnu_exception_handler,\
                               rva _l_endw>
stru_407048     UNWIND_INFO_HDR <9, 4, 1, 0>
                                        ; DATA XREF: .pdata:000000000040603C↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
                dd rva __C_specific_handler
                dd 1
                C_SCOPE_TABLE <rva _l_start, rva _l_end, rva _gnu_exception_handler, \
                               rva _l_end>
stru_407068     UNWIND_INFO_HDR <1, 4, 2, 5>
                                        ; DATA XREF: .pdata:0000000000406048↑o
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
stru_407070     UNWIND_INFO_HDR <1, 4, 2, 5>
                                        ; DATA XREF: .pdata:0000000000406054↑o
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
stru_407078     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406060↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407084     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040606C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407090     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406078↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40709C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406084↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070A8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406090↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070B4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040609C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070C0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060A8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070CC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060B4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070D8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060C0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070E4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060CC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070F0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060D8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4070FC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060E4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407108     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060F0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407114     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004060FC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407120     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406108↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40712C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406114↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407138     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406120↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407144     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040612C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407150     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406138↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40715C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406144↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407168     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406150↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407174     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040615C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407180     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406168↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40718C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406174↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407198     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406180↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071A4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040618C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071B0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406198↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071BC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061A4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071C8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061B0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071D4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061BC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071E0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061C8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071EC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061D4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4071F8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061E0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407204     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061EC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407210     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004061F8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40721C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406204↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407228     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406210↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407234     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040621C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407240     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406228↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40724C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406234↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407258     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406240↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407264     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040624C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407270     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406258↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40727C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406264↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407288     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406270↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407294     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040627C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072A0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406288↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072AC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406294↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072B8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062A0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072C4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062AC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072D0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062B8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072DC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062C4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072E8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062D0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4072F4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062DC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407300     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062E8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40730C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004062F4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407318     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406300↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407324     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040630C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407330     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406318↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40733C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406324↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407348     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406330↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407354     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040633C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407360     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406348↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40736C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406354↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407378     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406360↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407384     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040636C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407390     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406378↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40739C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406384↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073A8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406390↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073B4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040639C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073C0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063A8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073CC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063B4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073D8     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063C0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073E4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063CC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073F0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063D8↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4073FC     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063E4↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407408     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063F0↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407414     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:00000000004063FC↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407420     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406408↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40742C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406414↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407438     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406420↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407444     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040642C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407450     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406438↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40745C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406444↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407468     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406450↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407474     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040645C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407480     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406468↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40748C     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406474↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407498     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406480↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4074A4     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:000000000040648C↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4074B0     UNWIND_INFO_HDR <1, 8, 3, 5>
                                        ; DATA XREF: .pdata:0000000000406498↑o
                UNWIND_CODE <8, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4074BC     UNWIND_INFO_HDR <1, 5, 2, 0>
                                        ; DATA XREF: .pdata:00000000004064A4↑o
                UNWIND_CODE <5, 52h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <1, 30h>    ; UWOP_PUSH_NONVOL
stru_4074C4     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:00000000004064B0↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_4074CC     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:00000000004064BC↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_4074D4     UNWIND_INFO_HDR <1, 6, 3, 0>
                                        ; DATA XREF: .pdata:00000000004064C8↑o
                UNWIND_CODE <6, 42h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <2, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 60h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4074E0     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:00000000004064D4↑o
stru_4074E4     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:00000000004064E0↑o
stru_4074E8     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:00000000004064EC↑o
stru_4074EC     UNWIND_INFO_HDR <1, 0Ah, 6, 0>
                                        ; DATA XREF: .pdata:00000000004064F8↑o
                UNWIND_CODE <0Ah, 52h>  ; UWOP_ALLOC_SMALL
                UNWIND_CODE <6, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <5, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <4, 70h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <3, 50h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 0C0h>   ; UWOP_PUSH_NONVOL
stru_4074FC     UNWIND_INFO_HDR <1, 0Ah, 5, 5>
                                        ; DATA XREF: .pdata:0000000000406504↑o
                UNWIND_CODE <0Ah, 0D2h> ; UWOP_ALLOC_SMALL
                UNWIND_CODE <6, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <3, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_40750C     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406510↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407514     UNWIND_INFO_HDR <1, 6, 3, 0>
                                        ; DATA XREF: .pdata:000000000040651C↑o
                UNWIND_CODE <6, 42h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <2, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 60h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407520     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406528↑o
stru_407524     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406534↑o
                UNWIND_CODE <4, 0A2h>   ; UWOP_ALLOC_SMALL
                align 4
stru_40752C     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406540↑o
stru_407530     UNWIND_INFO_HDR <1, 16h, 9, 0>
                                        ; DATA XREF: .pdata:000000000040654C↑o
                UNWIND_CODE <16h, 88h>  ; UWOP_SAVE_XMM128
                dw 6
                UNWIND_CODE <10h, 78h>  ; UWOP_SAVE_XMM128
                dw 5
                UNWIND_CODE <0Bh, 68h>  ; UWOP_SAVE_XMM128
                dw 4
                UNWIND_CODE <6, 0E2h>   ; UWOP_ALLOC_SMALL
                UNWIND_CODE <2, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 60h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407548     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406558↑o
stru_40754C     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406564↑o
stru_407550     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406570↑o
stru_407554     UNWIND_INFO_HDR <1, 6, 3, 0>
                                        ; DATA XREF: .pdata:0000000000406678↑o
                UNWIND_CODE <6, 62h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <2, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 60h>    ; UWOP_PUSH_NONVOL
                align 4
stru_407560     UNWIND_INFO_HDR <1, 0Ah, 6, 0>
                                        ; DATA XREF: .pdata:000000000040657C↑o
                UNWIND_CODE <0Ah, 92h>  ; UWOP_ALLOC_SMALL
                UNWIND_CODE <6, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <5, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <4, 70h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <3, 50h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 0C0h>   ; UWOP_PUSH_NONVOL
stru_407570     UNWIND_INFO_HDR <1, 18h, 0Ah, 85h>
                                        ; DATA XREF: .pdata:0000000000406588↑o
                UNWIND_CODE <18h, 3>    ; UWOP_SET_FPREG
                UNWIND_CODE <10h, 62h>  ; UWOP_ALLOC_SMALL
                UNWIND_CODE <0Ch, 30h>  ; UWOP_PUSH_NONVOL
                UNWIND_CODE <0Bh, 60h>  ; UWOP_PUSH_NONVOL
                UNWIND_CODE <0Ah, 70h>  ; UWOP_PUSH_NONVOL
                UNWIND_CODE <9, 0C0h>   ; UWOP_PUSH_NONVOL
                UNWIND_CODE <7, 0D0h>   ; UWOP_PUSH_NONVOL
                UNWIND_CODE <5, 0E0h>   ; UWOP_PUSH_NONVOL
                UNWIND_CODE <3, 0F0h>   ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
stru_407588     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406594↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407590     UNWIND_INFO_HDR <1, 0Ah, 6, 0>
                                        ; DATA XREF: .pdata:00000000004065A0↑o
                UNWIND_CODE <0Ah, 32h>  ; UWOP_ALLOC_SMALL
                UNWIND_CODE <6, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <5, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <4, 70h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <3, 50h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 0C0h>   ; UWOP_PUSH_NONVOL
stru_4075A0     UNWIND_INFO_HDR <1, 5, 2, 0>
                                        ; DATA XREF: .pdata:00000000004065AC↑o
                UNWIND_CODE <5, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <1, 30h>    ; UWOP_PUSH_NONVOL
stru_4075A8     UNWIND_INFO_HDR <1, 8, 5, 0>
                                        ; DATA XREF: .pdata:00000000004065B8↑o
                UNWIND_CODE <8, 42h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <3, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 70h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4075B8     UNWIND_INFO_HDR <1, 8, 5, 0>
                                        ; DATA XREF: .pdata:00000000004065C4↑o
                UNWIND_CODE <8, 42h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <4, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <3, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 70h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 4
stru_4075C8     UNWIND_INFO_HDR <1, 5, 2, 0>
                                        ; DATA XREF: .pdata:00000000004065D0↑o
                UNWIND_CODE <5, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <1, 30h>    ; UWOP_PUSH_NONVOL
stru_4075D0     UNWIND_INFO_HDR <1, 5, 2, 0>
                                        ; DATA XREF: .pdata:00000000004065DC↑o
                UNWIND_CODE <5, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <1, 30h>    ; UWOP_PUSH_NONVOL
stru_4075D8     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:00000000004065E8↑o
stru_4075DC     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:00000000004065F4↑o
stru_4075E0     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406600↑o
stru_4075E4     UNWIND_INFO_HDR <1, 7, 4, 0>
                                        ; DATA XREF: .pdata:000000000040660C↑o
                UNWIND_CODE <7, 32h>    ; UWOP_ALLOC_SMALL
                UNWIND_CODE <3, 30h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <2, 60h>    ; UWOP_PUSH_NONVOL
                UNWIND_CODE <1, 70h>    ; UWOP_PUSH_NONVOL
stru_4075F0     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406618↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_4075F8     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406624↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407600     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406630↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407608     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:000000000040663C↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407610     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406648↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407618     UNWIND_INFO_HDR <1, 4, 1, 0>
                                        ; DATA XREF: .pdata:0000000000406654↑o
                UNWIND_CODE <4, 42h>    ; UWOP_ALLOC_SMALL
                align 4
stru_407620     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:0000000000406660↑o
stru_407624     UNWIND_INFO_HDR <1, 0, 0, 0>
                                        ; DATA XREF: .pdata:000000000040666C↑o
stru_407628     UNWIND_INFO_HDR <1, 4, 2, 5>
                                        ; DATA XREF: .pdata:0000000000406684↑o
                UNWIND_CODE <4, 3>      ; UWOP_SET_FPREG
                UNWIND_CODE <1, 50h>    ; UWOP_PUSH_NONVOL
                align 1000h
_xdata          ends

; Section 6. (virtual address 00008000)
; Virtual size                  : 00000990 (   2448.)
; Section size in file          : 00000000 (      0.)
; Offset to raw data for section: 00000000
; Flags C0600080: Bss Readable Writable
; Alignment     : 32 bytes
; ===========================================================================

; Segment type: Uninitialized
; Segment permissions: Read/Write
_bss            segment align_32 public 'BSS' use64
                assume cs:_bss
                ;org 408000h
                assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
                public __bss_start__
__bss_start__   dd ?                    ; DATA XREF: pre_cpp_init+22↑w
                                        ; pre_cpp_init+28↑o
has_cctor       dd ?                    ; DATA XREF: __tmainCRTStartup+8F↑w
                                        ; __tmainCRTStartup+25B↑r
managedapp      dd ?                    ; DATA XREF: pre_c_init+4F↑w
                                        ; __tmainCRTStartup+247↑r
mainret         dd ?                    ; DATA XREF: __tmainCRTStartup+24D↑w
                                        ; __tmainCRTStartup+26A↑r
; char **envp
envp            dq ?                    ; DATA XREF: pre_cpp_init+B↑o
                                        ; __tmainCRTStartup+221↑r ...
; char **argv
argv            dq ?                    ; DATA XREF: pre_cpp_init+12↑o
                                        ; __tmainCRTStartup+1B0↑r ...
; int argc
argc            dd ?                    ; DATA XREF: pre_cpp_init+19↑o
                                        ; __tmainCRTStartup:loc_401345↑r ...
                align 10h
initialized     dd ?                    ; DATA XREF: __main↑r
                                        ; __main:loc_402360↑w
                align 20h
                public mingw_initcharmax
mingw_initcharmax db    ? ;             ; DATA XREF: .rdata:_refptr_mingw_initcharmax↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
; struct _CONTEXT GS_ContextRecord
GS_ContextRecord _CONTEXT <?>           ; DATA XREF: __report_gsfailure+D↑o
                                        ; __report_gsfailure+4D↑o ...
                align 20h
GS_ExceptionRecord dq ?                 ; DATA XREF: __report_gsfailure+94↑w
                                        ; .rdata:GS_ExceptionPointers↑o
                align 10h
qword_408550    dq ?                    ; DATA XREF: __report_gsfailure+83↑w
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                public _newmode
_newmode        db    ? ;               ; DATA XREF: .rdata:_refptr__newmode↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                public mingw_initltssuo_force
mingw_initltssuo_force db    ? ;        ; DATA XREF: .rdata:_refptr_mingw_initltssuo_force↑o
                db    ? ;
                db    ? ;
                db    ? ;
                public mingw_initltsdyn_force
mingw_initltsdyn_force db    ? ;        ; DATA XREF: .rdata:_refptr_mingw_initltsdyn_force↑o
                db    ? ;
                db    ? ;
                db    ? ;
                public mingw_initltsdrot_force
mingw_initltsdrot_force db    ? ;       ; DATA XREF: .rdata:_refptr_mingw_initltsdrot_force↑o
                db    ? ;
                db    ? ;
                db    ? ;
                public _tls_index
_tls_index      db    ? ;               ; DATA XREF: .tls:TlsIndex_ptr↓o
                db    ? ;
                db    ? ;
                db    ? ;
stUserMathErr   dq ?                    ; DATA XREF: __mingw_raise_matherr+4↑r
                                        ; __mingw_setusermatherr↑w
                align 10h
                public mingw_app_type
mingw_app_type  db    ? ;               ; DATA XREF: .rdata:_refptr_mingw_app_type↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
was_init_95084  dd ?                    ; DATA XREF: _pei386_runtime_relocator+18↑r
                                        ; _pei386_runtime_relocator:loc_4029B3↑w
maxSections     dd ?                    ; DATA XREF: __write_memory_part_0+A↑r
                                        ; __write_memory_part_0:loc_40287E↑w ...
the_secs        dq ?                    ; DATA XREF: __write_memory_part_0+22↑r
                                        ; __write_memory_part_0+6B↑r ...
                public _fmode
; int fmode
_fmode          dd ?                    ; DATA XREF: .rdata:_refptr__fmode↑o
                align 20h
                public __mingw_oldexcpt_handler
__mingw_oldexcpt_handler dq ?           ; DATA XREF: mainCRTStartup:loc_402F41↑r
                                        ; .rdata:_refptr___mingw_oldexcpt_handler↑o
was_here_94915  dd ?                    ; DATA XREF: __mingw_init_ehandler+12↑r
                                        ; __mingw_init_ehandler+28↑w
                align 20h
emu_xdata       db    ? ;               ; DATA XREF: __mingw_init_ehandler+5E↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
; struct _IMAGE_RUNTIME_FUNCTION_ENTRY emu_pdata
emu_pdata       _IMAGE_RUNTIME_FUNCTION_ENTRY <?>
                                        ; DATA XREF: __mingw_init_ehandler:loc_402E30↑o
                                        ; __mingw_init_ehandler:loc_402EB0↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
; void *key_dtor_list
key_dtor_list   dq ?                    ; DATA XREF: __mingwthr_run_key_dtors_part_0+15↑r
                                        ; ___w64_mingwthr_add_key_dtor+4E↑r ...
__mingwthr_cs_init dd ?                 ; DATA XREF: ___w64_mingwthr_add_key_dtor+8↑r
                                        ; ___w64_mingwthr_remove_key_dtor+5↑r ...
                align 20h
; struct _RTL_CRITICAL_SECTION _mingwthr_cs
__mingwthr_cs   _RTL_CRITICAL_SECTION <?>
                                        ; DATA XREF: __mingwthr_run_key_dtors_part_0+8↑o
                                        ; __mingwthr_run_key_dtors_part_0:loc_403114↑o ...
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
handler         dq ?                    ; DATA XREF: _get_invalid_parameter_handler↑r
                                        ; _set_invalid_parameter_handler+3↑w
                align 20h
                public __mingw_winmain_lpCmdLine
__mingw_winmain_lpCmdLine dq ?          ; DATA XREF: __tmainCRTStartup:loc_401320↑w
                public __mingw_winmain_hInstance
__mingw_winmain_hInstance dq ?          ; DATA XREF: __tmainCRTStartup+102↑w
                public __onexitbegin
__onexitbegin   dq ?                    ; DATA XREF: mingw_onexit+8↑r
                                        ; mingw_onexit+4A↑r ...
                public __onexitend
__onexitend     dq ?                    ; DATA XREF: mingw_onexit+56↑r
                                        ; mingw_onexit+A1↑w ...
                public __native_startup_state
__native_startup_state db    ? ;        ; DATA XREF: .rdata:_refptr___native_startup_state↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                public __native_startup_lock
__native_startup_lock db    ? ;         ; DATA XREF: .rdata:_refptr___native_startup_lock↑o
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                public __bss_end__
__bss_end__     db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
                db    ? ;
_bss            ends

;
; Imports from KERNEL32.dll
;
; Section 7. (virtual address 00009000)
; Virtual size                  : 000007C8 (   1992.)
; Section size in file          : 00000800 (   2048.)
; Offset to raw data for section: 00004600
; Flags C0300040: Data Readable Writable
; Alignment     : 4 bytes
; ===========================================================================

; Segment type: Externs
; _idata
                extrn __IAT_start__:qword
                                        ; CODE XREF: __mingw_TLScallback+92↑p
                                        ; DATA XREF: __mingw_TLScallback+92↑r ...
; void (__stdcall *EnterCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_EnterCriticalSection:qword
                                        ; CODE XREF: __mingwthr_run_key_dtors_part_0+F↑p
                                        ; ___w64_mingwthr_add_key_dtor+48↑p ...
; HANDLE (__stdcall *GetCurrentProcess)()
                extrn __imp_GetCurrentProcess:qword
                                        ; CODE XREF: __report_gsfailure+C4↑p
                                        ; DATA XREF: __report_gsfailure+C4↑r ...
; DWORD (__stdcall *GetCurrentProcessId)()
                extrn __imp_GetCurrentProcessId:qword
                                        ; CODE XREF: __security_init_cookie+50↑p
                                        ; DATA XREF: __security_init_cookie+50↑r ...
; DWORD (__stdcall *GetCurrentThreadId)()
                extrn __imp_GetCurrentThreadId:qword
                                        ; CODE XREF: __security_init_cookie+59↑p
                                        ; DATA XREF: __security_init_cookie+59↑r ...
; DWORD (__stdcall *GetLastError)()
                extrn __imp_GetLastError:qword
                                        ; CODE XREF: __write_memory_part_0+160↑p
                                        ; __mingwthr_run_key_dtors_part_0+37↑p
                                        ; DATA XREF: ...
; void (__stdcall *GetStartupInfoA)(LPSTARTUPINFOA lpStartupInfo)
                extrn __imp_GetStartupInfoA:qword
                                        ; CODE XREF: __tmainCRTStartup+2F3↑p
                                        ; DATA XREF: __tmainCRTStartup+2F3↑r ...
; void (__stdcall *GetSystemTimeAsFileTime)(LPFILETIME lpSystemTimeAsFileTime)
                extrn __imp_GetSystemTimeAsFileTime:qword
                                        ; CODE XREF: __security_init_cookie+45↑p
                                        ; DATA XREF: __security_init_cookie+45↑r ...
; DWORD (__stdcall *GetTickCount)()
                extrn __imp_GetTickCount:qword
                                        ; CODE XREF: __security_init_cookie+61↑p
                                        ; DATA XREF: __security_init_cookie+61↑r ...
; void (__stdcall *InitializeCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_InitializeCriticalSection:qword
                                        ; CODE XREF: __mingw_TLScallback+C7↑p
                                        ; DATA XREF: __mingw_TLScallback+C7↑r ...
; void (__stdcall *LeaveCriticalSection)(LPCRITICAL_SECTION lpCriticalSection)
                extrn __imp_LeaveCriticalSection:qword
                                        ; CODE XREF: ___w64_mingwthr_add_key_dtor+67↑p
                                        ; ___w64_mingwthr_remove_key_dtor+5A↑p ...
; BOOL (__stdcall *QueryPerformanceCounter)(LARGE_INTEGER *lpPerformanceCount)
                extrn __imp_QueryPerformanceCounter:qword
                                        ; CODE XREF: __security_init_cookie+6E↑p
                                        ; DATA XREF: __security_init_cookie+6E↑r ...
; BOOLEAN (__cdecl *RtlAddFunctionTable)(PRUNTIME_FUNCTION FunctionTable, ULONG EntryCount, ULONG64 BaseAddress)
                extrn __imp_RtlAddFunctionTable:qword
                                        ; CODE XREF: __mingw_init_ehandler+DA↑p
                                        ; DATA XREF: __mingw_init_ehandler+DA↑r ...
; void (__stdcall *RtlCaptureContext)(PCONTEXT ContextRecord)
                extrn __imp_RtlCaptureContext:qword
                                        ; CODE XREF: __report_gsfailure+14↑p
                                        ; DATA XREF: __report_gsfailure+14↑r ...
; PRUNTIME_FUNCTION (__stdcall *RtlLookupFunctionEntry)(ULONG64 ControlPc, PULONG64 ImageBase, PUNWIND_HISTORY_TABLE HistoryTable)
                extrn __imp_RtlLookupFunctionEntry:qword
                                        ; CODE XREF: __report_gsfailure+2B↑p
                                        ; DATA XREF: __report_gsfailure+2B↑r ...
; PEXCEPTION_ROUTINE (__stdcall *RtlVirtualUnwind)(ULONG HandlerType, ULONG64 ImageBase, ULONG64 ControlPc, PRUNTIME_FUNCTION FunctionEntry, PCONTEXT ContextRecord, PVOID *HandlerData, PULONG64 EstablisherFrame, PKNONVOLATILE_CONTEXT_POINTERS ContextPointers)
                extrn __imp_RtlVirtualUnwind:qword
                                        ; CODE XREF: __report_gsfailure+6D↑p
                                        ; DATA XREF: __report_gsfailure+6D↑r ...
; LPTOP_LEVEL_EXCEPTION_FILTER (__stdcall *SetUnhandledExceptionFilter)(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter)
                extrn __imp_SetUnhandledExceptionFilter:qword
                                        ; CODE XREF: __tmainCRTStartup+D3↑p
                                        ; __report_gsfailure+B1↑p
                                        ; DATA XREF: ...
; void (__stdcall *Sleep)(DWORD dwMilliseconds)
                extrn __imp_Sleep:qword ; CODE XREF: __tmainCRTStartup+61↑p
                                        ; DATA XREF: __tmainCRTStartup+4A↑r ...
; BOOL (__stdcall *TerminateProcess)(HANDLE hProcess, UINT uExitCode)
                extrn __imp_TerminateProcess:qword
                                        ; CODE XREF: __report_gsfailure+D2↑p
                                        ; DATA XREF: __report_gsfailure+D2↑r ...
; LPVOID (__stdcall *TlsGetValue)(DWORD dwTlsIndex)
                extrn __imp_TlsGetValue:qword
                                        ; CODE XREF: __mingwthr_run_key_dtors_part_0+32↑p
                                        ; DATA XREF: __mingwthr_run_key_dtors_part_0+21↑r ...
; LONG (__stdcall *UnhandledExceptionFilter)(struct _EXCEPTION_POINTERS *ExceptionInfo)
                extrn __imp_UnhandledExceptionFilter:qword
                                        ; CODE XREF: __report_gsfailure+BE↑p
                                        ; DATA XREF: __report_gsfailure+BE↑r ...
; BOOL (__stdcall *VirtualProtect)(LPVOID lpAddress, SIZE_T dwSize, DWORD flNewProtect, PDWORD lpflOldProtect)
                extrn __imp_VirtualProtect:qword
                                        ; CODE XREF: __write_memory_part_0+152↑p
                                        ; _pei386_runtime_relocator+12D↑p
                                        ; DATA XREF: ...
; SIZE_T (__stdcall *VirtualQuery)(LPCVOID lpAddress, PMEMORY_BASIC_INFORMATION lpBuffer, SIZE_T dwLength)
                extrn __imp_VirtualQuery:qword
                                        ; CODE XREF: __write_memory_part_0+AB↑p
                                        ; DATA XREF: __write_memory_part_0+AB↑r ...
; EXCEPTION_DISPOSITION (__cdecl *__C_specific_handler)(struct _EXCEPTION_RECORD *ExceptionRecord, void *EstablisherFrame, struct _CONTEXT *ContextRecord, struct _DISPATCHER_CONTEXT *DispatcherContext)
                extrn __imp___C_specific_handler:qword
                                        ; DATA XREF: __C_specific_handler↑r

;
; Imports from msvcrt.dll
;
                extrn __imp___dllonexit:qword
                                        ; DATA XREF: __dllonexit↑r
                extrn __imp___getmainargs:qword
                                        ; DATA XREF: __getmainargs↑r
                extrn __imp___initenv:qword
                                        ; DATA XREF: .rdata:_refptr___imp___initenv↑o
; FILE *(__cdecl *__iob_func)()
                extrn __imp___iob_func:qword
                                        ; DATA XREF: __iob_func↑r
                extrn __imp___lconv_init:qword
                                        ; DATA XREF: my_lconv_init↑r
                                        ; __lconv_init↑r
; void (__cdecl *__set_app_type)(_crt_app_type Type)
                extrn __imp___set_app_type:qword
                                        ; DATA XREF: __set_app_type↑r
; void (__cdecl *__setusermatherr)(_UserMathErrorFunctionPointer UserMathErrorFunction)
                extrn __imp___setusermatherr:qword
                                        ; DATA XREF: __setusermatherr↑r
; char *_acmdln
                extrn __imp__acmdln:qword
                                        ; DATA XREF: .rdata:_refptr___imp__acmdln↑o
                extrn __imp__amsg_exit:qword
                                        ; DATA XREF: _amsg_exit↑r
; void (__cdecl *_cexit)()
                extrn __imp__cexit:qword ; DATA XREF: _cexit↑r
; int _fmode
                extrn __imp__fmode:qword
                                        ; DATA XREF: .rdata:_refptr___imp__fmode↑o
; void (__cdecl *_initterm)(_PVFV *First, _PVFV *Last)
                extrn __imp__initterm:qword
                                        ; DATA XREF: _initterm↑r
                extrn __imp__lock:qword ; DATA XREF: _lock↑r
; _onexit_t (__cdecl *_onexit)(_onexit_t Func)
                extrn __imp__onexit:qword ; DATA XREF: _onexit↑r
                                        ; .rdata:_refptr___imp__onexit↑o
                extrn __imp__unlock:qword ; DATA XREF: _unlock↑r
; void (__cdecl __noreturn *abort)()
                extrn __imp_abort:qword ; DATA XREF: abort↑r
; void *(__cdecl *calloc)(size_t Count, size_t Size)
                extrn __imp_calloc:qword ; DATA XREF: calloc↑r
; void (__cdecl __noreturn *exit)(int Code)
                extrn __imp_exit:qword  ; DATA XREF: exit↑r
; int (*fprintf)(FILE *const Stream, const char *const Format, ...)
                extrn __imp_fprintf:qword ; DATA XREF: fprintf↑r
; void (__cdecl *free)(void *Block)
                extrn __imp_free:qword  ; DATA XREF: free↑r
; size_t (__cdecl *fwrite)(const void *Buffer, size_t ElementSize, size_t ElementCount, FILE *Stream)
                extrn __imp_fwrite:qword ; DATA XREF: fwrite↑r
; void *(__cdecl *malloc)(size_t Size)
                extrn __imp_malloc:qword ; DATA XREF: malloc↑r
; void *(__cdecl *memcpy)(void *, const void *Src, size_t Size)
                extrn __imp_memcpy:qword ; DATA XREF: memcpy↑r
; int (__cdecl *puts)(const char *Buffer)
                extrn __imp_puts:qword  ; DATA XREF: puts↑r
; _crt_signal_t (__cdecl *signal)(int Signal, _crt_signal_t Function)
                extrn __imp_signal:qword ; DATA XREF: signal↑r
; size_t (__cdecl *strlen)(const char *Str)
                extrn __imp_strlen:qword ; DATA XREF: strlen↑r
; int (__cdecl *strncmp)(const char *Str1, const char *Str2, size_t MaxCount)
                extrn __imp_strncmp:qword ; DATA XREF: strncmp↑r
; int (__cdecl *vfprintf)(FILE *const Stream, const char *const Format, va_list ArgList)
                extrn __imp_vfprintf:qword
                                        ; DATA XREF: vfprintf↑r


; Section 8. (virtual address 0000A000)
; Virtual size                  : 00000068 (    104.)
; Section size in file          : 00000200 (    512.)
; Offset to raw data for section: 00004E00
; Flags C0400040: Data Readable Writable
; Alignment     : 8 bytes
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read/Write
_CRT            segment qword public 'DATA' use64
                assume cs:_CRT
                ;org 40A000h
                public __xc_a
__xc_a          db    0                 ; DATA XREF: .rdata:_refptr___xc_a↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public mingw_pcppinit
mingw_pcppinit  dq offset pre_cpp_init
                public __xc_z
__xc_z          db    0                 ; DATA XREF: .rdata:_refptr___xc_z↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public __xi_a
__xi_a          db    0                 ; DATA XREF: .rdata:_refptr___xi_a↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public mingw_pcinit
mingw_pcinit    dq offset pre_c_init
                public __mingw_pinit
__mingw_pinit   dq offset my_lconv_init
                public __xi_z
__xi_z          db    0                 ; DATA XREF: .rdata:_refptr___xi_z↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public ___crt_xi_end__
___crt_xi_end__ db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public __xl_c
__xl_c          dq offset __dyn_tls_init
                                        ; DATA XREF: .tls:TlsCallbacks_ptr↓o
                public __xl_d
__xl_d          dq offset __dyn_tls_dtor
                public __xl_z
__xl_z          dq 0
                public ___crt_xt_end__
___crt_xt_end__ db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
__xd_z          db    0                 ; DATA XREF: __dyn_tls_init:loc_4025D0↑o
                                        ; __dyn_tls_init+37↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                align 1000h
_CRT            ends

; Section 9. (virtual address 0000B000)
; Virtual size                  : 00000068 (    104.)
; Section size in file          : 00000200 (    512.)
; Offset to raw data for section: 00005000
; Flags C0600040: Data Readable Writable
; Alignment     : 32 bytes
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read/Write
_tls            segment align_32 public 'DATA' use64
                assume cs:_tls
                ;org 40B000h
                public _tls_start
_tls_start      db    0                 ; DATA XREF: .tls:_tls_used↓o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public _tls_used
_tls_used       dq offset _tls_start
TlsEnd_ptr      dq offset _tls_end
TlsIndex_ptr    dq offset _tls_index
TlsCallbacks_ptr dq offset __xl_c
TlsSizeOfZeroFill dd 0
TlsCharacteristics dd 0
                align 20h
                public _tls_end
_tls_end        db    0                 ; DATA XREF: .tls:TlsEnd_ptr↑o
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                public ___tls_end__
___tls_end__    db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                db    0
                align 1000h
_tls            ends


                end mainCRTStartup
