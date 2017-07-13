ChooseWildMon:
	xor a
	ld [wSpecialMode], a
	ld [wd54d], a ;set ??? to 0
	ld a, [wCurrentStage]
	sla a
	ld c, a ;store twice current stage to use a pointer offset
	ld b, $0
	push bc
	ld hl, WildMonOffsetsPointers
	add hl, bc
	ld a, [hli] ;hl = pointer to wild mon pointer table
	ld h, [hl]
	ld l, a
	ld a, [wCurrentMap]
	sla a
	ld c, a
	add hl, bc ;go to correct location in table
	ld a, [hli]
	ld c, a
	ld a, [hl]
	ld b, a ;bc = offset needed to reach correct wild table
	pop de ;pop current stage offset
	ld hl, WildMonPointers
	add hl, de
	ld a, [hli] ;fetch start od correct wilds table, place in hl
	ld h, [hl]
	ld l, a
	add hl, bc
	call GenRandom
	and $f
	call CheckForMew ;a = $10 if mew, else is less
	ld c, a
	ld b, $0
	add hl, bc
	ld a, [wRareMonsFlag]  ; this gets set to $08 when the rare mons should be used.
	sla a
	ld c, a
	add hl, bc
	ld a, [hl]  ; a contains mon id. overshoots by 1 if mew, causing mew to be loaded
	dec a
	ld [wCurrentCatchEmMon], a ;stores 1 less than ID
	ret

CheckForMew:
; Sets the encountered mon to Mew if the following conditions are met:
;   1. Random number in register a equals $f
;   2. The current map is Indigo Plateau (it does a roundabout way of checking this)
;   3. The right alley has been hit three times
;   4. The Mewtwo Bonus Stage completion counter equals 2.
	push af
	cp $f  ; random number equals $f (1 in 16)
	jr nz, .NotMew
	ld a, c
	cp (BlueStageIndigoPlateauWildMons - BlueStageWildMons) & $ff  ; check if low-byte of map mons offset is Indigo Plateau
	jr nz, .NotMew
	ld a, b
	cp (BlueStageIndigoPlateauWildMons - BlueStageWildMons) >> 8  ; check if high-byte of map mons offset is Indigo Plateau
	jr nz, .NotMew
	ld a, [wRareMonsFlag]
	cp $8
	jr nz, .NotMew
	ld a, [wNumMewtwoBonusCompletions]
	cp NUM_MEWTWO_COMPLETIONS_FOR_MEW
	jr nz, .NotMew
	pop af
	xor a
	ld [wNumMewtwoBonusCompletions], a
	ld a, $10
	ret

.NotMew
	pop af
	ret

INCLUDE "data/wild_mons.asm"
