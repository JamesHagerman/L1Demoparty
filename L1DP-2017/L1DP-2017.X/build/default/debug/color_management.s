	.file "C:\\Users\\jamis\\Desktop\\my_root\\Development\\Circuits\\PIC\\L1Demoparty\\L1DP-2017\\L1DP-2017.X\\color_management.c"
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
	.global	_config_clut	; export
	.type	_config_clut,@function
_config_clut:
.LFB0:
.LSM0:
	.set ___PA___,1
.LSM1:
	bset.b	_G1CLUTbits+1,#7
.LSM2:
	return	
	.set ___PA___,0
.LFE0:
	.size	_config_clut, .-_config_clut
	.align	2
	.global	_clut_set	; export
	.type	_clut_set,@function
_clut_set:
.LFB1:
.LSM3:
	.set ___PA___,1
.LSM4:
	mov.b	WREG,_G1CLUTbits
.LSM5:
	bset.b	_G1CLUTbits+1,#0
.LSM6:
	mov	w1,_G1CLUTWR
.LSM7:
	mov	#16384,w5
.L3:
	mov	_G1CLUTbits,w6
	and	w5,w6,w4
	.set ___BP___,50
	bra	nz,.L3
.LSM8:
	bclr.b	_G1CLUTbits+1,#0
.LSM9:
	return	
	.set ___PA___,0
.LFE1:
	.size	_clut_set, .-_clut_set
	.align	2
	.global	_map	; export
	.type	_map,@function
_map:
.LFB3:
.LSM10:
	.set ___PA___,1
.LSM11:
	sub	w4,w3,w4
	sub	w0,w1,w0
	mul.ss	w4,w0,w6
	sub	w2,w1,w5
	repeat	#18-1
	div.uw	w6,w5
	add	w0,w3,w0
.LSM12:
	return	
	.set ___PA___,0
.LFE3:
	.size	_map, .-_map
	.align	2
	.global	_get16bppRGBColor	; export
	.type	_get16bppRGBColor,@function
_get16bppRGBColor:
.LFB4:
.LSM13:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov	w10,[w15++]
	mov	w1,w8
	mov	w2,w9
.LSM14:
	mov	#31,w4
	clr	w3
	mov	#255,w2
	mov	w3,w1
	rcall	_map
	mov	w0,w10
.LSM15:
	mov	#63,w4
	clr	w3
	mov	#255,w2
	mov	w3,w1
	mov	w8,w0
	rcall	_map
	mov	w0,w8
.LSM16:
	mov	#31,w4
	clr	w3
	mov	#255,w2
	mov	w3,w1
	mov	w9,w0
	rcall	_map
.LSM17:
	sl	w8,#5,w8
.LSM18:
	and	w0,#31,w0
.LSM19:
	sl	w10,#11,w10
.LSM20:
	ior	w10,w0,w0
.LSM21:
	mov	#2016,w4
	and	w8,w4,w8
.LSM22:
	ior	w8,w0,w0
.LSM23:
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE4:
	.size	_get16bppRGBColor, .-_get16bppRGBColor
	.align	2
	.global	_get8bppRGBColor	; export
	.type	_get8bppRGBColor,@function
_get8bppRGBColor:
.LFB5:
.LSM24:
	.set ___PA___,1
	mov.d	w8,[w15++]
	mov	w10,[w15++]
	mov.b	w1,w8
	mov.b	w2,w9
.LSM25:
	ze	w0,w0
	mov	#7,w4
	clr	w3
	mov	#255,w2
	mov	w3,w1
	rcall	_map
	mov	w0,w10
.LSM26:
	ze	w8,w0
	mov	#7,w4
	clr	w3
	mov	#255,w2
	mov	w3,w1
	rcall	_map
	mov	w0,w8
.LSM27:
	ze	w9,w0
	mov	#3,w4
	clr	w3
	mov	#255,w2
	mov	w3,w1
	rcall	_map
.LSM28:
	ze	w10,w10
	sl	w10,#5,w10
.LSM29:
	ze	w8,w8
	sl	w8,#2,w8
.LSM30:
	and.b	w0,#3,w0
.LSM31:
	ior.b	w0,w10,w0
.LSM32:
	and.b	w8,#28,w8
.LSM33:
	ior.b	w0,w8,w0
.LSM34:
	mov	[--w15],w10
	mov.d	[--w15],w8
	return	
	.set ___PA___,0
.LFE5:
	.size	_get8bppRGBColor, .-_get8bppRGBColor
	.align	2
	.global	_hsvtorgb	; export
	.type	_hsvtorgb,@function
_hsvtorgb:
.LFB6:
.LSM35:
	.set ___PA___,1
	add	w15,#4,w15
	mov.d	w8,[w15++]
	mov.d	w10,[w15++]
	mov.d	w12,[w15++]
	mov	w14,[w15++]
	mov	w0,w14
	mov	w1,[w15-16]
.LSM36:
	sub.b	w4,#0,[w15]
	.set ___BP___,61
	bra	nz,.L9
.LSM37:
	mov.b	w5,[w2]
	mov.b	w5,[w1]
	mov.b	w5,[w14]
.LSM38:
	bra	.L8
.L9:
.LSM39:
	ze	w3,w3
	mov	#43,w6
	repeat	#18-1
	div.uw	w3,w6
	mov	w0,w8
.LSM40:
	mul.ss	w8,w6,w6
	sub	w3,w6,w3
	mul.su	w3,#6,w6
	mov	w6,w3
.LSM41:
	ze	w4,w4
	mov	#255,w6
	sub	w6,w4,w10
	ze	w5,w7
	mul.ss	w10,w7,w10
	asr	w10,#8,w10
.LSM42:
	mul.ss	w3,w4,w12
	lsr	w12,#8,w12
	sub	w6,w12,w12
	mul.ss	w12,w7,w12
	lsr	w12,#8,w11
.LSM43:
	sub	w6,w3,w3
	mul.ss	w3,w4,w12
	lsr	w12,#8,w4
	sub	w6,w4,w6
	mul.ss	w6,w7,w6
	lsr	w6,#8,w7
.LSM44:
	ze	w8,w8
	mov	#0,w9
	sub	w8,#4,[w15]
	subb	w9,#0,[w15]
	.set ___BP___,50
	bra	gtu,.L11
	bra	w8
	.align	2
	.set	___PA___,0
.L17:
	bra	.L12
	bra	.L13
	bra	.L14
	bra	.L15
	bra	.L16
	.set	___PA___,1
.L12:
.LSM45:
	mov.b	w5,[w14]
	mov	[w15-16],w4
	mov.b	w7,[w4]
	mov.b	w10,[w2]
	bra	.L8
.L13:
.LSM46:
	mov.b	w11,[w14]
	mov	[w15-16],w0
	mov.b	w5,[w0]
	mov.b	w10,[w2]
	bra	.L8
.L14:
.LSM47:
	mov.b	w10,[w14]
	mov	[w15-16],w1
	mov.b	w5,[w1]
	mov.b	w7,[w2]
	bra	.L8
.L15:
.LSM48:
	mov.b	w10,[w14]
	mov	[w15-16],w4
	mov.b	w11,[w4]
	mov.b	w5,[w2]
	bra	.L8
.L16:
.LSM49:
	mov.b	w7,[w14]
	mov	[w15-16],w0
	mov.b	w10,[w0]
	mov.b	w5,[w2]
	bra	.L8
.L11:
.LSM50:
	mov.b	w5,[w14]
	mov	[w15-16],w1
	mov.b	w10,[w1]
	mov.b	w11,[w2]
.L8:
.LSM51:
	mov	[--w15],w14
	mov.d	[--w15],w12
	mov.d	[--w15],w10
	mov.d	[--w15],w8
	sub	w15,#4
	return	
	.set ___PA___,0
.LFE6:
	.size	_hsvtorgb, .-_hsvtorgb
	.section .const,psv,page
.LC0:
	.asciz	"Setting up CLUT:\015"
.LC1:
	.asciz	"\015\012Done!\015"
	.section	.text,code
	.align	2
	.global	_calc_colors	; export
	.type	_calc_colors,@function
_calc_colors:
.LFB2:
.LSM52:
	.set ___PA___,1
	lnk	#4
	mov	w8,[w15++]
	mov	w0,w8
.LSM53:
	mov	#.LC0,w0
	rcall	_puts
.LSM54:
	mov	#254,w4
	sub	w8,w4,[w15]
	.set ___BP___,9
	bra	gtu,.L19
.L21:
.LSM55:
	setm.b	w5
	mov.b	w5,w4
	mov.b	w8,w3
	sub	w15,#4,w2
	sub	w15,#5,w1
	sub	w15,#6,w0
	rcall	_hsvtorgb
.LSM56:
	mov.b	[w15-4],w2
	ze	w2,w2
	mov.b	[w15-5],w1
	ze	w1,w1
	mov.b	[w15-6],w4
	ze	w4,w0
	rcall	_get16bppRGBColor
.LSM57:
	mov	w0,w1
	mov.b	w8,w0
	rcall	_clut_set
.LSM58:
	inc	w8,w8
	mov	#254,w4
	sub	w8,w4,[w15]
	.set ___BP___,91
	bra	leu,.L21
.L19:
.LSM59:
	clr	w1
	clr.b	w0
	rcall	_clut_set
.LSM60:
	setm	w1
	setm.b	w0
	rcall	_clut_set
.LSM61:
	mov	#.LC1,w0
	rcall	_puts
.LSM62:
	mov	[--w15],w8
	ulnk	
	return	
	.set ___PA___,0
.LFE2:
	.size	_calc_colors, .-_calc_colors
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.align	4
.LEFDE12:
	.section	.text,code
.Letext0:
	.section	.debug_info,info
	.4byte	0x604
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.asciz	"GNU C 4.5.1 (XC16, Microchip v1.24) (0) Build date: Dec 19 2014"
	.byte	0x1
	.asciz	"color_management.c"
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
	.4byte	0x112
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.asciz	"unsigned char"
	.uleb128 0x3
	.asciz	"uint16_t"
	.byte	0x2
	.byte	0x31
	.4byte	0x133
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
	.byte	0x3
	.2byte	0x1a6e
	.4byte	0x216
	.uleb128 0x5
	.asciz	"CLUTADR"
	.byte	0x3
	.2byte	0x1a6f
	.4byte	0x133
	.byte	0x2
	.byte	0x8
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTRWEN"
	.byte	0x3
	.2byte	0x1a70
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTTRD"
	.byte	0x3
	.2byte	0x1a71
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTBUSY"
	.byte	0x3
	.2byte	0x1a73
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTEN"
	.byte	0x3
	.2byte	0x1a74
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x4
	.byte	0x2
	.byte	0x3
	.2byte	0x1a76
	.4byte	0x2d8
	.uleb128 0x5
	.asciz	"CLUTADR0"
	.byte	0x3
	.2byte	0x1a77
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR1"
	.byte	0x3
	.2byte	0x1a78
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR2"
	.byte	0x3
	.2byte	0x1a79
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR3"
	.byte	0x3
	.2byte	0x1a7a
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR4"
	.byte	0x3
	.2byte	0x1a7b
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR5"
	.byte	0x3
	.2byte	0x1a7c
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR6"
	.byte	0x3
	.2byte	0x1a7d
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.asciz	"CLUTADR7"
	.byte	0x3
	.2byte	0x1a7e
	.4byte	0x133
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.2byte	0x1a6d
	.4byte	0x2ec
	.uleb128 0x7
	.4byte	0x19d
	.uleb128 0x7
	.4byte	0x216
	.byte	0x0
	.uleb128 0x8
	.asciz	"tagG1CLUTBITS"
	.byte	0x2
	.byte	0x3
	.2byte	0x1a6c
	.4byte	0x30c
	.uleb128 0x9
	.4byte	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xa
	.asciz	"G1CLUTBITS"
	.byte	0x3
	.2byte	0x1a81
	.4byte	0x2ec
	.uleb128 0xb
	.byte	0x1
	.asciz	"config_clut"
	.byte	0x1
	.byte	0xa
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x5f
	.uleb128 0xc
	.byte	0x1
	.asciz	"clut_set"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x5f
	.4byte	0x374
	.uleb128 0xd
	.asciz	"index"
	.byte	0x1
	.byte	0x15
	.4byte	0x103
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.asciz	"color"
	.byte	0x1
	.byte	0x15
	.4byte	0x123
	.byte	0x1
	.byte	0x51
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.asciz	"map"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	0x123
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x1
	.byte	0x5f
	.4byte	0x3f1
	.uleb128 0xd
	.asciz	"input"
	.byte	0x1
	.byte	0x38
	.4byte	0x123
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.asciz	"input_start"
	.byte	0x1
	.byte	0x38
	.4byte	0x123
	.byte	0x1
	.byte	0x51
	.uleb128 0xd
	.asciz	"input_end"
	.byte	0x1
	.byte	0x38
	.4byte	0x123
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.asciz	"output_start"
	.byte	0x1
	.byte	0x38
	.4byte	0x123
	.byte	0x1
	.byte	0x53
	.uleb128 0xd
	.asciz	"output_end"
	.byte	0x1
	.byte	0x38
	.4byte	0x123
	.byte	0x1
	.byte	0x54
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.asciz	"get16bppRGBColor"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	0x123
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x5f
	.4byte	0x444
	.uleb128 0xd
	.asciz	"red"
	.byte	0x1
	.byte	0x3c
	.4byte	0x123
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.asciz	"green"
	.byte	0x1
	.byte	0x3c
	.4byte	0x123
	.byte	0x1
	.byte	0x58
	.uleb128 0xd
	.asciz	"blue"
	.byte	0x1
	.byte	0x3c
	.4byte	0x123
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.asciz	"get8bppRGBColor"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0x103
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x5f
	.4byte	0x496
	.uleb128 0xd
	.asciz	"red"
	.byte	0x1
	.byte	0x4b
	.4byte	0x103
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.asciz	"green"
	.byte	0x1
	.byte	0x4b
	.4byte	0x103
	.byte	0x1
	.byte	0x58
	.uleb128 0xd
	.asciz	"blue"
	.byte	0x1
	.byte	0x4b
	.4byte	0x103
	.byte	0x1
	.byte	0x59
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.asciz	"hsvtorgb"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x5f
	.4byte	0x534
	.uleb128 0xd
	.asciz	"r"
	.byte	0x1
	.byte	0x5b
	.4byte	0x534
	.byte	0x1
	.byte	0x5e
	.uleb128 0xd
	.asciz	"g"
	.byte	0x1
	.byte	0x5b
	.4byte	0x534
	.byte	0x2
	.byte	0x7f
	.sleb128 -16
	.uleb128 0xd
	.asciz	"b"
	.byte	0x1
	.byte	0x5b
	.4byte	0x534
	.byte	0x1
	.byte	0x52
	.uleb128 0xd
	.asciz	"h"
	.byte	0x1
	.byte	0x5b
	.4byte	0x112
	.byte	0x1
	.byte	0x53
	.uleb128 0xd
	.asciz	"s"
	.byte	0x1
	.byte	0x5b
	.4byte	0x112
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.asciz	"v"
	.byte	0x1
	.byte	0x5b
	.4byte	0x112
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.asciz	"region"
	.byte	0x1
	.byte	0x5c
	.4byte	0x123
	.uleb128 0x10
	.asciz	"fpart"
	.byte	0x1
	.byte	0x5c
	.4byte	0x123
	.byte	0x1
	.byte	0x53
	.uleb128 0x10
	.asciz	"p"
	.byte	0x1
	.byte	0x5c
	.4byte	0x123
	.byte	0x1
	.byte	0x5a
	.uleb128 0x10
	.asciz	"q"
	.byte	0x1
	.byte	0x5c
	.4byte	0x123
	.byte	0x1
	.byte	0x5b
	.uleb128 0x10
	.asciz	"t"
	.byte	0x1
	.byte	0x5c
	.4byte	0x123
	.byte	0x1
	.byte	0x57
	.byte	0x0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x112
	.uleb128 0xc
	.byte	0x1
	.asciz	"calc_colors"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x5f
	.4byte	0x5c5
	.uleb128 0xd
	.asciz	"startingIndex"
	.byte	0x1
	.byte	0x1d
	.4byte	0xdf
	.byte	0x1
	.byte	0x58
	.uleb128 0x10
	.asciz	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x123
	.byte	0x1
	.byte	0x58
	.uleb128 0x10
	.asciz	"color"
	.byte	0x1
	.byte	0x23
	.4byte	0x123
	.byte	0x1
	.byte	0x50
	.uleb128 0x10
	.asciz	"r"
	.byte	0x1
	.byte	0x24
	.4byte	0x103
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x10
	.asciz	"g"
	.byte	0x1
	.byte	0x24
	.4byte	0x103
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x10
	.asciz	"b"
	.byte	0x1
	.byte	0x24
	.4byte	0x103
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xf
	.asciz	"sat"
	.byte	0x1
	.byte	0x24
	.4byte	0x103
	.uleb128 0xf
	.asciz	"val"
	.byte	0x1
	.byte	0x24
	.4byte	0x103
	.byte	0x0
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x1a82
	.4byte	0x5d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x30c
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x1a85
	.4byte	0x5e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.4byte	0x133
	.uleb128 0x12
	.4byte	.LASF0
	.byte	0x3
	.2byte	0x1a82
	.4byte	0x5d3
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF1
	.byte	0x3
	.2byte	0x1a85
	.4byte	0x5e6
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,info
	.4byte	0x79
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x608
	.4byte	0x31f
	.asciz	"config_clut"
	.4byte	0x339
	.asciz	"clut_set"
	.4byte	0x374
	.asciz	"map"
	.4byte	0x3f1
	.asciz	"get16bppRGBColor"
	.4byte	0x444
	.asciz	"get8bppRGBColor"
	.4byte	0x496
	.asciz	"hsvtorgb"
	.4byte	0x53a
	.asciz	"calc_colors"
	.4byte	0x0
	.section	.debug_pubtypes,info
	.4byte	0x48
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x608
	.4byte	0x103
	.asciz	"uint8_t"
	.4byte	0x123
	.asciz	"uint16_t"
	.4byte	0x2ec
	.asciz	"tagG1CLUTBITS"
	.4byte	0x30c
	.asciz	"G1CLUTBITS"
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
	.asciz	"color_management.c"
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
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM1
	.byte	0x1d
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
	.byte	0x28
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
	.4byte	.LSM9
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
	.4byte	.LSM10
	.byte	0x4b
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
	.4byte	.LFE3
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM13
	.byte	0x4f
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM19
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM20
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM21
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM22
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM23
	.byte	0x15
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
	.4byte	.LSM24
	.byte	0x5e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM25
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM28
	.byte	0x17
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM32
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM33
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM34
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
	.4byte	.LSM35
	.byte	0x6e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM36
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM37
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM39
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM41
	.byte	0x17
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
	.4byte	.LSM45
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM46
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM47
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM48
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM49
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM50
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM51
	.byte	0x18
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
	.4byte	.LSM52
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM53
	.byte	0x1c
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
	.4byte	.LSM58
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM59
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LSM60
	.byte	0x15
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
	.4byte	.LFE2
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,info
.LASF0:
	.asciz	"G1CLUTbits"
.LASF1:
	.asciz	"G1CLUTWR"
	.section	.text,code

	.section __c30_signature, info, data
	.word 0x0001
	.word 0x0000
	.word 0x0000

; MCHP configuration words

	.set ___PA___,0
	.end