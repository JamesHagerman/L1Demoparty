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
.LFB3:
.LSM0:
	.set ___PA___,1
.LSM1:
	return	
	.set ___PA___,0
.LFE3:
	.size	_audioIntro, .-_audioIntro
	.align	2
	.global	_audioCredits	; export
	.type	_audioCredits,@function
_audioCredits:
.LFB9:
.LSM2:
	.set ___PA___,1
.LSM3:
	clr.b	w0
	return	
	.set ___PA___,0
.LFE9:
	.size	_audioCredits, .-_audioCredits
	.section .const,psv,page
.LC0:
	.asciz	"Initing scene %i: %s\012"
	.section	.text,code
	.align	2
	.global	_initCredits	; export
	.type	_initCredits,@function
_initCredits:
.LFB7:
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
.LFE7:
	.size	_initCredits, .-_initCredits
	.align	2
	.type	_drawSprite,@function
_drawSprite:
.LFB0:
.LSM9:
	.set ___PA___,1
	add	w15,#14,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov	w0,[w15-20]
	mov	w1,[w15-22]
	mov.b	w3,[w15-18]
.LSM10:
	mov	#78,w4
	mov	w0,w1
	sub	w1,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L4
	mov	#478,w4
	mov	[w15-22],w5
	sub	w5,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L4
.LSM11:
	ze	w2,w2
	mul.su	w2,#1,w4
	mul.uu	w4,#10,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4+1],w4
	clr	w14
	sub.b	w4,#0,[w15]
	.set ___BP___,95
	bra	nz,.L6
	bra	.L4
.L11:
.LSM12:
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
.LSM13:
	mov.d	w12,w6
	mov	w11,w7
	add	w6,#2,w6
	addc	w7,#0,w7
	add	w5,w6,w5
	mov.b	[w5+1],w4
	sub.b	w4,w0,[w15]
	.set ___BP___,48
	bra	z,.L7
.LSM14:
	ze	w0,w0
	rcall	_rcc_color
.LSM15:
	mov.b	[w15-18],w6
	sub.b	w6,#1,[w15]
	.set ___BP___,29
	bra	z,.L9
	.set ___BP___,50
	bra	ltu,.L8
	sub.b	w6,#2,[w15]
	.set ___BP___,71
	bra	nz,.L7
	bra	.L16
.L8:
	mov	[w15-20],w7
	add	w10,w7,w0
.LSM16:
	mov	#77,w1
	sub	w0,w1,[w15]
	.set ___BP___,50
	bra	gtu,.L7
.LSM17:
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
	bra	geu,.L4
.LSM18:
	mov	#0,w1
	mov.d	w8,w2
	rcall	_fast_pixel
.LSM19:
	bra	.L7
.L9:
.LSM20:
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w0
	dec	w0,w0
	mov	[w15-20],w4
	add	w0,w4,w0
	sub	w0,w14,w0
.LSM21:
	mov	#_PIX_H,w5
	mov.b	[w5],w5
.LSM22:
	dec	w0,w4
	mov	#77,w6
	sub	w4,w6,[w15]
	.set ___BP___,50
	bra	gtu,.L7
.LSM23:
	ze	w5,w6
	mul.ss	w10,w6,w6
	mov	[w15-22],w1
	add	w1,w6,w1
	mov	w1,[w15-16]
.LSM24:
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
	bra	geu,.L7
	sub	w1,#0,[w15]
	.set ___BP___,71
	bra	z,.L7
.LSM25:
	mov	#0,w1
	rcall	_fast_pixel
.LSM26:
	bra	.L7
.L16:
.LSM27:
	mov.d	w12,w4
	mov	#_s,w7
	add	w7,w4,w4
	mov.b	[w4],w4
	ze	w4,w0
	dec	w0,w0
	mov	[w15-20],w5
	add	w0,w5,w0
	sub	w0,w10,w0
.LSM28:
	mov	#_PIX_H,w6
	mov.b	[w6],w6
	mov.d	w12,w4
	add	w7,w4,w4
	mov.b	[w4+1],w2
.LSM29:
	mov	#78,w4
	sub	w0,w4,[w15]
	.set ___BP___,50
	bra	gtu,.L7
.LSM30:
	ze	w2,w2
	dec	w2,w2
	sub	w2,w14,w2
	ze	w6,w4
	mul.ss	w2,w4,w2
	mov	[w15-22],w7
	add	w7,w2,w2
.LSM31:
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
	bra	geu,.L7
.LSM32:
	mov	#0,w1
	rcall	_fast_pixel
.L7:
.LSM33:
	inc	w10,w10
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w0
	sub	w0,w10,[w15]
	.set ___BP___,95
	bra	gtu,.L11
.L12:
.LSM34:
	inc	w14,w14
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4+1],w4
	ze	w4,w4
	sub	w4,w14,[w15]
	.set ___BP___,95
	bra	gtu,.L15
	bra	.L4
.L6:
.LSM35:
	asr	w2,#15,w3
	mul.su	w3,#10,w4
	mul.uu	w2,#10,w12
	add	w4,w13,w11
.L15:
	mov.d	w12,w4
	mov	#_s,w6
	add	w6,w4,w4
	mov.b	[w4],w4
	ze	w4,w4
	.set ___BP___,4
	bra	z,.L12
.LSM36:
	sl	w14,#2,w8
	add	w14,w14,w5
	add	w8,w5,w8
	mov	[w15-22],w1
	add	w8,w1,w8
.LSM37:
	mov	#0,w9
	clr	w10
	mov	w4,w0
	bra	.L11
.L4:
.LSM38:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#14
	return	
	.set ___PA___,0
.LFE0:
	.size	_drawSprite, .-_drawSprite
	.align	2
	.global	_drawCredits	; export
	.type	_drawCredits,@function
_drawCredits:
.LFB8:
.LSM39:
	.set ___PA___,1
.LSM40:
	mov	#_PIX_H,w1
	mov.b	[w1],w1
	ze	w1,w1
	sl	w1,#2,w1
	clr.b	w3
	mov.b	#8,w2
	mov	#24,w0
	rcall	_drawSprite
.LSM41:
	clr	w2
	clr	w1
	mov	#_creditsText,w0
	rcall	_chr_print
.LSM42:
	return	
	.set ___PA___,0
.LFE8:
	.size	_drawCredits, .-_drawCredits
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
.LFB2:
.LSM43:
	.set ___PA___,1
	add	w15,#4,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov	w0,w12
.LSM44:
	mov	#_PIX_H,w10
	mov.b	[w10],w10
	ze	w10,w10
.LSM45:
	mov	#78,w4
	sub	w10,w4,[w15]
	.set ___BP___,39
	bra	gtu,.L18
	sub	w10,#0,[w15]
	.set ___BP___,39
	bra	z,.L18
.LSM46:
	sub	w12,#0,[w15]
	.set ___BP___,50
	bra	z,.L32
	bra	.L36
.L22:
.LSM47:
	mov	#_color,w4
	mov.b	w12,[w4]
.LSM48:
	mov	#4,w0
	rcall	_rcc_color
.LSM49:
	mov	w10,w3
	mov	#1,w2
	mov	w11,w1
	mov	w9,w0
	rcall	_rcc_draw
.LSM50:
	inc	w9,w9
	sub	w9,w8,[w15]
	.set ___BP___,98
	bra	nz,.L22
	add	w13,w10,w13
	add	w11,w10,w11
.LSM51:
	sub	w13,w10,w5
	mov	#238,w4
	sub	w5,w4,[w15]
	.set ___BP___,91
	bra	leu,.L20
	bra	.L37
.L32:
.LSM52:
	mov	w10,w13
	mov	#120,w11
.LSM53:
	mov.b	#4,w12
.L20:
.LSM54:
	clr	w9
.LSM55:
	mov	#79,w8
	bra	.L22
.L37:
.LSM56:
	mov	_currentSpriteOffset,w2
	mov	w2,_currentSpriteIndex
.LSM57:
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
	bra	.L18
.L36:
.LSM58:
	inc.b	_colorScrollSpeed
	mov	w10,[w15-16]
.LSM59:
	clr	w14
.LSM60:
	mov	#_sinetable,w13
	bra	.L24
.L28:
	mov	#_colorScrollSpeed,w4
	mov.b	[w4],w4
	ze	w4,w4
	mul.ss	w4,w12,w4
.LSM61:
	mul.uu	w8,#3,w6
.LSM62:
	mov.b	[w13+w6],w6
	add.b	w6,w4,w4
	add.b	w4,[w11],w4
	mov	#_color,w5
	mov.b	w4,[w5]
.LSM63:
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	nz,.L25
.LSM64:
	mov.b	#1,w6
	mov	#_color,w5
	mov.b	w6,[w5]
	bra	.L26
.L25:
.LSM65:
	add.b	w4,#1,[w15]
	.set ___BP___,72
	bra	nz,.L26
.LSM66:
	mov.b	#-2,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.L26:
.LSM67:
	mov	#_clutStart,w4
	mov.b	[w4],w4
	mov	#_color,w5
	mov.b	[w5],w5
	sub.b	w5,w4,[w15]
	.set ___BP___,50
	bra	geu,.L27
.LSM68:
	mov.b	w4,w6
	mov	#_color,w5
	mov.b	w6,[w5]
.L27:
.LSM69:
	mov.b	_color,WREG
	ze	w0,w0
	rcall	_rcc_color
.LSM70:
	mov	w10,w3
	mov	#1,w2
	mov.d	w8,w0
	rcall	_rcc_draw
.LSM71:
	inc	w8,w8
	mov	#79,w4
	sub	w8,w4,[w15]
	.set ___BP___,98
	bra	nz,.L28
.LSM72:
	add	w14,w10,w14
	mov	[w15-16],w4
	add	w4,w10,w4
	mov	w4,[w15-16]
	sub	w4,w10,w5
	mov	#238,w4
	sub	w5,w4,[w15]
	.set ___BP___,9
	bra	gtu,.L29
.L24:
.LSM73:
	clr	w8
.LSM74:
	ze	w14,w11
	mov	#_sinetable,w6
	add	w6,w11,w11
.LSM75:
	mov	#120,w9
	add	w9,w14,w9
	bra	.L28
.L29:
.LSM76:
	mov	_spriteStepTimeout,w4
	inc	w4,w4
	mov	w4,_spriteStepTimeout
.LSM77:
	mov	_spriteStepTrigger,w5
	add	w5,#30,w5
	sub	w4,w5,[w15]
	.set ___BP___,50
	bra	le,.L30
.LSM78:
	mov	_currentSpriteOffset,w4
	inc	w4,w4
	mov	w4,_currentSpriteIndex
	bra	.L31
.L30:
.LSM79:
	mov	_currentSpriteOffset,w5
	inc2	w5,w5
	mov	w5,_currentSpriteIndex
.L31:
.LSM80:
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
.LSM81:
	mov	#.LC1,w4
	mov	#_buf,w6
	repeat	#10-1
	mov.b	[w4++],[w6++]
	sub	#10, w4
.LSM82:
	mov	#101,w2
	clr	w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM83:
	mov	#.LC2,w4
	mov	#_buf,w5
	repeat	#13-1
	mov.b	[w4++],[w5++]
	sub	#13, w4
.LSM84:
	mov	#354,w2
	mov	#32,w1
	mov	#_buf,w0
	rcall	_chr_print
.L18:
.LSM85:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE2:
	.size	_drawIntro, .-_drawIntro
	.align	2
	.global	_initIntro	; export
	.type	_initIntro,@function
_initIntro:
.LFB1:
.LSM86:
	.set ___PA___,1
.LSM87:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM88:
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
.LSM89:
	push	_currentSpriteOffset
	pop	_currentSpriteIndex
.LSM90:
	bclr.b	_G1CLUTbits+1,#7
.LSM91:
	mov	#16904,w1
	mov.b	#1,w0
	rcall	_clut_set
.LSM92:
	mov	#-26016,w1
	mov.b	#2,w0
	rcall	_clut_set
.LSM93:
	mov	#-18432,w1
	mov.b	#3,w0
	rcall	_clut_set
.LSM94:
	mov	#8484,w1
	mov.b	#4,w0
	rcall	_clut_set
.LSM95:
	mov.b	_clutStart,WREG
	ze	w0,w0
	rcall	_calc_colors
.LSM96:
	bset.b	_G1CLUTbits+1,#7
	sub	w15,#6,w15
.LCFI9:
.LSM97:
	return	
	.set ___PA___,0
.LFE1:
	.size	_initIntro, .-_initIntro
	.align	2
	.global	_initRoad	; export
	.type	_initRoad,@function
_initRoad:
.LFB4:
.LSM98:
	.set ___PA___,1
.LSM99:
	mov	#_story_state,w4
	mov.b	[w4],w4
	ze	w4,w4
.LSM100:
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
.LSM101:
	push	_currentSpriteOffset
	pop	_currentSpriteIndex
	sub	w15,#6,w15
.LCFI14:
.LSM102:
	return	
	.set ___PA___,0
.LFE4:
	.size	_initRoad, .-_initRoad
	.align	2
	.global	_drawRoad	; export
	.type	_drawRoad,@function
_drawRoad:
.LFB5:
.LSM103:
	.set ___PA___,1
.LSM104:
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
.LSM105:
	return	
	.set ___PA___,0
.LFE5:
	.size	_drawRoad, .-_drawRoad
	.align	2
	.global	_audioRoad	; export
	.type	_audioRoad,@function
_audioRoad:
.LFB6:
.LSM106:
	.set ___PA___,1
.LSM107:
	ze	w0,w0
	lsr	w0,w0
.LSM108:
	return	
	.set ___PA___,0
.LFE6:
	.size	_audioRoad, .-_audioRoad
	.align	2
	.global	_loadScenes	; export
	.type	_loadScenes,@function
_loadScenes:
.LFB10:
.LSM109:
	.set ___PA___,1
	lnk	#64
.LSM110:
	mov	w15,w4
	sub	#64,w4
	repeat	#16-1
	clr	[w4++]
	mov	#400,w4
	mov	w4,[w15-62]
	mov	#handle(_initIntro),w4
	mov	w4,[w15-60]
	mov	#handle(_drawIntro),w4
	mov	w4,[w15-58]
	mov	#handle(_audioIntro),w4
	mov	w4,[w15-56]
	mov	#28233,w4
	mov	#29300,w5
	mov	w4,[w15-54]
	mov	w5,[w15-52]
	mov	#111,w4
	mov	#0,w5
	mov	w4,[w15-50]
	mov	w5,[w15-48]
	mov	w15,w5
	sub	#46,w5
	repeat	#6-1
	clr	[w5++]
	clr.b	[w5++]
.LSM111:
	mov	w15,w4
	sub	#32,w4
	repeat	#16-1
	clr	[w4++]
	mov	#1000,w4
	mov	w4,[w15-30]
	mov	#handle(_initCredits),w4
	mov	w4,[w15-28]
	mov	#handle(_drawCredits),w4
	mov	w4,[w15-26]
	mov	#handle(_audioCredits),w4
	mov	w4,[w15-24]
	mov	#29251,w4
	mov	#25701,w5
	mov	w4,[w15-22]
	mov	w5,[w15-20]
	mov	#29801,w4
	mov	#115,w5
	mov	w4,[w15-18]
	mov	w5,[w15-16]
	sub	w15,#14,w5
	repeat	#6-1
	clr	[w5++]
	clr.b	[w5++]
.LSM112:
	mov	#_story_state+4,w4
	mov	#-64,w5
	add	w15,w5,w5
	repeat	#16-1
	mov	[w5++],[w4++]
.LSM113:
	mov	#_story_state+36,w4
	mov	#-32,w5
	add	w15,w5,w5
	repeat	#16-1
	mov	[w5++],[w4++]
.LSM114:
	ulnk	
	return	
	.set ___PA___,0
.LFE10:
	.size	_loadScenes, .-_loadScenes
	.section .const,psv,page
.LC3:
	.asciz	"Initing demo...\015"
	.section	.text,code
	.align	2
	.global	_initDemo	; export
	.type	_initDemo,@function
_initDemo:
.LFB11:
.LSM115:
	.set ___PA___,1
.LSM116:
	mov	#.LC3,w0
	rcall	_puts
.LSM117:
	mov	#_PIX_H,w4
	mov.b	[w4],w4
	ze	w4,w4
	mov	#480,w5
	sub	w5,w4,w4
	mov	w4,_maxY
.LSM118:
	rcall	_blank_background
.LSM119:
	rcall	_loadAllSprites
.LSM120:
	rcall	_loadScenes
.LSM121:
	clr.b	_story_state+1
.LSM122:
	mov.b	_startSceneIndex,WREG
	mov.b	WREG,_story_state
.LSM123:
	rcall	_switchScene
.LSM124:
	return	
	.set ___PA___,0
.LFE11:
	.size	_initDemo, .-_initDemo
	.section .const,psv,page
.LC4:
	.asciz	"A letter!: '%c'\015\012"
.LC5:
	.asciz	"Restting frames\015"
.LC6:
	.asciz	"Toggling CLUT\015"
.LC7:
	.asciz	"That char is not a number or letter: '%c'\015\012"
	.section	.text,code
	.align	2
	.global	_handleSerialInput	; export
	.type	_handleSerialInput,@function
_handleSerialInput:
.LFB13:
.LSM125:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
.LSM126:
	setm	w12
.LSM127:
	mov	#_dataAvailableU1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,39
	bra	z,.L45
.LSM128:
	clr.b	_dataAvailableU1
.LSM129:
	mov	_rxSizeU1,w4
	sub	w4,#0,[w15]
	.set ___BP___,1
	bra	z,.L46
	clr	w8
.LBB2:
.LSM130:
	mov	#_rxBufU1,w10
.LSM131:
	mov.b	#-48,w11
.LSM132:
	mov	#.LC4,w13
.LSM133:
	mov	#.LC7,w14
.L52:
.LSM134:
	mov.b	[w10+w8],w4
	mov.b	w4,w9
.LSM135:
	add.b	w4,w11,w5
	sub.b	w5,#9,[w15]
	.set ___BP___,50
	bra	gtu,.L47
.LBB3:
.LSM136:
	se	w4,w12
	sub	#48,w12
	bra	.L48
.L47:
.LBE3:
.LSM137:
	mov.b	#-65,w5
	add.b	w4,w5,w5
	sub.b	w5,#25,[w15]
	.set ___BP___,29
	bra	leu,.L49
	mov.b	#-97,w5
	add.b	w4,w5,w4
	sub.b	w4,#25,[w15]
	.set ___BP___,50
	bra	gtu,.L50
.L49:
.LSM138:
	se	w9,w4
	mov	w4,[w15++]
.LCFI15:
	mov	w13,[w15++]
.LCFI16:
.LCFI17:
	rcall	__printf_cdnopsuxX
.LSM139:
	sub	w15,#4,w15
.LCFI18:
	mov.b	#114,w4
	sub.b	w9,w4,[w15]
	.set ___BP___,86
	bra	nz,.L51
.LSM140:
	mov	#.LC5,w0
.LCFI19:
	rcall	_puts
.LSM141:
	clr	_frames
	bra	.L48
.L51:
.LSM142:
	mov.b	#101,w4
	sub.b	w9,w4,[w15]
	.set ___BP___,86
	bra	nz,.L48
.LSM143:
	mov	#.LC6,w0
	rcall	_puts
.LSM144:
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
	bra	.L48
.L50:
.LSM145:
	sub.b	w9,#10,[w15]
	.set ___BP___,28
	bra	z,.L48
	sub.b	w9,#13,[w15]
	.set ___BP___,48
	bra	z,.L48
.LSM146:
	se	w9,w9
	mov	w9,[w15++]
.LCFI20:
	mov	w14,[w15++]
.LCFI21:
.LCFI22:
	rcall	__printf_cdnopsuxX
	sub	w15,#4,w15
.LCFI23:
.L48:
.LBE2:
.LSM147:
	inc	w8,w8
	mov	_rxSizeU1,w4
	sub	w4,w8,[w15]
	.set ___BP___,99
	bra	gtu,.L52
.L46:
.LSM148:
.LCFI24:
	rcall	_reset_buffer
.L45:
.LSM149:
	mov	w12,w0
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE13:
	.size	_handleSerialInput, .-_handleSerialInput
	.section .const,psv,page
.LC8:
	.asciz	"Welcome to project: %s!\015\012"
.LC9:
	.asciz	"Please jump R28 to"
.LC10:
	.asciz	"to Ground..."
	.section	.text,code
	.align	2
	.global	_codecrow	; export
	.type	_codecrow,@function
_codecrow:
.LFB12:
.LSM150:
	.set ___PA___,1
	mov.d	w8,[w15++]
.LSM151:
	mov	#_projectName,w4
	mov	w4,[w15++]
.LCFI25:
	mov	#.LC8,w4
	mov	w4,[w15++]
.LCFI26:
.LCFI27:
	rcall	__printf_cdnopsuxX
.LSM152:
	rcall	_initDemo
	sub	w15,#4,w15
.LCFI28:
.LSM153:
	mov	#.LC9,w8
.LSM154:
	mov	#.LC10,w9
.L59:
.LSM155:
.LCFI29:
	rcall	_frameStart
.LSM156:
	rcall	_manageFrameReset
.LSM157:
	rcall	_handleSerialInput
	mov.b	WREG,_serialStoryIndex
.LSM158:
	rcall	_drawCurrentScene
.LSM159:
	rcall	_checkForJumper
.LSM160:
	mov	#_story_state+1,w4
	mov.b	[w4],w4
	sub.b	w4,#0,[w15]
	.set ___BP___,50
	bra	z,.L57
.LSM161:
	inc	_frames
.LSM162:
	rcall	_checkSceneFinished
	bra	.L58
.L57:
.LSM163:
	mov	#_buf,w4
	repeat	#19-1
	mov.b	[w8++],[w4++]
	sub	#19, w8
.LSM164:
	mov	#417,w2
	mov	#2,w1
	mov	#_buf,w0
	rcall	_chr_print
.LSM165:
	mov	#_buf,w4
	repeat	#13-1
	mov.b	[w9++],[w4++]
	sub	#13, w9
.LSM166:
	mov	#438,w2
	mov	#22,w1
	mov	#_buf,w0
	rcall	_chr_print
.L58:
.LSM167:
	rcall	_frameEnd
.LSM168:
	bra	.L59
.LFE12:
	.size	_codecrow, .-_codecrow
	.align	2
	.global	_main	; export
	.type	_main,@function
_main:
.LFB14:
.LSM169:
	.set ___PA___,1
.LSM170:
	rcall	_setupHardware
.LSM171:
	rcall	_codecrow
.LSM172:
	clr	w0
	return	
	.set ___PA___,0
.LFE14:
	.size	_main, .-_main
	.global	_projectName	; export
	.section	.ndata,data,near
	.type	_projectName,@object
	.size	_projectName, 10
_projectName:
	.asciz	"Code MESS"
	.global	_startSceneIndex	; export
	.type	_startSceneIndex,@object
	.size	_startSceneIndex, 1
_startSceneIndex:
	.byte 1
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
	.section	.ndata,data,near
	.type	_creditsText,@object
	.size	_creditsText, 118
_creditsText:
	.ascii	"\012\012\012\012\012\012\012\012\012\012\012Thank you Arko\012and ev"
	.ascii	"eryone at NSL\012that helps make\012LayerOne happen!\012\012Never en"
	.asciz	"ough time.\012Was it good for u?"
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI0-.LFB7
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI5-.LFB1
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI10-.LFB4
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
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI15-.LFB13
	.byte	0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x13
	.sleb128 -4
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x2e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x13
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x2e
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
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
	.align	4
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI25-.LFB12
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
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align	4
.LEFDE28:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0xbd1
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
	.byte	0x2
	.byte	0x4
	.2byte	0x1a6e
	.4byte	0x20a
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x4
	.2byte	0x1a76
	.4byte	0x2cc
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
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.2byte	0x1a6d
	.4byte	0x2e0
	.uleb128 0x7
	.4byte	0x191
	.uleb128 0x7
	.4byte	0x20a
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagG1CLUTBITS"
	.byte	0x2
	.byte	0x4
	.2byte	0x1a6c
	.4byte	0x300
	.uleb128 0x9
	.4byte	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"G1CLUTBITS"
	.byte	0x4
	.2byte	0x1a81
	.4byte	0x2e0
	.uleb128 0xb
	.asciz	"Sprite"
	.byte	0xa
	.byte	0x2
	.byte	0x2c
	.4byte	0x385
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
	.4byte	0x385
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
	.4byte	0x418
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
	.4byte	0x41f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.asciz	"sceneDraw"
	.byte	0x5
	.byte	0x26
	.4byte	0x431
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.asciz	"audioBuilder"
	.byte	0x5
	.byte	0x27
	.4byte	0x447
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.asciz	"sceneName"
	.byte	0x5
	.byte	0x28
	.4byte	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xf
	.4byte	0x41f
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x418
	.uleb128 0x12
	.byte	0x1
	.4byte	0x431
	.uleb128 0x13
	.4byte	0x117
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x425
	.uleb128 0x14
	.byte	0x1
	.4byte	0x106
	.4byte	0x447
	.uleb128 0x13
	.4byte	0x106
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x437
	.uleb128 0x15
	.4byte	0x17c
	.4byte	0x45d
	.uleb128 0x16
	.4byte	0x137
	.byte	0x14
	.byte	0x0
	.uleb128 0x3
	.asciz	"SCENE"
	.byte	0x5
	.byte	0x29
	.4byte	0x38c
	.uleb128 0xe
	.byte	0x64
	.byte	0x5
	.byte	0x2c
	.4byte	0x4db
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
	.4byte	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.asciz	"storyEnded"
	.byte	0x5
	.byte	0x33
	.4byte	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.asciz	"clutState"
	.byte	0x5
	.byte	0x34
	.4byte	0x4db
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.asciz	"scenes"
	.byte	0x5
	.byte	0x35
	.4byte	0x4e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.asciz	"_Bool"
	.uleb128 0x15
	.4byte	0x45d
	.4byte	0x4f4
	.uleb128 0x16
	.4byte	0x137
	.byte	0x2
	.byte	0x0
	.uleb128 0x3
	.asciz	"STORY_STATE"
	.byte	0x5
	.byte	0x36
	.4byte	0x46a
	.uleb128 0x17
	.byte	0x1
	.asciz	"audioIntro"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.4byte	0x535
	.uleb128 0x18
	.asciz	"t"
	.byte	0x1
	.byte	0xc5
	.4byte	0x106
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.asciz	"audioCredits"
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x5f
	.4byte	0x565
	.uleb128 0x18
	.asciz	"t"
	.byte	0x1
	.byte	0xf5
	.4byte	0x106
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"initCredits"
	.byte	0x1
	.byte	0xec
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x5f
	.4byte	0x591
	.uleb128 0x1a
	.4byte	.LASF0
	.byte	0x1
	.byte	0xed
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1b
	.asciz	"drawSprite"
	.byte	0x2
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.4byte	0x61f
	.uleb128 0x18
	.asciz	"x"
	.byte	0x2
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x7f
	.sleb128 -20
	.uleb128 0x18
	.asciz	"y"
	.byte	0x2
	.byte	0x3e
	.4byte	0x117
	.byte	0x2
	.byte	0x7f
	.sleb128 -22
	.uleb128 0x18
	.asciz	"id"
	.byte	0x2
	.byte	0x3e
	.4byte	0xf7
	.byte	0x1
	.byte	0x52
	.uleb128 0x18
	.asciz	"rotation"
	.byte	0x2
	.byte	0x3e
	.4byte	0xf7
	.byte	0x2
	.byte	0x7f
	.sleb128 -18
	.uleb128 0x1c
	.asciz	"w"
	.byte	0x2
	.byte	0x40
	.4byte	0x127
	.byte	0x1
	.byte	0x5a
	.uleb128 0x1c
	.asciz	"h"
	.byte	0x2
	.byte	0x40
	.4byte	0x127
	.byte	0x1
	.byte	0x5e
	.uleb128 0x1d
	.asciz	"x1"
	.byte	0x2
	.byte	0x41
	.4byte	0x117
	.uleb128 0x1d
	.asciz	"y1"
	.byte	0x2
	.byte	0x41
	.4byte	0x117
	.uleb128 0x1c
	.asciz	"color"
	.byte	0x2
	.byte	0x42
	.4byte	0xf7
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"drawCredits"
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x5f
	.4byte	0x64e
	.uleb128 0x18
	.asciz	"frame"
	.byte	0x1
	.byte	0xf1
	.4byte	0x117
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.asciz	"drawIntro"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x6b9
	.uleb128 0x18
	.asciz	"frame"
	.byte	0x1
	.byte	0x6d
	.4byte	0x117
	.byte	0x1
	.byte	0x5c
	.uleb128 0x1d
	.asciz	"i"
	.byte	0x1
	.byte	0x6e
	.4byte	0x117
	.uleb128 0x1d
	.asciz	"j"
	.byte	0x1
	.byte	0x6e
	.4byte	0x117
	.uleb128 0x1d
	.asciz	"sizeW"
	.byte	0x1
	.byte	0x6e
	.4byte	0x117
	.uleb128 0x1d
	.asciz	"sizeH"
	.byte	0x1
	.byte	0x6e
	.4byte	0x117
	.uleb128 0x1d
	.asciz	"vertOffset"
	.byte	0x1
	.byte	0x6e
	.4byte	0x117
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"initIntro"
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.4byte	0x6e3
	.uleb128 0x1a
	.4byte	.LASF0
	.byte	0x1
	.byte	0x5f
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"initRoad"
	.byte	0x1
	.byte	0xcb
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x70c
	.uleb128 0x1a
	.4byte	.LASF0
	.byte	0x1
	.byte	0xcc
	.4byte	0xd3
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.asciz	"drawRoad"
	.byte	0x1
	.byte	0xda
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.uleb128 0x17
	.byte	0x1
	.asciz	"audioRoad"
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.4byte	0x106
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.4byte	0x750
	.uleb128 0x18
	.asciz	"t"
	.byte	0x1
	.byte	0xdd
	.4byte	0x106
	.byte	0x1
	.byte	0x50
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.asciz	"loadScenes"
	.byte	0x1
	.byte	0xff
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x5f
	.4byte	0x792
	.uleb128 0x20
	.asciz	"intro"
	.byte	0x1
	.2byte	0x101
	.4byte	0x45d
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.asciz	"credits"
	.byte	0x1
	.2byte	0x103
	.4byte	0x45d
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"initDemo"
	.byte	0x1
	.2byte	0x109
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x5f
	.uleb128 0x22
	.byte	0x1
	.asciz	"handleSerialInput"
	.byte	0x1
	.2byte	0x148
	.4byte	0xd3
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x5f
	.4byte	0x824
	.uleb128 0x20
	.asciz	"toRet"
	.byte	0x1
	.2byte	0x14b
	.4byte	0xd3
	.byte	0x1
	.byte	0x5c
	.uleb128 0x20
	.asciz	"i"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x117
	.byte	0x1
	.byte	0x58
	.uleb128 0x23
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x20
	.asciz	"c"
	.byte	0x1
	.2byte	0x152
	.4byte	0x17c
	.byte	0x1
	.byte	0x59
	.uleb128 0x23
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x24
	.asciz	"numberValue"
	.byte	0x1
	.2byte	0x156
	.4byte	0x117
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.byte	0x1
	.asciz	"codecrow"
	.byte	0x1
	.2byte	0x11c
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x5f
	.uleb128 0x25
	.byte	0x1
	.asciz	"main"
	.byte	0x1
	.2byte	0x16e
	.byte	0x1
	.4byte	0xd3
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x5f
	.uleb128 0x26
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1a82
	.4byte	0x863
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x300
	.uleb128 0x28
	.asciz	"PIX_H"
	.byte	0x7
	.byte	0x8d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF2
	.byte	0x6
	.byte	0x14
	.4byte	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x106
	.4byte	0x894
	.uleb128 0x16
	.4byte	0x137
	.byte	0x7f
	.byte	0x0
	.uleb128 0x28
	.asciz	"rxBufU1"
	.byte	0x6
	.byte	0x16
	.4byte	0x884
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF3
	.byte	0x6
	.byte	0x18
	.4byte	0x4db
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x106
	.4byte	0x8bd
	.uleb128 0x2a
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF4
	.byte	0x8
	.byte	0x80
	.4byte	0x8ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x8b2
	.uleb128 0x15
	.4byte	0x313
	.4byte	0x8df
	.uleb128 0x16
	.4byte	0x137
	.byte	0x8
	.byte	0x0
	.uleb128 0x28
	.asciz	"s"
	.byte	0x2
	.byte	0x34
	.4byte	0x8cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF5
	.byte	0x5
	.byte	0x37
	.4byte	0x4f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.asciz	"frames"
	.byte	0x5
	.byte	0x39
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x17c
	.4byte	0x917
	.uleb128 0x16
	.4byte	0x137
	.byte	0x9
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF6
	.byte	0x1
	.byte	0x41
	.4byte	0x907
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x17c
	.4byte	0x934
	.uleb128 0x16
	.4byte	0x137
	.byte	0x13
	.byte	0x0
	.uleb128 0x28
	.asciz	"buf"
	.byte	0x1
	.byte	0x42
	.4byte	0x924
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF7
	.byte	0x1
	.byte	0x43
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF8
	.byte	0x1
	.byte	0x44
	.4byte	0x95b
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0xf7
	.uleb128 0x28
	.asciz	"maxY"
	.byte	0x1
	.byte	0x4c
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.asciz	"color"
	.byte	0x1
	.byte	0x4f
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF10
	.byte	0x1
	.byte	0x56
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF11
	.byte	0x1
	.byte	0x57
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF12
	.byte	0x1
	.byte	0x58
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5a
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF14
	.byte	0x1
	.byte	0x5b
	.4byte	0xd3
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.4byte	0x17c
	.4byte	0x9e8
	.uleb128 0x16
	.4byte	0x137
	.byte	0x75
	.byte	0x0
	.uleb128 0x1c
	.asciz	"creditsText"
	.byte	0x1
	.byte	0xe4
	.4byte	0x9d8
	.byte	0x5
	.byte	0x3
	.4byte	_creditsText
	.uleb128 0x26
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x1a82
	.4byte	0x863
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.asciz	"PIX_H"
	.byte	0x7
	.byte	0x8d
	.4byte	0xf7
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF2
	.byte	0x6
	.byte	0x14
	.4byte	0x127
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.asciz	"rxBufU1"
	.byte	0x6
	.byte	0x16
	.4byte	0x884
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF3
	.byte	0x6
	.byte	0x18
	.4byte	0x4db
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF4
	.byte	0x8
	.byte	0x80
	.4byte	0xa56
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.4byte	0x8b2
	.uleb128 0x28
	.asciz	"s"
	.byte	0x2
	.byte	0x34
	.4byte	0x8cf
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF5
	.byte	0x5
	.byte	0x37
	.4byte	0x4f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.asciz	"frames"
	.byte	0x5
	.byte	0x39
	.4byte	0x117
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.4byte	.LASF6
	.byte	0x1
	.byte	0x41
	.4byte	0x907
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_projectName
	.uleb128 0x2d
	.asciz	"buf"
	.byte	0x1
	.byte	0x42
	.4byte	0x924
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_buf
	.uleb128 0x2c
	.4byte	.LASF7
	.byte	0x1
	.byte	0x43
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_startSceneIndex
	.uleb128 0x2c
	.4byte	.LASF8
	.byte	0x1
	.byte	0x44
	.4byte	0x95b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_serialStoryIndex
	.uleb128 0x2d
	.asciz	"maxY"
	.byte	0x1
	.byte	0x4c
	.4byte	0x117
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_maxY
	.uleb128 0x2d
	.asciz	"color"
	.byte	0x1
	.byte	0x4f
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_color
	.uleb128 0x2c
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_clutStart
	.uleb128 0x2d
	.asciz	"speed"
	.byte	0x1
	.byte	0x53
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_speed
	.uleb128 0x2d
	.asciz	"dir"
	.byte	0x1
	.byte	0x54
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_dir
	.uleb128 0x2d
	.asciz	"xPosition"
	.byte	0x1
	.byte	0x55
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_xPosition
	.uleb128 0x2c
	.4byte	.LASF10
	.byte	0x1
	.byte	0x56
	.4byte	0xf7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_rotAngle
	.uleb128 0x2c
	.4byte	.LASF11
	.byte	0x1
	.byte	0x57
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteIndex
	.uleb128 0x2c
	.4byte	.LASF12
	.byte	0x1
	.byte	0x58
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteOffset
	.uleb128 0x2d
	.asciz	"currentSpriteFrameCount"
	.byte	0x1
	.byte	0x59
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_currentSpriteFrameCount
	.uleb128 0x2c
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5a
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_spriteStepTimeout
	.uleb128 0x2c
	.4byte	.LASF14
	.byte	0x1
	.byte	0x5b
	.4byte	0xd3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	_spriteStepTrigger
	.uleb128 0x2c
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5d
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	0x1f5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xbd5
	.4byte	0x507
	.asciz	"audioIntro"
	.4byte	0x535
	.asciz	"audioCredits"
	.4byte	0x565
	.asciz	"initCredits"
	.4byte	0x61f
	.asciz	"drawCredits"
	.4byte	0x64e
	.asciz	"drawIntro"
	.4byte	0x6b9
	.asciz	"initIntro"
	.4byte	0x6e3
	.asciz	"initRoad"
	.4byte	0x70c
	.asciz	"drawRoad"
	.4byte	0x723
	.asciz	"audioRoad"
	.4byte	0x750
	.asciz	"loadScenes"
	.4byte	0x792
	.asciz	"initDemo"
	.4byte	0x7aa
	.asciz	"handleSerialInput"
	.4byte	0x824
	.asciz	"codecrow"
	.4byte	0x83c
	.asciz	"main"
	.4byte	0xa83
	.asciz	"projectName"
	.4byte	0xa95
	.asciz	"buf"
	.4byte	0xaa7
	.asciz	"startSceneIndex"
	.4byte	0xab9
	.asciz	"serialStoryIndex"
	.4byte	0xacb
	.asciz	"maxY"
	.4byte	0xade
	.asciz	"color"
	.4byte	0xaf2
	.asciz	"clutStart"
	.4byte	0xb04
	.asciz	"speed"
	.4byte	0xb18
	.asciz	"dir"
	.4byte	0xb2a
	.asciz	"xPosition"
	.4byte	0xb42
	.asciz	"rotAngle"
	.4byte	0xb54
	.asciz	"currentSpriteIndex"
	.4byte	0xb66
	.asciz	"currentSpriteOffset"
	.4byte	0xb78
	.asciz	"currentSpriteFrameCount"
	.4byte	0xb9e
	.asciz	"spriteStepTimeout"
	.4byte	0xbb0
	.asciz	"spriteStepTrigger"
	.4byte	0xbc2
	.asciz	"colorScrollSpeed"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x6d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xbd5
	.4byte	0xf7
	.asciz	"uint8_t"
	.4byte	0x117
	.asciz	"uint16_t"
	.4byte	0x2e0
	.asciz	"tagG1CLUTBITS"
	.4byte	0x300
	.asciz	"G1CLUTBITS"
	.4byte	0x313
	.asciz	"Sprite"
	.4byte	0x45d
	.asciz	"SCENE"
	.4byte	0x4f4
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
	.asciz	"serial.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.asciz	"resolution_management.h"
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
	.byte	0xd8
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x16
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
	.4byte	.LSM2
	.byte	0x3
	.sleb128 244
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM3
	.byte	0x16
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
	.4byte	.LSM4
	.byte	0x3
	.sleb128 235
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM8
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
	.4byte	.LSM9
	.byte	0x4
	.uleb128 0x2
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM10
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM11
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM12
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM15
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM16
	.byte	0x1c
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
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM24
	.byte	0x16
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
	.byte	0x16
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
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM31
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM35
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x16
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
	.byte	0x3
	.sleb128 240
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x15
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
	.4byte	.LFE8
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM43
	.byte	0x80
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM44
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM45
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x18
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
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM52
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM54
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM55
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM56
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM57
	.byte	0x42
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM58
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM61
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM62
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM63
	.byte	0x18
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM69
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM70
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM71
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM72
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM73
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM74
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM75
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM76
	.byte	0x19
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
	.4byte	.LSM79
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM80
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM81
	.byte	0x23
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
	.byte	0x17
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
	.4byte	.LSM86
	.byte	0x71
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM89
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM90
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM92
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM93
	.byte	0x15
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
	.4byte	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM98
	.byte	0xde
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM99
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM101
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM102
	.byte	0x1e
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
	.4byte	.LSM103
	.byte	0xed
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM105
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
	.4byte	.LSM106
	.byte	0xf0
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM107
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM108
	.byte	0x15
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
	.4byte	.LSM109
	.byte	0x3
	.sleb128 254
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM110
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM111
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM112
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM113
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM114
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
	.4byte	.LSM115
	.byte	0x3
	.sleb128 264
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM116
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM117
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM118
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM120
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM121
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM122
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM123
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM124
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
	.4byte	.LSM125
	.byte	0x3
	.sleb128 327
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM126
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM127
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM128
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM129
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM130
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM131
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM132
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM133
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM134
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM135
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM136
	.byte	0x15
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM147
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM148
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM149
	.byte	0x18
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
	.4byte	.LSM150
	.byte	0x3
	.sleb128 283
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM151
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM152
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM153
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM154
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM155
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM156
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM157
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM158
	.byte	0x17
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
	.4byte	.LSM161
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM162
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM163
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM164
	.byte	0x15
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
	.4byte	.LSM167
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM168
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
	.4byte	.LSM169
	.byte	0x3
	.sleb128 365
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM170
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM171
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM172
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE14
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF15:
	.asciz	"colorScrollSpeed"
.LASF1:
	.asciz	"G1CLUTbits"
.LASF6:
	.asciz	"projectName"
.LASF5:
	.asciz	"story_state"
.LASF9:
	.asciz	"clutStart"
.LASF13:
	.asciz	"spriteStepTimeout"
.LASF7:
	.asciz	"startSceneIndex"
.LASF2:
	.asciz	"rxSizeU1"
.LASF4:
	.asciz	"sinetable"
.LASF3:
	.asciz	"dataAvailableU1"
.LASF12:
	.asciz	"currentSpriteOffset"
.LASF10:
	.asciz	"rotAngle"
.LASF0:
	.asciz	"sceneId"
.LASF14:
	.asciz	"spriteStepTrigger"
.LASF11:
	.asciz	"currentSpriteIndex"
.LASF8:
	.asciz	"serialStoryIndex"
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
