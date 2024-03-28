-- Placeholder Text Corrections
INSERT OR REPLACE INTO "LocalizedText"
	(	"Language",	"Tag",								"Text"																												)
VALUES
	(	'en_US',	'LOC_IMP_CL_AdjDistrict_Faith',		'+{1_num} [ICON_FAITH] Faith from the adjacent {1_Num : plural 1?district; other?districts;}.'						),
	(	'en_US',	'LOC_IMP_CL_AdjDistrict_Gold',		'+{1_num} [ICON_GOLD] Gold from the adjacent {1_Num : plural 1?district; other?districts;}.'						),
	(	'en_US',	'LOC_IMP_CL_AdjDistrict_Prod',		'+{1_num} [ICON_Production] Production from the adjacent {1_Num : plural 1?district; other?districts;}.'			),
	(	'en_US',	'LOC_IMP_CL_AdjDistrict_Cult',		'+{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?district; other?districts;}.'					),
	(	'en_US',	'LOC_IMP_CL_AdjLuxury_Prod',		'+{1_num} [ICON_Production] Production from the adjacent luxury {1_Num : plural 1?resource; other?resources;}.'		),
	(	'en_US',	'LOC_IMP_CL_AdjBonus_Prod',			'+{1_num} [ICON_Production] Production from the adjacent bonus {1_Num : plural 1?resource; other?resources;}.'		),
	(	'en_US',	'LOC_RurComC_NaturalWonder_Cul',	'+{1_num} [ICON_Culture] Culture from the adjacent natural {1_Num : plural 1?wonder; other?wonders;}.'				),
	(	'en_US',	'LOC_RurComC_SeaResource_CUL',		'+{1_num} [ICON_Culture] Culture from the adjacent sea {1_Num : plural 1?resource; other?resources;}.'				),
	(	'en_US',	'LOC_RurComC_Reef_CUL',				'+{1_num} [ICON_Culture] Culture from the adjacent reef {1_Num : plural 1?feature; other?features;}.'				),
	(	'en_US',	'LOC_RurComC_Dist_CUL',				'+{1_num} [ICON_Culture] Culture from the adjacent {1_Num : plural 1?district; other?districts;}.'					),
	(	'en_US',	'LOC_RurComA_Farm_Faith_2',			'+{1_num} [ICON_FAITH] Faith from the adjacent Farm {1_Num : plural 1?tile; other?tiles;}.'							),
	(	'en_US',	'LOC_RurComA_Farm_Faith_2',			'+{1_num} [ICON_FAITH] Faith from the adjacent Pasture {1_Num : plural 1?tile; other?tiles;}.'						),
	(	'en_US',	'LOC_RurComA_Plant_Faith_2',		'+{1_num} [ICON_FAITH] Faith from the adjacent Plantation {1_Num : plural 1?tile; other?tiles;}.'					),
	(	'en_US',	'LOC_IMP_CL_PWR_GEO_PRD',			'+{1_num} [ICON_Production] Production from the adjacent Geothermal Plant {1_Num : plural 1?tile; other?tiles;}.'	),
	(	'en_US',	'LOC_IMP_CL_PWR_SOL_PRD',			'+{1_num} [ICON_Production] Production from the adjacent Solar Farm {1_Num : plural 1?tile; other?tiles;}.'			),
	(	'en_US',	'LOC_IMP_CL_PWR_WND_PRD',			'+{1_num} [ICON_Production] Production from the adjacent Wind Farm {1_Num : plural 1?tile; other?tiles;}.'			),
	(	'en_US',	'LOC_IMP_CL_PWR_OWF_PRD',			'+{1_num} [ICON_Production] Production from the adjacent Offshore Wind Farm {1_Num : plural 1?tile; other?tiles;}.'	);
