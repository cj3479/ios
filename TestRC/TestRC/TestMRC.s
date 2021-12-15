	.section	__TEXT,__text,regular,pure_instructions
	.build_version ios, 12, 2	sdk_version 12, 2
	.p2align	2               ; -- Begin function +[TestMRC showlog]
"+[TestMRC showlog]":                   ; @"\01+[TestMRC showlog]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _objA@PAGE
	add	x8, x8, _objA@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [x8]
	mov	x0, sp
	str	x8, [x0]
	adrp	x0, l__unnamed_cfstring_@PAGE
	add	x0, x0, l__unnamed_cfstring_@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	adrp	x0, _objA@PAGE
	add	x0, x0, _objA@PAGEOFF
	ldr	x0, [x0]
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.2@PAGE
	add	x0, x0, l__unnamed_cfstring_.2@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC gameAdTag]
"-[TestMRC gameAdTag]":                 ; @"\01-[TestMRC gameAdTag]"
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
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.6@PAGE
	add	x0, x0, l__unnamed_cfstring_.6@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldur	x0, [x29, #-24]
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.12@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.12@PAGEOFF
	adrp	x0, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x0, x0, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	ldur	x1, [x29, #-24]
	ldr	x0, [x0]
	ldr	x8, [x8]
	str	x1, [sp, #32]           ; 8-byte Folded Spill
	mov	x1, x8
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.14@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.14@PAGEOFF
	ldr	x1, [x8]
	ldr	x8, [sp, #32]           ; 8-byte Folded Reload
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x2, [sp, #24]           ; 8-byte Folded Reload
	bl	_objc_msgSend
	tbz	w0, #0, LBB1_2
; %bb.1:
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.16@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.16@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	str	x0, [sp, #16]           ; 8-byte Folded Spill
LBB1_2:
	adrp	x8, l__unnamed_cfstring_.18@PAGE
	add	x8, x8, l__unnamed_cfstring_.18@PAGEOFF
	mov	x0, x8
	ldp	x29, x30, [sp, #64]     ; 8-byte Folded Reload
	add	sp, sp, #80             ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestMRC testReturnObjB]
"+[TestMRC testReturnObjB]":            ; @"\01+[TestMRC testReturnObjB]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC initTest]
"-[TestMRC initTest]":                  ; @"\01-[TestMRC initTest]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 8-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGEOFF
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC copy]
"-[TestMRC copy]":                      ; @"\01-[TestMRC copy]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_.str.25@PAGE
	add	x2, x8, l_.str.25@PAGEOFF
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.27@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.27@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGEOFF
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x9, [x9]
	ldr	x1, [x8]
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l__unnamed_cfstring_.29@PAGE
	add	x8, x8, l__unnamed_cfstring_.29@PAGEOFF
	adrp	x9, l_OBJC_SELECTOR_REFERENCES_.31@PAGE
	add	x9, x9, l_OBJC_SELECTOR_REFERENCES_.31@PAGEOFF
	ldr	x1, [x9]
	ldr	x9, [sp, #16]           ; 8-byte Folded Reload
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x9
	ldr	x2, [sp, #8]            ; 8-byte Folded Reload
	mov	x3, x8
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldr	x9, [sp, #24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	ldr	x8, [sp, #24]
	mov	x0, x8
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC testReturnDic]
"-[TestMRC testReturnDic]":             ; @"\01-[TestMRC testReturnDic]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.33@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.33@PAGEOFF
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC getReport]
"-[TestMRC getReport]":                 ; @"\01-[TestMRC getReport]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160            ; =160
	stp	x29, x30, [sp, #144]    ; 8-byte Folded Spill
	add	x29, sp, #144           ; =144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGEOFF
	stur	x0, [x29, #-24]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.23@PAGEOFF
	stur	x0, [x29, #-32]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_.str.25@PAGE
	add	x2, x8, l_.str.25@PAGEOFF
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.27@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.27@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGEOFF
	stur	x0, [x29, #-40]
	ldur	x0, [x29, #-40]
	ldr	x9, [x9]
	ldr	x1, [x8]
	str	x0, [sp, #32]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l__unnamed_cfstring_.29@PAGE
	add	x8, x8, l__unnamed_cfstring_.29@PAGEOFF
	adrp	x9, l_OBJC_SELECTOR_REFERENCES_.31@PAGE
	add	x9, x9, l_OBJC_SELECTOR_REFERENCES_.31@PAGEOFF
	ldr	x1, [x9]
	ldr	x9, [sp, #32]           ; 8-byte Folded Reload
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x9
	ldr	x2, [sp, #24]           ; 8-byte Folded Reload
	mov	x3, x8
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.36@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.36@PAGEOFF
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.38@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.38@PAGEOFF
	stur	x0, [x29, #-48]
	ldur	x2, [x29, #-48]
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGEOFF
	ldur	x9, [x29, #-8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8, #8]
	ldr	x9, [sp, #16]           ; 8-byte Folded Reload
	str	x9, [x8]
	adrp	x0, l__unnamed_cfstring_.40@PAGE
	add	x0, x0, l__unnamed_cfstring_.40@PAGEOFF
	bl	_NSLog
	adrp	x8, l_.str.43@PAGE
	add	x0, x8, l_.str.43@PAGEOFF
	adrp	x8, __dispatch_queue_attr_concurrent@GOTPAGE
	ldr	x8, [x8, __dispatch_queue_attr_concurrent@GOTPAGEOFF]
	mov	x1, x8
	bl	_dispatch_queue_create
	stur	x0, [x29, #-56]
	mov	x8, #0
	mov	x0, x8
	mov	x1, #37888
	movk	x1, #30517, lsl #16
	bl	_dispatch_time
	adrp	x8, "___block_descriptor_48_e8_32o40o_e5_v8@?0l"@PAGE
	add	x8, x8, "___block_descriptor_48_e8_32o40o_e5_v8@?0l"@PAGEOFF
	adrp	x9, "___20-[TestMRC getReport]_block_invoke"@PAGE
	add	x9, x9, "___20-[TestMRC getReport]_block_invoke"@PAGEOFF
	adrp	x1, __NSConcreteStackBlock@GOTPAGE
	ldr	x1, [x1, __NSConcreteStackBlock@GOTPAGEOFF]
	ldur	x2, [x29, #-56]
	str	x1, [sp, #40]
	mov	w10, #-1040187392
	str	w10, [sp, #48]
	str	wzr, [sp, #52]
	str	x9, [sp, #56]
	str	x8, [sp, #64]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #72]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #80]
	add	x8, sp, #40             ; =40
	mov	x1, x2
	mov	x2, x8
	bl	_dispatch_after
	mov	x8, #0
	mov	x0, x8
	ldp	x29, x30, [sp, #144]    ; 8-byte Folded Reload
	add	sp, sp, #160            ; =160
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __20-[TestMRC getReport]_block_invoke
"___20-[TestMRC getReport]_block_invoke": ; @"__20-[TestMRC getReport]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGEOFF
	stur	x0, [x29, #-8]
	mov	x9, x0
	stur	x9, [x29, #-16]
	ldr	x9, [x0, #32]
	ldr	x1, [x8]
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.45@PAGE
	add	x0, x0, l__unnamed_cfstring_.45@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGEOFF
	ldr	x9, [sp, #24]           ; 8-byte Folded Reload
	ldr	x0, [x9, #40]
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.42@PAGEOFF
	ldr	x9, [sp, #24]           ; 8-byte Folded Reload
	ldr	x1, [x9, #32]
	ldr	x8, [x8]
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x1
	mov	x1, x8
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8, #8]
	ldr	x9, [sp, #16]           ; 8-byte Folded Reload
	str	x9, [x8]
	adrp	x0, l__unnamed_cfstring_.47@PAGE
	add	x0, x0, l__unnamed_cfstring_.47@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___copy_helper_block_e8_32o40o ; -- Begin function __copy_helper_block_e8_32o40o
	.globl	___copy_helper_block_e8_32o40o
	.weak_def_can_be_hidden	___copy_helper_block_e8_32o40o
	.p2align	2
___copy_helper_block_e8_32o40o:         ; @__copy_helper_block_e8_32o40o
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
	add	x8, x1, #32             ; =32
	ldr	x9, [x0, #32]
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x8
	str	x1, [sp]                ; 8-byte Folded Spill
	mov	x1, x9
	orr	w2, wzr, #0x3
	bl	__Block_object_assign
	ldr	x8, [sp]                ; 8-byte Folded Reload
	add	x9, x8, #40             ; =40
	ldr	x0, [sp, #8]            ; 8-byte Folded Reload
	ldr	x1, [x0, #40]
	mov	x0, x9
	orr	w2, wzr, #0x3
	bl	__Block_object_assign
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___destroy_helper_block_e8_32o40o ; -- Begin function __destroy_helper_block_e8_32o40o
	.globl	___destroy_helper_block_e8_32o40o
	.weak_def_can_be_hidden	___destroy_helper_block_e8_32o40o
	.p2align	2
___destroy_helper_block_e8_32o40o:      ; @__destroy_helper_block_e8_32o40o
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
	ldr	x8, [x0, #40]
	str	x0, [sp]                ; 8-byte Folded Spill
	mov	x0, x8
	orr	w1, wzr, #0x3
	bl	__Block_object_dispose
	ldr	x8, [sp]                ; 8-byte Folded Reload
	ldr	x0, [x8, #32]
	orr	w1, wzr, #0x3
	bl	__Block_object_dispose
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestMRC testReturnStrA]
"+[TestMRC testReturnStrA]":            ; @"\01+[TestMRC testReturnStrA]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96             ; =96
	stp	x29, x30, [sp, #80]     ; 8-byte Folded Spill
	add	x29, sp, #80            ; =80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l__unnamed_cfstring_.51@PAGE
	add	x8, x8, l__unnamed_cfstring_.51@PAGEOFF
	adrp	x9, l__unnamed_cfstring_.53@PAGE
	add	x9, x9, l__unnamed_cfstring_.53@PAGEOFF
	adrp	x10, l_OBJC_SELECTOR_REFERENCES_.55@PAGE
	add	x10, x10, l_OBJC_SELECTOR_REFERENCES_.55@PAGEOFF
	adrp	x11, l_OBJC_CLASSLIST_REFERENCES_$_.49@PAGE
	add	x11, x11, l_OBJC_CLASSLIST_REFERENCES_$_.49@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x11, [x11]
	ldr	x1, [x10]
	mov	x0, x11
	mov	x2, x8
	mov	x3, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.59@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.59@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGEOFF
	stur	x0, [x29, #-24]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x8, sp
	mov	w12, #10
	mov	x10, x12
	str	x10, [x8]
	adrp	x2, l__unnamed_cfstring_.57@PAGE
	add	x2, x2, l__unnamed_cfstring_.57@PAGEOFF
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	stur	x0, [x29, #-32]
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.61@PAGE
	add	x0, x0, l__unnamed_cfstring_.61@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.63@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.63@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	str	x0, [sp, #40]
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #40]
	ldur	x10, [x29, #-24]
	ldr	x11, [sp, #40]
	mov	x1, sp
	str	x11, [x1, #32]
	str	x10, [x1, #24]
	str	x9, [x1, #16]
	str	x8, [x1, #8]
	str	x0, [x1]
	adrp	x0, l__unnamed_cfstring_.65@PAGE
	add	x0, x0, l__unnamed_cfstring_.65@PAGEOFF
	bl	_NSLog
	ldur	x8, [x29, #-24]
	mov	x0, x8
	ldp	x29, x30, [sp, #80]     ; 8-byte Folded Reload
	add	sp, sp, #96             ; =96
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestMRC testReturnObjA]
"+[TestMRC testReturnObjA]":            ; @"\01+[TestMRC testReturnObjA]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	str	x0, [sp, #24]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGEOFF
	str	x0, [sp, #16]
	ldr	x2, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldr	x9, [sp, #16]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x9, [sp, #16]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.69@PAGE
	add	x0, x0, l__unnamed_cfstring_.69@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	str	x0, [sp, #8]
	ldr	x9, [sp, #16]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldr	x9, [sp, #8]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGEOFF
	ldr	x2, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestMRC testReturnObj]
"+[TestMRC testReturnObj]":             ; @"\01+[TestMRC testReturnObj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112            ; =112
	stp	x29, x30, [sp, #96]     ; 8-byte Folded Spill
	add	x29, sp, #96            ; =96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	stur	x0, [x29, #-24]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	stur	x0, [x29, #-32]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGEOFF
	stur	x0, [x29, #-40]
	ldur	x2, [x29, #-32]
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.71@PAGE
	add	x0, x0, l__unnamed_cfstring_.71@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGEOFF
	ldur	x2, [x29, #-40]
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	str	x0, [sp, #48]
	ldr	x9, [sp, #48]
	str	x9, [sp, #40]
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.73@PAGE
	add	x0, x0, l__unnamed_cfstring_.73@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.75@PAGE
	add	x0, x0, l__unnamed_cfstring_.75@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.59@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.59@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGEOFF
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x8, sp
	mov	w10, #10
	mov	x0, x10
	str	x0, [x8]
	adrp	x2, l__unnamed_cfstring_.57@PAGE
	add	x2, x2, l__unnamed_cfstring_.57@PAGEOFF
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	adrp	x9, l__unnamed_cfstring_.77@PAGE
	add	x9, x9, l__unnamed_cfstring_.77@PAGEOFF
	str	x0, [sp, #32]
	str	x9, [sp, #24]
	ldr	x9, [sp, #32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.79@PAGE
	add	x0, x0, l__unnamed_cfstring_.79@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x9, [sp, #48]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.81@PAGE
	add	x0, x0, l__unnamed_cfstring_.81@PAGEOFF
	bl	_NSLog
	ldr	x8, [sp, #32]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l__unnamed_cfstring_.83@PAGE
	add	x0, x0, l__unnamed_cfstring_.83@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x9, [sp, #32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.85@PAGE
	add	x0, x0, l__unnamed_cfstring_.85@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.87@PAGE
	add	x0, x0, l__unnamed_cfstring_.87@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x9, [sp, #24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.89@PAGE
	add	x0, x0, l__unnamed_cfstring_.89@PAGEOFF
	bl	_NSLog
	adrp	x8, l_.str.90@PAGE
	add	x0, x8, l_.str.90@PAGEOFF
	mov	w10, #10
	str	w10, [sp, #20]
	ldr	w10, [sp, #20]
	add	w10, w10, #1            ; =1
	str	w10, [sp, #20]
	mov	x8, #0
	mov	x1, x8
	bl	_dispatch_queue_create
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	str	x0, [sp, #8]
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.92@PAGE
	add	x0, x0, l__unnamed_cfstring_.92@PAGEOFF
	bl	_NSLog
	mov	x8, #0
	mov	x0, x8
	mov	x1, #51712
	movk	x1, #15258, lsl #16
	bl	_dispatch_time
	adrp	x8, ___block_literal_global@PAGE
	add	x8, x8, ___block_literal_global@PAGEOFF
	ldr	x1, [sp, #8]
	mov	x2, x8
	bl	_dispatch_after
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.87@PAGE
	add	x0, x0, l__unnamed_cfstring_.87@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.98@PAGE
	add	x0, x0, l__unnamed_cfstring_.98@PAGEOFF
	bl	_NSLog
	adrp	x0, l__unnamed_cfstring_.100@PAGE
	add	x0, x0, l__unnamed_cfstring_.100@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldur	x9, [x29, #-24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldr	x9, [sp, #32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	ldur	x9, [x29, #-32]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	ldur	x0, [x29, #-32]
	ldp	x29, x30, [sp, #96]     ; 8-byte Folded Reload
	add	sp, sp, #112            ; =112
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __24+[TestMRC testReturnObj]_block_invoke
"___24+[TestMRC testReturnObj]_block_invoke": ; @"__24+[TestMRC testReturnObj]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	stp	x29, x30, [sp, #16]     ; 8-byte Folded Spill
	add	x29, sp, #16            ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x0, [sp]
	adrp	x0, l__unnamed_cfstring_.94@PAGE
	add	x0, x0, l__unnamed_cfstring_.94@PAGEOFF
	bl	_NSLog
	adrp	x0, l__unnamed_cfstring_.96@PAGE
	add	x0, x0, l__unnamed_cfstring_.96@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestMRC setTestObj:]
"+[TestMRC setTestObj:]":               ; @"\01+[TestMRC setTestObj:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8, #8]
	adrp	x0, "l___FUNCTION__.+[TestMRC setTestObj:]"@PAGE
	add	x0, x0, "l___FUNCTION__.+[TestMRC setTestObj:]"@PAGEOFF
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.102@PAGE
	add	x0, x0, l__unnamed_cfstring_.102@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC initWithTestObj]
"-[TestMRC initWithTestObj]":           ; @"\01-[TestMRC initWithTestObj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #272            ; =272
	stp	x28, x27, [sp, #240]    ; 8-byte Folded Spill
	stp	x29, x30, [sp, #256]    ; 8-byte Folded Spill
	add	x29, sp, #256           ; =256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.107@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.107@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.105@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.105@PAGEOFF
	adrp	x10, l__unnamed_cfstring_.104@PAGE
	add	x10, x10, l__unnamed_cfstring_.104@PAGEOFF
	adrp	x11, ___stack_chk_guard@GOTPAGE
	ldr	x11, [x11, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x11, [x11]
	adrp	x12, ___stack_chk_guard@GOTPAGE
	ldr	x12, [x12, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x12, [x12]
	stur	x12, [x29, #-24]
	stur	x0, [x29, #-64]
	stur	x1, [x29, #-72]
	stur	x10, [x29, #-56]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	orr	w2, wzr, #0x1
	str	x11, [sp, #88]          ; 8-byte Folded Spill
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.107@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.107@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.105@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.105@PAGEOFF
	adrp	x10, l__unnamed_cfstring_.109@PAGE
	add	x10, x10, l__unnamed_cfstring_.109@PAGEOFF
	stur	x0, [x29, #-40]
	stur	x10, [x29, #-48]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	orr	w2, wzr, #0x2
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.111@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.111@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.49@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.49@PAGEOFF
	stur	x0, [x29, #-32]
	ldr	x9, [x9]
	ldr	x1, [x8]
	sub	x8, x29, #40            ; =40
	sub	x10, x29, #56           ; =56
	mov	x0, x9
	mov	x2, x8
	mov	x3, x10
	orr	x4, xzr, #0x2
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.113@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.113@PAGEOFF
	stur	x0, [x29, #-80]
	ldur	x9, [x29, #-80]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	stur	x0, [x29, #-88]
	ldur	x9, [x29, #-80]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-88]
	ldr	x1, [x8]
	str	x0, [sp, #80]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8, #8]
	ldr	x9, [sp, #80]           ; 8-byte Folded Reload
	str	x9, [x8]
	adrp	x0, l__unnamed_cfstring_.115@PAGE
	add	x0, x0, l__unnamed_cfstring_.115@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.12@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.12@PAGEOFF
	ldur	x9, [x29, #-80]
	ldur	x10, [x29, #-88]
	ldur	x11, [x29, #-80]
	ldr	x1, [x8]
	mov	x0, x11
	str	x10, [sp, #72]          ; 8-byte Folded Spill
	str	x9, [sp, #64]           ; 8-byte Folded Spill
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.12@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.12@PAGEOFF
	ldur	x9, [x29, #-88]
	ldr	x1, [x8]
	str	x0, [sp, #56]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8, #24]
	ldr	x9, [sp, #56]           ; 8-byte Folded Reload
	str	x9, [x8, #16]
	ldr	x10, [sp, #72]          ; 8-byte Folded Reload
	str	x10, [x8, #8]
	ldr	x11, [sp, #64]          ; 8-byte Folded Reload
	str	x11, [x8]
	adrp	x0, l__unnamed_cfstring_.117@PAGE
	add	x0, x0, l__unnamed_cfstring_.117@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.59@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.59@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.24@PAGEOFF
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x8, sp
	mov	w13, #10
	mov	x10, x13
	str	x10, [x8]
	adrp	x2, l__unnamed_cfstring_.57@PAGE
	add	x2, x2, l__unnamed_cfstring_.57@PAGEOFF
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGEOFF
	stur	x0, [x29, #-96]
	ldur	x9, [x29, #-96]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	and	w13, w0, #0x1
                                        ; implicit-def: $x1
	mov	x1, x13
	mov	x8, sp
	str	x1, [x8]
	adrp	x0, l__unnamed_cfstring_.119@PAGE
	add	x0, x0, l__unnamed_cfstring_.119@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGEOFF
	ldur	x9, [x29, #-96]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.123@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.123@PAGEOFF
	eor	w13, w0, #0x1
	ldur	x9, [x29, #-96]
	ldr	x1, [x8]
	mov	x0, x9
	and	w2, w13, #0x1
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.125@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.125@PAGEOFF
	ldur	x9, [x29, #-96]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGEOFF
	stur	x0, [x29, #-104]
	ldur	x9, [x29, #-96]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	and	w13, w0, #0x1
                                        ; implicit-def: $x1
	mov	x1, x13
	mov	x8, sp
	str	x1, [x8]
	adrp	x0, l__unnamed_cfstring_.119@PAGE
	add	x0, x0, l__unnamed_cfstring_.119@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.121@PAGEOFF
	ldur	x9, [x29, #-104]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	and	w13, w0, #0x1
                                        ; implicit-def: $x1
	mov	x1, x13
	mov	x8, sp
	str	x1, [x8]
	adrp	x0, l__unnamed_cfstring_.127@PAGE
	add	x0, x0, l__unnamed_cfstring_.127@PAGEOFF
	bl	_NSLog
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-104]
	mov	x10, sp
	str	x9, [x10, #8]
	str	x8, [x10]
	adrp	x0, l__unnamed_cfstring_.129@PAGE
	add	x0, x0, l__unnamed_cfstring_.129@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-96]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.131@PAGE
	add	x0, x0, l__unnamed_cfstring_.131@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-104]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.133@PAGE
	add	x0, x0, l__unnamed_cfstring_.133@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF
	stur	x0, [x29, #-112]
	ldur	x10, [x29, #-112]
	stur	x10, [x29, #-120]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.33@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.33@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.67@PAGEOFF
	ldur	x9, [x29, #-64]
	ldr	x1, [x8]
	str	x0, [sp, #48]           ; 8-byte Folded Spill
	mov	x0, x9
	ldr	x2, [sp, #48]           ; 8-byte Folded Reload
	bl	_objc_msgSend
	ldur	x8, [x29, #-112]
	ldur	x9, [x29, #-120]
	mov	x10, sp
	str	x9, [x10, #8]
	str	x8, [x10]
	adrp	x0, l__unnamed_cfstring_.135@PAGE
	add	x0, x0, l__unnamed_cfstring_.135@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	adrp	x9, _OBJC_IVAR_$_TestMRC._obj@PAGE
	add	x9, x9, _OBJC_IVAR_$_TestMRC._obj@PAGEOFF
	ldur	x10, [x29, #-64]
	ldrsw	x9, [x9]
	add	x9, x10, x9
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.137@PAGE
	add	x0, x0, l__unnamed_cfstring_.137@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF
	ldur	x9, [x29, #-64]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.139@PAGE
	add	x0, x0, l__unnamed_cfstring_.139@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	adrp	x9, _OBJC_IVAR_$_TestMRC._obj@PAGE
	add	x9, x9, _OBJC_IVAR_$_TestMRC._obj@PAGEOFF
	ldur	x10, [x29, #-64]
	ldrsw	x9, [x9]
	add	x9, x10, x9
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.137@PAGE
	add	x0, x0, l__unnamed_cfstring_.137@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-112]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.141@PAGE
	add	x0, x0, l__unnamed_cfstring_.141@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldur	x9, [x29, #-120]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.143@PAGE
	add	x0, x0, l__unnamed_cfstring_.143@PAGEOFF
	bl	_NSLog
	mov	x8, #0
	mov	x0, x8
	mov	x1, #37888
	movk	x1, #30517, lsl #16
	bl	_dispatch_time
	adrp	x8, __dispatch_main_q@GOTPAGE
	ldr	x8, [x8, __dispatch_main_q@GOTPAGEOFF]
	adrp	x9, "___block_descriptor_40_e8_32o_e5_v8@?0l"@PAGE
	add	x9, x9, "___block_descriptor_40_e8_32o_e5_v8@?0l"@PAGEOFF
	adrp	x10, "___26-[TestMRC initWithTestObj]_block_invoke"@PAGE
	add	x10, x10, "___26-[TestMRC initWithTestObj]_block_invoke"@PAGEOFF
	adrp	x11, __NSConcreteStackBlock@GOTPAGE
	ldr	x11, [x11, __NSConcreteStackBlock@GOTPAGEOFF]
	str	x11, [sp, #96]
	mov	w13, #-1040187392
	str	w13, [sp, #104]
	str	wzr, [sp, #108]
	str	x10, [sp, #112]
	str	x9, [sp, #120]
	ldur	x9, [x29, #-64]
	str	x9, [sp, #128]
	add	x9, sp, #96             ; =96
	mov	x1, x8
	mov	x2, x9
	bl	_dispatch_after
	ldur	x0, [x29, #-112]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	cmp	x8, x9
	str	x0, [sp, #40]           ; 8-byte Folded Spill
	b.ne	LBB15_2
; %bb.1:
	ldr	x0, [sp, #40]           ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #256]    ; 8-byte Folded Reload
	ldp	x28, x27, [sp, #240]    ; 8-byte Folded Reload
	add	sp, sp, #272            ; =272
	ret
LBB15_2:
	bl	___stack_chk_fail
	brk	#0x1
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __26-[TestMRC initWithTestObj]_block_invoke
"___26-[TestMRC initWithTestObj]_block_invoke": ; @"__26-[TestMRC initWithTestObj]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.4@PAGEOFF
	stur	x0, [x29, #-8]
	mov	x9, x0
	str	x9, [sp, #16]
	ldr	x9, [x0, #32]
	ldr	x1, [x8]
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.145@PAGE
	add	x0, x0, l__unnamed_cfstring_.145@PAGEOFF
	bl	_NSLog
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF
	adrp	x9, _OBJC_IVAR_$_TestMRC._obj@PAGE
	add	x9, x9, _OBJC_IVAR_$_TestMRC._obj@PAGEOFF
	ldr	x0, [sp, #8]            ; 8-byte Folded Reload
	ldr	x1, [x0, #32]
	ldrsw	x9, [x9]
	add	x9, x1, x9
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.147@PAGE
	add	x0, x0, l__unnamed_cfstring_.147@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___copy_helper_block_e8_32o ; -- Begin function __copy_helper_block_e8_32o
	.globl	___copy_helper_block_e8_32o
	.weak_def_can_be_hidden	___copy_helper_block_e8_32o
	.p2align	2
___copy_helper_block_e8_32o:            ; @__copy_helper_block_e8_32o
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
	add	x1, x1, #32             ; =32
	ldr	x0, [x0, #32]
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #8]            ; 8-byte Folded Reload
	orr	w2, wzr, #0x3
	bl	__Block_object_assign
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___destroy_helper_block_e8_32o ; -- Begin function __destroy_helper_block_e8_32o
	.globl	___destroy_helper_block_e8_32o
	.weak_def_can_be_hidden	___destroy_helper_block_e8_32o
	.p2align	2
___destroy_helper_block_e8_32o:         ; @__destroy_helper_block_e8_32o
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
	ldr	x0, [x0, #32]
	orr	w1, wzr, #0x3
	bl	__Block_object_dispose
	ldp	x29, x30, [sp, #16]     ; 8-byte Folded Reload
	add	sp, sp, #32             ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function +[TestMRC testRetainCount]
"+[TestMRC testRetainCount]":           ; @"\01+[TestMRC testRetainCount]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.34@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.149@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.149@PAGEOFF
	str	x0, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.151@PAGE
	add	x0, x0, l__unnamed_cfstring_.151@PAGEOFF
	bl	_NSLog
	mov	x8, #0
	mov	x0, x8
	mov	x1, #51712
	movk	x1, #15258, lsl #16
	bl	_dispatch_time
	adrp	x8, __dispatch_main_q@GOTPAGE
	ldr	x8, [x8, __dispatch_main_q@GOTPAGEOFF]
	adrp	x9, ___block_literal_global.152@PAGE
	add	x9, x9, ___block_literal_global.152@PAGEOFF
	mov	x1, x8
	mov	x2, x9
	bl	_dispatch_after
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __26+[TestMRC testRetainCount]_block_invoke
"___26+[TestMRC testRetainCount]_block_invoke": ; @"__26+[TestMRC testRetainCount]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _objA@PAGE
	add	x8, x8, _objA@PAGEOFF
	stur	x0, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x8, [x8]
	mov	x0, sp
	str	x8, [x0]
	adrp	x0, l__unnamed_cfstring_.154@PAGE
	add	x0, x0, l__unnamed_cfstring_.154@PAGEOFF
	bl	_NSLog
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC obj]
"-[TestMRC obj]":                       ; @"\01-[TestMRC obj]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestMRC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._obj@PAGEOFF
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
	.p2align	2               ; -- Begin function -[TestMRC setObj:]
"-[TestMRC setObj:]":                   ; @"\01-[TestMRC setObj:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _OBJC_IVAR_$_TestMRC._obj@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._obj@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldrsw	x3, [x8]
	ldr	x8, [sp, #8]
	mov	x2, x8
	bl	_objc_setProperty_nonatomic
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC adExtraDic]
"-[TestMRC adExtraDic]":                ; @"\01-[TestMRC adExtraDic]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestMRC._adExtraDic@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._adExtraDic@PAGEOFF
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
	.p2align	2               ; -- Begin function -[TestMRC setAdExtraDic:]
"-[TestMRC setAdExtraDic:]":            ; @"\01-[TestMRC setAdExtraDic:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _OBJC_IVAR_$_TestMRC._adExtraDic@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._adExtraDic@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldrsw	x3, [x8]
	ldr	x8, [sp, #8]
	mov	x2, x8
	bl	_objc_setProperty_nonatomic
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC name]
"-[TestMRC name]":                      ; @"\01-[TestMRC name]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestMRC._name@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._name@PAGEOFF
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
	.p2align	2               ; -- Begin function -[TestMRC setName:]
"-[TestMRC setName:]":                  ; @"\01-[TestMRC setName:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48             ; =48
	stp	x29, x30, [sp, #32]     ; 8-byte Folded Spill
	add	x29, sp, #32            ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _OBJC_IVAR_$_TestMRC._name@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._name@PAGEOFF
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldrsw	x3, [x8]
	ldr	x8, [sp, #8]
	mov	x2, x8
	bl	_objc_setProperty_nonatomic
	ldp	x29, x30, [sp, #32]     ; 8-byte Folded Reload
	add	sp, sp, #48             ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[TestMRC aa]
"-[TestMRC aa]":                        ; @"\01-[TestMRC aa]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16             ; =16
	.cfi_def_cfa_offset 16
	adrp	x8, _OBJC_IVAR_$_TestMRC._aa@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._aa@PAGEOFF
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
	.p2align	2               ; -- Begin function -[TestMRC setAa:]
"-[TestMRC setAa:]":                    ; @"\01-[TestMRC setAa:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32             ; =32
	.cfi_def_cfa_offset 32
	adrp	x8, _OBJC_IVAR_$_TestMRC._aa@PAGE
	add	x8, x8, _OBJC_IVAR_$_TestMRC._aa@PAGEOFF
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
	.globl	_objA                   ; @objA
.zerofill __DATA,__common,_objA,8,3
	.globl	_wAdExtraDic1           ; @wAdExtraDic1
.zerofill __DATA,__common,_wAdExtraDic1,8,3
	.globl	_objB                   ; @objB
.zerofill __DATA,__common,_objB,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Reference showlog 4 objA = %@"

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
	.asciz	"Reference showlog 5 objA = %@"

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

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.3:                ; @OBJC_METH_VAR_NAME_.3
	.asciz	"obj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.4
l_OBJC_SELECTOR_REFERENCES_.4:
	.quad	l_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"retain gameAdTag MRC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.6
l__unnamed_cfstring_.6:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.5
	.quad	41                      ; 0x29

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.7:                ; @OBJC_METH_VAR_NAME_.7
	.asciz	"retainCount"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.8
l_OBJC_SELECTOR_REFERENCES_.8:
	.quad	l_OBJC_METH_VAR_NAME_.7

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.9:                ; @OBJC_METH_VAR_NAME_.9
	.asciz	"release"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.10
l_OBJC_SELECTOR_REFERENCES_.10:
	.quad	l_OBJC_METH_VAR_NAME_.9

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_"
l_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSObject

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.11:               ; @OBJC_METH_VAR_NAME_.11
	.asciz	"class"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.12
l_OBJC_SELECTOR_REFERENCES_.12:
	.quad	l_OBJC_METH_VAR_NAME_.11

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.13:               ; @OBJC_METH_VAR_NAME_.13
	.asciz	"isKindOfClass:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.14
l_OBJC_SELECTOR_REFERENCES_.14:
	.quad	l_OBJC_METH_VAR_NAME_.13

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.15:               ; @OBJC_METH_VAR_NAME_.15
	.asciz	"debugDescription"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.16
l_OBJC_SELECTOR_REFERENCES_.16:
	.quad	l_OBJC_METH_VAR_NAME_.15

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"ssadda"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.18
l__unnamed_cfstring_.18:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.17
	.quad	6                       ; 0x6

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.19:               ; @OBJC_METH_VAR_NAME_.19
	.asciz	"alloc"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.20
l_OBJC_SELECTOR_REFERENCES_.20:
	.quad	l_OBJC_METH_VAR_NAME_.19

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.21:               ; @OBJC_METH_VAR_NAME_.21
	.asciz	"init"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.22
l_OBJC_SELECTOR_REFERENCES_.22:
	.quad	l_OBJC_METH_VAR_NAME_.21

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.23"
l_OBJC_CLASSLIST_REFERENCES_$_.23:
	.quad	_OBJC_CLASS_$_NSMutableDictionary

	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.24"
l_OBJC_CLASSLIST_REFERENCES_$_.24:
	.quad	_OBJC_CLASS_$_NSString

	.section	__TEXT,__cstring,cstring_literals
l_.str.25:                              ; @.str.25
	.asciz	"abcd"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.26:               ; @OBJC_METH_VAR_NAME_.26
	.asciz	"stringWithUTF8String:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.27
l_OBJC_SELECTOR_REFERENCES_.27:
	.quad	l_OBJC_METH_VAR_NAME_.26

	.section	__TEXT,__cstring,cstring_literals
l_.str.28:                              ; @.str.28
	.asciz	"c2s_switch"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.29
l__unnamed_cfstring_.29:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.28
	.quad	10                      ; 0xa

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.30:               ; @OBJC_METH_VAR_NAME_.30
	.asciz	"setValue:forKey:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.31
l_OBJC_SELECTOR_REFERENCES_.31:
	.quad	l_OBJC_METH_VAR_NAME_.30

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.32:               ; @OBJC_METH_VAR_NAME_.32
	.asciz	"autorelease"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.33
l_OBJC_SELECTOR_REFERENCES_.33:
	.quad	l_OBJC_METH_VAR_NAME_.32

	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_TestMRC   ; @"OBJC_CLASS_$_TestMRC"
	.p2align	3
_OBJC_CLASS_$_TestMRC:
	.quad	_OBJC_METACLASS_$_TestMRC
	.quad	_OBJC_CLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_CLASS_RO_$_TestMRC

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.34"
l_OBJC_CLASSLIST_REFERENCES_$_.34:
	.quad	_OBJC_CLASS_$_TestMRC

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.35:               ; @OBJC_METH_VAR_NAME_.35
	.asciz	"testReturnDic"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.36
l_OBJC_SELECTOR_REFERENCES_.36:
	.quad	l_OBJC_METH_VAR_NAME_.35

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.37:               ; @OBJC_METH_VAR_NAME_.37
	.asciz	"setAdExtraDic:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.38
l_OBJC_SELECTOR_REFERENCES_.38:
	.quad	l_OBJC_METH_VAR_NAME_.37

	.section	__TEXT,__cstring,cstring_literals
l_.str.39:                              ; @.str.39
	.asciz	"retain getReport MRC 1 self.adExtraDic count =%ld,rc.adExtraDic count =%ld"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.40
l__unnamed_cfstring_.40:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.39
	.quad	74                      ; 0x4a

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.41:               ; @OBJC_METH_VAR_NAME_.41
	.asciz	"adExtraDic"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.42
l_OBJC_SELECTOR_REFERENCES_.42:
	.quad	l_OBJC_METH_VAR_NAME_.41

	.section	__TEXT,__cstring,cstring_literals
l_.str.43:                              ; @.str.43
	.asciz	"test_serial_queue_111"

l_.str.44:                              ; @.str.44
	.asciz	"retain delay getReport MRC 1 mrc.adExtraDic count =%ld"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.45
l__unnamed_cfstring_.45:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.44
	.quad	54                      ; 0x36

	.section	__TEXT,__cstring,cstring_literals
l_.str.46:                              ; @.str.46
	.asciz	"retain delay getReport MRC 1 self.adExtraDic count =%ld,rc.adExtraDic count =%ld"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.47
l__unnamed_cfstring_.47:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.46
	.quad	80                      ; 0x50

	.section	__TEXT,__cstring,cstring_literals
l_.str.48:                              ; @.str.48
	.asciz	"v8@?0"

	.private_extern	"___block_descriptor_48_e8_32o40o_e5_v8@?0l" ; @"__block_descriptor_48_e8_32o40o_e5_v8@?0l"
	.section	__DATA,__const
	.globl	"___block_descriptor_48_e8_32o40o_e5_v8@?0l"
	.weak_def_can_be_hidden	"___block_descriptor_48_e8_32o40o_e5_v8@?0l"
	.p2align	3
"___block_descriptor_48_e8_32o40o_e5_v8@?0l":
	.quad	0                       ; 0x0
	.quad	48                      ; 0x30
	.quad	___copy_helper_block_e8_32o40o
	.quad	___destroy_helper_block_e8_32o40o
	.quad	l_.str.48
	.quad	512                     ; 0x200

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.49"
l_OBJC_CLASSLIST_REFERENCES_$_.49:
	.quad	_OBJC_CLASS_$_NSDictionary

	.section	__TEXT,__cstring,cstring_literals
l_.str.50:                              ; @.str.50
	.asciz	"ddsdad"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.51
l__unnamed_cfstring_.51:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.50
	.quad	6                       ; 0x6

	.section	__TEXT,__cstring,cstring_literals
l_.str.52:                              ; @.str.52
	.asciz	"key1"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.53
l__unnamed_cfstring_.53:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.52
	.quad	4                       ; 0x4

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.54:               ; @OBJC_METH_VAR_NAME_.54
	.asciz	"dictionaryWithObject:forKey:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.55
l_OBJC_SELECTOR_REFERENCES_.55:
	.quad	l_OBJC_METH_VAR_NAME_.54

	.section	__TEXT,__cstring,cstring_literals
l_.str.56:                              ; @.str.56
	.asciz	"dsdsddwdasdsdadda %d"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.57
l__unnamed_cfstring_.57:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.56
	.quad	20                      ; 0x14

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.58:               ; @OBJC_METH_VAR_NAME_.58
	.asciz	"stringWithFormat:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.59
l_OBJC_SELECTOR_REFERENCES_.59:
	.quad	l_OBJC_METH_VAR_NAME_.58

	.section	__TEXT,__cstring,cstring_literals
l_.str.60:                              ; @.str.60
	.asciz	"retain testReturnStrA MRC 1 adic count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.61
l__unnamed_cfstring_.61:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.60
	.quad	44                      ; 0x2c

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.62:               ; @OBJC_METH_VAR_NAME_.62
	.asciz	"copy"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.63
l_OBJC_SELECTOR_REFERENCES_.63:
	.quad	l_OBJC_METH_VAR_NAME_.62

	.section	__TEXT,__cstring,cstring_literals
l_.str.64:                              ; @.str.64
	.asciz	"retain testReturnStrA MRC 2 adic count =%ld\n,adic=%p,bdic=%p,adic=%@,bdic=%@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.65
l__unnamed_cfstring_.65:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.64
	.quad	76                      ; 0x4c

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.66:               ; @OBJC_METH_VAR_NAME_.66
	.asciz	"setObj:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.67
l_OBJC_SELECTOR_REFERENCES_.67:
	.quad	l_OBJC_METH_VAR_NAME_.66

	.section	__TEXT,__cstring,cstring_literals
l_.str.68:                              ; @.str.68
	.asciz	"retain testReturnObjA MRC 0 obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.69
l__unnamed_cfstring_.69:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.68
	.quad	43                      ; 0x2b

	.section	__TEXT,__cstring,cstring_literals
l_.str.70:                              ; @.str.70
	.asciz	"retain testReturnObj MRC 0 ff obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.71
l__unnamed_cfstring_.71:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.70
	.quad	45                      ; 0x2d

	.section	__TEXT,__cstring,cstring_literals
l_.str.72:                              ; @.str.72
	.asciz	"retain testReturnObj MRC 1 ff obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.73
l__unnamed_cfstring_.73:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.72
	.quad	45                      ; 0x2d

	.section	__TEXT,__cstring,cstring_literals
l_.str.74:                              ; @.str.74
	.asciz	"retain testReturnObj MRC 1 ff mrc.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.75
l__unnamed_cfstring_.75:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.74
	.quad	49                      ; 0x31

	.section	__TEXT,__cstring,cstring_literals
l_.str.76:                              ; @.str.76
	.asciz	"dsdsddwdasdsdadda"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.77
l__unnamed_cfstring_.77:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.76
	.quad	17                      ; 0x11

	.section	__TEXT,__cstring,cstring_literals
l_.str.78:                              ; @.str.78
	.asciz	"retain testReturnObj MRC 0 ff count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.79
l__unnamed_cfstring_.79:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.78
	.quad	41                      ; 0x29

	.section	__TEXT,__cstring,cstring_literals
l_.str.80:                              ; @.str.80
	.asciz	"retain testReturnObj MRC 0 ff obj11 count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.81
l__unnamed_cfstring_.81:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.80
	.quad	47                      ; 0x2f

	.section	__TEXT,__cstring,cstring_literals
l_.str.82:                              ; @.str.82
	.asciz	"retain testReturnObj MRC ff  =%p\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.83
l__unnamed_cfstring_.83:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.82
	.quad	33                      ; 0x21

	.section	__TEXT,__cstring,cstring_literals
l_.str.84:                              ; @.str.84
	.asciz	"retain testReturnObj MRC  1 ff count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.85
l__unnamed_cfstring_.85:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.84
	.quad	42                      ; 0x2a

	.section	__TEXT,__cstring,cstring_literals
l_.str.86:                              ; @.str.86
	.asciz	"retain testReturnObj MRC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.87
l__unnamed_cfstring_.87:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.86
	.quad	45                      ; 0x2d

	.section	__TEXT,__cstring,cstring_literals
l_.str.88:                              ; @.str.88
	.asciz	"retain testReturnObj ff1 self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.89
l__unnamed_cfstring_.89:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.88
	.quad	45                      ; 0x2d

	.section	__TEXT,__cstring,cstring_literals
l_.str.90:                              ; @.str.90
	.asciz	"test_cj_serial"

l_.str.91:                              ; @.str.91
	.asciz	"retain testReturnObj 22 MRC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.92
l__unnamed_cfstring_.92:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.91
	.quad	48                      ; 0x30

	.private_extern	"___block_descriptor_32_e5_v8@?0l" ; @"__block_descriptor_32_e5_v8@?0l"
	.section	__DATA,__const
	.globl	"___block_descriptor_32_e5_v8@?0l"
	.weak_def_can_be_hidden	"___block_descriptor_32_e5_v8@?0l"
	.p2align	3
"___block_descriptor_32_e5_v8@?0l":
	.quad	0                       ; 0x0
	.quad	32                      ; 0x20
	.quad	l_.str.48
	.quad	0

	.p2align	3               ; @__block_literal_global
___block_literal_global:
	.quad	__NSConcreteGlobalBlock
	.long	1342177280              ; 0x50000000
	.long	0                       ; 0x0
	.quad	"___24+[TestMRC testReturnObj]_block_invoke"
	.quad	"___block_descriptor_32_e5_v8@?0l"

	.section	__TEXT,__cstring,cstring_literals
l_.str.93:                              ; @.str.93
	.asciz	"retain delay......1"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.94
l__unnamed_cfstring_.94:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.93
	.quad	19                      ; 0x13

	.section	__TEXT,__cstring,cstring_literals
l_.str.95:                              ; @.str.95
	.asciz	"retain delay......2"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.96
l__unnamed_cfstring_.96:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.95
	.quad	19                      ; 0x13

	.section	__TEXT,__cstring,cstring_literals
l_.str.97:                              ; @.str.97
	.asciz	"retain testReturnObj 33 MRC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.98
l__unnamed_cfstring_.98:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.97
	.quad	48                      ; 0x30

	.section	__TEXT,__cstring,cstring_literals
l_.str.99:                              ; @.str.99
	.asciz	"retain testReturnObj......end"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.100
l__unnamed_cfstring_.100:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.99
	.quad	29                      ; 0x1d

	.section	__TEXT,__cstring,cstring_literals
l_.str.101:                             ; @.str.101
	.asciz	"%s retaincount=%lu"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.102
l__unnamed_cfstring_.102:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.101
	.quad	18                      ; 0x12

	.section	__TEXT,__cstring,cstring_literals
"l___FUNCTION__.+[TestMRC setTestObj:]": ; @"__FUNCTION__.+[TestMRC setTestObj:]"
	.asciz	"+[TestMRC setTestObj:]"

l_.str.103:                             ; @.str.103
	.asciz	"pull_time"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.104
l__unnamed_cfstring_.104:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.103
	.quad	9                       ; 0x9

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.105"
l_OBJC_CLASSLIST_REFERENCES_$_.105:
	.quad	_OBJC_CLASS_$_NSNumber

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.106:              ; @OBJC_METH_VAR_NAME_.106
	.asciz	"numberWithInt:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.107
l_OBJC_SELECTOR_REFERENCES_.107:
	.quad	l_OBJC_METH_VAR_NAME_.106

	.section	__TEXT,__cstring,cstring_literals
l_.str.108:                             ; @.str.108
	.asciz	"pull_time_1"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.109
l__unnamed_cfstring_.109:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.108
	.quad	11                      ; 0xb

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.110:              ; @OBJC_METH_VAR_NAME_.110
	.asciz	"dictionaryWithObjects:forKeys:count:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.111
l_OBJC_SELECTOR_REFERENCES_.111:
	.quad	l_OBJC_METH_VAR_NAME_.110

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.112:              ; @OBJC_METH_VAR_NAME_.112
	.asciz	"mutableCopy"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.113
l_OBJC_SELECTOR_REFERENCES_.113:
	.quad	l_OBJC_METH_VAR_NAME_.112

	.section	__TEXT,__cstring,cstring_literals
l_.str.114:                             ; @.str.114
	.asciz	"retain MRC adDic11 count =%ld,adDic2 count =%ld"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.115
l__unnamed_cfstring_.115:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.114
	.quad	47                      ; 0x2f

	.section	__TEXT,__cstring,cstring_literals
l_.str.116:                             ; @.str.116
	.asciz	"retain MRC adDic1 =%p,adDic2=%p,adDic1.class=%@,adDic2.class=%@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.117
l__unnamed_cfstring_.117:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.116
	.quad	63                      ; 0x3f

	.section	__TEXT,__cstring,cstring_literals
l_.str.118:                             ; @.str.118
	.asciz	"retain MRC ff hilde =%d"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.119
l__unnamed_cfstring_.119:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.118
	.quad	23                      ; 0x17

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.120:              ; @OBJC_METH_VAR_NAME_.120
	.asciz	"accessibilityElementsHidden"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.121
l_OBJC_SELECTOR_REFERENCES_.121:
	.quad	l_OBJC_METH_VAR_NAME_.120

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.122:              ; @OBJC_METH_VAR_NAME_.122
	.asciz	"setAccessibilityElementsHidden:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.123
l_OBJC_SELECTOR_REFERENCES_.123:
	.quad	l_OBJC_METH_VAR_NAME_.122

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.124:              ; @OBJC_METH_VAR_NAME_.124
	.asciz	"retain"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.125
l_OBJC_SELECTOR_REFERENCES_.125:
	.quad	l_OBJC_METH_VAR_NAME_.124

	.section	__TEXT,__cstring,cstring_literals
l_.str.126:                             ; @.str.126
	.asciz	"retain MRC dd hilde =%d"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.127
l__unnamed_cfstring_.127:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.126
	.quad	23                      ; 0x17

	.section	__TEXT,__cstring,cstring_literals
l_.str.128:                             ; @.str.128
	.asciz	"retain MRC ff =%p,dd=%p"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.129
l__unnamed_cfstring_.129:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.128
	.quad	23                      ; 0x17

	.section	__TEXT,__cstring,cstring_literals
l_.str.130:                             ; @.str.130
	.asciz	"retain MRC ff count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.131
l__unnamed_cfstring_.131:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.130
	.quad	25                      ; 0x19

	.section	__TEXT,__cstring,cstring_literals
l_.str.132:                             ; @.str.132
	.asciz	"retain MRC dd count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.133
l__unnamed_cfstring_.133:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.132
	.quad	25                      ; 0x19

	.section	__TEXT,__cstring,cstring_literals
l_.str.134:                             ; @.str.134
	.asciz	"retain MRC obj =%@,obj1=%@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.135
l__unnamed_cfstring_.135:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.134
	.quad	26                      ; 0x1a

	.section	__TEXT,__cstring,cstring_literals
l_.str.136:                             ; @.str.136
	.asciz	"retain MRC _obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.137
l__unnamed_cfstring_.137:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.136
	.quad	27                      ; 0x1b

	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_TestMRC._obj ; @"OBJC_IVAR_$_TestMRC._obj"
	.p2align	2
_OBJC_IVAR_$_TestMRC._obj:
	.long	16                      ; 0x10

	.section	__TEXT,__cstring,cstring_literals
l_.str.138:                             ; @.str.138
	.asciz	"retain MRC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.139
l__unnamed_cfstring_.139:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.138
	.quad	31                      ; 0x1f

	.section	__TEXT,__cstring,cstring_literals
l_.str.140:                             ; @.str.140
	.asciz	"retain MRC obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.141
l__unnamed_cfstring_.141:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.140
	.quad	26                      ; 0x1a

	.section	__TEXT,__cstring,cstring_literals
l_.str.142:                             ; @.str.142
	.asciz	"retain MRC obj1 count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.143
l__unnamed_cfstring_.143:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.142
	.quad	27                      ; 0x1b

	.section	__TEXT,__cstring,cstring_literals
l_.str.144:                             ; @.str.144
	.asciz	"retain delay MRC self.obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.145
l__unnamed_cfstring_.145:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.144
	.quad	37                      ; 0x25

	.section	__TEXT,__cstring,cstring_literals
l_.str.146:                             ; @.str.146
	.asciz	"retain delay MRC _obj count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.147
l__unnamed_cfstring_.147:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.146
	.quad	33                      ; 0x21

	.private_extern	"___block_descriptor_40_e8_32o_e5_v8@?0l" ; @"__block_descriptor_40_e8_32o_e5_v8@?0l"
	.section	__DATA,__const
	.globl	"___block_descriptor_40_e8_32o_e5_v8@?0l"
	.weak_def_can_be_hidden	"___block_descriptor_40_e8_32o_e5_v8@?0l"
	.p2align	3
"___block_descriptor_40_e8_32o_e5_v8@?0l":
	.quad	0                       ; 0x0
	.quad	40                      ; 0x28
	.quad	___copy_helper_block_e8_32o
	.quad	___destroy_helper_block_e8_32o
	.quad	l_.str.48
	.quad	256                     ; 0x100

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.148:              ; @OBJC_METH_VAR_NAME_.148
	.asciz	"initWithTestObj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.149
l_OBJC_SELECTOR_REFERENCES_.149:
	.quad	l_OBJC_METH_VAR_NAME_.148

	.section	__TEXT,__cstring,cstring_literals
l_.str.150:                             ; @.str.150
	.asciz	"retain count =%ld\n"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.151
l__unnamed_cfstring_.151:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.150
	.quad	18                      ; 0x12

	.section	__DATA,__const
	.p2align	3               ; @__block_literal_global.152
___block_literal_global.152:
	.quad	__NSConcreteGlobalBlock
	.long	1342177280              ; 0x50000000
	.long	0                       ; 0x0
	.quad	"___26+[TestMRC testRetainCount]_block_invoke"
	.quad	"___block_descriptor_32_e5_v8@?0l"

	.section	__TEXT,__cstring,cstring_literals
l_.str.153:                             ; @.str.153
	.asciz	"Reference showlog  dispatch_after 5 objA = %@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.154
l__unnamed_cfstring_.154:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.153
	.quad	45                      ; 0x2d

	.private_extern	_OBJC_IVAR_$_TestMRC._adExtraDic ; @"OBJC_IVAR_$_TestMRC._adExtraDic"
	.section	__DATA,__objc_ivar
	.globl	_OBJC_IVAR_$_TestMRC._adExtraDic
	.p2align	2
_OBJC_IVAR_$_TestMRC._adExtraDic:
	.long	32                      ; 0x20

	.globl	_OBJC_IVAR_$_TestMRC._name ; @"OBJC_IVAR_$_TestMRC._name"
	.p2align	2
_OBJC_IVAR_$_TestMRC._name:
	.long	8                       ; 0x8

	.private_extern	_OBJC_IVAR_$_TestMRC._aa ; @"OBJC_IVAR_$_TestMRC._aa"
	.globl	_OBJC_IVAR_$_TestMRC._aa
	.p2align	2
_OBJC_IVAR_$_TestMRC._aa:
	.long	24                      ; 0x18

	.section	__TEXT,__objc_classname,cstring_literals
l_OBJC_CLASS_NAME_:                     ; @OBJC_CLASS_NAME_
	.asciz	"TestMRC"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.155:              ; @OBJC_METH_VAR_NAME_.155
	.asciz	"showlog"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_:                  ; @OBJC_METH_VAR_TYPE_
	.asciz	"v16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.156:              ; @OBJC_METH_VAR_NAME_.156
	.asciz	"testReturnObjB"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.157:              ; @OBJC_METH_VAR_TYPE_.157
	.asciz	"@16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.158:              ; @OBJC_METH_VAR_NAME_.158
	.asciz	"testReturnStrA"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.159:              ; @OBJC_METH_VAR_TYPE_.159
	.asciz	"^@16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.160:              ; @OBJC_METH_VAR_NAME_.160
	.asciz	"testReturnObjA"

l_OBJC_METH_VAR_NAME_.161:              ; @OBJC_METH_VAR_NAME_.161
	.asciz	"testReturnObj"

l_OBJC_METH_VAR_NAME_.162:              ; @OBJC_METH_VAR_NAME_.162
	.asciz	"setTestObj:"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.163:              ; @OBJC_METH_VAR_TYPE_.163
	.asciz	"v24@0:8@16"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.164:              ; @OBJC_METH_VAR_NAME_.164
	.asciz	"testRetainCount"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_CLASS_METHODS_TestMRC"
l_OBJC_$_CLASS_METHODS_TestMRC:
	.long	24                      ; 0x18
	.long	7                       ; 0x7
	.quad	l_OBJC_METH_VAR_NAME_.155
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"+[TestMRC showlog]"
	.quad	l_OBJC_METH_VAR_NAME_.156
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"+[TestMRC testReturnObjB]"
	.quad	l_OBJC_METH_VAR_NAME_.158
	.quad	l_OBJC_METH_VAR_TYPE_.159
	.quad	"+[TestMRC testReturnStrA]"
	.quad	l_OBJC_METH_VAR_NAME_.160
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"+[TestMRC testReturnObjA]"
	.quad	l_OBJC_METH_VAR_NAME_.161
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"+[TestMRC testReturnObj]"
	.quad	l_OBJC_METH_VAR_NAME_.162
	.quad	l_OBJC_METH_VAR_TYPE_.163
	.quad	"+[TestMRC setTestObj:]"
	.quad	l_OBJC_METH_VAR_NAME_.164
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"+[TestMRC testRetainCount]"

	.p2align	3               ; @"\01l_OBJC_METACLASS_RO_$_TestMRC"
l_OBJC_METACLASS_RO_$_TestMRC:
	.long	1                       ; 0x1
	.long	40                      ; 0x28
	.long	40                      ; 0x28
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_CLASS_METHODS_TestMRC
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_TestMRC ; @"OBJC_METACLASS_$_TestMRC"
	.p2align	3
_OBJC_METACLASS_$_TestMRC:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_METACLASS_RO_$_TestMRC

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.165:              ; @OBJC_METH_VAR_NAME_.165
	.asciz	"gameAdTag"

l_OBJC_METH_VAR_NAME_.166:              ; @OBJC_METH_VAR_NAME_.166
	.asciz	"initTest"

l_OBJC_METH_VAR_NAME_.167:              ; @OBJC_METH_VAR_NAME_.167
	.asciz	"getReport"

l_OBJC_METH_VAR_NAME_.168:              ; @OBJC_METH_VAR_NAME_.168
	.asciz	"name"

l_OBJC_METH_VAR_NAME_.169:              ; @OBJC_METH_VAR_NAME_.169
	.asciz	"setName:"

l_OBJC_METH_VAR_NAME_.170:              ; @OBJC_METH_VAR_NAME_.170
	.asciz	"aa"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.171:              ; @OBJC_METH_VAR_TYPE_.171
	.asciz	"i16@0:8"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.172:              ; @OBJC_METH_VAR_NAME_.172
	.asciz	"setAa:"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.173:              ; @OBJC_METH_VAR_TYPE_.173
	.asciz	"v20@0:8i16"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_INSTANCE_METHODS_TestMRC"
l_OBJC_$_INSTANCE_METHODS_TestMRC:
	.long	24                      ; 0x18
	.long	14                      ; 0xe
	.quad	l_OBJC_METH_VAR_NAME_.165
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC gameAdTag]"
	.quad	l_OBJC_METH_VAR_NAME_.166
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC initTest]"
	.quad	l_OBJC_METH_VAR_NAME_.62
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC copy]"
	.quad	l_OBJC_METH_VAR_NAME_.35
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC testReturnDic]"
	.quad	l_OBJC_METH_VAR_NAME_.167
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC getReport]"
	.quad	l_OBJC_METH_VAR_NAME_.148
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC initWithTestObj]"
	.quad	l_OBJC_METH_VAR_NAME_.3
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC obj]"
	.quad	l_OBJC_METH_VAR_NAME_.66
	.quad	l_OBJC_METH_VAR_TYPE_.163
	.quad	"-[TestMRC setObj:]"
	.quad	l_OBJC_METH_VAR_NAME_.41
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC adExtraDic]"
	.quad	l_OBJC_METH_VAR_NAME_.37
	.quad	l_OBJC_METH_VAR_TYPE_.163
	.quad	"-[TestMRC setAdExtraDic:]"
	.quad	l_OBJC_METH_VAR_NAME_.168
	.quad	l_OBJC_METH_VAR_TYPE_.157
	.quad	"-[TestMRC name]"
	.quad	l_OBJC_METH_VAR_NAME_.169
	.quad	l_OBJC_METH_VAR_TYPE_.163
	.quad	"-[TestMRC setName:]"
	.quad	l_OBJC_METH_VAR_NAME_.170
	.quad	l_OBJC_METH_VAR_TYPE_.171
	.quad	"-[TestMRC aa]"
	.quad	l_OBJC_METH_VAR_NAME_.172
	.quad	l_OBJC_METH_VAR_TYPE_.173
	.quad	"-[TestMRC setAa:]"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.174:              ; @OBJC_METH_VAR_NAME_.174
	.asciz	"_name"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.175:              ; @OBJC_METH_VAR_TYPE_.175
	.asciz	"@\"NSString\""

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.176:              ; @OBJC_METH_VAR_NAME_.176
	.asciz	"_obj"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.177:              ; @OBJC_METH_VAR_TYPE_.177
	.asciz	"@\"NSObject\""

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.178:              ; @OBJC_METH_VAR_NAME_.178
	.asciz	"_aa"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.179:              ; @OBJC_METH_VAR_TYPE_.179
	.asciz	"i"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.180:              ; @OBJC_METH_VAR_NAME_.180
	.asciz	"_adExtraDic"

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_.181:              ; @OBJC_METH_VAR_TYPE_.181
	.asciz	"@\"NSDictionary\""

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_INSTANCE_VARIABLES_TestMRC"
l_OBJC_$_INSTANCE_VARIABLES_TestMRC:
	.long	32                      ; 0x20
	.long	4                       ; 0x4
	.quad	_OBJC_IVAR_$_TestMRC._name
	.quad	l_OBJC_METH_VAR_NAME_.174
	.quad	l_OBJC_METH_VAR_TYPE_.175
	.long	3                       ; 0x3
	.long	8                       ; 0x8
	.quad	_OBJC_IVAR_$_TestMRC._obj
	.quad	l_OBJC_METH_VAR_NAME_.176
	.quad	l_OBJC_METH_VAR_TYPE_.177
	.long	3                       ; 0x3
	.long	8                       ; 0x8
	.quad	_OBJC_IVAR_$_TestMRC._aa
	.quad	l_OBJC_METH_VAR_NAME_.178
	.quad	l_OBJC_METH_VAR_TYPE_.179
	.long	2                       ; 0x2
	.long	4                       ; 0x4
	.quad	_OBJC_IVAR_$_TestMRC._adExtraDic
	.quad	l_OBJC_METH_VAR_NAME_.180
	.quad	l_OBJC_METH_VAR_TYPE_.181
	.long	3                       ; 0x3
	.long	8                       ; 0x8

	.section	__TEXT,__cstring,cstring_literals
l_OBJC_PROP_NAME_ATTR_:                 ; @OBJC_PROP_NAME_ATTR_
	.asciz	"adExtraDic"

l_OBJC_PROP_NAME_ATTR_.182:             ; @OBJC_PROP_NAME_ATTR_.182
	.asciz	"T@\"NSDictionary\",&,N,V_adExtraDic"

l_OBJC_PROP_NAME_ATTR_.183:             ; @OBJC_PROP_NAME_ATTR_.183
	.asciz	"name"

l_OBJC_PROP_NAME_ATTR_.184:             ; @OBJC_PROP_NAME_ATTR_.184
	.asciz	"T@\"NSString\",&,N,V_name"

l_OBJC_PROP_NAME_ATTR_.185:             ; @OBJC_PROP_NAME_ATTR_.185
	.asciz	"obj"

l_OBJC_PROP_NAME_ATTR_.186:             ; @OBJC_PROP_NAME_ATTR_.186
	.asciz	"T@\"NSObject\",&,N,V_obj"

l_OBJC_PROP_NAME_ATTR_.187:             ; @OBJC_PROP_NAME_ATTR_.187
	.asciz	"aa"

l_OBJC_PROP_NAME_ATTR_.188:             ; @OBJC_PROP_NAME_ATTR_.188
	.asciz	"Ti,N,V_aa"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_PROP_LIST_TestMRC"
l_OBJC_$_PROP_LIST_TestMRC:
	.long	16                      ; 0x10
	.long	4                       ; 0x4
	.quad	l_OBJC_PROP_NAME_ATTR_
	.quad	l_OBJC_PROP_NAME_ATTR_.182
	.quad	l_OBJC_PROP_NAME_ATTR_.183
	.quad	l_OBJC_PROP_NAME_ATTR_.184
	.quad	l_OBJC_PROP_NAME_ATTR_.185
	.quad	l_OBJC_PROP_NAME_ATTR_.186
	.quad	l_OBJC_PROP_NAME_ATTR_.187
	.quad	l_OBJC_PROP_NAME_ATTR_.188

	.p2align	3               ; @"\01l_OBJC_CLASS_RO_$_TestMRC"
l_OBJC_CLASS_RO_$_TestMRC:
	.long	0                       ; 0x0
	.long	8                       ; 0x8
	.long	40                      ; 0x28
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_TestMRC
	.quad	0
	.quad	l_OBJC_$_INSTANCE_VARIABLES_TestMRC
	.quad	0
	.quad	l_OBJC_$_PROP_LIST_TestMRC

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ; @"OBJC_LABEL_CLASS_$"
l_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_TestMRC

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
