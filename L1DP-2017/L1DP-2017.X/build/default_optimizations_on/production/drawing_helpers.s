	.file "C:\\Users\\jamis\\Desktop\\my_root\\Development\\Circuits\\PIC\\L1Demoparty\\L1DP-2017\\L1DP-2017.X\\drawing_helpers.c"
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.section	.debug_info,info
.Ldebug_info0:
	.section	.debug_line,info
.Ldebug_line0:
	.section	.text,code
.Ltext0:
	.section	.text,code
	.align	2
	.global	_fast_pixel	; export
	.type	_fast_pixel,@function
_fast_pixel:
.LFB0:
.LSM0:
	.set ___PA___,1
.LSM1:
	mov	#80,w4
	mul.ss	w3,w4,w4
	mov	#80,w6
	mul.uu	w2,w6,w2
	add	w4,w3,w3
	add	w0,w2,w0
	addc	w1,w3,w1
.L2:
.LSM2:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L2
.LSM3:
	mov	w0,_G1CMDL
.LSM4:
	mov	#25344,w4
	ior	w1,w4,w4
	mov	w4,_G1CMDH
.L3:
.LSM5:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L3
.LSM6:
	mov	#4102,w4
	mov	w4,_G1CMDL
.LSM7:
	mov	#25600,w4
	mov	w4,_G1CMDH
.L4:
.LSM8:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L4
.LSM9:
	mov	#96,w4
	mov	w4,_G1CMDL
.LSM10:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM11:
	nop	
.LSM12:
	return	
	.set ___PA___,0
.LFE0:
	.size	_fast_pixel, .-_fast_pixel
	.align	2
	.global	_radians	; export
	.type	_radians,@function
_radians:
.LFB1:
.LSM13:
	.set ___PA___,1
.LSM14:
	mov	#0,w1
	rcall	___floatunsisf
	mov	#4048,w2
	mov	#16457,w3
	rcall	___mulsf3
	mov	#0,w2
	mov	#17204,w3
	rcall	___divsf3
.LSM15:
	return	
	.set ___PA___,0
.LFE1:
	.size	_radians, .-_radians
	.align	2
	.global	_realtoint	; export
	.type	_realtoint,@function
_realtoint:
.LFB2:
.LSM16:
	.set ___PA___,1
	lnk	#4
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov.d	w2,w8
	mov	w4,[w15-16]
	mov	w5,[w15-14]
	mov.d	w6,w12
.LSM17:
	mov.d	w8,w2
	rcall	___subsf3
	mov.d	w0,w10
	mov.d	w12,w2
	mov	[w15-26],w0
	mov	[w15-24],w1
	rcall	___subsf3
	mov.d	w0,w2
	mov.d	w10,w0
	rcall	___mulsf3
	mov.d	w0,w10
	mov.d	w8,w2
	mov	[w15-16],w0
	mov	[w15-14],w1
	rcall	___subsf3
	mov.d	w0,w2
	mov.d	w10,w0
	rcall	___divsf3
	mov.d	w12,w2
	rcall	___addsf3
	rcall	___fixsfsi
.LSM18:
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE2:
	.size	_realtoint, .-_realtoint
	.align	2
	.global	_rcc_color	; export
	.type	_rcc_color,@function
_rcc_color:
.LFB3:
.LSM19:
	.set ___PA___,1
.L11:
.LSM20:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L11
.LSM21:
	mov	w0,_G1CMDL
.LSM22:
	mov	#26112,w4
	mov	w4,_G1CMDH
.LSM23:
	nop	
.LSM24:
	mov	#64,w5
.L12:
	mov	_G1STATbits,w6
	and	w5,w6,w4
	.set ___BP___,50
	bra	nz,.L12
.LSM25:
	return	
	.set ___PA___,0
.LFE3:
	.size	_rcc_color, .-_rcc_color
	.align	2
	.global	_rcc_setdest	; export
	.type	_rcc_setdest,@function
_rcc_setdest:
.LFB4:
.LSM26:
	.set ___PA___,1
.L16:
.LSM27:
	btst	_G1STATbits,#0
	.set ___BP___,50
	bra	z,.L16
.LSM28:
	mov	w0,_G1W1ADRL
.LSM29:
	mov	w0,_G1W1ADRH
.LSM30:
	mov	w0,_G1W2ADRL
.LSM31:
	mov	w0,_G1W2ADRH
.LSM32:
	return	
	.set ___PA___,0
.LFE4:
	.size	_rcc_setdest, .-_rcc_setdest
	.align	2
	.global	_rcc_draw	; export
	.type	_rcc_draw,@function
_rcc_draw:
.LFB5:
.LSM33:
	.set ___PA___,1
.L19:
.LSM34:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L19
.LSM35:
	mov	#80,w4
	mul.ss	w1,w4,w4
	add	w0,w4,w4
	mov	w4,_G1CMDL
.LSM36:
	mov	#80,w4
	mul.uu	w1,w4,w4
	add	w4,w0,w0
	addc	w5,#0,w1
	mov	#25344,w4
	ior	w1,w4,w4
	mov	w4,_G1CMDH
.L20:
.LSM37:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L20
.LSM38:
	sl	w2,#12,w4
	ior	w4,w3,w4
	mov	w4,_G1CMDL
.LSM39:
	lsr	w2,#4,w2
	mov	#25600,w4
	ior	w4,w2,w4
	mov	w4,_G1CMDH
.L21:
.LSM40:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L21
.LSM41:
	mov	#96,w4
	mov	w4,_G1CMDL
.LSM42:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM43:
	return	
	.set ___PA___,0
.LFE5:
	.size	_rcc_draw, .-_rcc_draw
	.align	2
	.global	_rcc_w1tow2	; export
	.type	_rcc_w1tow2,@function
_rcc_w1tow2:
.LFB6:
.LSM44:
	.set ___PA___,1
.L26:
.LSM45:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L26
.LSM46:
	mov	w2,_G1CMDL
.LSM47:
	mov	#25088,w4
	mov	w4,_G1CMDH
.L27:
.LSM48:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L27
.LSM49:
	mov	w0,_G1CMDL
.LSM50:
	mov	#25344,w4
	mov	w4,_G1CMDH
.L28:
.LSM51:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L28
.LSM52:
	mov	#-3616,w4
	mov	w4,_G1CMDL
.LSM53:
	mov	#25600,w4
	mov	w4,_G1CMDH
.L29:
.LSM54:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L29
.LSM55:
	mov	#224,w4
	mov	w4,_G1CMDL
.LSM56:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM57:
	return	
	.set ___PA___,0
.LFE6:
	.size	_rcc_w1tow2, .-_rcc_w1tow2
	.align	2
	.global	_line	; export
	.type	_line,@function
_line:
.LFB7:
.LSM58:
	.set ___PA___,1
	add	w15,#12,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov	w0,w9
	mov	w1,w10
	mov	w2,w12
	mov	w3,[w15-24]
.LSM59:
	mov	#_PIX_H,w13
	mov.b	[w13],w13
	ze	w13,w13
.LSM60:
	sub	w12,w9,w4
	btsc	w4,#15
	neg	w4,w4
	mov	w4,[w15-18]
	setm	w0
	mov	w0,[w15-20]
	sub	w12,w9,[w15]
	.set ___BP___,50
	bra	leu,.L35
	mov	#1,w4
	mov	w4,[w15-20]
.L35:
.LSM61:
	mov	[w15-24],w5
	sub	w5,w10,w11
	btsc	w11,#15
	neg	w11,w11
	setm	w0
	mov	w0,[w15-22]
	sub	w5,w10,[w15]
	.set ___BP___,50
	bra	leu,.L36
	mov	#1,w4
	mov	w4,[w15-22]
.L36:
.LSM62:
	mov	[w15-18],w5
	sub	w5,w11,[w15]
	.set ___BP___,50
	bra	gt,.L37
	neg	w11,w8
	mov	#2,w4
	repeat	#18-1
	div.sw	w8,w4
	mov	w0,w8
	bra	.L48
.L37:
	mov	#2,w8
	mov	[w15-18],w0
	repeat	#18-1
	div.sw	w0,w8
	mov	w0,w8
	bra	.L48
.L47:
.LSM63:
	mov	w4,w8
	bra	.L49
.L48:
.LSM64:
	mov	#1,w14
.LSM65:
	mov	[w15-18],w4
	neg	w4,w4
	mov	w4,[w15-16]
.L49:
.LSM66:
	mov	w13,w3
	mov	w14,w2
	mov	w10,w1
	mov	w9,w0
	rcall	_rcc_draw
.LSM67:
	sub	w9,w12,[w15]
	.set ___BP___,72
	bra	nz,.L40
	mov	[w15-24],w5
	sub	w10,w5,[w15]
	.set ___BP___,9
	bra	z,.L34
.L40:
.LSM68:
	mov	[w15-16],w0
	sub	w8,w0,[w15]
	.set ___BP___,50
	bra	le,.L46
	sub	w8,w11,w4
	mov	[w15-20],w5
	add	w9,w5,w9
	bra	.L42
.L46:
	mov	w8,w4
.L42:
.LSM69:
	sub	w8,w11,[w15]
	.set ___BP___,50
	bra	ge,.L47
	mov	[w15-18],w0
	add	w4,w0,w8
	mov	[w15-22],w4
	add	w10,w4,w10
	bra	.L49
.L34:
.LSM70:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#12
	return	
	.set ___PA___,0
.LFE7:
	.size	_line, .-_line
	.align	2
	.global	_lineFloat	; export
	.type	_lineFloat,@function
_lineFloat:
.LFB8:
.LSM71:
	.set ___PA___,1
	add	w15,#16,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov.d	w0,w8
	mov.d	w2,w10
	mov.d	w4,w0
	mov	w6,[w15-18]
	mov	w7,[w15-16]
.LSM72:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	add	w4,w4,w4
	mov	w4,[w15-28]
.LSM73:
	mov.d	w8,w2
	rcall	___subsf3
	mov.d	w0,w12
	mov.d	w0,w6
	bclr	w7,#15
	mov	w6,[w15-26]
	mov	w7,[w15-24]
	mov.d	w10,w2
	mov	[w15-18],w0
	mov	[w15-16],w1
	rcall	___subsf3
	mov.d	w0,w4
	mov	w0,[w15-22]
	mov	w1,[w15-20]
	bclr	w5,#15
	mov	w4,[w15-18]
	mov	w5,[w15-16]
	mov.d	w4,w2
	mov	[w15-26],w0
	mov	[w15-24],w1
	rcall	___gtsf2
	sub	w0,#0,[w15]
	.set ___BP___,50
	bra	le,.L51
	mov	[w15-26],w6
	mov	[w15-24],w7
	mov	w6,[w15-18]
	mov	w7,[w15-16]
.L51:
.LSM74:
	mov	[w15-18],w2
	mov	[w15-16],w3
	mov.d	w12,w0
	rcall	___divsf3
	mov.d	w0,w12
	mov	[w15-18],w2
	mov	[w15-16],w3
	mov	[w15-22],w0
	mov	[w15-20],w1
	rcall	___divsf3
	mov	w0,[w15-26]
	mov	w1,[w15-24]
.LSM75:
	mov	[w15-18],w0
	mov	[w15-16],w1
	rcall	___fixsfsi
	mov	w0,w7
	mov	w7,[w15-22]
	sub	w7,#0,[w15]
	.set ___BP___,9
	bra	z,.L50
	clr	w14
.L55:
.LBB2:
.LSM76:
	mov.d	w12,w2
	mov.d	w8,w0
	rcall	___addsf3
	mov.d	w0,w8
	rcall	___fixsfsi
	mul.su	w0,#1,w4
	mov	w4,[w15-18]
	mov	w5,[w15-16]
	mov	[w15-26],w2
	mov	[w15-24],w3
	mov.d	w10,w0
	rcall	___addsf3
	mov.d	w0,w10
.LSM77:
	mov	[w15-18],w6
	mov	[w15-16],w7
	mov	#79,w4
	mov	#0,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,50
	bra	gtu,.L54
.LSM78:
	rcall	___fixsfsi
	asr	w0,#15,w1
.LSM79:
	mov	#479,w6
	mov	#0,w7
	sub	w0,w6,[w15]
	subb	w1,w7,[w15]
	.set ___BP___,71
	bra	gtu,.L54
.LSM80:
	mov	[w15-28],w3
	mov	#1,w2
	mov	w0,w1
	mov	[w15-18],w0
	rcall	_rcc_draw
.L54:
.LBE2:
.LSM81:
	inc	w14,w14
	mov	[w15-22],w7
	sub	w14,w7,[w15]
	.set ___BP___,91
	bra	ltu,.L55
.L50:
.LSM82:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#16
	return	
	.set ___PA___,0
.LFE8:
	.size	_lineFloat, .-_lineFloat
	.align	2
	.global	_blank_background	; export
	.type	_blank_background,@function
_blank_background:
.LFB9:
.LSM83:
	.set ___PA___,1
.L61:
.LSM84:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L61
.LSM85:
	clr	w0
	rcall	_rcc_color
.LSM86:
	mov	#480,w3
	mov	#79,w2
	mul.uu	w0, #0, w0
	rcall	_rcc_draw
.LSM87:
	return	
	.set ___PA___,0
.LFE9:
	.size	_blank_background, .-_blank_background
	.align	2
	.global	_cleanup	; export
	.type	_cleanup,@function
_cleanup:
.LFB10:
.LSM88:
	.set ___PA___,1
.LSM89:
	clr	w0
	rcall	_rcc_color
.LSM90:
	mov	#480,w3
	mov	#1,w2
	clr	w1
	mov	#79,w0
	rcall	_rcc_draw
.LSM91:
	return	
	.set ___PA___,0
.LFE10:
	.size	_cleanup, .-_cleanup
	.align	2
	.global	_drawBorder	; export
	.type	_drawBorder,@function
_drawBorder:
.LFB11:
.LSM92:
	.set ___PA___,1
.LSM93:
	rcall	_rcc_color
.LSM94:
	mov	#480,w3
	mov	#1,w2
	mul.uu	w0, #0, w0
	rcall	_rcc_draw
.LSM95:
	mov	#480,w3
	mov	#1,w2
	clr	w1
	mov	#78,w0
	rcall	_rcc_draw
.LSM96:
	mov	#_PIX_H,w3
	mov.b	[w3],w3
	ze	w3,w3
	mov	#78,w2
	mul.uu	w0, #0, w0
	rcall	_rcc_draw
.LSM97:
	mov	#_PIX_H,w3
	mov.b	[w3],w3
	ze	w3,w3
	mov	#480,w1
	sub	w1,w3,w1
	mov	#78,w2
	clr	w0
	rcall	_rcc_draw
.LSM98:
	return	
	.set ___PA___,0
.LFE11:
	.size	_drawBorder, .-_drawBorder
	.align	2
	.global	_verBlind	; export
	.type	_verBlind,@function
_verBlind:
.LFB12:
.LSM99:
	.set ___PA___,1
	mov	w8,[w15++]
.LSM100:
	clr	w0
	rcall	_rcc_color
.LSM101:
	mov	_blind.8387,w8
	mov	w8,w3
	mov	#79,w2
	mul.uu	w0, #0, w0
	rcall	_rcc_draw
.LSM102:
	mov	#480,w1
	sub	w1,w8,w1
	mov	w8,w3
	mov	#79,w2
	clr	w0
	rcall	_rcc_draw
.LSM103:
	mov	#99,w4
	sub	w8,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L65
.LSM104:
	inc2	w8,w8
	mov	w8,_blind.8387
.L65:
.LSM105:
	mov	[--w15],w8
	return	
	.set ___PA___,0
.LFE12:
	.size	_verBlind, .-_verBlind
	.section	.nbss,bss,near
	.align	2
	.type	_blind.8387,@object
	.size	_blind.8387, 2
_blind.8387:
	.skip	2
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.byte	0
	.uleb128 0x1
	.sleb128 2
	.byte	0x25
	.byte	0x12
	.uleb128 0xf
	.sleb128 -2
	.byte	0x9
	.uleb128 0x25
	.uleb128 0xf
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	4
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	4
.LEFDE24:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x7ad
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.24) (0) Build date: Dec 19 2014"
	.byte	0x1
	.asciz	"drawing_helpers.c"
	.ascii	"C:\\\\Users\\\\jamis\\\\Desktop\\\\my_root\\\\Development\\\\Circuit"
	.asciz	"s\\\\PIC\\\\L1Demoparty\\\\L1DP-2017\\\\L1DP-2017.X"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.asciz	"long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.asciz	"long long int"
	.uleb128 0x3
	.asciz	"uint8_t"
	.byte	0x2
	.byte	0x2b
	.4byte	0x111
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0x31
	.4byte	0x132
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.asciz	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.asciz	"long long unsigned int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.asciz	"short unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.asciz	"char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.asciz	"short int"
	.uleb128 0x4
	.asciz	"tagG1STATBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x1897
	.4byte	0x271
	.uleb128 0x5
	.asciz	"CMDMPT"
	.byte	0x3
	.2byte	0x1898
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMDFUL"
	.byte	0x3
	.2byte	0x1899
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMDLV"
	.byte	0x3
	.2byte	0x189a
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"HMRGN"
	.byte	0x3
	.2byte	0x189b
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"VMRGN"
	.byte	0x3
	.2byte	0x189c
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CHRBUSY"
	.byte	0x3
	.2byte	0x189d
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RCCBUSY"
	.byte	0x3
	.2byte	0x189e
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IPUBUSY"
	.byte	0x3
	.2byte	0x189f
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PUBUSY"
	.byte	0x3
	.2byte	0x18a1
	.4byte	0x132
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"G1STATBITS"
	.byte	0x3
	.2byte	0x18a2
	.4byte	0x19c
	.uleb128 0x7
	.byte	0x1
	.asciz	"fast_pixel"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.4byte	0x2c5
	.uleb128 0x8
	.asciz	"ax"
	.byte	0x1
	.byte	0x11
	.4byte	0x142
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"ay"
	.byte	0x1
	.byte	0x11
	.4byte	0x142
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"radians"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x2f4
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.4byte	0x2f4
	.uleb128 0x8
	.asciz	"angle"
	.byte	0x1
	.byte	0x23
	.4byte	0x122
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"float"
	.uleb128 0x9
	.byte	0x1
	.asciz	"realtoint"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x380
	.uleb128 0x8
	.asciz	"oldval"
	.byte	0x1
	.byte	0x27
	.4byte	0x2f4
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"oldmin"
	.byte	0x1
	.byte	0x27
	.4byte	0x2f4
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"oldmax"
	.byte	0x1
	.byte	0x27
	.4byte	0x2f4
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0x8
	.asciz	"newmin"
	.byte	0x1
	.byte	0x27
	.4byte	0x2f4
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"newmax"
	.byte	0x1
	.byte	0x27
	.4byte	0x2f4
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"rcc_color"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.4byte	0x3ad
	.uleb128 0x8
	.asciz	"color"
	.byte	0x1
	.byte	0x2c
	.4byte	0x122
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"rcc_setdest"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x3df
	.uleb128 0x8
	.asciz	"buf"
	.byte	0x1
	.byte	0x34
	.4byte	0x3df
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	0x102
	.uleb128 0x7
	.byte	0x1
	.asciz	"rcc_draw"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.4byte	0x42f
	.uleb128 0x8
	.asciz	"x"
	.byte	0x1
	.byte	0x43
	.4byte	0x122
	.byte	0x1
	.byte	0x50
	.uleb128 0x8
	.asciz	"y"
	.byte	0x1
	.byte	0x43
	.4byte	0x122
	.byte	0x1
	.byte	0x51
	.uleb128 0x8
	.asciz	"w"
	.byte	0x1
	.byte	0x43
	.4byte	0x122
	.byte	0x1
	.byte	0x52
	.uleb128 0x8
	.asciz	"h"
	.byte	0x1
	.byte	0x43
	.4byte	0x122
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"rcc_w1tow2"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.4byte	0x473
	.uleb128 0x8
	.asciz	"dest"
	.byte	0x1
	.byte	0x5d
	.4byte	0x3df
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"src"
	.byte	0x1
	.byte	0x5d
	.4byte	0x3df
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"line"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5f
	.4byte	0x521
	.uleb128 0x8
	.asciz	"x0"
	.byte	0x1
	.byte	0x7b
	.4byte	0x122
	.byte	0x1
	.byte	0x59
	.uleb128 0x8
	.asciz	"y0"
	.byte	0x1
	.byte	0x7b
	.4byte	0x122
	.byte	0x1
	.byte	0x5a
	.uleb128 0x8
	.asciz	"x1"
	.byte	0x1
	.byte	0x7b
	.4byte	0x122
	.byte	0x1
	.byte	0x5c
	.uleb128 0x8
	.asciz	"y1"
	.byte	0x1
	.byte	0x7b
	.4byte	0x122
	.byte	0x2
	.byte	0x7f
	.sleb128 -24
	.uleb128 0xb
	.asciz	"sizeW"
	.byte	0x1
	.byte	0x7c
	.4byte	0x122
	.uleb128 0xc
	.asciz	"sizeH"
	.byte	0x1
	.byte	0x7d
	.4byte	0x122
	.byte	0x1
	.byte	0x5d
	.uleb128 0xc
	.asciz	"dx"
	.byte	0x1
	.byte	0x7f
	.4byte	0xde
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0xc
	.asciz	"sx"
	.byte	0x1
	.byte	0x7f
	.4byte	0xde
	.byte	0x2
	.byte	0x7f
	.sleb128 -20
	.uleb128 0xc
	.asciz	"dy"
	.byte	0x1
	.byte	0x80
	.4byte	0xde
	.byte	0x1
	.byte	0x5b
	.uleb128 0xc
	.asciz	"sy"
	.byte	0x1
	.byte	0x80
	.4byte	0xde
	.byte	0x2
	.byte	0x7f
	.sleb128 -22
	.uleb128 0xb
	.asciz	"err"
	.byte	0x1
	.byte	0x81
	.4byte	0xde
	.uleb128 0xb
	.asciz	"e2"
	.byte	0x1
	.byte	0x81
	.4byte	0xde
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"lineFloat"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5f
	.4byte	0x61e
	.uleb128 0x8
	.asciz	"x1"
	.byte	0x1
	.byte	0x8d
	.4byte	0x2f4
	.byte	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x2
	.byte	0x59
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"y1"
	.byte	0x1
	.byte	0x8d
	.4byte	0x2f4
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x2
	.byte	0x5b
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"x2"
	.byte	0x1
	.byte	0x8d
	.4byte	0x2f4
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x8
	.asciz	"y2"
	.byte	0x1
	.byte	0x8d
	.4byte	0x2f4
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0xc
	.asciz	"i"
	.byte	0x1
	.byte	0x8f
	.4byte	0x132
	.byte	0x1
	.byte	0x5e
	.uleb128 0xb
	.asciz	"sizeW"
	.byte	0x1
	.byte	0x90
	.4byte	0x122
	.uleb128 0xc
	.asciz	"sizeH"
	.byte	0x1
	.byte	0x91
	.4byte	0x122
	.byte	0x2
	.byte	0x7f
	.sleb128 -28
	.uleb128 0xc
	.asciz	"hl"
	.byte	0x1
	.byte	0x92
	.4byte	0x61e
	.byte	0x2
	.byte	0x7f
	.sleb128 -26
	.uleb128 0xc
	.asciz	"vl"
	.byte	0x1
	.byte	0x92
	.4byte	0x61e
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0xc
	.asciz	"length"
	.byte	0x1
	.byte	0x92
	.4byte	0x61e
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0xc
	.asciz	"deltax"
	.byte	0x1
	.byte	0x93
	.4byte	0x2f4
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x2
	.byte	0x5d
	.byte	0x93
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"deltay"
	.byte	0x1
	.byte	0x93
	.4byte	0x2f4
	.byte	0x2
	.byte	0x7f
	.sleb128 -26
	.uleb128 0xd
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xc
	.asciz	"x"
	.byte	0x1
	.byte	0x95
	.4byte	0x142
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0xc
	.asciz	"y"
	.byte	0x1
	.byte	0x95
	.4byte	0x142
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0xe
	.byte	0x1
	.asciz	"blank_background"
	.byte	0x1
	.byte	0xa2
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5f
	.uleb128 0xf
	.byte	0x1
	.asciz	"cleanup"
	.byte	0x1
	.byte	0xa8
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5f
	.uleb128 0x7
	.byte	0x1
	.asciz	"drawBorder"
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5f
	.4byte	0x688
	.uleb128 0x8
	.asciz	"c"
	.byte	0x1
	.byte	0xb0
	.4byte	0x122
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.asciz	"verBlind"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5f
	.4byte	0x6b8
	.uleb128 0xc
	.asciz	"blind"
	.byte	0x1
	.byte	0xbd
	.4byte	0x122
	.byte	0x5
	.byte	0x3
	.4byte	_blind.8387
	.byte	0x0
	.uleb128 0x10
	.asciz	"G1CMDL"
	.byte	0x3
	.2byte	0x184b
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x132
	.uleb128 0x10
	.asciz	"G1CMDH"
	.byte	0x3
	.2byte	0x1861
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x18a3
	.4byte	0x6ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	0x271
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x18c6
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x18dc
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x18ea
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x1900
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.asciz	"PIX_H"
	.byte	0x4
	.byte	0x8d
	.4byte	0x102
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"G1CMDL"
	.byte	0x3
	.2byte	0x184b
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.asciz	"G1CMDH"
	.byte	0x3
	.2byte	0x1861
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x18a3
	.4byte	0x6ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x18c6
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x18dc
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x18ea
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x1900
	.4byte	0x6c9
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.asciz	"PIX_H"
	.byte	0x4
	.byte	0x8d
	.4byte	0x102
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev,info
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x33
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0xc5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x7b1
	.4byte	0x284
	.asciz	"fast_pixel"
	.4byte	0x2c5
	.asciz	"radians"
	.4byte	0x2fd
	.asciz	"realtoint"
	.4byte	0x380
	.asciz	"rcc_color"
	.4byte	0x3ad
	.asciz	"rcc_setdest"
	.4byte	0x3e6
	.asciz	"rcc_draw"
	.4byte	0x42f
	.asciz	"rcc_w1tow2"
	.4byte	0x473
	.asciz	"line"
	.4byte	0x521
	.asciz	"lineFloat"
	.4byte	0x628
	.asciz	"blank_background"
	.4byte	0x647
	.asciz	"cleanup"
	.4byte	0x65e
	.asciz	"drawBorder"
	.4byte	0x688
	.asciz	"verBlind"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x48
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x7b1
	.4byte	0x102
	.asciz	"uint8_t"
	.4byte	0x122
	.asciz	"uint16_t"
	.4byte	0x19c
	.asciz	"tagG1STATBITS"
	.4byte	0x271
	.asciz	"G1STATBITS"
	.4byte	0x0
	.section	.debug_aranges,info
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_line,info
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"c:\\program files (x86)\\microchip\\xc16\\v1.24\\bin\\bin\\../..\\in"
	.ascii	"clude"
	.byte 0
	.ascii	"c:\\program files (x86)\\microchip\\xc16\\v1.24\\bin\\bin\\../..\\su"
	.ascii	"pport\\PIC24F\\h"
	.byte 0
	.byte	0x0
	.asciz	"drawing_helpers.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"stdint.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"p24FJ256DA206.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"resolution_management.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM0
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x3a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM24
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x47
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM42
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM43
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM44
	.byte	0x70
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM45
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM57
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x8e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM67
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0xa0
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM74
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM79
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM82
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE8
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM83
	.byte	0xb5
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM84
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM85
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE9
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0xbb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE10
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0xc3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM95
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM96
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM97
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE11
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0xcd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM102
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM103
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF2:
	.asciz	"G1W1ADRH"
.LASF1:
	.asciz	"G1W1ADRL"
.LASF4:
	.asciz	"G1W2ADRH"
.LASF3:
	.asciz	"G1W2ADRL"
.LASF0:
	.asciz	"G1STATbits"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end
