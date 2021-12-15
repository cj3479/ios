	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 12, 2	sdk_version 12, 2
	.p2align	2               ; -- Begin function +[TestARC showlog]
"+[TestARC showlog]":                   ; @"\01+[TestARC showlog]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _objC@PAGE
	add	x8, x8, _objC@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, x8
	bl	_objc_loadWeakRetained
	mov	x8, sp
	str	x0, [x8]
	adrp	x8, l__unnamed_cfstring_@PAGE
	add	x8, x8, l__unnamed_cfstring_@PAGEOFF
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_NSLog
	ldr	x8, [sp, #24]           ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	adrp	x8, _objC@PAGE
	add	x8, x8, _objC@PAGEOFF
	mov	x0, x8
	bl	_objc_loadWeakRetained
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	ldr	x1, [x8]
	mov	x8, x0
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	mov	x8, sp
	str	x0, [x8]
	adrp	x8, l__unnamed_cfstring_.2@PAGE
	add	x8, x8, l__unnamed_cfstring_.2@PAGEOFF
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x8
	bl	_NSLog
	ldr	x8, [sp, #8]            ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	ldr	x0, [sp, #16]           ; 8-byte Folded Reload
	bl	_objc_release
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestARC testReturnObj]
"+[TestARC testReturnObj]":             ; @"\01+[TestARC testReturnObj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x0, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	ldr	x0, [x0, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF]
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF]
	bl	_objc_msgSend
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_.6@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_.6@PAGEOFF]
	bl	_objc_msgSend
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_objc_retain
	add	x1, sp, #8              ; =8
	mov	x30, #0
	str	x0, [sp]                ; 8-byte Folded Spill
	mov	x0, x1
	mov	x1, x30
	bl	_objc_storeStrong
	ldr	x0, [sp]                ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	b	_objc_autoreleaseReturnValue
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC testReturnDic]
"-[TestARC testReturnDic]":             ; @"\01-[TestARC testReturnDic]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	adrp	x0, l_OBJC_CLASSLIST_REFERENCES_$_.7@PAGE
	ldr	x0, [x0, l_OBJC_CLASSLIST_REFERENCES_$_.7@PAGEOFF]
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF]
	bl	_objc_msgSend
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_.6@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_.6@PAGEOFF]
	bl	_objc_msgSend
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_objc_retain
	add	x1, sp, #8              ; =8
	mov	x30, #0
	str	x0, [sp]                ; 8-byte Folded Spill
	mov	x0, x1
	mov	x1, x30
	bl	_objc_storeStrong
	ldr	x0, [sp]                ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	b	_objc_autoreleaseReturnValue
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestARC setTestObj:]
"+[TestARC setTestObj:]":               ; @"\01+[TestARC setTestObj:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, #0
	str	x0, [sp, #24]
	add	x0, sp, #24             ; =24
	mov	x1, x2
	bl	_objc_storeStrong
	ldr	x0, [sp, #24]
	bl	_CFGetRetainCount
	mov	x1, sp
	str	x0, [x1, #8]
	adrp	x0, "l___FUNCTION__.+[TestARC setTestObj:]"@PAGE
	add	x0, x0, "l___FUNCTION__.+[TestARC setTestObj:]"@PAGEOFF
	str	x0, [x1]
	adrp	x0, l__unnamed_cfstring_.9@PAGE
	add	x0, x0, l__unnamed_cfstring_.9@PAGEOFF
	bl	_NSLog
	add	x0, sp, #24             ; =24
	mov	x1, #0
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC testObj]
"-[TestARC testObj]":                   ; @"\01-[TestARC testObj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 8-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	adrp	x0, l__unnamed_cfstring_.11@PAGE
	add	x0, x0, l__unnamed_cfstring_.11@PAGEOFF
	bl	_NSLog
	ldr	x0, [sp, #8]
	adrp	x1, _OBJC_IVAR_$_TestARC._obj@PAGE
	ldrsw	x1, [x1, _OBJC_IVAR_$_TestARC._obj@PAGEOFF]
	ldr	x0, [x0, x1]
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	b	_objc_retainAutoreleaseReturnValue
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC initWithTestObj]
"-[TestARC initWithTestObj]":           ; @"\01-[TestARC initWithTestObj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176            ; =176
	stp	x29, x30, [sp, #160]    ; 8-byte Folded Spill
	add	x29, sp, #160           ; =160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.6@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.6@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.13@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.13@PAGEOFF
	stur	x0, [x29, #-24]
	ldur	x2, [x29, #-24]
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.17@PAGE
	add	x0, x0, l__unnamed_cfstring_.17@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	str	x0, [sp, #80]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	mov	x1, x0
	str	x0, [sp, #72]           ; 8-byte Folded Spill
	mov	x0, x1
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8, #8]
	ldr	x9, [sp, #80]           ; 8-byte Folded Reload
	str	x9, [x8]
	adrp	x0, l__unnamed_cfstring_.19@PAGE
	add	x0, x0, l__unnamed_cfstring_.19@PAGEOFF
	bl	_NSLog
	ldr	x0, [sp, #72]           ; 8-byte Folded Reload
	bl	_objc_release
	ldr	x8, [sp, #80]           ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	adrp	x8, _OBJC_IVAR_$_TestARC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._obj@PAGEOFF
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x8]
	add	x8, x9, x8
	ldr	x8, [x8]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.21@PAGE
	add	x0, x0, l__unnamed_cfstring_.21@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	mov	x1, x0
	str	x0, [sp, #64]           ; 8-byte Folded Spill
	mov	x0, x1
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.23@PAGE
	add	x0, x0, l__unnamed_cfstring_.23@PAGEOFF
	bl	_NSLog
	ldr	x0, [sp, #64]           ; 8-byte Folded Reload
	bl	_objc_release
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	mov	x1, x0
	str	x0, [sp, #56]           ; 8-byte Folded Spill
	mov	x0, x1
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.23@PAGE
	add	x0, x0, l__unnamed_cfstring_.23@PAGEOFF
	bl	_NSLog
	ldr	x0, [sp, #56]           ; 8-byte Folded Reload
	bl	_objc_release
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.27@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.27@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.25@PAGE
	add	x0, x0, l__unnamed_cfstring_.25@PAGEOFF
	bl	_NSLog
	adrp	x8, _OBJC_IVAR_$_TestARC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._obj@PAGEOFF
	ldur	x9, [x29, #-8]
	ldrsw	x8, [x8]
	add	x8, x9, x8
	ldr	x8, [x8]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.21@PAGE
	add	x0, x0, l__unnamed_cfstring_.21@PAGEOFF
	bl	_NSLog
	ldur	x8, [x29, #-24]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.29@PAGE
	add	x0, x0, l__unnamed_cfstring_.29@PAGEOFF
	bl	_NSLog
	sub	x8, x29, #72            ; =72
	add	x8, x8, #32             ; =32
	mov	x9, #0
	mov	x0, x9
	mov	x1, #61952
	movk	x1, #10757, lsl #16
	movk	x1, #1, lsl #32
	str	x8, [sp, #48]           ; 8-byte Folded Spill
	bl	_dispatch_time
	adrp	x8, __dispatch_main_q@GOTPAGE
	ldr	x8, [x8, __dispatch_main_q@GOTPAGEOFF]
	str	x0, [sp, #40]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_objc_retainAutoreleaseReturnValue
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	adrp	x8, "___block_descriptor_40_e8_32s_e5_v8@?0l"@PAGE
	add	x8, x8, "___block_descriptor_40_e8_32s_e5_v8@?0l"@PAGEOFF
	adrp	x9, "___26-[TestARC initWithTestObj]_block_invoke"@PAGE
	add	x9, x9, "___26-[TestARC initWithTestObj]_block_invoke"@PAGEOFF
	adrp	x1, __NSConcreteStackBlock@GOTPAGE
	ldr	x1, [x1, __NSConcreteStackBlock@GOTPAGEOFF]
	stur	x1, [x29, #-72]
	mov	w10, #-1040187392
	stur	w10, [x29, #-64]
	stur	wzr, [x29, #-60]
	stur	x9, [x29, #-56]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-8]
	str	x0, [sp, #32]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_objc_retain
	stur	x0, [x29, #-40]
	sub	x8, x29, #72            ; =72
	ldr	x0, [sp, #40]           ; 8-byte Folded Reload
	ldr	x1, [sp, #32]           ; 8-byte Folded Reload
	mov	x2, x8
	bl	_dispatch_after
	ldr	x0, [sp, #32]           ; 8-byte Folded Reload
	bl	_objc_release
	ldur	x8, [x29, #-24]
	mov	x0, x8
	bl	_objc_retain
	ldr	x8, [sp, #48]           ; 8-byte Folded Reload
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #32            ; =32
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #24            ; =24
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #8             ; =8
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	ldr	x0, [sp, #24]           ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #160]    ; 8-byte Folded Reload
	add	sp, sp, #176            ; =176
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __26-[TestARC initWithTestObj]_block_invoke
"___26-[TestARC initWithTestObj]_block_invoke": ; @"__26-[TestARC initWithTestObj]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.15@PAGEOFF
	stur	x0, [x29, #-8]
	mov	x9, x0
	stur	x9, [x29, #-16]
	ldr	x9, [x0, #32]
	ldr	x1, [x8]
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	mov	x1, x0
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x1
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.31@PAGE
	add	x0, x0, l__unnamed_cfstring_.31@PAGEOFF
	bl	_NSLog
	ldr	x0, [sp, #16]           ; 8-byte Folded Reload
	bl	_objc_release
	adrp	x8, _OBJC_IVAR_$_TestARC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._obj@PAGEOFF
	ldr	x9, [sp, #24]           ; 8-byte Folded Reload
	ldr	x0, [x9, #32]
	ldrsw	x8, [x8]
	add	x8, x0, x8
	ldr	x8, [x8]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.33@PAGE
	add	x0, x0, l__unnamed_cfstring_.33@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___copy_helper_block_e8_32s ; -- Begin function __copy_helper_block_e8_32s
	.globl	___copy_helper_block_e8_32s
	.weak_def_can_be_hidden	___copy_helper_block_e8_32s
	.p2align	2
___copy_helper_block_e8_32s:            ; @__copy_helper_block_e8_32s
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	mov	x8, x1
	add	x8, x8, #32             ; =32
	ldr	x0, [x0, #32]
	mov	x9, #0
	str	x9, [x1, #32]
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #8]            ; 8-byte Folded Reload
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___destroy_helper_block_e8_32s ; -- Begin function __destroy_helper_block_e8_32s
	.globl	___destroy_helper_block_e8_32s
	.weak_def_can_be_hidden	___destroy_helper_block_e8_32s
	.p2align	2
___destroy_helper_block_e8_32s:         ; @__destroy_helper_block_e8_32s
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 8-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	x0, x0, #32             ; =32
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestARC testRetainCount]
"+[TestARC testRetainCount]":           ; @"\01+[TestARC testRetainCount]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80             ; =80
	stp	x29, x30, [sp, #64]     ; 8-byte Folded Spill
	add	x29, sp, #64            ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.35@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.35@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.6@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.6@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l__unnamed_cfstring_.37@PAGE
	add	x0, x0, l__unnamed_cfstring_.37@PAGEOFF
	bl	_NSLog
	ldur	x8, [x29, #-24]
	mov	x0, x8
	bl	_objc_retain
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.39@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.39@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.41@PAGE
	add	x0, x0, l__unnamed_cfstring_.41@PAGEOFF
	bl	_NSLog
	mov	x8, #0
	mov	x0, x8
	mov	x1, #51712
	movk	x1, #15258, lsl #16
	bl	_dispatch_time
	adrp	x8, __dispatch_main_q@GOTPAGE
	ldr	x8, [x8, __dispatch_main_q@GOTPAGEOFF]
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_objc_retainAutoreleaseReturnValue
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	adrp	x8, ___block_literal_global@PAGE
	add	x8, x8, ___block_literal_global@PAGEOFF
	ldr	x1, [sp, #24]           ; 8-byte Folded Reload
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #16]           ; 8-byte Folded Reload
	mov	x2, x8
	bl	_dispatch_after
	ldr	x0, [sp, #16]           ; 8-byte Folded Reload
	bl	_objc_release
	add	x8, sp, #32             ; =32
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #24            ; =24
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #64]     ; 8-byte Folded Reload
	add	sp, sp, #80             ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __26+[TestARC testRetainCount]_block_invoke
"___26+[TestARC testRetainCount]_block_invoke": ; @"__26+[TestARC testRetainCount]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _objC@PAGE
	add	x8, x8, _objC@PAGEOFF
	stur	x0, [x29, #-8]
	str	x0, [sp, #16]
	mov	x0, x8
	bl	_objc_loadWeakRetained
	mov	x8, sp
	str	x0, [x8]
	adrp	x8, l__unnamed_cfstring_.43@PAGE
	add	x8, x8, l__unnamed_cfstring_.43@PAGEOFF
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x8
	bl	_NSLog
	ldr	x8, [sp, #8]            ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC obj]
"-[TestARC obj]":                       ; @"\01-[TestARC obj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestARC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._obj@PAGEOFF
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldrsw	x8, [x8]
	add	x8, x0, x8
	ldr	x0, [x8]
	add	sp, sp, #16             ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC setObj:]
"-[TestARC setObj:]":                   ; @"\01-[TestARC setObj:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _OBJC_IVAR_$_TestARC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._obj@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldrsw	x8, [x8]
	add	x8, x1, x8
	str	x0, [sp]                ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp]                ; 8-byte Folded Reload
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC name]
"-[TestARC name]":                      ; @"\01-[TestARC name]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestARC._name@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._name@PAGEOFF
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldrsw	x8, [x8]
	add	x8, x0, x8
	ldr	x0, [x8]
	add	sp, sp, #16             ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC setName:]
"-[TestARC setName:]":                  ; @"\01-[TestARC setName:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _OBJC_IVAR_$_TestARC._name@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._name@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldrsw	x8, [x8]
	add	x8, x1, x8
	str	x0, [sp]                ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp]                ; 8-byte Folded Reload
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC aa]
"-[TestARC aa]":                        ; @"\01-[TestARC aa]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestARC._aa@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._aa@PAGEOFF
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldrsw	x8, [x8]
	add	x8, x0, x8
	ldr	w0, [x8]
	add	sp, sp, #16             ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC setAa:]
"-[TestARC setAa:]":                    ; @"\01-[TestARC setAa:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	.cfi_def_cfa_offset 32
	adrp	x8, _OBJC_IVAR_$_TestARC._aa@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._aa@PAGEOFF
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	w2, [sp, #12]
	ldr	x0, [sp, #24]
	ldrsw	x8, [x8]
	add	x8, x0, x8
	str	w2, [x8]
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestARC .cxx_destruct]
"-[TestARC .cxx_destruct]":             ; @"\01-[TestARC .cxx_destruct]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _OBJC_IVAR_$_TestARC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._obj@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldrsw	x8, [x8]
	mov	x1, x0
	add	x8, x1, x8
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	adrp	x8, _OBJC_IVAR_$_TestARC._name@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestARC._name@PAGEOFF
	ldrsw	x8, [x8]
	ldr	x0, [sp, #8]            ; 8-byte Folded Reload
	add	x8, x0, x8
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_objC                   ; @objC
.zerofill __DATA,__common,_objC,8,3
	.globl	_objD                   ; @objD
.zerofill __DATA,__common,_objD,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Reference showlog 4 objC = %@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_
l__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str
	.quad	29                      ; 0x1d

	.section	__TEXT,__cstring,cstring_literals
l_.str.1:                               ; @.str.1
	.asciz	"Reference showlog 5 objC = %@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.2
l__unnamed_cfstring_.2:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.1
	.quad	29                      ; 0x1d

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_:                  ; @OBJC_METH_VAR_NAME_
	.asciz	"description"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_
l_OBJC_SELECTOR_REFERENCES_:
	.quad	l_OBJC_METH_VAR_NAME_

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_"
l_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSObject

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.3:                ; @OBJC_METH_VAR_NAME_.3
	.asciz	"alloc"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.4
l_OBJC_SELECTOR_REFERENCES_.4:
	.quad	l_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.5:                ; @OBJC_METH_VAR_NAME_.5
	.asciz	"init"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.6
l_OBJC_SELECTOR_REFERENCES_.6:
	.quad	l_OBJC_METH_VAR_NAME_.5

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.7"
l_OBJC_CLASSLIST_REFERENCES_$_.7:
	.quad	_OBJC_CLASS_$_NSMutableDictionary

	.section	__TEXT,__cstring,cstring_literals
l_.str.8:                               ; @.str.8
	.asciz	"%s retaincount=%lu"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.9
l__unnamed_cfstring_.9:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.8
	.quad	18                      ; 0x12

	.section	__TEXT,__cstring,cstring_literals
"l___FUNCTION__.+[TestARC setTestObj:]": ; @"__FUNCTION__.+[TestARC setTestObj:]"
	.asciz	"+[TestARC setTestObj:]"

l_.str.10:                              ; @.str.10
	.asciz	"sdsdsfd"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.11
l__unnamed_cfstring_.11:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.10
	.quad	7                       ; 0x7

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_TestARC._obj ; @"OBJC_IVAR_$_TestARC._obj"
	.p2align	2
_OBJC_IVAR_$_TestARC._obj:
	.long	16                      ; 0x10

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.12:               ; @OBJC_METH_VAR_NAME_.12
	.asciz	"setObj:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.13
l_OBJC_SELECTOR_REFERENCES_.13:
	.quad	l_OBJC_METH_VAR_NAME_.12

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.14:               ; @OBJC_METH_VAR_NAME_.14
	.asciz	"obj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.15
l_OBJC_SELECTOR_REFERENCES_.15:
	.quad	l_OBJC_METH_VAR_NAME_.14

	.section	__TEXT,__cstring,cstring_literals
l_.str.16:                              ; @.str.16
	.asciz	"retain ARC obj1 count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.17
l__unnamed_cfstring_.17:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.16
	.quad	27                      ; 0x1b

	.section	__TEXT,__cstring,cstring_literals
l_.str.18:                              ; @.str.18
	.asciz	"retain ARC self.obj =%@,count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.19
l__unnamed_cfstring_.19:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.18
	.quad	35                      ; 0x23

	.section	__TEXT,__cstring,cstring_literals
l_.str.20:                              ; @.str.20
	.asciz	"retain ARC _obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.21
l__unnamed_cfstring_.21:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.20
	.quad	27                      ; 0x1b

	.section	__TEXT,__cstring,cstring_literals
l_.str.22:                              ; @.str.22
	.asciz	"retain ARC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.23
l__unnamed_cfstring_.23:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.22
	.quad	31                      ; 0x1f

	.section	__TEXT,__cstring,cstring_literals
l_.str.24:                              ; @.str.24
	.asciz	"retain ARC testObj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.25
l__unnamed_cfstring_.25:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.24
	.quad	30                      ; 0x1e

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.26:               ; @OBJC_METH_VAR_NAME_.26
	.asciz	"testObj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.27
l_OBJC_SELECTOR_REFERENCES_.27:
	.quad	l_OBJC_METH_VAR_NAME_.26

	.section	__TEXT,__cstring,cstring_literals
l_.str.28:                              ; @.str.28
	.asciz	"retain ARC obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.29
l__unnamed_cfstring_.29:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.28
	.quad	26                      ; 0x1a

	.section	__TEXT,__cstring,cstring_literals
l_.str.30:                              ; @.str.30
	.asciz	"retain delay ARC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.31
l__unnamed_cfstring_.31:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.30
	.quad	37                      ; 0x25

	.section	__TEXT,__cstring,cstring_literals
l_.str.32:                              ; @.str.32
	.asciz	"retain delay ARC _obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.33
l__unnamed_cfstring_.33:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.32
	.quad	33                      ; 0x21

	.section	__TEXT,__cstring,cstring_literals
l_.str.34:                              ; @.str.34
	.asciz	"v8@?0"

	.private_extern	"___block_descriptor_40_e8_32s_e5_v8@?0l" ; @"__block_descriptor_40_e8_32s_e5_v8@?0l"
	.section	__DATA,__const
	.globl	"___block_descriptor_40_e8_32s_e5_v8@?0l"
	.weak_def_can_be_hidden	"___block_descriptor_40_e8_32s_e5_v8@?0l"
	.p2align	3
"___block_descriptor_40_e8_32s_e5_v8@?0l":
	.quad	0                       ; 0x0
	.quad	40                      ; 0x28
	.quad	___copy_helper_block_e8_32s
	.quad	___destroy_helper_block_e8_32s
	.quad	l_.str.34
	.quad	256                     ; 0x100

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_TestARC   ; @"OBJC_CLASS_$_TestARC"
	.p2align	3
_OBJC_CLASS_$_TestARC:
	.quad	_OBJC_METACLASS_$_TestARC
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_CLASS_RO_$_TestARC

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.35"
l_OBJC_CLASSLIST_REFERENCES_$_.35:
	.quad	_OBJC_CLASS_$_TestARC

	.section	__TEXT,__cstring,cstring_literals
l_.str.36:                              ; @.str.36
	.asciz	"retain ARC testarc =%@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.37
l__unnamed_cfstring_.37:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.36
	.quad	22                      ; 0x16

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.38:               ; @OBJC_METH_VAR_NAME_.38
	.asciz	"initWithTestObj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.39
l_OBJC_SELECTOR_REFERENCES_.39:
	.quad	l_OBJC_METH_VAR_NAME_.38

	.section	__TEXT,__cstring,cstring_literals
l_.str.40:                              ; @.str.40
	.asciz	"retain ARC count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.41
l__unnamed_cfstring_.41:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.40
	.quad	22                      ; 0x16

	.private_extern	"___block_descriptor_32_e5_v8@?0l" ; @"__block_descriptor_32_e5_v8@?0l"
	.section	__DATA,__const
	.globl	"___block_descriptor_32_e5_v8@?0l"
	.weak_def_can_be_hidden	"___block_descriptor_32_e5_v8@?0l"
	.p2align	3
"___block_descriptor_32_e5_v8@?0l":
	.quad	0                       ; 0x0
	.quad	32                      ; 0x20
	.quad	l_.str.34
	.quad	0

	.p2align	3               ; @__block_literal_global
___block_literal_global:
	.quad	__NSConcreteGlobalBlock
	.long	1342177280              ; 0x50000000
	.long	0                       ; 0x0
	.quad	"___26+[TestARC testRetainCount]_block_invoke"
	.quad	"___block_descriptor_32_e5_v8@?0l"

	.section	__TEXT,__cstring,cstring_literals
l_.str.42:                              ; @.str.42
	.asciz	"Reference showlog  dispatch_after 5 objC = %@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.43
l__unnamed_cfstring_.43:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.42
	.quad	45                      ; 0x2d

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_TestARC._name ; @"OBJC_IVAR_$_TestARC._name"
	.p2align	2
_OBJC_IVAR_$_TestARC._name:
	.long	8                       ; 0x8

	.private_extern	_OBJC_IVAR_$_TestARC._aa ; @"OBJC_IVAR_$_TestARC._aa"
	.globl	_OBJC_IVAR_$_TestARC._aa
	.p2align	2
_OBJC_IVAR_$_TestARC._aa:
	.long	24                      ; 0x18

	.section	__TEXT,__objc_classname,cstring_literals
l_OBJC_CLASS_NAME_:                     ; @OBJC_CLASS_NAME_
	.asciz	"TestARC"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.44:               ; @OBJC_METH_VAR_NAME_.44
	.asciz	"showlog"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_:                  ; @OBJC_METH_VAR_TYPE_
	.asciz	"v16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.45:               ; @OBJC_METH_VAR_NAME_.45
	.asciz	"testReturnObj"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.46:               ; @OBJC_METH_VAR_TYPE_.46
	.asciz	"@16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.47:               ; @OBJC_METH_VAR_NAME_.47
	.asciz	"setTestObj:"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.48:               ; @OBJC_METH_VAR_TYPE_.48
	.asciz	"v24@0:8@16"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.49:               ; @OBJC_METH_VAR_NAME_.49
	.asciz	"testRetainCount"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_CLASS_METHODS_TestARC"
l_OBJC_$_CLASS_METHODS_TestARC:
	.long	24                      ; 0x18
	.long	4                       ; 0x4
	.quad	l_OBJC_METH_VAR_NAME_.44
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"+[TestARC showlog]"
	.quad	l_OBJC_METH_VAR_NAME_.45
	.quad	l_OBJC_METH_VAR_TYPE_.46
	.quad	"+[TestARC testReturnObj]"
	.quad	l_OBJC_METH_VAR_NAME_.47
	.quad	l_OBJC_METH_VAR_TYPE_.48
	.quad	"+[TestARC setTestObj:]"
	.quad	l_OBJC_METH_VAR_NAME_.49
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"+[TestARC testRetainCount]"

	.p2align	3               ; @"\01l_OBJC_METACLASS_RO_$_TestARC"
l_OBJC_METACLASS_RO_$_TestARC:
	.long	389                     ; 0x185
	.long	40                      ; 0x28
	.long	40                      ; 0x28
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_CLASS_METHODS_TestARC
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_TestARC ; @"OBJC_METACLASS_$_TestARC"
	.p2align	3
_OBJC_METACLASS_$_TestARC:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_METACLASS_RO_$_TestARC

	.section	__TEXT,__objc_classname,cstring_literals
l_OBJC_CLASS_NAME_.50:                  ; @OBJC_CLASS_NAME_.50
	.asciz	"\002"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.51:               ; @OBJC_METH_VAR_NAME_.51
	.asciz	"testReturnDic"

l_OBJC_METH_VAR_NAME_.52:               ; @OBJC_METH_VAR_NAME_.52
	.asciz	".cxx_destruct"

l_OBJC_METH_VAR_NAME_.53:               ; @OBJC_METH_VAR_NAME_.53
	.asciz	"name"

l_OBJC_METH_VAR_NAME_.54:               ; @OBJC_METH_VAR_NAME_.54
	.asciz	"setName:"

l_OBJC_METH_VAR_NAME_.55:               ; @OBJC_METH_VAR_NAME_.55
	.asciz	"aa"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.56:               ; @OBJC_METH_VAR_TYPE_.56
	.asciz	"i16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.57:               ; @OBJC_METH_VAR_NAME_.57
	.asciz	"setAa:"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.58:               ; @OBJC_METH_VAR_TYPE_.58
	.asciz	"v20@0:8i16"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_INSTANCE_METHODS_TestARC"
l_OBJC_$_INSTANCE_METHODS_TestARC:
	.long	24                      ; 0x18
	.long	10                      ; 0xa
	.quad	l_OBJC_METH_VAR_NAME_.51
	.quad	l_OBJC_METH_VAR_TYPE_.46
	.quad	"-[TestARC testReturnDic]"
	.quad	l_OBJC_METH_VAR_NAME_.26
	.quad	l_OBJC_METH_VAR_TYPE_.46
	.quad	"-[TestARC testObj]"
	.quad	l_OBJC_METH_VAR_NAME_.38
	.quad	l_OBJC_METH_VAR_TYPE_.46
	.quad	"-[TestARC initWithTestObj]"
	.quad	l_OBJC_METH_VAR_NAME_.52
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"-[TestARC .cxx_destruct]"
	.quad	l_OBJC_METH_VAR_NAME_.14
	.quad	l_OBJC_METH_VAR_TYPE_.46
	.quad	"-[TestARC obj]"
	.quad	l_OBJC_METH_VAR_NAME_.12
	.quad	l_OBJC_METH_VAR_TYPE_.48
	.quad	"-[TestARC setObj:]"
	.quad	l_OBJC_METH_VAR_NAME_.53
	.quad	l_OBJC_METH_VAR_TYPE_.46
	.quad	"-[TestARC name]"
	.quad	l_OBJC_METH_VAR_NAME_.54
	.quad	l_OBJC_METH_VAR_TYPE_.48
	.quad	"-[TestARC setName:]"
	.quad	l_OBJC_METH_VAR_NAME_.55
	.quad	l_OBJC_METH_VAR_TYPE_.56
	.quad	"-[TestARC aa]"
	.quad	l_OBJC_METH_VAR_NAME_.57
	.quad	l_OBJC_METH_VAR_TYPE_.58
	.quad	"-[TestARC setAa:]"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.59:               ; @OBJC_METH_VAR_NAME_.59
	.asciz	"_name"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.60:               ; @OBJC_METH_VAR_TYPE_.60
	.asciz	"@\"NSString\""

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.61:               ; @OBJC_METH_VAR_NAME_.61
	.asciz	"_obj"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.62:               ; @OBJC_METH_VAR_TYPE_.62
	.asciz	"@\"NSObject\""

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.63:               ; @OBJC_METH_VAR_NAME_.63
	.asciz	"_aa"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.64:               ; @OBJC_METH_VAR_TYPE_.64
	.asciz	"i"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_INSTANCE_VARIABLES_TestARC"
l_OBJC_$_INSTANCE_VARIABLES_TestARC:
	.long	32                      ; 0x20
	.long	3                       ; 0x3
	.quad	_OBJC_IVAR_$_TestARC._name
	.quad	l_OBJC_METH_VAR_NAME_.59
	.quad	l_OBJC_METH_VAR_TYPE_.60
	.long	3                       ; 0x3
	.long	8                       ; 0x8
	.quad	_OBJC_IVAR_$_TestARC._obj
	.quad	l_OBJC_METH_VAR_NAME_.61
	.quad	l_OBJC_METH_VAR_TYPE_.62
	.long	3                       ; 0x3
	.long	8                       ; 0x8
	.quad	_OBJC_IVAR_$_TestARC._aa
	.quad	l_OBJC_METH_VAR_NAME_.63
	.quad	l_OBJC_METH_VAR_TYPE_.64
	.long	2                       ; 0x2
	.long	4                       ; 0x4

	.section	__TEXT,__cstring,cstring_literals
l_OBJC_PROP_NAME_ATTR_:                 ; @OBJC_PROP_NAME_ATTR_
	.asciz	"name"

l_OBJC_PROP_NAME_ATTR_.65:              ; @OBJC_PROP_NAME_ATTR_.65
	.asciz	"T@\"NSString\",&,N,V_name"

l_OBJC_PROP_NAME_ATTR_.66:              ; @OBJC_PROP_NAME_ATTR_.66
	.asciz	"obj"

l_OBJC_PROP_NAME_ATTR_.67:              ; @OBJC_PROP_NAME_ATTR_.67
	.asciz	"T@\"NSObject\",&,N,V_obj"

l_OBJC_PROP_NAME_ATTR_.68:              ; @OBJC_PROP_NAME_ATTR_.68
	.asciz	"aa"

l_OBJC_PROP_NAME_ATTR_.69:              ; @OBJC_PROP_NAME_ATTR_.69
	.asciz	"Ti,N,V_aa"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_PROP_LIST_TestARC"
l_OBJC_$_PROP_LIST_TestARC:
	.long	16                      ; 0x10
	.long	3                       ; 0x3
	.quad	l_OBJC_PROP_NAME_ATTR_
	.quad	l_OBJC_PROP_NAME_ATTR_.65
	.quad	l_OBJC_PROP_NAME_ATTR_.66
	.quad	l_OBJC_PROP_NAME_ATTR_.67
	.quad	l_OBJC_PROP_NAME_ATTR_.68
	.quad	l_OBJC_PROP_NAME_ATTR_.69

	.p2align	3               ; @"\01l_OBJC_CLASS_RO_$_TestARC"
l_OBJC_CLASS_RO_$_TestARC:
	.long	388                     ; 0x184
	.long	8                       ; 0x8
	.long	28                      ; 0x1c
	.space	4
	.quad	l_OBJC_CLASS_NAME_.50
	.quad	l_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_TestARC
	.quad	0
	.quad	l_OBJC_$_INSTANCE_VARIABLES_TestARC
	.quad	0
	.quad	l_OBJC_$_PROP_LIST_TestARC

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ; @"OBJC_LABEL_CLASS_$"
l_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_TestARC

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
