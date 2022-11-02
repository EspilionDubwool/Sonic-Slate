; ---------------------------------------------------------------------------
; Main level load blocks
;
; ===FORMAT===
; level	patterns + (1st	PLC num	* 10^6)
; 16x16	mappings + (2nd	PLC num	* 10^6)
; 256x256 mappings
; blank, music (unused), pal index (unused), pal index
; ---------------------------------------------------------------------------
	dc.l Kos_GHZ+$4000000
	dc.l Blk16_GHZ+$5000000
	dc.l Blk256_GHZ
	dc.b 0,	$81, PalID_GHZ, PalID_GHZ
	dc.l Kos_LZ+$6000000
	dc.l Blk16_LZ+$7000000
	dc.l Blk256_LZ
	dc.b 0,	$82, PalID_LZ, PalID_LZ
	dc.l Kos_MZ+$8000000
	dc.l Blk16_MZ+$9000000
	dc.l Blk256_MZ
	dc.b 0,	$83, PalID_MZ, PalID_MZ
	dc.l Kos_SLZ+$A000000
	dc.l Blk16_SLZ+$B000000
	dc.l Blk256_SLZ
	dc.b 0,	$84, PalID_SLZ, PalID_SLZ
	dc.l Kos_SYZ+$C000000
	dc.l Blk16_SYZ+$D000000
	dc.l Blk256_SYZ
	dc.b 0,	$85, PalID_SYZ, PalID_SYZ
	dc.l Kos_SBZ+$E000000
	dc.l Blk16_SBZ+$F000000
	dc.l Blk256_SBZ
	dc.b 0,	$86, PalID_SBZ1, PalID_SBZ1
	dc.l Kos_GHZ	; main load block for ending
	dc.l Blk16_GHZ
	dc.l Blk256_GHZ
	dc.b 0,	$86, PalID_Ending, PalID_Ending
	even