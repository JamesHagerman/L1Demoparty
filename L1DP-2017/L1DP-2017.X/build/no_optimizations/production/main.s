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
	.type	_drawSprite,@function
_drawSprite:
.LFB0:
.LSM0:
	.set ___PA___,1
	lnk	#16
	mov	w0,[w14+10]
	mov	w1,[w14+12]
	mov.b	w2,[w14+14]
	mov.b	w3,[w14+15]
.LSM1:
	mov	[w14+10],w5
	mov	#78,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L25
	mov	[w14+12],w5
	mov	#478,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L26
.L3:
.LSM2:
	clr	w4
	mov	w4,[w14+2]
	bra	.L5
.L24:
.LSM3:
	clr	w4
	mov	w4,[w14]
	bra	.L6
.L23:
.LSM4:
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	add	w4,#6,w4
	addc	w5,#0,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.d	[w4],w0
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w2
	mov	w2,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	[w14+2],w4
	mul.ss	w5,w4,w4
	mov	w4,w4
	add	w4,[w14],w4
	mov	#0,w5
	add	w0,w4,w4
	addc	w1,w5,w5
	mov	_DSRPAG,w6
	btsts.c	w4,#15
	rlc	w5,w5
	mov	w5,_DSRPAG
	mov.b	[w4],w4
	mov.b	w4,[w14+4]
	mov	w6,_DSRPAG
.LSM5:
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	add	w4,#2,w4
	addc	w5,#0,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4+1],w5
	mov.b	[w14+4],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	z,.L27
.L7:
.LSM6:
	mov.b	[w14+4],w4
	ze	w4,w4
	mov	w4,w0
	rcall	_rcc_color
.LSM7:
	mov.b	[w14+15],w4
	ze	w4,w4
	asr	w4,#15,w5
	mov	#3,w6
	mov	#0,w7
	sub	w4,w6,[w15]
	subb	w5,w7,[w15]
	.set ___BP___,0
	bra	gtu,.L28
	bra	w4
	.align	2
	.set	___PA___,0
.L14:
	bra	.L10
	bra	.L11
	bra	.L12
	bra	.L29
	.set	___PA___,1
.L10:
.LSM8:
	mov	[w14+10],w4
	add	w4,[w14],w4
	mov	w4,[w14+6]
.LSM9:
	mov	[w14+2],w4
	sl	w4,#2,w5
	mov	[w14+12],w4
	add	w5,w4,w5
	mov	[w14+2],w4
	add	w4,w4,w4
	add	w5,w4,w4
	mov	w4,[w14+8]
.LSM10:
	mov	[w14+6],w5
	mov	#77,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L30
.L15:
.LSM11:
	mov	[w14+8],w4
	mul.uu	w4,#1,w6
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#0,w5
	mov	#480,w0
	mov	#0,w1
	sub	w0,w4,w4
	subb	w1,w5,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,0
	bra	geu,.L31
.L16:
.LSM12:
	mov	[w14+8],w4
	mov	#0,w5
	mov	[w14+6],w6
	mov	#0,w7
	mov.d	w4,w2
	mov.d	w6,w0
	rcall	_fast_pixel
.LSM13:
	bra	.L8
.L11:
.LSM14:
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	[w14+2],w4
	sub	w5,w4,w5
	mov	[w14+10],w4
	add	w5,w4,w4
	dec	w4,w4
	mov	w4,[w14+6]
.LSM15:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	[w14],w4
	mul.ss	w5,w4,w4
	mov	w4,w5
	mov	[w14+12],w4
	add	w5,w4,w4
	mov	w4,[w14+8]
.LSM16:
	mov	[w14+6],w5
	mov	#78,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L32
	mov	[w14+6],w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L33
.L18:
.LSM17:
	mov	[w14+8],w4
	mul.uu	w4,#1,w6
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#0,w5
	mov	#480,w0
	mov	#0,w1
	sub	w0,w4,w4
	subb	w1,w5,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,0
	bra	geu,.L34
	mov	[w14+8],w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L35
.L20:
.LSM18:
	mov	[w14+8],w4
	mov	#0,w5
	mov	[w14+6],w6
	mov	#0,w7
	mov.d	w4,w2
	mov.d	w6,w0
	rcall	_fast_pixel
.LSM19:
	bra	.L8
.L12:
.LSM20:
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4],w4
	ze	w4,w4
	sub	w4,[w14],w5
	mov	[w14+10],w4
	add	w5,w4,w4
	dec	w4,w4
	mov	w4,[w14+6]
.LSM21:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w2
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4+1],w4
	ze	w4,w5
	mov	[w14+2],w4
	sub	w5,w4,w4
	dec	w4,w4
	mul.ss	w2,w4,w4
	mov	w4,w5
	mov	[w14+12],w4
	add	w5,w4,w4
	mov	w4,[w14+8]
.LSM22:
	mov	[w14+6],w5
	mov	#78,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L36
.L21:
.LSM23:
	mov	[w14+8],w4
	mul.uu	w4,#1,w6
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#0,w5
	mov	#480,w0
	mov	#0,w1
	sub	w0,w4,w4
	subb	w1,w5,w5
	sub	w6,w4,[w15]
	subb	w7,w5,[w15]
	.set ___BP___,0
	bra	geu,.L37
.L22:
.LSM24:
	mov	[w14+8],w4
	mov	#0,w5
	mov	[w14+6],w6
	mov	#0,w7
	mov.d	w4,w2
	mov.d	w6,w0
	rcall	_fast_pixel
.LSM25:
	bra	.L8
.L27:
.LSM26:
	nop	
	bra	.L8
.L28:
.LSM27:
	nop	
	bra	.L8
.L29:
.LSM28:
	nop	
	bra	.L8
.L30:
.LSM29:
	nop	
	bra	.L8
.L32:
.LSM30:
	nop	
	bra	.L8
.L33:
	nop	
	bra	.L8
.L34:
.LSM31:
	nop	
	bra	.L8
.L35:
	nop	
	bra	.L8
.L36:
.LSM32:
	nop	
	bra	.L8
.L37:
.LSM33:
	nop	
.L8:
.LSM34:
	inc	[w14],[w14]
.L6:
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4],w4
	ze	w4,w4
	sub	w4,[w14],[w15]
	.set ___BP___,0
	bra	gtu,.L23
.LSM35:
	mov	[w14+2],w4
	inc	w4,w4
	mov	w4,[w14+2]
.L5:
	mov.b	[w14+14],w4
	ze	w4,w4
	asr	w4,#15,w5
	mul.su	w5,#10,w6
	mov	w6,w6
	mul.su	w4,#0,w0
	mov	w0,w7
	add	w6,w7,w6
	mov	w4,w5
	mov	#10,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	mov	#_s,w6
	add	w4,w6,w4
	mov.b	[w4+1],w4
	ze	w4,w5
	mov	[w14+2],w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L24
	bra	.L1
.L25:
.LSM36:
	nop	
	bra	.L1
.L26:
	nop	
	bra	.L1
.L31:
.LSM37:
	nop	
.L1:
.LSM38:
	ulnk	
	return	
	.set ___PA___,0
.LFE0:
	.size	_drawSprite, .-_drawSprite
	.global	_projectName	; export
	.section	.ndata,data,near
	.type	_projectName,@object
	.size	_projectName, 10
_projectName:
	.asciz	"Code MESS"
	.section	.nbss,bss,near
	.type	_buf,@object
	.global	_buf
_buf:	.space	20
	.global	_serialStoryIndex	; export
	.section	.ndata,data,near
	.type	_serialStoryIndex,@object
	.size	_serialStoryIndex, 1
_serialStoryIndex:
	.byte 100
	.section	.text,code
	.align	2
	.global	_fast_pixel	; export
	.type	_fast_pixel,@function
_fast_pixel:
.LFB1:
.LSM39:
	.set ___PA___,1
	lnk	#8
	mov.d	w0,[w14]
	mov	w2,[w14+4]
	mov	w3,[w14+6]
.LSM40:
	mov	[w14+6],w5
	mov	#80,w4
	mul.ss	w5,w4,w4
	mov	w4,w6
	mov	[w14+4],w4
	mul.su	w4,#0,w4
	mov	w4,w4
	add	w6,w4,w6
	mov	[w14+4],w5
	mov	#80,w4
	mul.uu	w5,w4,w4
	add	w6,w5,w6
	mov	w6,w5
	add	w4,[w14],[w14]
	addc	w5,[++w14],[w14--]
.LSM41:
	nop	
	bra	.L39
.L45:
	nop	
.L39:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L45
.LSM42:
	mov	[w14],w4
	mov	w4,_G1CMDL
.LSM43:
	mov.d	[w14],w4
	lsr	w5,#0,w4
	mov	w4,w5
	mov	#25344,w4
	ior	w4,w5,w4
	mov	w4,_G1CMDH
.LSM44:
	nop	
	bra	.L41
.L46:
	nop	
.L41:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L46
.LSM45:
	mov	#4102,w4
	mov	w4,_G1CMDL
.LSM46:
	mov	#25600,w4
	mov	w4,_G1CMDH
.LSM47:
	nop	
	bra	.L43
.L47:
	nop	
.L43:
	mov	_G1STATbits,w4
	and	w4,#2,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L47
.LSM48:
	mov	#96,w4
	mov	w4,_G1CMDL
.LSM49:
	mov	#26368,w4
	mov	w4,_G1CMDH
.LSM50:
	nop	
.LSM51:
	ulnk	
	return	
	.set ___PA___,0
.LFE1:
	.size	_fast_pixel, .-_fast_pixel
	.align	2
	.global	__T1Interrupt	; export
	.type	__T1Interrupt,@function
__T1Interrupt:
.LFB2:
.LSM52:
	.set ___PA___,1
	mov.d	w4,[w15++]
	mov.d	w6,[w15++]
	push	_DSRPAG
	mov	#__const_psvpage,w4
	mov	w4,_DSRPAG
	lnk	#0
.LSM53:
	mov	#_story_state,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L49
.LSM54:
	mov	#_idx.8467,w4
	mov.b	[w4],w4
	ze	w4,w4
	asr	w4,#15,w5
	mov	#_zigzagtable,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	lsr	w4,#2,w4
	mov.b	w4,w4
	ze	w4,w4
	and	w4,#15,w4
	sl	w4,#8,w6
	mov	#_idx.8467,w4
	mov.b	[w4],w4
	ze	w4,w4
	asr	w4,#15,w5
	mov	#_sinetable,w7
	add	w7,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	lsr	w4,#2,w4
	mov.b	w4,w4
	ze	w4,w4
	sl	w4,#12,w4
	ior	w4,w6,w4
	mov	w4,_PORTB
	bra	.L50
.L49:
.LSM55:
	mov	#_idx.8467,w4
	mov.b	[w4],w4
	ze	w4,w4
	asr	w4,#15,w5
	mov	#_sinetable,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	lsr	w4,#2,w4
	mov.b	w4,w4
	ze	w4,w4
	sl	w4,#8,w4
	mov	w4,_PORTB
.L50:
.LSM56:
	mov	_frames,w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L51
.LSM57:
	mov	#_idx.8467,w4
	mov.b	[w4],w4
	dec.b	w4,w4
	mov.b	w4,w6
	mov	#_idx.8467,w5
	mov.b	w6,[w5]
.L51:
.LSM58:
	bclr.b	_IFS0bits,#3
.LSM59:
	ulnk	
	pop	_DSRPAG
	mov.d	[--w15],w6
	mov.d	[--w15],w4
	retfie	
	.set ___PA___,0
.LFE2:
	.size	__T1Interrupt, .-__T1Interrupt
	.global	_maxY	; export
	.section	.ndata,data,near
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
	.section .const,psv,page
.LC0:
	.asciz	"Initing scene %i: %s\012"
	.section	.text,code
	.align	2
	.global	_initIntro	; export
	.type	_initIntro,@function
_initIntro:
.LFB3:
.LSM60:
	.set ___PA___,1
	lnk	#2
.LSM61:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,[w14]
.LSM62:
	mov	[w14],w4
	mul.su	w4,#1,w6
	sl	w7,#5,w4
	lsr	w6,#11,w5
	ior	w4,w5,w5
	sl	w6,#5,w4
	add	w4,#14,w4
	addc	w5,#0,w5
	mov	#_story_state,w6
	add	w4,w6,w4
	mov	w4,[w15++]
.LCFI0:
	mov	[w14],[w15++]
.LCFI1:
	mov	#.LC0,w4
	mov	w4,[w15++]
.LCFI2:
.LCFI3:
	rcall	__printf_cdnopsuxX
	sub	w15,#6,w15
.LCFI4:
.LSM63:
	mov	_currentSpriteOffset,w4
	mov	w4,_currentSpriteIndex
.LSM64:
	bclr.b	_G1CLUTbits+1,#7
.LSM65:
	mov	#16904,w1
	mov.b	#1,w0
.LCFI5:
	rcall	_clut_set
.LSM66:
	mov	#-26016,w1
	mov.b	#2,w0
	rcall	_clut_set
.LSM67:
	mov	#-18432,w1
	mov.b	#3,w0
	rcall	_clut_set
.LSM68:
	mov	#8484,w1
	mov.b	#4,w0
	rcall	_clut_set
.LSM69:
	mov	#_clutStart,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,w0
	rcall	_calc_colors
.LSM70:
	bset.b	_G1CLUTbits+1,#7
.LSM71:
	ulnk	
	return	
	.set ___PA___,0
.LFE3:
	.size	_initIntro, .-_initIntro
	.section .const,psv,page
.LC1:
	.asciz	"Code MESS"
.LC2:
	.asciz	"by:jamisnemo"
	.section	.text,code
	.align	2
	.global	_drawIntro	; export
	.type	_drawIntro,@function
_drawIntro:
.LFB4:
.LSM72:
	.set ___PA___,1
	lnk	#12
	mov	w0,[w14+10]
.LSM73:
	mov	#1,w4
	mov	w4,[w14+4]
.LSM74:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,[w14+6]
.LSM75:
	mov	#120,w4
	mov	w4,[w14+8]
.LSM76:
	mov	[w14+6],w5
	mov	#78,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L71
	mov	[w14+4],w5
	mov	#478,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	gtu,.L72
	mov	[w14+6],w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L73
	mov	[w14+4],w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L74
.L55:
.LSM77:
	mov	[w14+10],w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L57
.LSM78:
	clr	w4
	mov	w4,[w14]
	bra	.L58
.L61:
.LSM79:
	clr	w4
	mov	w4,[w14+2]
	bra	.L59
.L60:
.LSM80:
	mov.b	#4,w4
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.LSM81:
	mov	#_color,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,w0
	rcall	_rcc_color
.LSM82:
	mov	[w14+8],w4
	add	w4,[w14],w4
	mov	[w14+6],w3
	mov	[w14+4],w2
	mov	w4,w1
	mov	[w14+2],w0
	rcall	_rcc_draw
.LSM83:
	mov	[w14+2],w5
	mov	[w14+4],w4
	add	w5,w4,w4
	mov	w4,[w14+2]
.L59:
	mov	[w14+2],w5
	mov	#78,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	leu,.L60
.LSM84:
	mov	[w14+6],w4
	add	w4,[w14],[w14]
.L58:
	mov	#238,w4
	mov	[w14],w5
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	leu,.L61
.LSM85:
	mov	_currentSpriteOffset,w4
	mov	w4,_currentSpriteIndex
	bra	.L62
.L57:
.LSM86:
	mov	#_colorScrollSpeed,w4
	mov.b	[w4],w4
	inc.b	w4,w4
	mov.b	w4,w6
	mov	#_colorScrollSpeed,w5
	mov.b	w6,[w5]
.LSM87:
	clr	w4
	mov	w4,[w14]
	bra	.L63
.L69:
.LSM88:
	clr	w4
	mov	w4,[w14+2]
	bra	.L64
.L68:
.LSM89:
	mov	[w14+10],w4
	mov.b	w4,w4
	mov	#_colorScrollSpeed,w5
	mov.b	[w5],w5
	ze	w5,w5
	mul.ss	w5,w4,w4
	mov	w4,w4
	mov.b	w4,w6
.LSM90:
	mov	[w14],w4
	mov.b	w4,w4
	ze	w4,w4
	asr	w4,#15,w5
	mov	#_sinetable,w7
	add	w7,w4,w4
	mov.b	[w4],w4
.LSM91:
	add.b	w6,w4,w6
.LSM92:
	mov	[w14+2],w4
	mov.b	w4,w4
	ze	w4,w4
	mul.su	w4,#3,w4
	mov	w4,w4
	asr	w4,#15,w5
	mov	#_sinetable,w7
	add	w7,w4,w4
	mov.b	[w4],w4
.LSM93:
	add.b	w6,w4,w4
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.LSM94:
	mov	#_color,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	nz,.L65
.LSM95:
	mov.b	#1,w4
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
	bra	.L66
.L65:
.LSM96:
	mov	#_color,w4
	mov.b	[w4],w4
	add.b	w4,#1,[w15]
	.set ___BP___,0
	bra	nz,.L66
.LSM97:
	mov.b	#-2,w4
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.L66:
.LSM98:
	mov	#_color,w5
	mov.b	[w5],w5
	mov	#_clutStart,w4
	mov.b	[w4],w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	geu,.L67
.LSM99:
	mov	#_clutStart,w4
	mov.b	[w4],w4
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.L67:
.LSM100:
	mov	#_color,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,w0
	rcall	_rcc_color
.LSM101:
	mov	[w14+8],w4
	add	w4,[w14],w4
	mov	[w14+6],w3
	mov	[w14+4],w2
	mov	w4,w1
	mov	[w14+2],w0
	rcall	_rcc_draw
.LSM102:
	mov	[w14+2],w5
	mov	[w14+4],w4
	add	w5,w4,w4
	mov	w4,[w14+2]
.L64:
	mov	[w14+2],w5
	mov	#78,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	leu,.L68
.LSM103:
	mov	[w14+6],w4
	add	w4,[w14],[w14]
.L63:
	mov	#238,w4
	mov	[w14],w5
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	leu,.L69
.LSM104:
	mov	_spriteStepTimeout,w4
	inc	w4,w4
	mov	w4,_spriteStepTimeout
.LSM105:
	mov	_spriteStepTrigger,w4
	add	w4,#30,w5
	mov	_spriteStepTimeout,w4
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	ge,.L70
.LSM106:
	mov	_currentSpriteOffset,w4
	inc	w4,w4
	mov	w4,_currentSpriteIndex
	bra	.L62
.L70:
.LSM107:
	mov	_currentSpriteOffset,w4
	inc2	w4,w4
	mov	w4,_currentSpriteIndex
.L62:
.LSM108:
	mov	#_rotAngle,w7
	mov.b	[w7],w7
	mov	_currentSpriteIndex,w4
	mov.b	w4,w6
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#-45,w4
	mul.ss	w5,w4,w4
	mov	w4,w4
	add	#480,w4
	mov.b	w7,w3
	mov.b	w6,w2
	mov	w4,w1
	mov	#2,w0
	rcall	_drawSprite
.LSM109:
	mov	[w14+10],w4
	sub	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L53
.LSM110:
	mov	#10,w2
	mov	#0,w3
	mov	#.LC1,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM111:
	mov	#101,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM112:
	mov	#13,w2
	mov	#0,w3
	mov	#.LC2,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM113:
	mov	#354,w2
	mov	#32,w1
	mov	#_buf,w0
	rcall	_chr_print
	bra	.L53
.L71:
.LSM114:
	nop	
	bra	.L53
.L72:
	nop	
	bra	.L53
.L73:
	nop	
	bra	.L53
.L74:
	nop	
.L53:
.LSM115:
	ulnk	
	return	
	.set ___PA___,0
.LFE4:
	.size	_drawIntro, .-_drawIntro
	.align	2
	.global	_audioIntro	; export
	.type	_audioIntro,@function
_audioIntro:
.LFB5:
.LSM116:
	.set ___PA___,1
	lnk	#2
	mov.b	w0,[w14]
.LSM117:
	mov.b	[w14],w4
.LSM118:
	mov.b	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE5:
	.size	_audioIntro, .-_audioIntro
	.align	2
	.global	_initRoad	; export
	.type	_initRoad,@function
_initRoad:
.LFB6:
.LSM119:
	.set ___PA___,1
	lnk	#2
.LSM120:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,[w14]
.LSM121:
	mov	[w14],w4
	mul.su	w4,#1,w6
	sl	w7,#5,w4
	lsr	w6,#11,w5
	ior	w4,w5,w5
	sl	w6,#5,w4
	add	w4,#14,w4
	addc	w5,#0,w5
	mov	#_story_state,w6
	add	w4,w6,w4
	mov	w4,[w15++]
.LCFI6:
	mov	[w14],[w15++]
.LCFI7:
	mov	#.LC0,w4
	mov	w4,[w15++]
.LCFI8:
.LCFI9:
	rcall	__printf_cdnopsuxX
	sub	w15,#6,w15
.LCFI10:
.LSM122:
	mov	_currentSpriteOffset,w4
	mov	w4,_currentSpriteIndex
.LSM123:
	ulnk	
	return	
	.set ___PA___,0
.LFE6:
	.size	_initRoad, .-_initRoad
	.align	2
	.global	_drawRoad	; export
	.type	_drawRoad,@function
_drawRoad:
.LFB7:
.LSM124:
	.set ___PA___,1
	lnk	#0
.LSM125:
	mov	#_rotAngle,w7
	mov.b	[w7],w7
	mov	_currentSpriteIndex,w4
	mov.b	w4,w6
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w5
	mov	#-45,w4
	mul.ss	w5,w4,w4
	mov	w4,w4
	add	#480,w4
	mov.b	w7,w3
	mov.b	w6,w2
	mov	w4,w1
	mov	#2,w0
	rcall	_drawSprite
.LSM126:
	ulnk	
	return	
	.set ___PA___,0
.LFE7:
	.size	_drawRoad, .-_drawRoad
	.align	2
	.global	_audioRoad	; export
	.type	_audioRoad,@function
_audioRoad:
.LFB8:
.LSM127:
	.set ___PA___,1
	lnk	#2
	mov.b	w0,[w14]
.LSM128:
	mov.b	[w14],w5
	ze	w5,w4
	lsr	w4,w4
	mov.b	w4,w4
.LSM129:
	mov.b	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE8:
	.size	_audioRoad, .-_audioRoad
	.align	2
	.global	_initCredits	; export
	.type	_initCredits,@function
_initCredits:
.LFB9:
.LSM130:
	.set ___PA___,1
	lnk	#2
.LSM131:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	w4,[w14]
.LSM132:
	mov	[w14],w4
	mul.su	w4,#1,w6
	sl	w7,#5,w4
	lsr	w6,#11,w5
	ior	w4,w5,w5
	sl	w6,#5,w4
	add	w4,#14,w4
	addc	w5,#0,w5
	mov	#_story_state,w6
	add	w4,w6,w4
	mov	w4,[w15++]
.LCFI11:
	mov	[w14],[w15++]
.LCFI12:
	mov	#.LC0,w4
	mov	w4,[w15++]
.LCFI13:
.LCFI14:
	rcall	__printf_cdnopsuxX
	sub	w15,#6,w15
.LCFI15:
.LSM133:
	bclr.b	_G1CLUTbits+1,#7
.LSM134:
	ulnk	
	return	
	.set ___PA___,0
.LFE9:
	.size	_initCredits, .-_initCredits
	.section .const,psv,page
.LC3:
	.asciz	"Thank you Arko "
.LC4:
	.asciz	"and everyone at NSL"
.LC5:
	.asciz	"that helps make"
.LC6:
	.asciz	"LayerOne happen!"
.LC7:
	.asciz	"Never enough time."
.LC8:
	.asciz	"Was it good for u?"
	.section	.text,code
	.align	2
	.global	_drawCredits	; export
	.type	_drawCredits,@function
_drawCredits:
.LFB10:
.LSM135:
	.set ___PA___,1
	lnk	#2
	mov	w0,[w14]
.LSM136:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	sl	w4,#2,w4
	clr.b	w3
	mov.b	#8,w2
	mov	w4,w1
	mov	#24,w0
	rcall	_drawSprite
.LSM137:
	mov	#16,w2
	mov	#0,w3
	mov	#.LC3,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM138:
	mov	#228,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM139:
	mov	#20,w2
	mov	#0,w3
	mov	#.LC4,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM140:
	mov	#249,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM141:
	mov	#16,w2
	mov	#0,w3
	mov	#.LC5,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM142:
	mov	#270,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM143:
	mov	#17,w2
	mov	#0,w3
	mov	#.LC6,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM144:
	mov	#291,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM145:
	mov	#19,w2
	mov	#0,w3
	mov	#.LC7,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM146:
	mov	#354,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM147:
	mov	#19,w2
	mov	#0,w3
	mov	#.LC8,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM148:
	mov	#375,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM149:
	ulnk	
	return	
	.set ___PA___,0
.LFE10:
	.size	_drawCredits, .-_drawCredits
	.align	2
	.global	_audioCredits	; export
	.type	_audioCredits,@function
_audioCredits:
.LFB11:
.LSM150:
	.set ___PA___,1
	lnk	#2
	mov.b	w0,[w14]
.LSM151:
	mov.b	[w14],w5
	ze	w5,w4
	asr	w4,#8,w4
	mov.b	w4,w5
	mov.b	[w14],w4
	and.b	w5,w4,w4
.LSM152:
	mov.b	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE11:
	.size	_audioCredits, .-_audioCredits
	.align	2
	.global	_loadScenes	; export
	.type	_loadScenes,@function
_loadScenes:
.LFB12:
.LSM153:
	.set ___PA___,1
	lnk	#0
.LSM154:
	mov	#_story_state+4,w4
	repeat	#16-1
	clr	[w4++]
	mov	#400,w4
	mov	w4,_story_state+6
	mov	#handle(_initIntro),w4
	mov	w4,_story_state+8
	mov	#handle(_drawIntro),w4
	mov	w4,_story_state+10
	mov	#handle(_audioIntro),w4
	mov	w4,_story_state+12
	mov	#28233,w4
	mov	#29300,w5
	mov	w4,_story_state+14
	mov	w5,_story_state+14+2
	mov	#111,w4
	mov	#0,w5
	mov	w4,_story_state+18
	mov	w5,_story_state+18+2
	mov	#_story_state+22,w4
	repeat	#6-1
	clr	[w4++]
	clr.b	[w4++]
.LSM155:
	mov	#_story_state+36,w4
	repeat	#16-1
	clr	[w4++]
	mov	#400,w4
	mov	w4,_story_state+38
	mov	#handle(_initCredits),w4
	mov	w4,_story_state+40
	mov	#handle(_drawCredits),w4
	mov	w4,_story_state+42
	mov	#handle(_audioCredits),w4
	mov	w4,_story_state+44
	mov	#29251,w4
	mov	#25701,w5
	mov	w4,_story_state+46
	mov	w5,_story_state+46+2
	mov	#29801,w4
	mov	#115,w5
	mov	w4,_story_state+50
	mov	w5,_story_state+50+2
	mov	#_story_state+54,w4
	repeat	#6-1
	clr	[w4++]
	clr.b	[w4++]
.LSM156:
	ulnk	
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
.LSM157:
	.set ___PA___,1
	lnk	#0
.LSM158:
	mov	#.LC9,w0
	rcall	_puts
.LSM159:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#480,w5
	sub	w5,w4,w4
	mov	w4,_maxY
.LSM160:
	rcall	_blank_background
.LSM161:
	rcall	_loadAllSprites
.LSM162:
	rcall	_loadScenes
.LSM163:
	clr.b	w4
	mov.b	w4,w6
	mov	#_story_state+1,w5
	mov.b	w6,[w5]
.LSM164:
	clr.b	w4
	mov.b	w4,w6
	mov	#_story_state,w5
	mov.b	w6,[w5]
.LSM165:
	clr.b	w0
	rcall	_switchScene
.LSM166:
	ulnk	
	return	
	.set ___PA___,0
.LFE13:
	.size	_initDemo, .-_initDemo
	.section .const,psv,page
.LC10:
	.asciz	"Welcome to project: %s!\015\012"
.LC11:
	.asciz	"Please jump R28 to"
.LC12:
	.asciz	"to Ground..."
	.section	.text,code
	.align	2
	.global	_codecrow	; export
	.type	_codecrow,@function
_codecrow:
.LFB14:
.LSM167:
	.set ___PA___,1
	lnk	#0
.LSM168:
	mov	#_projectName,w4
	mov	w4,[w15++]
.LCFI16:
	mov	#.LC10,w4
	mov	w4,[w15++]
.LCFI17:
.LCFI18:
	rcall	__printf_cdnopsuxX
	sub	w15,#4,w15
.LCFI19:
.LSM169:
.LCFI20:
	rcall	_initDemo
.L87:
.LSM170:
	rcall	_frameStart
.LSM171:
	rcall	_manageFrameReset
.LSM172:
	rcall	_handleSerialInput
	mov	w0,w4
	mov.b	w4,w4
	mov.b	w4,w6
	mov	#_serialStoryIndex,w5
	mov.b	w6,[w5]
.LSM173:
	rcall	_drawCurrentScene
.LSM174:
	rcall	_checkForJumper
.LSM175:
	mov	#_story_state+1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L85
.LSM176:
	mov	_frames,w4
	inc	w4,w4
	mov	w4,_frames
.LSM177:
	rcall	_checkSceneFinished
	bra	.L86
.L85:
.LSM178:
	mov	#19,w2
	mov	#0,w3
	mov	#.LC11,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM179:
	mov	#417,w2
	mov	#2,w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM180:
	mov	#13,w2
	mov	#0,w3
	mov	#.LC12,w1
	mov	#_buf,w0
	rcall	_memcpy
.LSM181:
	mov	#438,w2
	mov	#22,w1
	mov	#_buf,w0
	rcall	_chr_print
.L86:
.LSM182:
	rcall	_frameEnd
.LSM183:
	bra	.L87
.LFE14:
	.size	_codecrow, .-_codecrow
	.section .const,psv,page
.LC13:
	.asciz	"f:%i s:%i"
	.section	.text,code
	.align	2
	.global	_drawFPS	; export
	.type	_drawFPS,@function
_drawFPS:
.LFB15:
.LSM184:
	.set ___PA___,1
	lnk	#0
.LSM185:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
	mul.su	w4,#1,w6
	sl	w7,#5,w4
	lsr	w6,#11,w5
	ior	w4,w5,w5
	sl	w6,#5,w4
	add	w4,#4,w4
	addc	w5,#0,w5
	mov	#_story_state,w6
	add	w4,w6,w4
	mov	[w4],w0
.LSM186:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
	mul.su	w4,#1,w6
	sl	w7,#5,w4
	lsr	w6,#11,w5
	ior	w4,w5,w5
	sl	w6,#5,w4
	add	w4,#6,w4
	addc	w5,#0,w5
	mov	#_story_state,w6
	add	w4,w6,w4
	mov	[w4],w4
.LSM187:
	add	w0,w4,w5
	mov	_frames,w4
	mov	w5,[w15++]
.LCFI21:
	mov	w4,[w15++]
.LCFI22:
	mov	#.LC13,w4
	mov	w4,[w15++]
.LCFI23:
	mov	#_buf,w0
.LCFI24:
	rcall	__sprintf_cdnopuxX
	sub	w15,#6,w15
.LCFI25:
.LSM188:
	mov	#459,w2
	clr	w1
	mov	#_buf,w0
.LCFI26:
	rcall	_chr_print
.LSM189:
	ulnk	
	return	
	.set ___PA___,0
.LFE15:
	.size	_drawFPS, .-_drawFPS
	.section .const,psv,page
.LC14:
	.asciz	"A letter!: '%c'\015\012"
.LC15:
	.asciz	"Restting frames\015"
.LC16:
	.asciz	"Toggling CLUT\015"
.LC17:
	.asciz	"That char is not a number or letter: '%c'\015\012"
	.section	.text,code
	.align	2
	.global	_handleSerialInput	; export
	.type	_handleSerialInput,@function
_handleSerialInput:
.LFB16:
.LSM190:
	.set ___PA___,1
	lnk	#8
.LSM191:
	setm	w4
	mov	w4,[w14]
.LSM192:
	mov	#_dataAvailable,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,0
	bra	z,.L90
.LSM193:
	clr.b	w4
	mov.b	w4,w6
	mov	#_dataAvailable,w5
	mov.b	w6,[w5]
.LSM194:
	clr	w4
	mov	w4,[w14+2]
	bra	.L91
.L99:
.LBB2:
.LSM195:
	mov	[w14+2],w4
	mov	#0,w5
	mov	#_rx1Buf,w6
	add	w4,w6,w4
	mov.b	[w4],w4
	mov.b	w4,[w14+4]
.LSM196:
	mov.b	[w14+4],w5
	mov.b	#47,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	le,.L92
	mov.b	[w14+4],w5
	mov.b	#57,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	gt,.L92
.LBB3:
.LSM197:
	mov.b	[w14+4],w4
	se	w4,w4
	sub	#48,w4
	mov	w4,[w14+6]
.LSM198:
	mov	[w14+6],w4
	mov	w4,[w14]
.LBE3:
.LSM199:
	bra	.L93
.L92:
.LSM200:
	mov.b	[w14+4],w5
	mov.b	#64,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	le,.L94
	mov.b	[w14+4],w5
	mov.b	#90,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	le,.L95
.L94:
	mov.b	[w14+4],w5
	mov.b	#96,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	le,.L96
	mov.b	[w14+4],w5
	mov.b	#122,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	gt,.L96
.L95:
.LSM201:
	mov.b	[w14+4],w4
	se	w4,w4
	mov	w4,[w15++]
.LCFI27:
	mov	#.LC14,w4
	mov	w4,[w15++]
.LCFI28:
.LCFI29:
	rcall	__printf_cdnopsuxX
	sub	w15,#4,w15
.LCFI30:
.LSM202:
	mov.b	[w14+4],w5
	mov.b	#114,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L97
.LSM203:
	mov	#.LC15,w0
.LCFI31:
	rcall	_puts
.LSM204:
	clr	w4
	mov	w4,_frames
.LSM205:
	bra	.L93
.L97:
.LSM206:
	mov.b	[w14+4],w5
	mov.b	#101,w4
	sub.b	w5,w4,[w15]
	.set ___BP___,0
	bra	nz,.L100
.LSM207:
	mov	#.LC16,w0
	rcall	_puts
.LSM208:
	mov	#_story_state+3,w4
	mov.b	[w4],w4
	btg.b	w4,#0
	ze	w4,w4
	mov.b	w4,w4
	mov.b	w4,w6
	mov	#_story_state+3,w5
	mov.b	w6,[w5]
	mov	#_story_state+3,w4
	mov.b	[w4],w4
	ze	w4,w4
	sl	w4,#15,w4
	mov	_G1CLUTbits,w6
	mov	#32767,w5
	and	w6,w5,w5
	ior	w4,w5,w4
	mov	w4,_G1CLUTbits
.LSM209:
	bra	.L93
.L96:
.LSM210:
	mov.b	[w14+4],w4
	sub.b	w4,#10,[w15]
	.set ___BP___,0
	bra	z,.L93
	mov.b	[w14+4],w4
	sub.b	w4,#13,[w15]
	.set ___BP___,0
	bra	z,.L93
.LSM211:
	mov.b	[w14+4],w4
	se	w4,w4
	mov	w4,[w15++]
.LCFI32:
	mov	#.LC17,w4
	mov	w4,[w15++]
.LCFI33:
.LCFI34:
	rcall	__printf_cdnopsuxX
	sub	w15,#4,w15
.LCFI35:
	bra	.L93
.L100:
.LSM212:
	nop	
.L93:
.LBE2:
.LSM213:
	mov	[w14+2],w4
	inc	w4,w4
	mov	w4,[w14+2]
.L91:
	mov	_rxSize,w4
	mov	[w14+2],w5
	sub	w5,w4,[w15]
	.set ___BP___,0
	bra	ltu,.L99
.LSM214:
.LCFI36:
	rcall	_reset_buffer
.L90:
.LSM215:
	mov	[w14],w4
.LSM216:
	mov	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE16:
	.size	_handleSerialInput, .-_handleSerialInput
	.align	2
	.global	_main	; export
	.type	_main,@function
_main:
.LFB17:
.LSM217:
	.set ___PA___,1
	lnk	#0
.LSM218:
	rcall	_setupHardware
.LSM219:
	rcall	_codecrow
.LSM220:
	clr	w4
.LSM221:
	mov	w4,w0
	ulnk	
	return	
	.set ___PA___,0
.LFE17:
	.size	_main, .-_main
	.section	.nbss,bss,near
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
	.byte	0x4
	.4byte	.LCFI0-.LFB3
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
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x2e
	.uleb128 0x0
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
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x13
	.sleb128 -2
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
	.byte	0x4
	.4byte	.LCFI11-.LFB9
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x13
	.sleb128 -2
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI16-.LFB14
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x2e
	.uleb128 0x0
	.align	4
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI21-.LFB15
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x13
	.sleb128 -5
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x2e
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0x2e
	.uleb128 0x0
	.align	4
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI27-.LFB16
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x2e
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
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
	.4byte	0xf03
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
	.byte	0x1
	.byte	0x2c
	.4byte	0x59a
	.uleb128 0xc
	.asciz	"width"
	.byte	0x1
	.byte	0x2d
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.asciz	"height"
	.byte	0x1
	.byte	0x2e
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.asciz	"bitres"
	.byte	0x1
	.byte	0x2f
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"trans"
	.byte	0x1
	.byte	0x30
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.asciz	"rotate"
	.byte	0x1
	.byte	0x31
	.4byte	0xf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"data"
	.byte	0x1
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
	.asciz	"drawSprite"
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5e
	.4byte	0x7bc
	.uleb128 0x17
	.asciz	"x"
	.byte	0x1
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x17
	.asciz	"y"
	.byte	0x1
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 12
	.uleb128 0x17
	.asciz	"id"
	.byte	0x1
	.byte	0x3e
	.4byte	0xf7
	.byte	0x2
	.byte	0x7e
	.sleb128 14
	.uleb128 0x17
	.asciz	"rotation"
	.byte	0x1
	.byte	0x3e
	.4byte	0xf7
	.byte	0x2
	.byte	0x7e
	.sleb128 15
	.uleb128 0x18
	.asciz	"w"
	.byte	0x1
	.byte	0x40
	.4byte	0x127
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x18
	.asciz	"h"
	.byte	0x1
	.byte	0x40
	.4byte	0x127
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x18
	.asciz	"x1"
	.byte	0x1
	.byte	0x41
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0x18
	.asciz	"y1"
	.byte	0x1
	.byte	0x41
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.uleb128 0x18
	.asciz	"color"
	.byte	0x1
	.byte	0x42
	.4byte	0xf7
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"fast_pixel"
	.byte	0x2
	.byte	0x47
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5e
	.4byte	0x7f5
	.uleb128 0x17
	.asciz	"ax"
	.byte	0x2
	.byte	0x47
	.4byte	0x137
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x17
	.asciz	"ay"
	.byte	0x2
	.byte	0x47
	.4byte	0x137
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"_T1Interrupt"
	.byte	0x2
	.byte	0x5c
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5e
	.4byte	0x827
	.uleb128 0x18
	.asciz	"idx"
	.byte	0x2
	.byte	0x5e
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	_idx.8467
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.asciz	"initIntro"
	.byte	0x2
	.byte	0x87
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5e
	.4byte	0x852
	.uleb128 0x1b
	.4byte	.LASF0
	.byte	0x2
	.byte	0x88
	.4byte	0xd3
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"drawIntro"
	.byte	0x2
	.byte	0x96
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5e
	.4byte	0x8cd
	.uleb128 0x17
	.asciz	"frame"
	.byte	0x2
	.byte	0x96
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 10
	.uleb128 0x18
	.asciz	"i"
	.byte	0x2
	.byte	0x97
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x18
	.asciz	"j"
	.byte	0x2
	.byte	0x97
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x18
	.asciz	"sizeW"
	.byte	0x2
	.byte	0x97
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x18
	.asciz	"sizeH"
	.byte	0x2
	.byte	0x97
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.uleb128 0x18
	.asciz	"vertOffset"
	.byte	0x2
	.byte	0x97
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 8
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.asciz	"audioIntro"
	.byte	0x2
	.byte	0xee
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5e
	.4byte	0x8fc
	.uleb128 0x17
	.asciz	"t"
	.byte	0x2
	.byte	0xee
	.4byte	0x106
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.asciz	"initRoad"
	.byte	0x2
	.byte	0xf4
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5e
	.4byte	0x926
	.uleb128 0x1b
	.4byte	.LASF0
	.byte	0x2
	.byte	0xf5
	.4byte	0xd3
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"drawRoad"
	.byte	0x2
	.2byte	0x103
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1e
	.byte	0x1
	.asciz	"audioRoad"
	.byte	0x2
	.2byte	0x106
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5e
	.4byte	0x96e
	.uleb128 0x1f
	.asciz	"t"
	.byte	0x2
	.2byte	0x106
	.4byte	0x106
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.asciz	"initCredits"
	.byte	0x2
	.2byte	0x10d
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5e
	.4byte	0x99d
	.uleb128 0x21
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x10e
	.4byte	0xd3
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.asciz	"drawCredits"
	.byte	0x2
	.2byte	0x113
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5e
	.4byte	0x9cf
	.uleb128 0x1f
	.asciz	"frame"
	.byte	0x2
	.2byte	0x113
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"audioCredits"
	.byte	0x2
	.2byte	0x126
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5e
	.4byte	0xa02
	.uleb128 0x1f
	.asciz	"t"
	.byte	0x2
	.2byte	0x126
	.4byte	0x106
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.asciz	"loadScenes"
	.byte	0x2
	.2byte	0x130
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.byte	0x1
	.asciz	"initDemo"
	.byte	0x2
	.2byte	0x137
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.byte	0x1
	.asciz	"codecrow"
	.byte	0x2
	.2byte	0x14a
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.byte	0x1
	.asciz	"drawFPS"
	.byte	0x2
	.2byte	0x177
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x5e
	.uleb128 0x23
	.byte	0x1
	.asciz	"handleSerialInput"
	.byte	0x2
	.2byte	0x17f
	.4byte	0xd3
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x5e
	.4byte	0xae3
	.uleb128 0x24
	.asciz	"toRet"
	.byte	0x2
	.2byte	0x182
	.4byte	0xd3
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x24
	.asciz	"i"
	.byte	0x2
	.2byte	0x183
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 2
	.uleb128 0x25
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x24
	.asciz	"c"
	.byte	0x2
	.2byte	0x189
	.4byte	0x17c
	.byte	0x2
	.byte	0x7e
	.sleb128 4
	.uleb128 0x25
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x24
	.asciz	"numberValue"
	.byte	0x2
	.2byte	0x18d
	.4byte	0x117
	.byte	0x2
	.byte	0x7e
	.sleb128 6
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.byte	0x1
	.asciz	"main"
	.byte	0x2
	.2byte	0x1a5
	.byte	0x1
	.4byte	0xd3
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x5e
	.uleb128 0x27
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1bf
	.4byte	0xb0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x2ad
	.uleb128 0x29
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0xdad
	.4byte	0xb1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x127
	.uleb128 0x29
	.asciz	"G1CMDL"
	.byte	0x4
	.2byte	0x184b
	.4byte	0xb1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"G1CMDH"
	.byte	0x4
	.2byte	0x1861
	.4byte	0xb1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x18a3
	.4byte	0xb54
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x393
	.uleb128 0x27
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x1a82
	.4byte	0xb67
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0x515
	.uleb128 0x2a
	.asciz	"PIX_H"
	.byte	0x6
	.byte	0x8d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x106
	.4byte	0xb8b
	.uleb128 0x15
	.4byte	0x137
	.byte	0x7f
	.byte	0x0
	.uleb128 0x2a
	.asciz	"rx1Buf"
	.byte	0x7
	.byte	0x12
	.4byte	0xb7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"rxSize"
	.byte	0x7
	.byte	0x14
	.4byte	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF4
	.byte	0x7
	.byte	0x16
	.4byte	0x6f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x106
	.4byte	0xbc3
	.uleb128 0x2c
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF5
	.byte	0x8
	.byte	0x81
	.4byte	0xbd0
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xbb8
	.uleb128 0x2b
	.4byte	.LASF6
	.byte	0x8
	.byte	0x82
	.4byte	0xbe2
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xbb8
	.uleb128 0x14
	.4byte	0x528
	.4byte	0xbf7
	.uleb128 0x15
	.4byte	0x137
	.byte	0x8
	.byte	0x0
	.uleb128 0x2a
	.asciz	"s"
	.byte	0x1
	.byte	0x34
	.4byte	0xbe7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF7
	.byte	0x5
	.byte	0x37
	.4byte	0x711
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"frames"
	.byte	0x5
	.byte	0x39
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x17c
	.4byte	0xc2f
	.uleb128 0x15
	.4byte	0x137
	.byte	0x9
	.byte	0x0
	.uleb128 0x2b
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0xc1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.4byte	0x17c
	.4byte	0xc4c
	.uleb128 0x15
	.4byte	0x137
	.byte	0x13
	.byte	0x0
	.uleb128 0x2a
	.asciz	"buf"
	.byte	0x2
	.byte	0x42
	.4byte	0xc3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF9
	.byte	0x2
	.byte	0x43
	.4byte	0xc66
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.4byte	0xf7
	.uleb128 0x2a
	.asciz	"maxY"
	.byte	0x2
	.byte	0x75
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"color"
	.byte	0x2
	.byte	0x78
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF10
	.byte	0x2
	.byte	0x7b
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7f
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF12
	.byte	0x2
	.byte	0x80
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF13
	.byte	0x2
	.byte	0x81
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF14
	.byte	0x2
	.byte	0x83
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF15
	.byte	0x2
	.byte	0x84
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF16
	.byte	0x2
	.byte	0x86
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1bf
	.4byte	0xb0a
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"PORTB"
	.byte	0x4
	.2byte	0xdad
	.4byte	0xb1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"G1CMDL"
	.byte	0x4
	.2byte	0x184b
	.4byte	0xb1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.asciz	"G1CMDH"
	.byte	0x4
	.2byte	0x1861
	.4byte	0xb1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x18a3
	.4byte	0xb54
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x1a82
	.4byte	0xb67
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"PIX_H"
	.byte	0x6
	.byte	0x8d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"rx1Buf"
	.byte	0x7
	.byte	0x12
	.4byte	0xb7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"rxSize"
	.byte	0x7
	.byte	0x14
	.4byte	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF4
	.byte	0x7
	.byte	0x16
	.4byte	0x6f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF5
	.byte	0x8
	.byte	0x81
	.4byte	0xd88
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xbb8
	.uleb128 0x2b
	.4byte	.LASF6
	.byte	0x8
	.byte	0x82
	.4byte	0xd9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.4byte	0xbb8
	.uleb128 0x2a
	.asciz	"s"
	.byte	0x1
	.byte	0x34
	.4byte	0xbe7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	.LASF7
	.byte	0x5
	.byte	0x37
	.4byte	0x711
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.asciz	"frames"
	.byte	0x5
	.byte	0x39
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x2e
	.4byte	.LASF8
	.byte	0x2
	.byte	0x41
	.4byte	0xc1f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_projectName
	.uleb128 0x2f
	.asciz	"buf"
	.byte	0x2
	.byte	0x42
	.4byte	0xc3c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_buf
	.uleb128 0x2e
	.4byte	.LASF9
	.byte	0x2
	.byte	0x43
	.4byte	0xc66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_serialStoryIndex
	.uleb128 0x2f
	.asciz	"maxY"
	.byte	0x2
	.byte	0x75
	.4byte	0x117
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_maxY
	.uleb128 0x2f
	.asciz	"color"
	.byte	0x2
	.byte	0x78
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_color
	.uleb128 0x2e
	.4byte	.LASF10
	.byte	0x2
	.byte	0x7b
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clutStart
	.uleb128 0x2f
	.asciz	"speed"
	.byte	0x2
	.byte	0x7c
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_speed
	.uleb128 0x2f
	.asciz	"dir"
	.byte	0x2
	.byte	0x7d
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_dir
	.uleb128 0x2f
	.asciz	"xPosition"
	.byte	0x2
	.byte	0x7e
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_xPosition
	.uleb128 0x2e
	.4byte	.LASF11
	.byte	0x2
	.byte	0x7f
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_rotAngle
	.uleb128 0x2e
	.4byte	.LASF12
	.byte	0x2
	.byte	0x80
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteIndex
	.uleb128 0x2e
	.4byte	.LASF13
	.byte	0x2
	.byte	0x81
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteOffset
	.uleb128 0x2f
	.asciz	"currentSpriteFrameCount"
	.byte	0x2
	.byte	0x82
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteFrameCount
	.uleb128 0x2e
	.4byte	.LASF14
	.byte	0x2
	.byte	0x83
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_spriteStepTimeout
	.uleb128 0x2e
	.4byte	.LASF15
	.byte	0x2
	.byte	0x84
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_spriteStepTrigger
	.uleb128 0x2e
	.4byte	.LASF16
	.byte	0x2
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.4byte	0xf07
	.4byte	0x7bc
	.asciz	"fast_pixel"
	.4byte	0x7f5
	.asciz	"_T1Interrupt"
	.4byte	0x827
	.asciz	"initIntro"
	.4byte	0x852
	.asciz	"drawIntro"
	.4byte	0x8cd
	.asciz	"audioIntro"
	.4byte	0x8fc
	.asciz	"initRoad"
	.4byte	0x926
	.asciz	"drawRoad"
	.4byte	0x93e
	.asciz	"audioRoad"
	.4byte	0x96e
	.asciz	"initCredits"
	.4byte	0x99d
	.asciz	"drawCredits"
	.4byte	0x9cf
	.asciz	"audioCredits"
	.4byte	0xa02
	.asciz	"loadScenes"
	.4byte	0xa1c
	.asciz	"initDemo"
	.4byte	0xa34
	.asciz	"codecrow"
	.4byte	0xa4c
	.asciz	"drawFPS"
	.4byte	0xa63
	.asciz	"handleSerialInput"
	.4byte	0xae3
	.asciz	"main"
	.4byte	0xdc7
	.asciz	"projectName"
	.4byte	0xdd9
	.asciz	"buf"
	.4byte	0xdeb
	.asciz	"serialStoryIndex"
	.4byte	0xdfd
	.asciz	"maxY"
	.4byte	0xe10
	.asciz	"color"
	.4byte	0xe24
	.asciz	"clutStart"
	.4byte	0xe36
	.asciz	"speed"
	.4byte	0xe4a
	.asciz	"dir"
	.4byte	0xe5c
	.asciz	"xPosition"
	.4byte	0xe74
	.asciz	"rotAngle"
	.4byte	0xe86
	.asciz	"currentSpriteIndex"
	.4byte	0xe98
	.asciz	"currentSpriteOffset"
	.4byte	0xeaa
	.asciz	"currentSpriteFrameCount"
	.4byte	0xed0
	.asciz	"spriteStepTimeout"
	.4byte	0xee2
	.asciz	"spriteStepTrigger"
	.4byte	0xef4
	.asciz	"colorScrollSpeed"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0xab
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf07
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
	.asciz	"sprites.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"main.c"
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
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM2
	.byte	0x16
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
	.byte	0x1a
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
	.4byte	.LSM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x16
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
	.byte	0x16
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
	.4byte	.LSM26
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM29
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM30
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x3
	.sleb128 -31
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
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
	.4byte	.LSM39
	.byte	0x4
	.uleb128 0x2
	.byte	0x5a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x15
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x15
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
	.4byte	.LSM52
	.byte	0x4
	.uleb128 0x2
	.byte	0x70
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM55
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x17
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
	.4byte	.LSM59
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
	.4byte	.LSM60
	.byte	0x4
	.uleb128 0x2
	.byte	0x9a
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM64
	.byte	0x17
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
	.4byte	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x4
	.uleb128 0x2
	.byte	0xa9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x16
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM77
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM78
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM79
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x15
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
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM84
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM85
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM86
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM94
	.byte	0x18
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM102
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM103
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x2d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM107
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM108
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM109
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM110
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM111
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM112
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM113
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM114
	.byte	0x3
	.sleb128 -77
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM115
	.byte	0x64
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
	.4byte	.LSM116
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 237
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM118
	.byte	0x15
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
	.4byte	.LSM119
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 243
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM120
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM121
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM122
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM123
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
	.4byte	.LSM124
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 258
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM126
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
	.4byte	.LSM127
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 261
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM128
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM129
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
	.4byte	.LSM130
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 268
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
	.4byte	.LSM135
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 274
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM136
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM137
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM138
	.byte	0x15
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
	.4byte	.LSM141
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM142
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM143
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM144
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM145
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM147
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM148
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM149
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
	.4byte	.LSM150
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 293
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM151
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM152
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
	.4byte	.LSM153
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 303
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM154
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM155
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM156
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
	.4byte	.LSM157
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 310
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM158
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM159
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM160
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM161
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM162
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM163
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM164
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM165
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM166
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
	.4byte	.LSM167
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 329
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM168
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM169
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM170
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM171
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM172
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM173
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM174
	.byte	0x17
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
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM182
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM183
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
	.4byte	.LSM184
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 374
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM185
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM186
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM187
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM188
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM189
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
	.4byte	.LSM190
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 382
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM191
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM192
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM193
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM194
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM195
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM196
	.byte	0x17
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
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM200
	.byte	0x17
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM204
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM205
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM206
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM207
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM208
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM209
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM210
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM211
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM212
	.byte	0xa
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM213
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM214
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM215
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM216
	.byte	0x15
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
	.4byte	.LSM217
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 420
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM218
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM219
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM220
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM221
	.byte	0x15
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
	.word 0x0001
	.word 0x0001

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
