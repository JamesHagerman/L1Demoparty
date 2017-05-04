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
	.global	_radians	; export
	.type	_radians,@function
_radians:
.LFB0:
.LSM0:
	.set ___PA___,1
	lnk	#2
	mov	w0,[w14]
.LSM1:
	mov	[w14],w4
	mov	#0,w5
	mov.d	w4,w0
	rcall	___floatunsisf
	mov.d	w0,w4
	mov	#4048,w2
	mov	#16457,w3
	mov.d	w4,w0
	rcall	___mulsf3
	mov.d	w0,w4
	mov	#0,w2
	mov	#17204,w3
	mov.d	w4,w0
	rcall	___divsf3
	mov.d	w0,w4
.LSM2:
	mov.d	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE0:
	.size	_radians, .-_radians
	.align	2
	.global	_realtoint	; export
	.type	_realtoint,@function
_realtoint:
.LFB1:
.LSM3:
	.set ___PA___,1
	lnk	#16
	mov.d	w8,[w15++]
	mov.d	w0,[w14]
	mov	w2,[w14+4]
	mov	w3,[w14+6]
	mov	w4,[w14+8]
	mov	w5,[w14+10]
	mov	w6,[w14+12]
	mov	w7,[w14+14]
.LSM4:
	mov	[w14+4],w2
	mov	[w14+6],w3
	mov.d	[w14],w0
	rcall	___subsf3
	mov.d	w0,w4
	mov.d	w4,w8
	mov	[w14+12],w2
	mov	[w14+14],w3
	mov	[w14-10],w0
	mov	[w14-8],w1
	rcall	___subsf3
	mov.d	w0,w4
	mov.d	w4,w2
	mov.d	w8,w0
	rcall	___mulsf3
	mov.d	w0,w4
	mov.d	w4,w8
	mov	[w14+4],w2
	mov	[w14+6],w3
	mov	[w14+8],w0
	mov	[w14+10],w1
	rcall	___subsf3
	mov.d	w0,w4
	mov.d	w4,w2
	mov.d	w8,w0
	rcall	___divsf3
	mov.d	w0,w4
	mov	[w14+12],w2
	mov	[w14+14],w3
	mov.d	w4,w0
	rcall	___addsf3
	mov.d	w0,w4
	mov.d	w4,w0
	rcall	___fixsfsi
	mov.d	w0,w4
	mov	w4,w4
.LSM5:
	mov	w4,w0
	mov.d	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE1:
	.size	_realtoint, .-_realtoint
	.align	2
	.global	_rcc_color	; export
	.type	_rcc_color,@function
_rcc_color:
.LFB2:
.LSM6:
	.set ___PA___,1
	lnk	#2
	mov	w0,[w14]
.LSM7:
	nop	
	bra	.L4
.L8:
	nop	
.L4:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L8
.LSM8:
	mov	[w14],w4
	mov	w4,_G1CMDL
.LSM9:
	mov	#26112,w4
	mov	w4,_G1CMDH
.LSM10:
	nop	
.LSM11:
	nop	
	bra	.L6
.L9:
	nop	
.L6:
	mov	_G1STATbits,w5
	mov	#64,w4
	and	w5,w4,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L9
.LSM12:
	ulnk	
	return	
	.set ___PA___,0
.LFE2:
	.size	_rcc_color, .-_rcc_color
	.align	2
	.global	_rcc_setdest	; export
	.type	_rcc_setdest,@function
_rcc_setdest:
.LFB3:
.LSM13:
	.set ___PA___,1
	lnk	#4
	mov.d	w0,[w14]
.LSM14:
	nop	
	bra	.L11
.L13:
	nop	
.L11:
	mov	_G1STATbits,w4
	and	w4,#1,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L13
.LSM15:
	mov.d	[w14],w4
	mov	w4,w4
	mov	w4,_G1W1ADRL
.LSM16:
	mov.d	[w14],w4
	mov	w4,w4
	mov	w4,_G1W1ADRH
.LSM17:
	mov.d	[w14],w4
	mov	w4,w4
	mov	w4,_G1W2ADRL
.LSM18:
	mov.d	[w14],w4
	mov	w4,w4
	mov	w4,_G1W2ADRH
.LSM19:
	ulnk	
	return	
	.set ___PA___,0
.LFE3:
	.size	_rcc_setdest, .-_rcc_setdest
	.align	2
	.global	_rcc_draw	; export
	.type	_rcc_draw,@function
_rcc_draw:
.LFB4:
.LSM20:
	.set ___PA___,1
	lnk	#8
	mov	w0,[w14]
	mov	w1,[w14+2]
	mov	w2,[w14+4]
	mov	w3,[w14+6]
.LSM21:
	nop	
	bra	.L15
.L21:
	nop	
.L15:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L21
.LSM22:
	mov	[w14+2],w5
	mov	#80,w4
	mul.ss	w5,w4,w4
	mov	w4,w4
	add	w4,[w14],w4
	mov	w4,_G1CMDL
.LSM23:
	mov	[w14],w4
	mul.uu	w4,#1,w0
	mov	[w14+2],w4
	mov	#0,w5
	mov	#80,w6
	mul.ss	w5,w6,w6
	mov	w6,w6
	mul.su	w4,#0,w2
	mov	w2,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#80,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	add	w4,w0,w4
	addc	w5,w1,w5
	lsr	w5,#0,w4
	mov	w4,w5
	mov	#25344,w4
	ior	w4,w5,w4
	mov	w4,_G1CMDH
.LSM24:
	nop	
	bra	.L17
.L22:
	nop	
.L17:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L22
.LSM25:
	mov	[w14+4],w4
	sl	w4,#12,w5
	mov	[w14+6],w4
	ior	w4,w5,w4
	mov	w4,_G1CMDL
.LSM26:
	mov	[w14+4],w4
	lsr	w4,#4,w5
	mov	#25600,w4
	ior	w4,w5,w4
	mov	w4,_G1CMDH
.LSM27:
	nop	
	bra	.L19
.L23:
	nop	
.L19:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L23
.LSM28:
	mov	#96,w4
	mov	w4,_G1CMDL
.LSM29:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM30:
	ulnk	
	return	
	.set ___PA___,0
.LFE4:
	.size	_rcc_draw, .-_rcc_draw
	.align	2
	.global	_rcc_w1tow2	; export
	.type	_rcc_w1tow2,@function
_rcc_w1tow2:
.LFB5:
.LSM31:
	.set ___PA___,1
	lnk	#8
	mov.d	w0,[w14]
	mov	w2,[w14+4]
	mov	w3,[w14+6]
.LSM32:
	nop	
	bra	.L25
.L33:
	nop	
.L25:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L33
.LSM33:
	mov	[w14+4],w4
	mov	[w14+6],w5
	mov	w4,w4
	mov	w4,_G1CMDL
.LSM34:
	mov	#25088,w4
	mov	w4,_G1CMDH
.LSM35:
	nop	
	bra	.L27
.L34:
	nop	
.L27:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L34
.LSM36:
	mov.d	[w14],w4
	mov	w4,w4
	mov	w4,_G1CMDL
.LSM37:
	mov	#25344,w4
	mov	w4,_G1CMDH
.LSM38:
	nop	
	bra	.L29
.L35:
	nop	
.L29:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L35
.LSM39:
	mov	#-3616,w4
	mov	w4,_G1CMDL
.LSM40:
	mov	#25600,w4
	mov	w4,_G1CMDH
.LSM41:
	nop	
	bra	.L31
.L36:
	nop	
.L31:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L36
.LSM42:
	mov	#224,w4
	mov	w4,_G1CMDL
.LSM43:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM44:
	ulnk	
	return	
	.set ___PA___,0
.LFE5:
	.size	_rcc_w1tow2, .-_rcc_w1tow2
	.align	2
	.global	_line	; export
	.type	_line,@function
_line:
.LFB6:
.LSM45:
	.set ___PA___,1
	lnk	#24
	mov	w0,[w14+16]
	mov	w1,[w14+18]
	mov	w2,[w14+20]
	mov	w3,[w14+22]
.LSM46:
	mov	#1,w4
	mov	w4,[w14+2]
.LSM47:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,[w14+4]
.LSM48:
	mov	[w14+20],w5
	mov	[w14+16],w4
	sub	w5,w4,w4
	btsc	w4,#15
	neg	w4,w4
	mov	w4,[w14+6]
	mov	[w14+16],w5
	mov	[w14+20],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	geu,.L38
	mov	#1,w4
	bra	.L39
.L38:
	setm	w4
.L39:
	mov	w4,[w14+8]
.LSM49:
	mov	[w14+22],w5
	mov	[w14+18],w4
	sub	w5,w4,w4
	btsc	w4,#15
	neg	w4,w4
	mov	w4,[w14+10]
	mov	[w14+18],w5
	mov	[w14+22],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	geu,.L40
	mov	#1,w4
	bra	.L41
.L40:
	setm	w4
.L41:
	mov	w4,[w14+12]
.LSM50:
	mov	[w14+6],w5
	mov	[w14+10],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gt,.L42
	mov	[w14+10],w4
	neg	w4,w5
	mov	#2,w4
	repeat	#18-1
	div.sw	w5,w4
	mov	w0,w4
	bra	.L43
.L42:
	mov	[w14+6],w5
	mov	#2,w4
	repeat	#18-1
	div.sw	w5,w4
	mov	w0,w4
.L43:
	mov	w4,[w14]
	bra	.L47
.L50:
.LSM51:
	nop	
.L47:
.LSM52:
	mov	[w14+4],w3
	mov	[w14+2],w2
	mov	[w14+18],w1
	mov	[w14+16],w0
	rcall	_rcc_draw
.LSM53:
	mov	[w14+16],w5
	mov	[w14+20],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L44
	mov	[w14+18],w5
	mov	[w14+22],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L49
.L44:
.LSM54:
	mov	[w14],w4
	mov	w4,[w14+14]
.LSM55:
	mov	[w14+6],w4
	neg	w4,w5
	mov	[w14+14],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	ge,.L45
	mov	[w14+10],w4
	subr	w4,[w14],[w14]
	mov	[w14+8],w4
	mov	[w14+16],w5
	add	w5,w4,w4
	mov	w4,[w14+16]
.L45:
.LSM56:
	mov	[w14+14],w5
	mov	[w14+10],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	ge,.L50
	mov	[w14+6],w4
	add	w4,[w14],[w14]
	mov	[w14+12],w4
	mov	[w14+18],w5
	add	w5,w4,w4
	mov	w4,[w14+18]
.LSM57:
	bra	.L47
.L49:
.LSM58:
	nop	
.L48:
	ulnk	
	return	
	.set ___PA___,0
.LFE6:
	.size	_line, .-_line
	.align	2
	.global	_lineFloat	; export
	.type	_lineFloat,@function
_lineFloat:
.LFB7:
.LSM59:
	.set ___PA___,1
	lnk	#50
	mov	w8,[w15++]
	mov	w0,[w14+34]
	mov	w1,[w14+36]
	mov	w2,[w14+38]
	mov	w3,[w14+40]
	mov	w4,[w14+42]
	mov	w5,[w14+44]
	mov	w6,[w14+46]
	mov	w7,[w14+48]
.LSM60:
	mov	#1,w4
	mov	w4,[w14+2]
.LSM61:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	add	w4,w4,w4
	mov	w4,[w14+4]
.LSM62:
	mov	[w14+34],w2
	mov	[w14+36],w3
	mov	[w14+42],w0
	mov	[w14+44],w1
	rcall	___subsf3
	mov.d	w0,w4
	bclr	w5,#15
	mov	w4,[w14+6]
	mov	w5,[w14+8]
	mov	[w14+38],w2
	mov	[w14+40],w3
	mov	[w14+46],w0
	mov	[w14+48],w1
	rcall	___subsf3
	mov.d	w0,w4
	bclr	w5,#15
	mov	w4,[w14+10]
	mov	w5,[w14+12]
	mov.b	#1,w8
	mov	[w14+10],w2
	mov	[w14+12],w3
	mov	[w14+6],w0
	mov	[w14+8],w1
	rcall	___gtsf2
	mov	w0,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	gt,.L52
	clr.b	w8
.L52:
	sub.b	w8,#0,[w15]
	.set ___BP___,0
	bra	z,.L53
	mov	[w14+6],w4
	mov	[w14+8],w5
	bra	.L54
.L53:
	mov	[w14+10],w4
	mov	[w14+12],w5
.L54:
	mov	w4,[w14+14]
	mov	w5,[w14+16]
.LSM63:
	mov	[w14+34],w2
	mov	[w14+36],w3
	mov	[w14+42],w0
	mov	[w14+44],w1
	rcall	___subsf3
	mov.d	w0,w4
	mov	[w14+14],w2
	mov	[w14+16],w3
	mov.d	w4,w0
	rcall	___divsf3
	mov.d	w0,w4
	mov	w4,[w14+18]
	mov	w5,[w14+20]
	mov	[w14+38],w2
	mov	[w14+40],w3
	mov	[w14+46],w0
	mov	[w14+48],w1
	rcall	___subsf3
	mov.d	w0,w4
	mov	[w14+14],w2
	mov	[w14+16],w3
	mov.d	w4,w0
	rcall	___divsf3
	mov.d	w0,w4
	mov	w4,[w14+22]
	mov	w5,[w14+24]
.LSM64:
	clr	w4
	mov	w4,[w14]
	bra	.L55
.L57:
.LBB2:
.LSM65:
	mov	[w14+18],w2
	mov	[w14+20],w3
	mov	[w14+34],w0
	mov	[w14+36],w1
	rcall	___addsf3
	mov.d	w0,w4
	mov	w4,[w14+34]
	mov	w5,[w14+36]
	mov	[w14+34],w0
	mov	[w14+36],w1
	rcall	___fixsfsi
	mov.d	w0,w4
	mov	w4,w4
	asr	w4,#15,w5
	mov	w4,[w14+26]
	mov	w5,[w14+28]
	mov	[w14+22],w2
	mov	[w14+24],w3
	mov	[w14+38],w0
	mov	[w14+40],w1
	rcall	___addsf3
	mov.d	w0,w4
	mov	w4,[w14+38]
	mov	w5,[w14+40]
	mov	[w14+38],w0
	mov	[w14+40],w1
	rcall	___fixsfsi
	mov.d	w0,w4
	mov	w4,w4
	asr	w4,#15,w5
	mov	w4,[w14+30]
	mov	w5,[w14+32]
.LSM66:
	mov	[w14+26],w6
	mov	[w14+28],w7
	mov	#79,w4
	mov	#0,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,0
	bra	gtu,.L56
	mov	[w14+30],w6
	mov	[w14+32],w7
	mov	#479,w4
	mov	#0,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,0
	bra	gtu,.L56
.LSM67:
	mov	[w14+30],w5
	mov	[w14+26],w4
	mov	[w14+4],w3
	mov	[w14+2],w2
	mov	w5,w1
	mov	w4,w0
	rcall	_rcc_draw
.L56:
.LBE2:
.LSM68:
	inc	[w14],[w14]
.L55:
	mov	[w14+14],w0
	mov	[w14+16],w1
	rcall	___fixsfsi
	mov.d	w0,w4
	mov	w4,w4
	sub	w4,[w14],[w15]
	.set ___BP___,0
	bra	gtu,.L57
.LSM69:
	mov	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE7:
	.size	_lineFloat, .-_lineFloat
	.align	2
	.global	_blank_background	; export
	.type	_blank_background,@function
_blank_background:
.LFB8:
.LSM70:
	.set ___PA___,1
	lnk	#0
.LSM71:
	nop	
	bra	.L59
.L61:
	nop	
.L59:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L61
.LSM72:
	clr	w0
	rcall	_rcc_color
.LSM73:
	mov	#480,w3
	mov	#79,w2
	clr	w1
	clr	w0
	rcall	_rcc_draw
.LSM74:
	ulnk	
	return	
	.set ___PA___,0
.LFE8:
	.size	_blank_background, .-_blank_background
	.align	2
	.global	_cleanup	; export
	.type	_cleanup,@function
_cleanup:
.LFB9:
.LSM75:
	.set ___PA___,1
	lnk	#0
.LSM76:
	clr	w0
	rcall	_rcc_color
.LSM77:
	mov	#480,w3
	mov	#1,w2
	clr	w1
	mov	#79,w0
	rcall	_rcc_draw
.LSM78:
	ulnk	
	return	
	.set ___PA___,0
.LFE9:
	.size	_cleanup, .-_cleanup
	.align	2
	.global	_drawBorder	; export
	.type	_drawBorder,@function
_drawBorder:
.LFB10:
.LSM79:
	.set ___PA___,1
	lnk	#2
	mov	w0,[w14]
.LSM80:
	mov	[w14],w0
	rcall	_rcc_color
.LSM81:
	mov	#480,w3
	mov	#1,w2
	clr	w1
	clr	w0
	rcall	_rcc_draw
.LSM82:
	mov	#480,w3
	mov	#1,w2
	clr	w1
	mov	#78,w0
	rcall	_rcc_draw
.LSM83:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,w3
	mov	#78,w2
	clr	w1
	clr	w0
	rcall	_rcc_draw
.LSM84:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#480,w6
	sub	w6,w4,w4
	mov	w5,w3
	mov	#78,w2
	mov	w4,w1
	clr	w0
	rcall	_rcc_draw
.LSM85:
	ulnk	
	return	
	.set ___PA___,0
.LFE10:
	.size	_drawBorder, .-_drawBorder
	.align	2
	.global	_verBlind	; export
	.type	_verBlind,@function
_verBlind:
.LFB11:
.LSM86:
	.set ___PA___,1
	lnk	#0
.LSM87:
	clr	w0
	rcall	_rcc_color
.LSM88:
	mov	_blind.8374,w4
	mov	w4,w3
	mov	#79,w2
	clr	w1
	clr	w0
	rcall	_rcc_draw
.LSM89:
	mov	_blind.8374,w5
	mov	_blind.8374,w4
	mov	#480,w6
	sub	w6,w4,w4
	mov	w5,w3
	mov	#79,w2
	mov	w4,w1
	clr	w0
	rcall	_rcc_draw
.LSM90:
	mov	_blind.8374,w5
	mov	#99,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L64
.LSM91:
	mov	_blind.8374,w4
	inc2	w4,w4
	mov	w4,_blind.8374
.L64:
.LSM92:
	ulnk	
	return	
	.set ___PA___,0
.LFE11:
	.size	_verBlind, .-_verBlind
	.section	.nbss,bss,near
	.align	2
	.type	_blind.8374,@object
	.size	_blind.8374, 2
_blind.8374:
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
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x759
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
	.asciz	"radians"
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.4byte	0x2b4
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.4byte	0x2b4
	.uleb128 0x8
	.asciz	"angle"
	.byte	0x1
	.byte	0x12
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"float"
	.uleb128 0x7
	.byte	0x1
	.asciz	"realtoint"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	0xde
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5e
	.4byte	0x334
	.uleb128 0x8
	.asciz	"oldval"
	.byte	0x1
	.byte	0x16
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x8
	.asciz	"oldmin"
	.byte	0x1
	.byte	0x16
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x8
	.asciz	"oldmax"
	.byte	0x1
	.byte	0x16
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x8
	.asciz	"newmin"
	.byte	0x1
	.byte	0x16
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.uleb128 0x8
	.asciz	"newmax"
	.byte	0x1
	.byte	0x16
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 -10
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"rcc_color"
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5e
	.4byte	0x362
	.uleb128 0x8
	.asciz	"color"
	.byte	0x1
	.byte	0x1b
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"rcc_setdest"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5e
	.4byte	0x390
	.uleb128 0x8
	.asciz	"buf"
	.byte	0x1
	.byte	0x23
	.4byte	0x390
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	0x102
	.uleb128 0x9
	.byte	0x1
	.asciz	"rcc_draw"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5e
	.4byte	0x3e4
	.uleb128 0x8
	.asciz	"x"
	.byte	0x1
	.byte	0x32
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x8
	.asciz	"y"
	.byte	0x1
	.byte	0x32
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x8
	.asciz	"w"
	.byte	0x1
	.byte	0x32
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x8
	.asciz	"h"
	.byte	0x1
	.byte	0x32
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"rcc_w1tow2"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5e
	.4byte	0x420
	.uleb128 0x8
	.asciz	"dest"
	.byte	0x1
	.byte	0x4c
	.4byte	0x390
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x8
	.asciz	"src"
	.byte	0x1
	.byte	0x4c
	.4byte	0x390
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"line"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5e
	.4byte	0x4dc
	.uleb128 0x8
	.asciz	"x0"
	.byte	0x1
	.byte	0x6a
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 16
	.uleb128 0x8
	.asciz	"y0"
	.byte	0x1
	.byte	0x6a
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 18
	.uleb128 0x8
	.asciz	"x1"
	.byte	0x1
	.byte	0x6a
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 20
	.uleb128 0x8
	.asciz	"y1"
	.byte	0x1
	.byte	0x6a
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 22
	.uleb128 0xb
	.asciz	"sizeW"
	.byte	0x1
	.byte	0x6b
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0xb
	.asciz	"sizeH"
	.byte	0x1
	.byte	0x6c
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0xb
	.asciz	"dx"
	.byte	0x1
	.byte	0x6e
	.4byte	0xde
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0xb
	.asciz	"sx"
	.byte	0x1
	.byte	0x6e
	.4byte	0xde
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0xb
	.asciz	"dy"
	.byte	0x1
	.byte	0x6f
	.4byte	0xde
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0xb
	.asciz	"sy"
	.byte	0x1
	.byte	0x6f
	.4byte	0xde
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.uleb128 0xb
	.asciz	"err"
	.byte	0x1
	.byte	0x70
	.4byte	0xde
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xb
	.asciz	"e2"
	.byte	0x1
	.byte	0x70
	.4byte	0xde
	.byte	0x2
	.byte	0x7e
	.sleb128 14
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"lineFloat"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5e
	.4byte	0x5c9
	.uleb128 0x8
	.asciz	"x1"
	.byte	0x1
	.byte	0x7c
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 34
	.uleb128 0x8
	.asciz	"y1"
	.byte	0x1
	.byte	0x7c
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 38
	.uleb128 0x8
	.asciz	"x2"
	.byte	0x1
	.byte	0x7c
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 42
	.uleb128 0x8
	.asciz	"y2"
	.byte	0x1
	.byte	0x7c
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 46
	.uleb128 0xb
	.asciz	"i"
	.byte	0x1
	.byte	0x7e
	.4byte	0x132
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0xb
	.asciz	"sizeW"
	.byte	0x1
	.byte	0x7f
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0xb
	.asciz	"sizeH"
	.byte	0x1
	.byte	0x80
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0xb
	.asciz	"hl"
	.byte	0x1
	.byte	0x81
	.4byte	0x5c9
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0xb
	.asciz	"vl"
	.byte	0x1
	.byte	0x81
	.4byte	0x5c9
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0xb
	.asciz	"length"
	.byte	0x1
	.byte	0x81
	.4byte	0x5c9
	.byte	0x2
	.byte	0x7e
	.sleb128 14
	.uleb128 0xb
	.asciz	"deltax"
	.byte	0x1
	.byte	0x82
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 18
	.uleb128 0xb
	.asciz	"deltay"
	.byte	0x1
	.byte	0x82
	.4byte	0x2b4
	.byte	0x2
	.byte	0x7e
	.sleb128 22
	.uleb128 0xc
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xb
	.asciz	"x"
	.byte	0x1
	.byte	0x84
	.4byte	0x142
	.byte	0x2
	.byte	0x7e
	.sleb128 26
	.uleb128 0xb
	.asciz	"y"
	.byte	0x1
	.byte	0x84
	.4byte	0x142
	.byte	0x2
	.byte	0x7e
	.sleb128 30
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.asciz	"double"
	.uleb128 0xd
	.byte	0x1
	.asciz	"blank_background"
	.byte	0x1
	.byte	0x91
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5e
	.uleb128 0xe
	.byte	0x1
	.asciz	"cleanup"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5e
	.uleb128 0x9
	.byte	0x1
	.asciz	"drawBorder"
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5e
	.4byte	0x634
	.uleb128 0x8
	.asciz	"c"
	.byte	0x1
	.byte	0x9f
	.4byte	0x122
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.asciz	"verBlind"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5e
	.4byte	0x664
	.uleb128 0xb
	.asciz	"blind"
	.byte	0x1
	.byte	0xac
	.4byte	0x122
	.byte	0x5
	.byte	0x3
	.4byte	_blind.8374
	.byte	0x0
	.uleb128 0xf
	.asciz	"G1CMDL"
	.byte	0x3
	.2byte	0x184b
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x132
	.uleb128 0xf
	.asciz	"G1CMDH"
	.byte	0x3
	.2byte	0x1861
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x18a3
	.4byte	0x699
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x271
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x18c6
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x18dc
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x18ea
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x1900
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.asciz	"PIX_H"
	.byte	0x4
	.byte	0x8d
	.4byte	0x102
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.asciz	"G1CMDL"
	.byte	0x3
	.2byte	0x184b
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.asciz	"G1CMDH"
	.byte	0x3
	.2byte	0x1861
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x18a3
	.4byte	0x699
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x18c6
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x18dc
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x3
	.2byte	0x18ea
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x3
	.2byte	0x1900
	.4byte	0x675
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.4byte	0xb6
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x75d
	.4byte	0x284
	.asciz	"radians"
	.4byte	0x2bd
	.asciz	"realtoint"
	.4byte	0x334
	.asciz	"rcc_color"
	.4byte	0x362
	.asciz	"rcc_setdest"
	.4byte	0x397
	.asciz	"rcc_draw"
	.4byte	0x3e4
	.asciz	"rcc_w1tow2"
	.4byte	0x420
	.asciz	"line"
	.4byte	0x4dc
	.asciz	"lineFloat"
	.4byte	0x5d3
	.asciz	"blank_background"
	.4byte	0x5f2
	.asciz	"cleanup"
	.4byte	0x609
	.asciz	"drawBorder"
	.4byte	0x634
	.asciz	"verBlind"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x48
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x75d
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
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
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
	.4byte	.LSM3
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
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
	.4byte	.LSM6
	.byte	0x2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x15
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
	.4byte	.LFE2
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
	.4byte	.LSM16
	.byte	0x15
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
	.4byte	.LSM19
	.byte	0x1c
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
	.4byte	.LSM20
	.byte	0x45
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x17
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM29
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM30
	.byte	0x16
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
	.4byte	.LSM31
	.byte	0x5f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM42
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM43
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM44
	.byte	0x17
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
	.4byte	.LSM45
	.byte	0x7d
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
	.byte	0x16
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
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x16
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
	.4byte	.LSM59
	.byte	0x8f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x17
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM67
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x1f
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
	.4byte	.LSM70
	.byte	0xa4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x15
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
	.4byte	.LFE8
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0xaa
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
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
	.4byte	.LSM79
	.byte	0xb2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM82
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM83
	.byte	0x15
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
	.4byte	.LFE10
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0xbc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x15
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
	.4byte	.LSM92
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE11
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
