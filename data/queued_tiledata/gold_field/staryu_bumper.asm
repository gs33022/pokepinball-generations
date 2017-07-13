TileDataPointers_16899_GoldField:
	dw TileData_168a1_GoldField
	dw TileData_168a8_GoldField
	dw TileData_168af_GoldField
	dw TileData_168af_GoldField

TileData_168a1_GoldField: ; 0x168a1
	db $03
	dw TileData_168b6_GoldField
	dw TileData_168c0_GoldField
	dw TileData_168ca_GoldField

TileData_168a8_GoldField: ; 0x168a8
	db $03
	dw TileData_168d4_GoldField
	dw TileData_168de_GoldField
	dw TileData_168e8_GoldField

TileData_168af_GoldField: ; 0x168af
	db $03
	dw TileData_168f2_GoldField
	dw TileData_168fc_GoldField
	dw TileData_16906_GoldField

TileData_168b6_GoldField: ; 0x168b6
	dw Func_11d2
	db $30, $03
	dw vTilesSH tile $50
	dw StageGoldFieldTopBaseGameBoyGfx + $260
	db Bank(StageGoldFieldTopBaseGameBoyGfx)
	db $00

TileData_168c0_GoldField: ; 0x168c0
	dw Func_11d2
	db $30, $03
	dw vTilesSH tile $53
	dw StageGoldFieldTopBaseGameBoyGfx + $290
	db Bank(StageGoldFieldTopBaseGameBoyGfx)
	db $00

TileData_168ca_GoldField: ; 0x168ca
	dw Func_11d2
	db $10, $01
	dw vTilesSH tile $56
	dw StageGoldFieldTopBaseGameBoyGfx + $2c0
	db Bank(StageGoldFieldTopBaseGameBoyGfx)
	db $00

TileData_168d4_GoldField: ; 0x168d4
	dw Func_11d2
	db $30, $03
	dw vTilesSH tile $52
	dw StageGoldFieldTopBaseGameBoyGfx + $280
	db Bank(StageGoldFieldTopBaseGameBoyGfx)
	db $00

TileData_168de_GoldField: ; 0x168de
	dw Func_11d2
	db $20, $02
	dw vTilesSH tile $55
	dw StageGoldFieldTopBaseGameBoyGfx + $2b0
	db Bank(StageGoldFieldTopBaseGameBoyGfx)
	db $00

TileData_168e8_GoldField: ; 0x168e8
	dw Func_11d2
	db $20, $02
	dw vTilesSH tile $50
	dw StageRedFieldBottomIndicatorsGfx_Gameboy + $EA0
	db Bank(StageRedFieldBottomIndicatorsGfx_Gameboy)
	db $00

TileData_168f2_GoldField: ; 0x168f2
	dw Func_11d2
	db $30, $03
	dw vTilesSH tile $51
	dw StageRedFieldBottomIndicatorsGfx_Gameboy + $10E0
	db Bank(StageRedFieldBottomIndicatorsGfx_Gameboy)
	db $00

TileData_168fc_GoldField: ; 0x168fc
	dw Func_11d2
	db $30, $03
	dw vTilesSH tile $54
	dw StageRedFieldBottomIndicatorsGfx_Gameboy + $1110
	db Bank(StageRedFieldBottomIndicatorsGfx_Gameboy)
	db $00

TileData_16906_GoldField: ; 0x16906
	dw Func_11d2
	db $10, $01
	dw vTilesSH tile $50
	dw StageGoldFieldTopBaseGameBoyGfx + $260
	db Bank(StageGoldFieldTopBaseGameBoyGfx)
	db $00

TileDataPointers_16910_GoldField:
	dw TileData_16918_GoldField
	dw TileData_1691b_GoldField
	dw TileData_1691e_GoldField
	dw TileData_1691e_GoldField

TileData_16918_GoldField: ;0x16918
	db $01
	dw TileData_16921_GoldField

TileData_1691b_GoldField: ;0x1691b
	db $01
	dw TileData_16934_GoldField

TileData_1691e_GoldField: ;0x1691e
	db $01
	dw TileData_16947_GoldField

TileData_16921_GoldField: ; 0x16921
	dw LoadTileLists
	db $06

	db $03
	dw vBGMap + $1C6
	db $C3, $C4, $C5

	db $02
	dw vBGMap + $1E7
	db $C6, $C7

	db $01
	dw vBGMap + $207
	db $C8

	db $00

TileData_16934_GoldField: ; 0x16934
	dw LoadTileLists
	db $06

	db $03
	dw vBGMap + $1C6
	db $CD, $CE, $C5

	db $02
	dw vBGMap + $1E7
	db $C6, $C7

	db $01
	dw vBGMap + $207
	db $C8

	db $00

TileData_16947_GoldField: ; 0x16947
	dw LoadTileLists
	db $06

	db $03
	dw vBGMap + $1C6
	db $C3, $C4, $C9

	db $02
	dw vBGMap + $1E7
	db $CA, $CB

	db $01
	dw vBGMap + $207
	db $CC

	db $00

TileDataPointers_1695a_GoldField:
	dw TileData_1695e_GoldField
	dw TileData_16961_GoldField

TileData_1695e_GoldField: ; 0x1695e
	db $01
	dw TileData_16964_GoldField

TileData_16961_GoldField: ; 0x16961
	db $01
	dw TileData_16972_GoldField

TileData_16964_GoldField: ; 0x16964
	dw LoadTileLists
	db $04

	db $02
	dw vBGMap + $40
	db $BE, $BF

	db $02
	dw vBGMap + $60
	db $C0, $C1

	db $00

TileData_16972_GoldField: ; 0x16972
	dw LoadTileLists
	db $04

	db $02
	dw vBGMap + $40
	db $C2, $C3

	db $02
	dw vBGMap + $60
	db $C4, $C5

	db $00

TileDataPointers_16980_GoldField:
	dw TileData_16984_GoldField
	dw TileData_16987_GoldField

TileData_16984_GoldField: ; 0x16984
	db $01
	dw TileData_1698a_GoldField

TileData_16987_GoldField: ; 0x16987
	db $01
	dw TileData_16998_GoldField

TileData_1698a_GoldField: ; 0x1698a
	dw LoadTileLists
	db $04

	db $02
	dw vBGMap + $40
	db $BC, $BD

	db $02
	dw vBGMap + $60
	db $BE, $BF

	db $00

TileData_16998_GoldField: ; 0x16998
	dw LoadTileLists
	db $04

	db $02
	dw vBGMap + $40
	db $C0, $C1

	db $02
	dw vBGMap + $60
	db $C2, $C3

	db $00