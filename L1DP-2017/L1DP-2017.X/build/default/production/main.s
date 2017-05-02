	.file "C:\\Users\\jamis\\Desktop\\my_root\\Development\\Circuits\\PIC\\L1Demoparty\\L1DP-2017\\L1DP-2017.X\\main.c"
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
	.global	_audioIntro	; export
	.type	_audioIntro,@function
_audioIntro:
.LFB5:
.LSM0:
	.set ___PA___,1
.LSM1:
	return	
	.set ___PA___,0
.LFE5:
	.size	_audioIntro, .-_audioIntro
	.align	2
	.global	_audioCredits	; export
	.type	_audioCredits,@function
_audioCredits:
.LFB11:
.LSM2:
	.set ___PA___,1
.LSM3:
	clr.b	w0
	return	
	.set ___PA___,0
.LFE11:
	.size	_audioCredits, .-_audioCredits
	.section .const,psv,page
.LC0:
	.asciz	"Initing scene %i: %s\012"
	.section	.text,code
	.align	2
	.global	_initCredits	; export
	.type	_initCredits,@function
_initCredits:
.LFB9:
.LSM4:
	.set ___PA___,1
.LSM5:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM6:
	sl	w4,#5,w5
	mov	#_story_state+14,w6
	add	w6,w5,[w15++]
.LCFI0:
	mov	w4,[w15++]
.LCFI1:
	mov	#.LC0,w4
	mov	w4,[w15++]
.LCFI2:
.LCFI3:
	rcall	__printf_cdnopsuxX
.LSM7:
	bclr.b	_G1CLUTbits+1,#7
	sub	w15,#6,w15
.LCFI4:
.LSM8:
	return	
	.set ___PA___,0
.LFE9:
	.size	_initCredits, .-_initCredits
	.align	2
	.global	_initIntro	; export
	.type	_initIntro,@function
_initIntro:
.LFB3:
.LSM9:
	.set ___PA___,1
.LSM10:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM11:
	sl	w4,#5,w5
	mov	#_story_state+14,w6
	add	w6,w5,[w15++]
.LCFI5:
	mov	w4,[w15++]
.LCFI6:
	mov	#.LC0,w4
	mov	w4,[w15++]
.LCFI7:
.LCFI8:
	rcall	__printf_cdnopsuxX
.LSM12:
	push	_currentSpriteOffset
	pop	_currentSpriteIndex
.LSM13:
	bclr.b	_G1CLUTbits+1,#7
.LSM14:
	mov	#16904,w1
	mov.b	#1,w0
	rcall	_clut_set
.LSM15:
	mov	#-26016,w1
	mov.b	#2,w0
	rcall	_clut_set
.LSM16:
	mov	#-18432,w1
	mov.b	#3,w0
	rcall	_clut_set
.LSM17:
	mov	#8484,w1
	mov.b	#4,w0
	rcall	_clut_set
.LSM18:
	mov.b	_clutStart,WREG
	ze	w0,w0
	rcall	_calc_colors
.LSM19:
	bset.b	_G1CLUTbits+1,#7
	sub	w15,#6,w15
.LCFI9:
.LSM20:
	return	
	.set ___PA___,0
.LFE3:
	.size	_initIntro, .-_initIntro
	.align	2
	.global	_fast_pixel	; export
	.type	_fast_pixel,@function
_fast_pixel:
.LFB1:
.LSM21:
	.set ___PA___,1
.LSM22:
	mov	#80,w4
	mul.ss	w3,w4,w4
	mov	#80,w6
	mul.uu	w2,w6,w2
	add	w4,w3,w3
	add	w0,w2,w0
	addc	w1,w3,w1
.L6:
.LSM23:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L6
.LSM24:
	mov	w0,_G1CMDL
.LSM25:
	mov	#25344,w4
	ior	w1,w4,w4
	mov	w4,_G1CMDH
.L7:
.LSM26:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L7
.LSM27:
	mov	#4102,w4
	mov	w4,_G1CMDL
.LSM28:
	mov	#25600,w4
	mov	w4,_G1CMDH
.L8:
.LSM29:
	btst	_G1STATbits,#1
	.set ___BP___,50
	bra	nz,.L8
.LSM30:
	mov	#96,w4
	mov	w4,_G1CMDL
.LSM31:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM32:
	nop	
.LSM33:
	return	
	.set ___PA___,0
.LFE1:
	.size	_fast_pixel, .-_fast_pixel
	.align	2
	.type	_drawSprite,@function
_drawSprite:
.LFB0:
.LSM34:
	.set ___PA___,1
	add	w15,#14,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov	w0,[w15-20]
	mov	w1,[w15-22]
	mov.b	w3,[w15-18]
.LSM35:
	mov	#78,w4
	mov	w0,w1
	sub	w1,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L12
	mov	#478,w4
	mov	[w15-22],w5
	sub	w5,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L12
.LSM36:
	ze	w2,w2
	mul.su	w2,#1,w4
	mul.uu	w4,#10,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4+1],w4
	clr	w14
	sub.b	w4,#0,[w15]
	.set ___BP___,95
	bra	nz,.L14
	bra	.L12
.L19:
.LSM37:
	mov.d	w12,w6
	mov	w11,w7
	add	w6,#6,w6
	addc	w7,#0,w7
	mov	#_s,w5
	add	w5,w6,w6
	mul.ss	w0,w14,w0
	add	w10,w0,w0
	mov	#0,w1
	add	w0,[w6++],w0
	addc	w1,[w6--],w1
	mov	_DSRPAG,w4
	btsts.c	w0,#15
	rlc	w1,w1
	mov	w1,_DSRPAG
	mov.b	[w0],w0
	mov	w4,_DSRPAG
.LSM38:
	mov.d	w12,w6
	mov	w11,w7
	add	w6,#2,w6
	addc	w7,#0,w7
	add	w5,w6,w5
	mov.b	[w5+1],w4
	sub.b	w4,w0,[w15]
	.set ___BP___,48
	bra	z,.L15
.LSM39:
	ze	w0,w0
	rcall	_rcc_color
.LSM40:
	mov.b	[w15-18],w6
	sub.b	w6,#1,[w15]
	.set ___BP___,29
	bra	z,.L17
	.set ___BP___,50
	bra	ltu,.L16
	sub.b	w6,#2,[w15]
	.set ___BP___,71
	bra	nz,.L15
	bra	.L24
.L16:
	mov	[w15-20],w7
	add	w10,w7,w0
.LSM41:
	mov	#77,w1
	sub	w0,w1,[w15]
	.set ___BP___,50
	bra	gtu,.L15
.LSM42:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#0,w5
	mov	#480,w6
	mov	#0,w7
	sub	w6,w4,w4
	subb	w7,w5,w5
	sub	w8,w4,[w15]
	subb	w9,w5,[w15]
	.set ___BP___,4
	bra	geu,.L12
.LSM43:
	mov	#0,w1
	mov.d	w8,w2
	rcall	_fast_pixel
.LSM44:
	bra	.L15
.L17:
.LSM45:
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w0
	dec	w0,w0
	mov	[w15-20],w4
	add	w0,w4,w0
	sub	w0,w14,w0
.LSM46:
	mov	#_PIX_H,w5
	mov.b	[w5],w5
.LSM47:
	dec	w0,w4
	mov	#77,w6
	sub	w4,w6,[w15]
	.set ___BP___,50
	bra	gtu,.L15
.LSM48:
	ze	w5,w6
	mul.ss	w10,w6,w6
	mov	[w15-22],w1
	add	w1,w6,w1
	mov	w1,[w15-16]
.LSM49:
	mul.uu	w1,#1,w2
	ze	w5,w6
	mov	#0,w7
	mov	#480,w4
	mov	#0,w5
	sub	w4,w6,w4
	subb	w5,w7,w5
	mov	w4,[w15-26]
	mov	w5,[w15-24]
	sub	w2,w4,[w15]
	subb	w3,w5,[w15]
	.set ___BP___,50
	bra	geu,.L15
	sub	w1,#0,[w15]
	.set ___BP___,71
	bra	z,.L15
.LSM50:
	mov	#0,w1
	rcall	_fast_pixel
.LSM51:
	bra	.L15
.L24:
.LSM52:
	mov.d	w12,w4
	mov	#_s,w7
	add	w7,w4,w4
	mov.b	[w4],w4
	ze	w4,w0
	dec	w0,w0
	mov	[w15-20],w5
	add	w0,w5,w0
	sub	w0,w10,w0
.LSM53:
	mov	#_PIX_H,w6
	mov.b	[w6],w6
	mov.d	w12,w4
	add	w7,w4,w4
	mov.b	[w4+1],w2
.LSM54:
	mov	#78,w4
	sub	w0,w4,[w15]
	.set ___BP___,50
	bra	gtu,.L15
.LSM55:
	ze	w2,w2
	dec	w2,w2
	sub	w2,w14,w2
	ze	w6,w4
	mul.ss	w2,w4,w2
	mov	[w15-22],w7
	add	w7,w2,w2
.LSM56:
	mov	#0,w3
	ze	w6,w6
	mov	#0,w7
	mov	#480,w4
	mov	#0,w5
	sub	w4,w6,w4
	subb	w5,w7,w5
	sub	w2,w4,[w15]
	subb	w3,w5,[w15]
	.set ___BP___,71
	bra	geu,.L15
.LSM57:
	mov	#0,w1
	rcall	_fast_pixel
.L15:
.LSM58:
	inc	w10,w10
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w0
	sub	w0,w10,[w15]
	.set ___BP___,95
	bra	gtu,.L19
.L20:
.LSM59:
	inc	w14,w14
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4+1],w4
	ze	w4,w4
	sub	w4,w14,[w15]
	.set ___BP___,95
	bra	gtu,.L23
	bra	.L12
.L14:
.LSM60:
	asr	w2,#15,w3
	mul.su	w3,#10,w4
	mul.uu	w2,#10,w12
	add	w4,w13,w11
.L23:
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	.set ___BP___,4
	bra	z,.L20
.LSM61:
	sl	w14,#2,w8
	add	w14,w14,w5
	add	w8,w5,w8
	mov	[w15-22],w1
	add	w8,w1,w8
.LSM62:
	mov	#0,w9
	clr	w10
	mov	w4,w0
	bra	.L19
.L12:
.LSM63:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#14
	return	
	.set ___PA___,0
.LFE0:
	.size	_drawSprite, .-_drawSprite
	.section .const,psv,page
.LC1:
	.asciz	"Thank you Arko "
.LC3:
	.asciz	"that helps make"
.LC4:
	.asciz	"LayerOne happen!"
.LC5:
	.asciz	"Never enough time."
.LC6:
	.asciz	"Was it good for u?"
.LC2:
	.asciz	"and everyone at NSL"
	.section	.text,code
	.align	2
	.global	_drawCredits	; export
	.type	_drawCredits,@function
_drawCredits:
.LFB10:
.LSM64:
	.set ___PA___,1
.LSM65:
	mov	#_PIX_H,w1
	mov.b	[w1],w1
	ze	w1,w1
	sl	w1,#2,w1
	clr.b	w3
	mov.b	#8,w2
	mov	#24,w0
	rcall	_drawSprite
.LSM66:
	mov	#.LC1,w4
	mov	#_buf,w5
	repeat	#16-1
	mov.b	[w4++],[w5++]
	sub	#16, w4
.LSM67:
	mov	#228,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM68:
	mov	#.LC2,w4
	mov	#_buf,w5
	repeat	#20-1
	mov.b	[w4++],[w5++]
	sub	#20, w4
.LSM69:
	mov	#249,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM70:
	mov	#.LC3,w4
	mov	#_buf,w5
	repeat	#16-1
	mov.b	[w4++],[w5++]
	sub	#16, w4
.LSM71:
	mov	#270,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM72:
	mov	#.LC4,w4
	mov	#_buf,w5
	repeat	#17-1
	mov.b	[w4++],[w5++]
	sub	#17, w4
.LSM73:
	mov	#291,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM74:
	mov	#.LC5,w4
	mov	#_buf,w5
	repeat	#19-1
	mov.b	[w4++],[w5++]
	sub	#19, w4
.LSM75:
	mov	#354,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM76:
	mov	#.LC6,w4
	mov	#_buf,w5
	repeat	#19-1
	mov.b	[w4++],[w5++]
	sub	#19, w4
.LSM77:
	mov	#375,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM78:
	return	
	.set ___PA___,0
.LFE10:
	.size	_drawCredits, .-_drawCredits
	.section .const,psv,page
.LC7:
	.asciz	"Code MESS"
.LC8:
	.asciz	"by:jamisnemo"
	.section	.text,code
	.align	2
	.global	_drawIntro	; export
	.type	_drawIntro,@function
_drawIntro:
.LFB4:
.LSM79:
	.set ___PA___,1
	add	w15,#4,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov	w0,w12
.LSM80:
	mov	#_PIX_H,w10
	mov.b	[w10],w10
	ze	w10,w10
.LSM81:
	mov	#78,w4
	sub	w10,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L26
	sub	w10,#0,[w15]
	.set ___BP___,39
	bra	z,.L26
.LSM82:
	sub	w12,#0,[w15]
	.set ___BP___,50
	bra	z,.L40
	bra	.L44
.L30:
.LSM83:
	mov	#_color,w4
	mov.b	w12,[w4]
.LSM84:
	mov	#4,w0
	rcall	_rcc_color
.LSM85:
	mov	w10,w3
	mov	#1,w2
	mov	w11,w1
	mov	w9,w0
	rcall	_rcc_draw
.LSM86:
	inc	w9,w9
	sub	w9,w8,[w15]
	.set ___BP___,98
	bra	nz,.L30
	add	w13,w10,w13
	add	w11,w10,w11
.LSM87:
	sub	w13,w10,w5
	mov	#238,w4
	sub	w5,w4,[w15]
	.set ___BP___,91
	bra	leu,.L28
	bra	.L45
.L40:
.LSM88:
	mov	w10,w13
	mov	#120,w11
.LSM89:
	mov.b	#4,w12
.L28:
.LSM90:
	clr	w9
.LSM91:
	mov	#79,w8
	bra	.L30
.L45:
.LSM92:
	mov	_currentSpriteOffset,w2
	mov	w2,_currentSpriteIndex
.LSM93:
	mov	#_PIX_H,w1
	mov.b	[w1],w1
	ze	w1,w1
	mov	#-45,w4
	mul.ss	w1,w4,w4
	mov	#480,w1
	add	w1,w4,w1
	mov	#_rotAngle,w3
	mov.b	[w3],w3
	mov	#2,w0
	rcall	_drawSprite
	bra	.L26
.L44:
.LSM94:
	inc.b	_colorScrollSpeed
	mov	w10,[w15-16]
.LSM95:
	clr	w14
.LSM96:
	mov	#_sinetable,w13
	bra	.L32
.L36:
	mov	#_colorScrollSpeed,w4
	mov.b	[w4],w4
	ze	w4,w4
	mul.ss	w4,w12,w4
.LSM97:
	mul.uu	w8,#3,w6
.LSM98:
	mov.b	[w13+w6],w6
	add.b	w6,w4,w4
	add.b	w4,[w11],w4
	mov	#_color,w5
	mov.b	w4,[w5]
.LSM99:
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	nz,.L33
.LSM100:
	mov.b	#1,w6
	mov	#_color,w5
	mov.b	w6,[w5]
	bra	.L34
.L33:
.LSM101:
	add.b	w4,#1,[w15]
	.set ___BP___,72
	bra	nz,.L34
.LSM102:
	mov.b	#-2,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.L34:
.LSM103:
	mov	#_clutStart,w4
	mov.b	[w4],w4
	mov	#_color,w5
	mov.b	[w5],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,50
	bra	geu,.L35
.LSM104:
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.L35:
.LSM105:
	mov.b	_color,WREG
	ze	w0,w0
	rcall	_rcc_color
.LSM106:
	mov	w10,w3
	mov	#1,w2
	mov.d	w8,w0
	rcall	_rcc_draw
.LSM107:
	inc	w8,w8
	mov	#79,w4
	sub	w8,w4,[w15]
	.set ___BP___,98
	bra	nz,.L36
.LSM108:
	add	w14,w10,w14
	mov	[w15-16],w4
	add	w4,w10,w4
	mov	w4,[w15-16]
	sub	w4,w10,w5
	mov	#238,w4
	sub	w5,w4,[w15]
	.set ___BP___,9
	bra	gtu,.L37
.L32:
.LSM109:
	clr	w8
.LSM110:
	ze	w14,w11
	mov	#_sinetable,w6
	add	w6,w11,w11
.LSM111:
	mov	#120,w9
	add	w9,w14,w9
	bra	.L36
.L37:
.LSM112:
	mov	_spriteStepTimeout,w4
	inc	w4,w4
	mov	w4,_spriteStepTimeout
.LSM113:
	mov	_spriteStepTrigger,w5
	add	w5,#30,w5
	sub	w4,w5,[w15]
	.set ___BP___,50
	bra	le,.L38
.LSM114:
	mov	_currentSpriteOffset,w4
	inc	w4,w4
	mov	w4,_currentSpriteIndex
	bra	.L39
.L38:
.LSM115:
	mov	_currentSpriteOffset,w5
	inc2	w5,w5
	mov	w5,_currentSpriteIndex
.L39:
.LSM116:
	mov	#_PIX_H,w1
	mov.b	[w1],w1
	ze	w1,w1
	mov	#-45,w4
	mul.ss	w1,w4,w4
	mov	#480,w1
	add	w1,w4,w1
	mov	#_rotAngle,w3
	mov.b	[w3],w3
	mov	#_currentSpriteIndex,w2
	mov.b	[w2],w2
	mov	#2,w0
	rcall	_drawSprite
.LSM117:
	mov	#.LC7,w4
	mov	#_buf,w6
	repeat	#10-1
	mov.b	[w4++],[w6++]
	sub	#10, w4
.LSM118:
	mov	#101,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM119:
	mov	#.LC8,w4
	mov	#_buf,w5
	repeat	#13-1
	mov.b	[w4++],[w5++]
	sub	#13, w4
.LSM120:
	mov	#354,w2
	mov	#32,w1
	mov	#_buf,w0
	rcall	_chr_print
.L26:
.LSM121:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE4:
	.size	_drawIntro, .-_drawIntro
	.align	2
	.global	__T1Interrupt	; export
	.type	__T1Interrupt,@function
__T1Interrupt:
.LFB2:
.LSM122:
	.set ___PA___,1
	mov.d	w4,[w15++]
	mov.d	w6,[w15++]
	push	_DSRPAG
	mov	#__const_psvpage,w4
	mov	w4,_DSRPAG
.LSM123:
	mov	#_story_state,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	nz,.L47
.LSM124:
	mov	#_idx.8467,w4
	mov.b	[w4],w4
	ze	w4,w4
	asr	w4,#15,w5
	mov	#_zigzagtable,w6
	add	w6,w4,w6
	mov.b	[w6],w6
	ze	w6,w6
	lsr	w6,#2,w6
	and	w6,#15,w6
	sl	w6,#8,w6
	mov	#_sinetable,w7
	add	w7,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	lsr	w4,#2,w4
	sl	w4,#12,w4
	ior	w4,w6,w4
	mov	w4,_PORTB
	bra	.L48
.L47:
.LSM125:
	mov	#_idx.8467,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#_sinetable,w5
	add	w5,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	lsr	w4,#2,w4
	sl	w4,#8,w4
	mov	w4,_PORTB
.L48:
.LSM126:
	mov	_frames,w4
	sub	w4,#0,[w15]
	.set ___BP___,39
	bra	z,.L49
.LSM127:
	dec.b	_idx.8467
.L49:
.LSM128:
	bclr.b	_IFS0bits,#3
.LSM129:
	pop	_DSRPAG
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	retfie	
	.set ___PA___,0
.LFE2:
	.size	__T1Interrupt, .-__T1Interrupt
	.align	2
	.global	_initRoad	; export
	.type	_initRoad,@function
_initRoad:
.LFB6:
.LSM130:
	.set ___PA___,1
.LSM131:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM132:
	sl	w4,#5,w5
	mov	#_story_state+14,w6
	add	w6,w5,[w15++]
.LCFI10:
	mov	w4,[w15++]
.LCFI11:
	mov	#.LC0,w4
	mov	w4,[w15++]
.LCFI12:
.LCFI13:
	rcall	__printf_cdnopsuxX
.LSM133:
	push	_currentSpriteOffset
	pop	_currentSpriteIndex
	sub	w15,#6,w15
.LCFI14:
.LSM134:
	return	
	.set ___PA___,0
.LFE6:
	.size	_initRoad, .-_initRoad
	.align	2
	.global	_drawRoad	; export
	.type	_drawRoad,@function
_drawRoad:
.LFB7:
.LSM135:
	.set ___PA___,1
.LSM136:
	mov	#_PIX_H,w1
	mov.b	[w1],w1
	ze	w1,w1
	mov	#-45,w5
	mul.ss	w1,w5,w4
	mov	#480,w1
	add	w1,w4,w1
	mov	#_rotAngle,w3
	mov.b	[w3],w3
	mov	#_currentSpriteIndex,w2
	mov.b	[w2],w2
	mov	#2,w0
	rcall	_drawSprite
.LSM137:
	return	
	.set ___PA___,0
.LFE7:
	.size	_drawRoad, .-_drawRoad
	.align	2
	.global	_audioRoad	; export
	.type	_audioRoad,@function
_audioRoad:
.LFB8:
.LSM138:
	.set ___PA___,1
.LSM139:
	ze	w0,w0
	lsr	w0,w0
.LSM140:
	return	
	.set ___PA___,0
.LFE8:
	.size	_audioRoad, .-_audioRoad
	.align	2
	.global	_loadScenes	; export
	.type	_loadScenes,@function
_loadScenes:
.LFB12:
.LSM141:
	.set ___PA___,1
.LSM142:
	mov	#_story_state+4,w4
	repeat	#16-1
	clr	[w4++]
	mov	#400,w4
	mov	w4,_story_state+6
	mov	#handle(_initIntro),w5
	mov	w5,_story_state+8
	mov	#handle(_drawIntro),w5
	mov	w5,_story_state+10
	mov	#handle(_audioIntro),w5
	mov	w5,_story_state+12
	mov	#28233,w5
	mov	w5,_story_state+14
	mov	#29300,w5
	mov	w5,_story_state+14+2
	mov	#111,w5
	mov	w5,_story_state+18
	clr	_story_state+18+2
	mov	#_story_state+22,w5
	repeat	#6-1
	clr	[w5++]
	clr.b	[w5++]
.LSM143:
	mov	#_story_state+36,w5
	repeat	#16-1
	clr	[w5++]
	mov	w4,_story_state+38
	mov	#handle(_initCredits),w4
	mov	w4,_story_state+40
	mov	#handle(_drawCredits),w4
	mov	w4,_story_state+42
	mov	#handle(_audioCredits),w4
	mov	w4,_story_state+44
	mov	#29251,w4
	mov	w4,_story_state+46
	mov	#25701,w4
	mov	w4,_story_state+46+2
	mov	#29801,w5
	mov	w5,_story_state+50
	mov	#115,w5
	mov	w5,_story_state+50+2
	mov	#_story_state+54,w4
	repeat	#6-1
	clr	[w4++]
	clr.b	[w4++]
.LSM144:
	return	
	.set ___PA___,0
.LFE12:
	.size	_loadScenes, .-_loadScenes
	.section .const,psv,page
.LC9:
	.asciz	"Initing demo...\015"
	.section	.text,code
	.align	2
	.global	_initDemo	; export
	.type	_initDemo,@function
_initDemo:
.LFB13:
.LSM145:
	.set ___PA___,1
.LSM146:
	mov	#.LC9,w0
	rcall	_puts
.LSM147:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#480,w5
	sub	w5,w4,w4
	mov	w4,_maxY
.LSM148:
	rcall	_blank_background
.LSM149:
	rcall	_loadAllSprites
.LSM150:
	rcall	_loadScenes
.LSM151:
	clr.b	w0
	mov.b	WREG,_story_state+1
	mov.b	WREG,_story_state
.LSM152:
	rcall	_switchScene
.LSM153:
	return	
	.set ___PA___,0
.LFE13:
	.size	_initDemo, .-_initDemo
	.section .const,psv,page
.LC10:
	.asciz	"f:%i s:%i"
	.section	.text,code
	.align	2
	.global	_drawFPS	; export
	.type	_drawFPS,@function
_drawFPS:
.LFB15:
.LSM154:
	.set ___PA___,1
.LSM155:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM156:
	asr	w4,#15,w5
	sl	w5,#5,w6
	lsr	w4,#11,w7
	ior	w6,w7,w7
	sl	w4,#5,w6
	add	w6,#6,w0
	addc	w7,#0,w1
	mov	#_story_state,w4
	add	w4,w0,w5
.LSM157:
	add	w6,#4,w6
	addc	w7,#0,w7
	add	w4,w6,w4
.LSM158:
	mov	[w5],w5
	add	w5,[w4],[w15++]
.LCFI15:
	push	_frames
.LCFI16:
	mov	#.LC10,w4
	mov	w4,[w15++]
.LCFI17:
	mov	#_buf,w0
.LCFI18:
	rcall	__sprintf_cdnopuxX
.LSM159:
	mov	#459,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
	sub	w15,#6,w15
.LCFI19:
.LSM160:
	return	
	.set ___PA___,0
.LFE15:
	.size	_drawFPS, .-_drawFPS
	.section .const,psv,page
.LC11:
	.asciz	"A letter!: '%c'\015\012"
.LC12:
	.asciz	"Restting frames\015"
.LC13:
	.asciz	"Toggling CLUT\015"
.LC14:
	.asciz	"That char is not a number or letter: '%c'\015\012"
	.section	.text,code
	.align	2
	.global	_handleSerialInput	; export
	.type	_handleSerialInput,@function
_handleSerialInput:
.LFB16:
.LSM161:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
.LSM162:
	setm	w12
.LSM163:
	mov	#_dataAvailable,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,39
	bra	z,.L57
.LSM164:
	clr.b	_dataAvailable
.LSM165:
	mov	_rxSize,w4
	sub	w4,#0,[w15]
	.set ___BP___,1
	bra	z,.L58
	clr	w8
.LBB2:
.LSM166:
	mov	#_rx1Buf,w10
.LSM167:
	mov.b	#-48,w11
.LSM168:
	mov	#.LC11,w13
.LSM169:
	mov	#.LC14,w14
.L64:
.LSM170:
	mov.b	[w10+w8],w4
	mov.b	w4,w9
.LSM171:
	add.b	w4,w11,w5
	sub.b	w5,#9,[w15]
	.set ___BP___,50
	bra	gtu,.L59
.LBB3:
.LSM172:
	se	w4,w12
	sub	#48,w12
	bra	.L60
.L59:
.LBE3:
.LSM173:
	mov.b	#-65,w5
	add.b	w4,w5,w5
	sub.b	w5,#25,[w15]
	.set ___BP___,29
	bra	leu,.L61
	mov.b	#-97,w5
	add.b	w4,w5,w4
	sub.b	w4,#25,[w15]
	.set ___BP___,50
	bra	gtu,.L62
.L61:
.LSM174:
	se	w9,w4
	mov	w4,[w15++]
.LCFI20:
	mov	w13,[w15++]
.LCFI21:
.LCFI22:
	rcall	__printf_cdnopsuxX
.LSM175:
	sub	w15,#4,w15
.LCFI23:
	mov.b	#114,w4
	sub.b	w9,w4,[w15]
	.set ___BP___,86
	bra	nz,.L63
.LSM176:
	mov	#.LC12,w0
.LCFI24:
	rcall	_puts
.LSM177:
	clr	_frames
	bra	.L60
.L63:
.LSM178:
	mov.b	#101,w4
	sub.b	w9,w4,[w15]
	.set ___BP___,86
	bra	nz,.L60
.LSM179:
	mov	#.LC13,w0
	rcall	_puts
.LSM180:
	mov	#_story_state+3,w4
	mov.b	[w4],w4
	btg.b	w4,#0
	mov	#_story_state+3,w5
	mov.b	w4,[w5]
	sl	w4,#15,w4
	mov	#32767,w7
	mov	_G1CLUTbits,w6
	and	w7,w6,w5
	ior	w4,w5,w5
	mov	w5,_G1CLUTbits
	bra	.L60
.L62:
.LSM181:
	sub.b	w9,#10,[w15]
	.set ___BP___,28
	bra	z,.L60
	sub.b	w9,#13,[w15]
	.set ___BP___,48
	bra	z,.L60
.LSM182:
	se	w9,w9
	mov	w9,[w15++]
.LCFI25:
	mov	w14,[w15++]
.LCFI26:
.LCFI27:
	rcall	__printf_cdnopsuxX
	sub	w15,#4,w15
.LCFI28:
.L60:
.LBE2:
.LSM183:
	inc	w8,w8
	mov	_rxSize,w4
	sub	w4,w8,[w15]
	.set ___BP___,99
	bra	gtu,.L64
.L58:
.LSM184:
.LCFI29:
	rcall	_reset_buffer
.L57:
.LSM185:
	mov	w12,w0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE16:
	.size	_handleSerialInput, .-_handleSerialInput
	.section .const,psv,page
.LC15:
	.asciz	"Welcome to project: %s!\015\012"
.LC16:
	.asciz	"Please jump R28 to"
.LC17:
	.asciz	"to Ground..."
	.section	.text,code
	.align	2
	.global	_codecrow	; export
	.type	_codecrow,@function
_codecrow:
.LFB14:
.LSM186:
	.set ___PA___,1
	mov.d	w8,[w15++]
.LSM187:
	mov	#_projectName,w4
	mov	w4,[w15++]
.LCFI30:
	mov	#.LC15,w4
	mov	w4,[w15++]
.LCFI31:
.LCFI32:
	rcall	__printf_cdnopsuxX
.LSM188:
	rcall	_initDemo
	sub	w15,#4,w15
.LCFI33:
.LSM189:
	mov	#.LC16,w8
.LSM190:
	mov	#.LC17,w9
.L71:
.LSM191:
.LCFI34:
	rcall	_frameStart
.LSM192:
	rcall	_manageFrameReset
.LSM193:
	rcall	_handleSerialInput
	mov.b	WREG,_serialStoryIndex
.LSM194:
	rcall	_drawCurrentScene
.LSM195:
	rcall	_checkForJumper
.LSM196:
	mov	#_story_state+1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	z,.L69
.LSM197:
	inc	_frames
.LSM198:
	rcall	_checkSceneFinished
	bra	.L70
.L69:
.LSM199:
	mov	#_buf,w4
	repeat	#19-1
	mov.b	[w8++],[w4++]
	sub	#19, w8
.LSM200:
	mov	#417,w2
	mov	#2,w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM201:
	mov	#_buf,w4
	repeat	#13-1
	mov.b	[w9++],[w4++]
	sub	#13, w9
.LSM202:
	mov	#438,w2
	mov	#22,w1
	mov	#_buf,w0
	rcall	_chr_print
.L70:
.LSM203:
	rcall	_frameEnd
.LSM204:
	bra	.L71
.LFE14:
	.size	_codecrow, .-_codecrow
	.align	2
	.global	_main	; export
	.type	_main,@function
_main:
.LFB17:
.LSM205:
	.set ___PA___,1
.LSM206:
	rcall	_setupHardware
.LSM207:
	rcall	_codecrow
.LSM208:
	clr	w0
	return	
	.set ___PA___,0
.LFE17:
	.size	_main, .-_main
	.global	_projectName	; export
	.section	.ndata,data,near
	.type	_projectName,@object
	.size	_projectName, 10
_projectName:
	.asciz	"Code MESS"
	.global	_serialStoryIndex	; export
	.type	_serialStoryIndex,@object
	.size	_serialStoryIndex, 1
_serialStoryIndex:
	.byte 100
	.global	_maxY	; export
	.align	2
	.type	_maxY,@object
	.size	_maxY, 2
_maxY:
	.word	474
	.global	_color	; export
	.section	.nbss,bss,near
	.type	_color,@object
	.size	_color, 1
_color:
	.skip	1
	.global	_clutStart	; export
	.section	.ndata,data,near
	.type	_clutStart,@object
	.size	_clutStart, 1
_clutStart:
	.byte 5
	.global	_speed	; export
	.align	2
	.type	_speed,@object
	.size	_speed, 2
_speed:
	.word	1
	.global	_dir	; export
	.align	2
	.type	_dir,@object
	.size	_dir, 2
_dir:
	.word	1
	.global	_xPosition	; export
	.section	.nbss,bss,near
	.align	2
	.type	_xPosition,@object
	.size	_xPosition, 2
_xPosition:
	.skip	2
	.global	_rotAngle	; export
	.type	_rotAngle,@object
	.size	_rotAngle, 1
_rotAngle:
	.skip	1
	.global	_currentSpriteIndex	; export
	.align	2
	.type	_currentSpriteIndex,@object
	.size	_currentSpriteIndex, 2
_currentSpriteIndex:
	.skip	2
	.global	_currentSpriteOffset	; export
	.section	.ndata,data,near
	.align	2
	.type	_currentSpriteOffset,@object
	.size	_currentSpriteOffset, 2
_currentSpriteOffset:
	.word	1
	.global	_currentSpriteFrameCount	; export
	.align	2
	.type	_currentSpriteFrameCount,@object
	.size	_currentSpriteFrameCount, 2
_currentSpriteFrameCount:
	.word	3
	.global	_spriteStepTimeout	; export
	.section	.nbss,bss,near
	.align	2
	.type	_spriteStepTimeout,@object
	.size	_spriteStepTimeout, 2
_spriteStepTimeout:
	.skip	2
	.global	_spriteStepTrigger	; export
	.section	.ndata,data,near
	.align	2
	.type	_spriteStepTrigger,@object
	.size	_spriteStepTrigger, 2
_spriteStepTrigger:
	.word	10
	.global	_colorScrollSpeed	; export
	.section	.nbss,bss,near
	.type	_colorScrollSpeed,@object
	.size	_colorScrollSpeed, 1
_colorScrollSpeed:
	.skip	1
	.type	_buf,@object
	.global	_buf
_buf:	.space	20
	.type	_idx.8467,@object
	.size	_idx.8467, 1
_idx.8467:
	.skip	1
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI0-.LFB9
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x13
	.sleb128 -2
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI5-.LFB3
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x13
	.sleb128 -2
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI10-.LFB6
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x13
	.sleb128 -2
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	4
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI15-.LFB15
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x13
	.sleb128 -2
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI20-.LFB16
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x2e
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x2e
	.uleb128 0x0
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI30-.LFB14
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x2e
	.uleb128 0x0
	.align	4
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.align	4
.LEFDE34:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0xee4
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.24) (0) Build date: Dec 19 2014"
	.byte	0x1
	.asciz	"main.c"
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
	.byte	0x3
	.byte	0x2b
	.4byte	0x106
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x3
	.byte	0x31
	.4byte	0x127
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
	.asciz	"tagIFS0BITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1af
	.4byte	0x2ad
	.uleb128 0x5
	.asciz	"INT0IF"
	.byte	0x4
	.2byte	0x1b0
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC1IF"
	.byte	0x4
	.2byte	0x1b1
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC1IF"
	.byte	0x4
	.2byte	0x1b2
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T1IF"
	.byte	0x4
	.2byte	0x1b3
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IC2IF"
	.byte	0x4
	.2byte	0x1b5
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"OC2IF"
	.byte	0x4
	.2byte	0x1b6
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T2IF"
	.byte	0x4
	.2byte	0x1b7
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"T3IF"
	.byte	0x4
	.2byte	0x1b8
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPF1IF"
	.byte	0x4
	.2byte	0x1b9
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"SPI1IF"
	.byte	0x4
	.2byte	0x1ba
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1RXIF"
	.byte	0x4
	.2byte	0x1bb
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"U1TXIF"
	.byte	0x4
	.2byte	0x1bc
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"AD1IF"
	.byte	0x4
	.2byte	0x1bd
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"IFS0BITS"
	.byte	0x4
	.2byte	0x1be
	.4byte	0x191
	.uleb128 0x4
	.asciz	"tagG1STATBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1897
	.4byte	0x393
	.uleb128 0x5
	.asciz	"CMDMPT"
	.byte	0x4
	.2byte	0x1898
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMDFUL"
	.byte	0x4
	.2byte	0x1899
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CMDLV"
	.byte	0x4
	.2byte	0x189a
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"HMRGN"
	.byte	0x4
	.2byte	0x189b
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"VMRGN"
	.byte	0x4
	.2byte	0x189c
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CHRBUSY"
	.byte	0x4
	.2byte	0x189d
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"RCCBUSY"
	.byte	0x4
	.2byte	0x189e
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"IPUBUSY"
	.byte	0x4
	.2byte	0x189f
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"PUBUSY"
	.byte	0x4
	.2byte	0x18a1
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"G1STATBITS"
	.byte	0x4
	.2byte	0x18a2
	.4byte	0x2be
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0x1a6e
	.4byte	0x41f
	.uleb128 0x5
	.asciz	"CLUTADR"
	.byte	0x4
	.2byte	0x1a6f
	.4byte	0x127
	.byte	0x2
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTRWEN"
	.byte	0x4
	.2byte	0x1a70
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTTRD"
	.byte	0x4
	.2byte	0x1a71
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTBUSY"
	.byte	0x4
	.2byte	0x1a73
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTEN"
	.byte	0x4
	.2byte	0x1a74
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x4
	.2byte	0x1a76
	.4byte	0x4e1
	.uleb128 0x5
	.asciz	"CLUTADR0"
	.byte	0x4
	.2byte	0x1a77
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR1"
	.byte	0x4
	.2byte	0x1a78
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR2"
	.byte	0x4
	.2byte	0x1a79
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR3"
	.byte	0x4
	.2byte	0x1a7a
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR4"
	.byte	0x4
	.2byte	0x1a7b
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR5"
	.byte	0x4
	.2byte	0x1a7c
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR6"
	.byte	0x4
	.2byte	0x1a7d
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR7"
	.byte	0x4
	.2byte	0x1a7e
	.4byte	0x127
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.byte	0x4
	.2byte	0x1a6d
	.4byte	0x4f5
	.uleb128 0x9
	.4byte	0x3a6
	.uleb128 0x9
	.4byte	0x41f
	.byte	0x0
	.uleb128 0x4
	.asciz	"tagG1CLUTBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1a6c
	.4byte	0x515
	.uleb128 0xa
	.4byte	0x4e1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.asciz	"G1CLUTBITS"
	.byte	0x4
	.2byte	0x1a81
	.4byte	0x4f5
	.uleb128 0xb
	.asciz	"Sprite"
	.byte	0xa
	.byte	0x2
	.byte	0x2c
	.4byte	0x59a
	.uleb128 0xc
	.asciz	"width"
	.byte	0x2
	.byte	0x2d
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"height"
	.byte	0x2
	.byte	0x2e
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.asciz	"bitres"
	.byte	0x2
	.byte	0x2f
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"trans"
	.byte	0x2
	.byte	0x30
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.asciz	"rotate"
	.byte	0x2
	.byte	0x31
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"data"
	.byte	0x2
	.byte	0x32
	.4byte	0x59a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.byte	0x2
	.4byte	0xf7
	.uleb128 0xe
	.byte	0x20
	.byte	0x5
	.byte	0x22
	.4byte	0x62d
	.uleb128 0xc
	.asciz	"sceneStartFrame"
	.byte	0x5
	.byte	0x23
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"sceneLength"
	.byte	0x5
	.byte	0x24
	.4byte	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"sceneInit"
	.byte	0x5
	.byte	0x25
	.4byte	0x638
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"sceneDraw"
	.byte	0x5
	.byte	0x26
	.4byte	0x64e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"audioBuilder"
	.byte	0x5
	.byte	0x27
	.4byte	0x664
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.asciz	"sceneName"
	.byte	0x5
	.byte	0x28
	.4byte	0x66a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xf
	.4byte	0xd3
	.4byte	0x638
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x62d
	.uleb128 0x12
	.byte	0x1
	.4byte	0xd3
	.4byte	0x64e
	.uleb128 0x13
	.4byte	0x117
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x63e
	.uleb128 0x12
	.byte	0x1
	.4byte	0x106
	.4byte	0x664
	.uleb128 0x13
	.4byte	0x106
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x654
	.uleb128 0x14
	.4byte	0x17c
	.4byte	0x67a
	.uleb128 0x15
	.4byte	0x137
	.byte	0x14
	.byte	0x0
	.uleb128 0x3
	.asciz	"SCENE"
	.byte	0x5
	.byte	0x29
	.4byte	0x5a1
	.uleb128 0xe
	.byte	0x64
	.byte	0x5
	.byte	0x2c
	.4byte	0x6f8
	.uleb128 0xc
	.asciz	"currentScene"
	.byte	0x5
	.byte	0x30
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"storyPlaying"
	.byte	0x5
	.byte	0x31
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.asciz	"storyEnded"
	.byte	0x5
	.byte	0x33
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"clutState"
	.byte	0x5
	.byte	0x34
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.asciz	"scenes"
	.byte	0x5
	.byte	0x35
	.4byte	0x701
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x14
	.4byte	0x67a
	.4byte	0x711
	.uleb128 0x15
	.4byte	0x137
	.byte	0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"STORY_STATE"
	.byte	0x5
	.byte	0x36
	.4byte	0x687
	.uleb128 0x16
	.byte	0x1
	.asciz	"audioIntro"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.4byte	0x752
	.uleb128 0x17
	.asciz	"t"
	.byte	0x1
	.byte	0xee
	.4byte	0x106
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.asciz	"audioCredits"
	.byte	0x1
	.2byte	0x126
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5f
	.4byte	0x784
	.uleb128 0x19
	.asciz	"t"
	.byte	0x1
	.2byte	0x126
	.4byte	0x106
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.asciz	"initCredits"
	.byte	0x1
	.2byte	0x10d
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5f
	.4byte	0x7b2
	.uleb128 0x1b
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x10e
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"initIntro"
	.byte	0x1
	.byte	0x87
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.4byte	0x7dc
	.uleb128 0x1d
	.4byte	.LASF0
	.byte	0x1
	.byte	0x88
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"fast_pixel"
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.4byte	0x81d
	.uleb128 0x17
	.asciz	"ax"
	.byte	0x1
	.byte	0x47
	.4byte	0x137
	.byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x51
	.byte	0x93
	.uleb128 0x2
	.uleb128 0x17
	.asciz	"ay"
	.byte	0x1
	.byte	0x47
	.4byte	0x137
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x2
	.byte	0x53
	.byte	0x93
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x1f
	.asciz	"drawSprite"
	.byte	0x2
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.4byte	0x8ab
	.uleb128 0x17
	.asciz	"x"
	.byte	0x2
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x7f
	.sleb128 -20
	.uleb128 0x17
	.asciz	"y"
	.byte	0x2
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x7f
	.sleb128 -22
	.uleb128 0x17
	.asciz	"id"
	.byte	0x2
	.byte	0x3e
	.4byte	0xf7
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.asciz	"rotation"
	.byte	0x2
	.byte	0x3e
	.4byte	0xf7
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0x20
	.asciz	"w"
	.byte	0x2
	.byte	0x40
	.4byte	0x127
	.byte	0x1
	.byte	0x5a
	.uleb128 0x20
	.asciz	"h"
	.byte	0x2
	.byte	0x40
	.4byte	0x127
	.byte	0x1
	.byte	0x5e
	.uleb128 0x21
	.asciz	"x1"
	.byte	0x2
	.byte	0x41
	.4byte	0x117
	.uleb128 0x21
	.asciz	"y1"
	.byte	0x2
	.byte	0x41
	.4byte	0x117
	.uleb128 0x20
	.asciz	"color"
	.byte	0x2
	.byte	0x42
	.4byte	0xf7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.asciz	"drawCredits"
	.byte	0x1
	.2byte	0x113
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5f
	.4byte	0x8dc
	.uleb128 0x19
	.asciz	"frame"
	.byte	0x1
	.2byte	0x113
	.4byte	0x117
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"drawIntro"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x947
	.uleb128 0x17
	.asciz	"frame"
	.byte	0x1
	.byte	0x96
	.4byte	0x117
	.byte	0x1
	.byte	0x5c
	.uleb128 0x21
	.asciz	"i"
	.byte	0x1
	.byte	0x97
	.4byte	0x117
	.uleb128 0x21
	.asciz	"j"
	.byte	0x1
	.byte	0x97
	.4byte	0x117
	.uleb128 0x21
	.asciz	"sizeW"
	.byte	0x1
	.byte	0x97
	.4byte	0x117
	.uleb128 0x21
	.asciz	"sizeH"
	.byte	0x1
	.byte	0x97
	.4byte	0x117
	.uleb128 0x21
	.asciz	"vertOffset"
	.byte	0x1
	.byte	0x97
	.4byte	0x117
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"_T1Interrupt"
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x979
	.uleb128 0x20
	.asciz	"idx"
	.byte	0x1
	.byte	0x5e
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	_idx.8467
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"initRoad"
	.byte	0x1
	.byte	0xf4
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.4byte	0x9a2
	.uleb128 0x1d
	.4byte	.LASF0
	.byte	0x1
	.byte	0xf5
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"drawRoad"
	.byte	0x1
	.2byte	0x103
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5f
	.uleb128 0x18
	.byte	0x1
	.asciz	"audioRoad"
	.byte	0x1
	.2byte	0x106
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5f
	.4byte	0x9e9
	.uleb128 0x19
	.asciz	"t"
	.byte	0x1
	.2byte	0x106
	.4byte	0x106
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"loadScenes"
	.byte	0x1
	.2byte	0x130
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.byte	0x1
	.asciz	"initDemo"
	.byte	0x1
	.2byte	0x137
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5f
	.uleb128 0x23
	.byte	0x1
	.asciz	"drawFPS"
	.byte	0x1
	.2byte	0x177
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x5f
	.uleb128 0x24
	.byte	0x1
	.asciz	"handleSerialInput"
	.byte	0x1
	.2byte	0x17f
	.4byte	0xd3
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x5f
	.4byte	0xaac
	.uleb128 0x25
	.asciz	"toRet"
	.byte	0x1
	.2byte	0x182
	.4byte	0xd3
	.byte	0x1
	.byte	0x5c
	.uleb128 0x25
	.asciz	"i"
	.byte	0x1
	.2byte	0x183
	.4byte	0x117
	.byte	0x1
	.byte	0x58
	.uleb128 0x26
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x25
	.asciz	"c"
	.byte	0x1
	.2byte	0x189
	.4byte	0x17c
	.byte	0x1
	.byte	0x59
	.uleb128 0x26
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x27
	.asciz	"numberValue"
	.byte	0x1
	.2byte	0x18d
	.4byte	0x117
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.asciz	"codecrow"
	.byte	0x1
	.2byte	0x14a
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x5f
	.uleb128 0x28
	.byte	0x1
	.asciz	"main"
	.byte	0x1
	.2byte	0x1a5
	.byte	0x1
	.4byte	0xd3
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x5f
	.uleb128 0x29
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1bf
	.4byte	0xaeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0x2ad
	.uleb128 0x2b
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0xdad
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0x127
	.uleb128 0x2b
	.asciz	"G1CMDL"
	.byte	0x4
	.2byte	0x184b
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.asciz	"G1CMDH"
	.byte	0x4
	.2byte	0x1861
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x18a3
	.4byte	0xb35
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0x393
	.uleb128 0x29
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x1a82
	.4byte	0xb48
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0x515
	.uleb128 0x2c
	.asciz	"PIX_H"
	.byte	0x6
	.byte	0x8d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x106
	.4byte	0xb6c
	.uleb128 0x15
	.4byte	0x137
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2c
	.asciz	"rx1Buf"
	.byte	0x7
	.byte	0x12
	.4byte	0xb5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"rxSize"
	.byte	0x7
	.byte	0x14
	.4byte	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF4
	.byte	0x7
	.byte	0x16
	.4byte	0x6f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x106
	.4byte	0xba4
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF5
	.byte	0x8
	.byte	0x81
	.4byte	0xbb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	0xb99
	.uleb128 0x2d
	.4byte	.LASF6
	.byte	0x8
	.byte	0x82
	.4byte	0xbc3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	0xb99
	.uleb128 0x14
	.4byte	0x528
	.4byte	0xbd8
	.uleb128 0x15
	.4byte	0x137
	.byte	0x8
	.byte	0x0
	.uleb128 0x2c
	.asciz	"s"
	.byte	0x2
	.byte	0x34
	.4byte	0xbc8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF7
	.byte	0x5
	.byte	0x37
	.4byte	0x711
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"frames"
	.byte	0x5
	.byte	0x39
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x17c
	.4byte	0xc10
	.uleb128 0x15
	.4byte	0x137
	.byte	0x9
	.byte	0x0
	.uleb128 0x2d
	.4byte	.LASF8
	.byte	0x1
	.byte	0x41
	.4byte	0xc00
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x17c
	.4byte	0xc2d
	.uleb128 0x15
	.4byte	0x137
	.byte	0x13
	.byte	0x0
	.uleb128 0x2c
	.asciz	"buf"
	.byte	0x1
	.byte	0x42
	.4byte	0xc1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF9
	.byte	0x1
	.byte	0x43
	.4byte	0xc47
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0xf7
	.uleb128 0x2c
	.asciz	"maxY"
	.byte	0x1
	.byte	0x75
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"color"
	.byte	0x1
	.byte	0x78
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF10
	.byte	0x1
	.byte	0x7b
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF11
	.byte	0x1
	.byte	0x7f
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF12
	.byte	0x1
	.byte	0x80
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF13
	.byte	0x1
	.byte	0x81
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF14
	.byte	0x1
	.byte	0x83
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF15
	.byte	0x1
	.byte	0x84
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF16
	.byte	0x1
	.byte	0x86
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1bf
	.4byte	0xaeb
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0xdad
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.asciz	"G1CMDL"
	.byte	0x4
	.2byte	0x184b
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.asciz	"G1CMDH"
	.byte	0x4
	.2byte	0x1861
	.4byte	0xb00
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x18a3
	.4byte	0xb35
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x1a82
	.4byte	0xb48
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"PIX_H"
	.byte	0x6
	.byte	0x8d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"rx1Buf"
	.byte	0x7
	.byte	0x12
	.4byte	0xb5c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"rxSize"
	.byte	0x7
	.byte	0x14
	.4byte	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF4
	.byte	0x7
	.byte	0x16
	.4byte	0x6f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF5
	.byte	0x8
	.byte	0x81
	.4byte	0xd69
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	0xb99
	.uleb128 0x2d
	.4byte	.LASF6
	.byte	0x8
	.byte	0x82
	.4byte	0xd7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.4byte	0xb99
	.uleb128 0x2c
	.asciz	"s"
	.byte	0x2
	.byte	0x34
	.4byte	0xbc8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	.LASF7
	.byte	0x5
	.byte	0x37
	.4byte	0x711
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.asciz	"frames"
	.byte	0x5
	.byte	0x39
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF8
	.byte	0x1
	.byte	0x41
	.4byte	0xc00
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_projectName
	.uleb128 0x31
	.asciz	"buf"
	.byte	0x1
	.byte	0x42
	.4byte	0xc1d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_buf
	.uleb128 0x30
	.4byte	.LASF9
	.byte	0x1
	.byte	0x43
	.4byte	0xc47
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_serialStoryIndex
	.uleb128 0x31
	.asciz	"maxY"
	.byte	0x1
	.byte	0x75
	.4byte	0x117
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_maxY
	.uleb128 0x31
	.asciz	"color"
	.byte	0x1
	.byte	0x78
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_color
	.uleb128 0x30
	.4byte	.LASF10
	.byte	0x1
	.byte	0x7b
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clutStart
	.uleb128 0x31
	.asciz	"speed"
	.byte	0x1
	.byte	0x7c
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_speed
	.uleb128 0x31
	.asciz	"dir"
	.byte	0x1
	.byte	0x7d
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_dir
	.uleb128 0x31
	.asciz	"xPosition"
	.byte	0x1
	.byte	0x7e
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_xPosition
	.uleb128 0x30
	.4byte	.LASF11
	.byte	0x1
	.byte	0x7f
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_rotAngle
	.uleb128 0x30
	.4byte	.LASF12
	.byte	0x1
	.byte	0x80
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteIndex
	.uleb128 0x30
	.4byte	.LASF13
	.byte	0x1
	.byte	0x81
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteOffset
	.uleb128 0x31
	.asciz	"currentSpriteFrameCount"
	.byte	0x1
	.byte	0x82
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteFrameCount
	.uleb128 0x30
	.4byte	.LASF14
	.byte	0x1
	.byte	0x83
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_spriteStepTimeout
	.uleb128 0x30
	.4byte	.LASF15
	.byte	0x1
	.byte	0x84
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_spriteStepTrigger
	.uleb128 0x30
	.4byte	.LASF16
	.byte	0x1
	.byte	0x86
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_colorScrollSpeed
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x20d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xee8
	.4byte	0x724
	.asciz	"audioIntro"
	.4byte	0x752
	.asciz	"audioCredits"
	.4byte	0x784
	.asciz	"initCredits"
	.4byte	0x7b2
	.asciz	"initIntro"
	.4byte	0x7dc
	.asciz	"fast_pixel"
	.4byte	0x8ab
	.asciz	"drawCredits"
	.4byte	0x8dc
	.asciz	"drawIntro"
	.4byte	0x947
	.asciz	"_T1Interrupt"
	.4byte	0x979
	.asciz	"initRoad"
	.4byte	0x9a2
	.asciz	"drawRoad"
	.4byte	0x9ba
	.asciz	"audioRoad"
	.4byte	0x9e9
	.asciz	"loadScenes"
	.4byte	0xa03
	.asciz	"initDemo"
	.4byte	0xa1b
	.asciz	"drawFPS"
	.4byte	0xa32
	.asciz	"handleSerialInput"
	.4byte	0xaac
	.asciz	"codecrow"
	.4byte	0xac4
	.asciz	"main"
	.4byte	0xda8
	.asciz	"projectName"
	.4byte	0xdba
	.asciz	"buf"
	.4byte	0xdcc
	.asciz	"serialStoryIndex"
	.4byte	0xdde
	.asciz	"maxY"
	.4byte	0xdf1
	.asciz	"color"
	.4byte	0xe05
	.asciz	"clutStart"
	.4byte	0xe17
	.asciz	"speed"
	.4byte	0xe2b
	.asciz	"dir"
	.4byte	0xe3d
	.asciz	"xPosition"
	.4byte	0xe55
	.asciz	"rotAngle"
	.4byte	0xe67
	.asciz	"currentSpriteIndex"
	.4byte	0xe79
	.asciz	"currentSpriteOffset"
	.4byte	0xe8b
	.asciz	"currentSpriteFrameCount"
	.4byte	0xeb1
	.asciz	"spriteStepTimeout"
	.4byte	0xec3
	.asciz	"spriteStepTrigger"
	.4byte	0xed5
	.asciz	"colorScrollSpeed"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xab
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xee8
	.4byte	0xf7
	.asciz	"uint8_t"
	.4byte	0x117
	.asciz	"uint16_t"
	.4byte	0x191
	.asciz	"tagIFS0BITS"
	.4byte	0x2ad
	.asciz	"IFS0BITS"
	.4byte	0x2be
	.asciz	"tagG1STATBITS"
	.4byte	0x393
	.asciz	"G1STATBITS"
	.4byte	0x4f5
	.asciz	"tagG1CLUTBITS"
	.4byte	0x515
	.asciz	"G1CLUTBITS"
	.4byte	0x528
	.asciz	"Sprite"
	.4byte	0x67a
	.asciz	"SCENE"
	.4byte	0x711
	.asciz	"STORY_STATE"
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
	.asciz	"main.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"sprites.h"
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
	.asciz	"demo_management.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"resolution_management.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"serial.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"music.h"
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
	.byte	0x3
	.sleb128 237
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
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
	.4byte	.LSM2
	.byte	0x3
	.sleb128 293
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x16
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
	.4byte	.LSM4
	.byte	0x3
	.sleb128 268
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
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
	.4byte	.LSM9
	.byte	0x9a
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x17
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
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
	.4byte	.LSM21
	.byte	0x5a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x16
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
	.4byte	.LSM26
	.byte	0x16
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
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
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
	.4byte	.LSM34
	.byte	0x4
	.uleb128 0x2
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x16
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
	.byte	0x1c
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM45
	.byte	0x16
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
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x16
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
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM57
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0x2d
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
	.4byte	.LSM64
	.byte	0x3
	.sleb128 274
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM65
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM66
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM67
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x16
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
	.4byte	.LSM79
	.byte	0xa9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM82
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM83
	.byte	0x18
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
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x42
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM95
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM96
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM97
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x15
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM107
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM108
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM109
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM110
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM111
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM112
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM113
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM114
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM115
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM116
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM117
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM118
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM120
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM121
	.byte	0x17
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
	.4byte	.LSM122
	.byte	0x70
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM123
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM124
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM125
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM126
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM128
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM129
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
	.4byte	.LSM130
	.byte	0x3
	.sleb128 243
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM131
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM132
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM133
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM134
	.byte	0x1e
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
	.4byte	.LSM135
	.byte	0x3
	.sleb128 258
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM136
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM137
	.byte	0x15
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
	.4byte	.LSM138
	.byte	0x3
	.sleb128 261
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM139
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM140
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
	.4byte	.LSM141
	.byte	0x3
	.sleb128 303
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM142
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM143
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM144
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE12
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM145
	.byte	0x3
	.sleb128 310
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM147
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM148
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM149
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM150
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM151
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM152
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM153
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE13
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM154
	.byte	0x3
	.sleb128 374
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM155
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM156
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM157
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM158
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM159
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM160
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE15
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM161
	.byte	0x3
	.sleb128 382
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM162
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM163
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM164
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM165
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM166
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM167
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM168
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM169
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM170
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM171
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM172
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM173
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM174
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM175
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM176
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM177
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM178
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM179
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM180
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM181
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM182
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM183
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM184
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM185
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE16
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM186
	.byte	0x3
	.sleb128 329
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM187
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM188
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM189
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM190
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM191
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM192
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM193
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM194
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM195
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM196
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM197
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM198
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM199
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM200
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM201
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM202
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM203
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM204
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE14
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM205
	.byte	0x3
	.sleb128 420
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM206
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM207
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM208
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE17
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF11:
	.asciz	"rotAngle"
.LASF9:
	.asciz	"serialStoryIndex"
.LASF10:
	.asciz	"clutStart"
.LASF1:
	.asciz	"IFS0bits"
.LASF12:
	.asciz	"currentSpriteIndex"
.LASF13:
	.asciz	"currentSpriteOffset"
.LASF3:
	.asciz	"G1CLUTbits"
.LASF5:
	.asciz	"sinetable"
.LASF6:
	.asciz	"zigzagtable"
.LASF4:
	.asciz	"dataAvailable"
.LASF2:
	.asciz	"G1STATbits"
.LASF14:
	.asciz	"spriteStepTimeout"
.LASF15:
	.asciz	"spriteStepTrigger"
.LASF8:
	.asciz	"projectName"
.LASF7:
	.asciz	"story_state"
.LASF0:
	.asciz	"sceneId"
.LASF16:
	.asciz	"colorScrollSpeed"
	.section	.text,code

	.section __c30_info, info, bss
__managed_psv:

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words
; Configuration word @ 0x0002abfe
	.section	.config_JTAGEN, code, address(0x2abfe), keep
__config_JTAGEN:
	.pword	16255
; Configuration word @ 0x0002abfc
	.section	.config_IESO, code, address(0x2abfc), keep
__config_IESO:
	.pword	39870
; Configuration word @ 0x0002abfa
	.section	.config_WPEND, code, address(0x2abfa), keep
__config_WPEND:
	.pword	60671

	.set ___PA___,0
	.end
