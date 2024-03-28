-- Support for Sukritact's Oceans
INSERT OR REPLACE INTO "LocalizedText"
	(	"Language",	"Tag",											"Text"																																																																																																																																																										)
VALUES
	(	'en_US',	'LOC_RurComC_Kelp_CUL',							'+{1_num} [ICON_Culture] Culture from the adjacent kelp {1_Num : plural 1?feature; other?features;}.'																																																																																																																																		),
	(	'en_US',	'LOC_IMPROVEMENT_ARTIFICIAL_REEF_DESCRIPTION',	'Unlocks the Builder and Fisherman ability to construct Artificial Reefs.[NEWLINE][NEWLINE]Gains +1 [ICON_Culture] Culture from adjacent districts, +2 [ICON_Culture] Culture from adjacent sea resources and adjacent Kelp features, +3 [ICON_Culture] Culture from adjacent Reef features, and +4 [ICON_Culture] Culture from adjacent Natural Wonders. Gains Tourism equal to four times its culture, but cannot be worked. Grants adjacent Coast tiles +1 [ICON_Culture] Culture and an additional +1 [ICON_Culture] Culture if they have a resource. May only be built once per city. Requires the Ocean Conservationists Building.'	);
	-- 151 <Criteria>CL_Imp_Changes_Full</Criteria>