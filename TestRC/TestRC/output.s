	.section	__TEXT,__text,regular,pure_instructions
	.ios_version_min 5, 0
	.p2align	2               ; -- Begin function -[ViewController testReturnDic]
"-[ViewController testReturnDic]":      ; @"\01-[ViewController testReturnDic]"
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
	adrp	x0, l_OBJC_CLASSLIST_REFERENCES_$_@PAGE
	ldr	x0, [x0, l_OBJC_CLASSLIST_REFERENCES_$_@PAGEOFF]
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF]
	bl	_objc_msgSend
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_.2@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_.2@PAGEOFF]
	bl	_objc_msgSend
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	adrp	x1, l_OBJC_CLASSLIST_REFERENCES_$_.3@PAGE
	ldr	x1, [x1, l_OBJC_CLASSLIST_REFERENCES_$_.3@PAGEOFF]
	adrp	x30, l_OBJC_SELECTOR_REFERENCES_.5@PAGE
	ldr	x30, [x30, l_OBJC_SELECTOR_REFERENCES_.5@PAGEOFF]
	adrp	x2, l_.str@PAGE
	add	x2, x2, l_.str@PAGEOFF
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x1
	mov	x1, x30
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	adrp	x1, l_OBJC_SELECTOR_REFERENCES_.8@PAGE
	ldr	x1, [x1, l_OBJC_SELECTOR_REFERENCES_.8@PAGEOFF]
	adrp	x3, l__unnamed_cfstring_@PAGE
	add	x3, x3, l__unnamed_cfstring_@PAGEOFF
	ldr	x2, [sp, #16]           ; 8-byte Folded Reload
	str	x0, [sp, #8]            ; 8-byte Folded Spill
	mov	x0, x2
	ldr	x2, [sp, #8]            ; 8-byte Folded Reload
	bl	_objc_msgSend
	ldr	x0, [sp, #8]            ; 8-byte Folded Reload
	bl	_objc_release
	ldr	x0, [sp, #24]
	bl	_objc_retain
	add	x1, sp, #24             ; =24
	mov	x2, #0
	str	x0, [sp]                ; 8-byte Folded Spill
	mov	x0, x1
	mov	x1, x2
	bl	_objc_storeStrong
	ldr	x0, [sp]                ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	b	_objc_autoreleaseReturnValue
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[ViewController viewDidLoad]
"-[ViewController viewDidLoad]":        ; @"\01-[ViewController viewDidLoad]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144            ; =144
	stp	x29, x30, [sp, #128]    ; 8-byte Folded Spill
	add	x29, sp, #128           ; =128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.10@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_SUP_REFS_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_SUP_REFS_$_@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-32]
	ldr	x9, [x9]
	stur	x9, [x29, #-24]
	ldr	x1, [x8]
	sub	x0, x29, #32            ; =32
	bl	_objc_msgSendSuper2
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.11@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.11@PAGEOFF
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.2@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.2@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.12@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.12@PAGEOFF
	stur	x0, [x29, #-40]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.2@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.2@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.14@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.14@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.12@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.12@PAGEOFF
	stur	x0, [x29, #-48]
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	bl	_objc_release
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_REFERENCES_$_.11@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_REFERENCES_$_.11@PAGEOFF
	ldr	x9, [x9]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.2@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.2@PAGEOFF
	ldr	x1, [x8]
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.16@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.16@PAGEOFF
	stur	x0, [x29, #-56]
	ldur	x9, [x29, #-56]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.20@PAGEOFF
	str	x0, [sp, #64]
	ldr	x9, [sp, #64]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	mov	x8, sp
	str	x0, [x8]
	adrp	x8, l__unnamed_cfstring_.18@PAGE
	add	x8, x8, l__unnamed_cfstring_.18@PAGEOFF
	str	x0, [sp, #40]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_NSLog
	ldr	x8, [sp, #40]           ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldur	x9, [x29, #-56]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	str	x0, [sp, #56]
	ldur	x9, [x29, #-48]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	str	x0, [sp, #48]
	ldr	x8, [sp, #56]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.24@PAGE
	add	x0, x0, l__unnamed_cfstring_.24@PAGEOFF
	bl	_NSLog
	ldr	x8, [sp, #48]
	mov	x0, x8
	bl	_CFGetRetainCount
	mov	x8, sp
	str	x0, [x8]
	adrp	x0, l__unnamed_cfstring_.26@PAGE
	add	x0, x0, l__unnamed_cfstring_.26@PAGEOFF
	bl	_NSLog
	adrp	x8, _testWeak1@PAGE
	add	x8, x8, _testWeak1@PAGEOFF
	ldr	x9, [sp, #56]
	mov	x0, x8
	mov	x1, x9
	bl	_objc_storeWeak
	adrp	x8, _testWeak2@PAGE
	add	x8, x8, _testWeak2@PAGEOFF
	ldr	x9, [sp, #48]
	str	x0, [sp, #32]           ; 8-byte Folded Spill
	mov	x0, x8
	mov	x1, x9
	bl	_objc_storeWeak
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.22@PAGEOFF
	ldur	x9, [x29, #-56]
	ldr	x1, [x8]
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.28@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.28@PAGEOFF
	ldur	x9, [x29, #-40]
	ldr	x1, [x8]
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x9
	ldr	x2, [sp, #16]           ; 8-byte Folded Reload
	bl	_objc_msgSend
	ldr	x0, [sp, #16]           ; 8-byte Folded Reload
	bl	_objc_release
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.30@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.30@PAGEOFF
	ldur	x9, [x29, #-40]
	ldr	x1, [x8]
	mov	x0, x9
	bl	_objc_msgSend
	; InlineAsm Start
	mov	x29, x29	; marker for objc_retainAutoreleaseReturnValue
	; InlineAsm End
	bl	_objc_retainAutoreleasedReturnValue
	bl	_objc_release
	mov	x8, #0
	mov	x0, x8
	mov	x1, #37888
	movk	x1, #30517, lsl #16
	bl	_dispatch_time
	adrp	x8, __dispatch_main_q@GOTPAGE
	ldr	x1, [x8, __dispatch_main_q@GOTPAGEOFF]
	adrp	x8, ___block_literal_global@PAGE
	add	x8, x8, ___block_literal_global@PAGEOFF
	mov	x2, x8
	bl	_dispatch_after
	add	x8, sp, #48             ; =48
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	add	x8, sp, #56             ; =56
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	add	x8, sp, #64             ; =64
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #56            ; =56
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #48            ; =48
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	sub	x8, x29, #40            ; =40
	mov	x0, x8
	mov	x8, #0
	mov	x1, x8
	bl	_objc_storeStrong
	ldp	x29, x30, [sp, #128]    ; 8-byte Folded Reload
	add	sp, sp, #144            ; =144
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function __29-[ViewController viewDidLoad]_block_invoke
"___29-[ViewController viewDidLoad]_block_invoke": ; @"__29-[ViewController viewDidLoad]_block_invoke"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _testWeak1@PAGE
	add	x8, x8, _testWeak1@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x0, [x29, #-16]
	mov	x0, x8
	bl	_objc_loadWeakRetained
	adrp	x8, _testWeak2@PAGE
	add	x8, x8, _testWeak2@PAGEOFF
	str	x0, [sp, #24]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_objc_loadWeakRetained
	mov	x8, sp
	str	x0, [x8, #8]
	ldr	x30, [sp, #24]          ; 8-byte Folded Reload
	str	x30, [x8]
	adrp	x8, l__unnamed_cfstring_.33@PAGE
	add	x8, x8, l__unnamed_cfstring_.33@PAGEOFF
	str	x0, [sp, #16]           ; 8-byte Folded Spill
	mov	x0, x8
	bl	_NSLog
	ldr	x8, [sp, #16]           ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	ldr	x8, [sp, #24]           ; 8-byte Folded Reload
	mov	x0, x8
	bl	_objc_release
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[ViewController viewWillAppear:]
"-[ViewController viewWillAppear:]":    ; @"\01-[ViewController viewWillAppear:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.35@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.35@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_SUP_REFS_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_SUP_REFS_$_@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	sturb	w2, [x29, #-17]
	ldur	x0, [x29, #-8]
	ldurb	w2, [x29, #-17]
	str	x0, [sp, #8]
	ldr	x9, [x9]
	str	x9, [sp, #16]
	ldr	x1, [x8]
	add	x0, sp, #8              ; =8
	and	w2, w2, #0x1
	bl	_objc_msgSendSuper2
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2               ; -- Begin function -[ViewController viewDidAppear:]
"-[ViewController viewDidAppear:]":     ; @"\01-[ViewController viewDidAppear:]"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64             ; =64
	stp	x29, x30, [sp, #48]     ; 8-byte Folded Spill
	add	x29, sp, #48            ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, l_OBJC_SELECTOR_REFERENCES_.37@PAGE
	add	x8, x8, l_OBJC_SELECTOR_REFERENCES_.37@PAGEOFF
	adrp	x9, l_OBJC_CLASSLIST_SUP_REFS_$_@PAGE
	add	x9, x9, l_OBJC_CLASSLIST_SUP_REFS_$_@PAGEOFF
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	sturb	w2, [x29, #-17]
	ldur	x0, [x29, #-8]
	ldurb	w2, [x29, #-17]
	str	x0, [sp, #8]
	ldr	x9, [x9]
	str	x9, [sp, #16]
	ldr	x1, [x8]
	add	x0, sp, #8              ; =8
	and	w2, w2, #0x1
	bl	_objc_msgSendSuper2
	ldp	x29, x30, [sp, #48]     ; 8-byte Folded Reload
	add	sp, sp, #64             ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_testWeak1              ; @testWeak1
.zerofill __DATA,__common,_testWeak1,8,3
	.globl	_testWeak2              ; @testWeak2
.zerofill __DATA,__common,_testWeak2,8,3
	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_"
l_OBJC_CLASSLIST_REFERENCES_$_:
	.quad	_OBJC_CLASS_$_NSMutableDictionary

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_:                  ; @OBJC_METH_VAR_NAME_
	.asciz	"alloc"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_
l_OBJC_SELECTOR_REFERENCES_:
	.quad	l_OBJC_METH_VAR_NAME_

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.1:                ; @OBJC_METH_VAR_NAME_.1
	.asciz	"init"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.2
l_OBJC_SELECTOR_REFERENCES_.2:
	.quad	l_OBJC_METH_VAR_NAME_.1

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.3"
l_OBJC_CLASSLIST_REFERENCES_$_.3:
	.quad	_OBJC_CLASS_$_NSString

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"abcd"

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.4:                ; @OBJC_METH_VAR_NAME_.4
	.asciz	"stringWithUTF8String:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.5
l_OBJC_SELECTOR_REFERENCES_.5:
	.quad	l_OBJC_METH_VAR_NAME_.4

	.section	__TEXT,__cstring,cstring_literals
l_.str.6:                               ; @.str.6
	.asciz	"c2s_switch"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_
l__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.6
	.quad	10                      ; 0xa

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.7:                ; @OBJC_METH_VAR_NAME_.7
	.asciz	"setValue:forKey:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.8
l_OBJC_SELECTOR_REFERENCES_.8:
	.quad	l_OBJC_METH_VAR_NAME_.7

	.globl	_reference              ; @reference
.zerofill __DATA,__common,_reference,8,3
	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_ViewController ; @"OBJC_CLASS_$_ViewController"
	.p2align	3
_OBJC_CLASS_$_ViewController:
	.quad	_OBJC_METACLASS_$_ViewController
	.quad	_OBJC_CLASS_$_UIViewController
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_CLASS_RO_$_ViewController

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_SUP_REFS_$_"
l_OBJC_CLASSLIST_SUP_REFS_$_:
	.quad	_OBJC_CLASS_$_ViewController

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.9:                ; @OBJC_METH_VAR_NAME_.9
	.asciz	"viewDidLoad"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.10
l_OBJC_SELECTOR_REFERENCES_.10:
	.quad	l_OBJC_METH_VAR_NAME_.9

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.11"
l_OBJC_CLASSLIST_REFERENCES_$_.11:
	.quad	_OBJC_CLASS_$_TestMRC

	.p2align	3               ; @"OBJC_CLASSLIST_REFERENCES_$_.12"
l_OBJC_CLASSLIST_REFERENCES_$_.12:
	.quad	_OBJC_CLASS_$_TestARC

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.13:               ; @OBJC_METH_VAR_NAME_.13
	.asciz	"testReturnObj"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.14
l_OBJC_SELECTOR_REFERENCES_.14:
	.quad	l_OBJC_METH_VAR_NAME_.13

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.15:               ; @OBJC_METH_VAR_NAME_.15
	.asciz	"copy"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.16
l_OBJC_SELECTOR_REFERENCES_.16:
	.quad	l_OBJC_METH_VAR_NAME_.15

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"viewDidLoad adExtraDic1=%p"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.18
l__unnamed_cfstring_.18:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.17
	.quad	26                      ; 0x1a

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.19:               ; @OBJC_METH_VAR_NAME_.19
	.asciz	"description"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.20
l_OBJC_SELECTOR_REFERENCES_.20:
	.quad	l_OBJC_METH_VAR_NAME_.19

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.21:               ; @OBJC_METH_VAR_NAME_.21
	.asciz	"testReturnDic"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.22
l_OBJC_SELECTOR_REFERENCES_.22:
	.quad	l_OBJC_METH_VAR_NAME_.21

	.section	__TEXT,__cstring,cstring_literals
l_.str.23:                              ; @.str.23
	.asciz	"viewDidLoad 111 adExtraDic2 111 count = %ld"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.24
l__unnamed_cfstring_.24:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.23
	.quad	43                      ; 0x2b

	.section	__TEXT,__cstring,cstring_literals
l_.str.25:                              ; @.str.25
	.asciz	"viewDidLoad 111 adExtraDic3 000 count = %ld"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.26
l__unnamed_cfstring_.26:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.25
	.quad	43                      ; 0x2b

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.27:               ; @OBJC_METH_VAR_NAME_.27
	.asciz	"setAdExtraDic:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.28
l_OBJC_SELECTOR_REFERENCES_.28:
	.quad	l_OBJC_METH_VAR_NAME_.27

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.29:               ; @OBJC_METH_VAR_NAME_.29
	.asciz	"getReport"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.30
l_OBJC_SELECTOR_REFERENCES_.30:
	.quad	l_OBJC_METH_VAR_NAME_.29

	.section	__TEXT,__cstring,cstring_literals
l_.str.31:                              ; @.str.31
	.asciz	"v8@?0"

	.private_extern	"___block_descriptor_32_e5_v8@?0l" ; @"__block_descriptor_32_e5_v8@?0l"
	.section	__DATA,__const
	.globl	"___block_descriptor_32_e5_v8@?0l"
	.weak_def_can_be_hidden	"___block_descriptor_32_e5_v8@?0l"
	.p2align	3
"___block_descriptor_32_e5_v8@?0l":
	.quad	0                       ; 0x0
	.quad	32                      ; 0x20
	.quad	l_.str.31
	.quad	0

	.p2align	3               ; @__block_literal_global
___block_literal_global:
	.quad	__NSConcreteGlobalBlock
	.long	1342177280              ; 0x50000000
	.long	0                       ; 0x0
	.quad	"___29-[ViewController viewDidLoad]_block_invoke"
	.quad	"___block_descriptor_32_e5_v8@?0l"

	.section	__TEXT,__cstring,cstring_literals
l_.str.32:                              ; @.str.32
	.asciz	"viewDidLoad delay testWeak1 = %@,testWeak2=%@"

	.section	__DATA,__cfstring
	.p2align	3               ; @_unnamed_cfstring_.33
l__unnamed_cfstring_.33:
	.quad	___CFConstantStringClassReference
	.long	1992                    ; 0x7c8
	.space	4
	.quad	l_.str.32
	.quad	45                      ; 0x2d

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.34:               ; @OBJC_METH_VAR_NAME_.34
	.asciz	"viewWillAppear:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.35
l_OBJC_SELECTOR_REFERENCES_.35:
	.quad	l_OBJC_METH_VAR_NAME_.34

	.section	__TEXT,__objc_methname,cstring_literals
l_OBJC_METH_VAR_NAME_.36:               ; @OBJC_METH_VAR_NAME_.36
	.asciz	"viewDidAppear:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.p2align	3               ; @OBJC_SELECTOR_REFERENCES_.37
l_OBJC_SELECTOR_REFERENCES_.37:
	.quad	l_OBJC_METH_VAR_NAME_.36

	.section	__TEXT,__objc_classname,cstring_literals
l_OBJC_CLASS_NAME_:                     ; @OBJC_CLASS_NAME_
	.asciz	"ViewController"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_METACLASS_RO_$_ViewController"
l_OBJC_METACLASS_RO_$_ViewController:
	.long	129                     ; 0x81
	.long	40                      ; 0x28
	.long	40                      ; 0x28
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_ViewController ; @"OBJC_METACLASS_$_ViewController"
	.p2align	3
_OBJC_METACLASS_$_ViewController:
	.quad	_OBJC_METACLASS_$_NSObject
	.quad	_OBJC_METACLASS_$_UIViewController
	.quad	__objc_empty_cache
	.quad	0
	.quad	l_OBJC_METACLASS_RO_$_ViewController

	.section	__TEXT,__objc_methtype,cstring_literals
l_OBJC_METH_VAR_TYPE_:                  ; @OBJC_METH_VAR_TYPE_
	.asciz	"@16@0:8"

l_OBJC_METH_VAR_TYPE_.38:               ; @OBJC_METH_VAR_TYPE_.38
	.asciz	"v16@0:8"

l_OBJC_METH_VAR_TYPE_.39:               ; @OBJC_METH_VAR_TYPE_.39
	.asciz	"v20@0:8B16"

	.section	__DATA,__objc_const
	.p2align	3               ; @"\01l_OBJC_$_INSTANCE_METHODS_ViewController"
l_OBJC_$_INSTANCE_METHODS_ViewController:
	.long	24                      ; 0x18
	.long	4                       ; 0x4
	.quad	l_OBJC_METH_VAR_NAME_.21
	.quad	l_OBJC_METH_VAR_TYPE_
	.quad	"-[ViewController testReturnDic]"
	.quad	l_OBJC_METH_VAR_NAME_.9
	.quad	l_OBJC_METH_VAR_TYPE_.38
	.quad	"-[ViewController viewDidLoad]"
	.quad	l_OBJC_METH_VAR_NAME_.34
	.quad	l_OBJC_METH_VAR_TYPE_.39
	.quad	"-[ViewController viewWillAppear:]"
	.quad	l_OBJC_METH_VAR_NAME_.36
	.quad	l_OBJC_METH_VAR_TYPE_.39
	.quad	"-[ViewController viewDidAppear:]"

	.p2align	3               ; @"\01l_OBJC_CLASS_RO_$_ViewController"
l_OBJC_CLASS_RO_$_ViewController:
	.long	128                     ; 0x80
	.long	8                       ; 0x8
	.long	8                       ; 0x8
	.space	4
	.quad	0
	.quad	l_OBJC_CLASS_NAME_
	.quad	l_OBJC_$_INSTANCE_METHODS_ViewController
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3               ; @"OBJC_LABEL_CLASS_$"
l_OBJC_LABEL_CLASS_$:
	.quad	_OBJC_CLASS_$_ViewController

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
