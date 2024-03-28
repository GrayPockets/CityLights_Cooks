-- Correct Cothon to Gold for City Lights Civs

UPDATE "District_Adjacencies"
SET
	"YieldChangeID" = 'CivEgp_negGold_1'
WHERE "DistrictType" = 'DISTRICT_COTHON' AND "YieldChangeID" = 'CivEgp_negFood_1';

UPDATE "District_Adjacencies"
SET
	"YieldChangeID" = 'CivGeg_negGold_1'
WHERE "DistrictType" = 'DISTRICT_COTHON' AND "YieldChangeID" = 'CivGeg_negFood_1';

-- Corrections for Egypt

UPDATE "Types"
SET
	"Kind" = 'KIND_TRAIT'
WHERE "Type" = 'TRAIT_CIVILIZATION_TROYU';

UPDATE "TraitModifiers"
SET
	"TraitType" = 'TRAIT_CIVILIZATION_TROYU'
WHERE "TraitType" = 'TRAIT_CIVILIZATION_ITERU';

-- Corrections for Canada

INSERT INTO "District_Adjacencies"
	(	"DistrictType",						"YieldChangeID"		)
VALUES
	(	'DISTRICT_SEOWON',					'CivCan_Sci_1'		),
	(	'DISTRICT_SUGUBA',					'CivCan_negGold_1'	),
	(	'DISTRICT_ACROPOLIS',				'CivCan_negCul_1'	),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',		'CivCan_negGold_1'	),
	(	'DISTRICT_COTHON',					'CivCan_negGold_1'	),
	(	'DISTRICT_HANSA',					'CivCan_negProd_1'	),
	(	'DISTRICT_COREX_FRONTIER_TOWN',		'RurCom_LAVRA'		),		
	(	'DISTRICT_COREX_FRONTIER_TOWN',		'RurCom_SEOWON'		),		
	(	'DISTRICT_COREX_FRONTIER_TOWN',		'RurCom_IKANDA'		);

-- Missing Adjacencies for Aquaduct / Bath

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",						"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CL_Aquaduct_CoreExA2',	'LOC_DISTRICT_AQUADUCT_COREXA2',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_XIAN'		),
	(	'CL_Aquaduct_CoreExA4',	'LOC_DISTRICT_AQUADUCT_COREXA4',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_UPAPITHA'	),
	(	'CL_Aquaduct_CoreExB2',	'LOC_DISTRICT_AQUADUCT_COREXB2',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'		),
	(	'CL_Aquaduct_CoreExC2',	'LOC_DISTRICT_AQUADUCT_COREXC2',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_ELYSEE'		);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_AQUEDUCT',	'CL_Aquaduct_CoreExA2'	),
	(	'DISTRICT_AQUEDUCT',	'CL_Aquaduct_CoreExA4'	),
	(	'DISTRICT_AQUEDUCT',	'CL_Aquaduct_CoreExB2'	),
	(	'DISTRICT_AQUEDUCT',	'CL_Aquaduct_CoreExC2'	),
	(	'DISTRICT_BATH',		'CL_Aquaduct_CoreExA2'	),
	(	'DISTRICT_BATH',		'CL_Aquaduct_CoreExA4'	),
	(	'DISTRICT_BATH',		'CL_Aquaduct_CoreExB2'	),
	(	'DISTRICT_BATH',		'CL_Aquaduct_CoreExC2'	);

-- Missing Adjacencies for Campus / Seowon
UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_CAMPUS_COREXA2'
WHERE "ID" = 'Campus_CoreExA2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_CAMPUS_COREXA4'
WHERE "ID" = 'Campus_CoreExA4';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_CAMPUS_COREXB2'
WHERE "ID" = 'Campus_CoreExB2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_CAMPUS_COREXC2'
WHERE "ID" = 'Campus_CoreExC2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivCan_negSci_1_DESCRIPTION'
WHERE "ID" = 'CivCan_negSci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivEgp_negSci_1_DESCRIPTION'
WHERE "ID" = 'CivEgp_negSci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivGeg_negSci_1_DESCRIPTION'
WHERE "ID" = 'CivGeg_negSci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivCan_Sci_1_DESCRIPTION'
WHERE "ID" = 'CivCan_Sci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivEgp_Sci_1_DESCRIPTION'
WHERE "ID" = 'CivEgp_Sci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivGeg_Sci_1_DESCRIPTION'
WHERE "ID" = 'CivGeg_Sci_1';

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",					"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CivGyo_Sci_1',			'LOC_CivGyo_Sci_1_DESCRIPTION',	'YIELD_SCIENCE',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_GYOSON'		);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_SEOWON',		'CivGyo_Sci_1'		);

-- Missing Adjacencies for Commercial Hub / Suguba
UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_COMMER_COREXA2'
WHERE "ID" = 'CommHub_CoreExA2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_COMMER_COREXA4'
WHERE "ID" = 'CommHub_CoreExA4';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_COMMER_COREXB2'
WHERE "ID" = 'CommHub_CoreExB2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_COMMER_COREXC2'
WHERE "ID" = 'CommHub_CoreExC2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivCan_negGold_1_DESCRIPTION'
WHERE "ID" = 'CivCan_negGold_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivEgp_negGold_1_DESCRIPTION'
WHERE "ID" = 'CivEgp_negGold_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivGeg_negGold_1_DESCRIPTION'
WHERE "ID" = 'CivGeg_negGold_1';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_SUGUBA',	'CommHub_CoreExA2'	),
	(	'DISTRICT_SUGUBA',	'CommHub_CoreExA4'	),
	(	'DISTRICT_SUGUBA',	'CommHub_CoreExB2'	),
	(	'DISTRICT_SUGUBA',	'CommHub_CoreExC2'	);

-- Missing Adjacencies for Classical Era Borough / Ling Yi / Mandala

DELETE FROM "District_Adjacencies"
WHERE "YieldChangeId" IN ('CoreExB2_CoreExA', 'CoreExC2_CoreExA');

DELETE FROM "Adjacency_YieldChanges"
WHERE "YieldChangeId" IN ('CoreExB2_CoreExA', 'CoreExC2_CoreExA');

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",							"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CoreExA_CoreExA2',	'LOC_DISTRICT_COREEXPANSIONA_COREXA2',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_XIAN'		),
	(	'CoreExA_CoreExA4',	'LOC_DISTRICT_COREEXPANSIONA_COREXA4',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_UPAPITHA'	),
	(	'CoreExA_CoreExB2',	'LOC_DISTRICT_COREEXPANSIONA_COREXB2',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'		),
	(	'CoreExA_CoreExC2',	'LOC_DISTRICT_COREEXPANSIONA_COREXC2',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_ELYSEE'		);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREEXPANSIONA',	'CoreExA_CoreExA2'			),
	(	'DISTRICT_COREEXPANSIONA',	'CoreExA_CoreExA4'			),
	(	'DISTRICT_COREEXPANSIONA',	'CoreExA_CoreExB2'			),
	(	'DISTRICT_COREEXPANSIONA',	'CoreExA_CoreExC2'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExA'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExA2'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExA4'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExB2'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExC2'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExA'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExA2'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExA4'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExB2'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExC2'			);

-- Missing Adjacencies for Renaissance Era Borough / Fuerte Colonial

DELETE FROM "District_Adjacencies"
WHERE "YieldChangeId" IN ('CoreExA2_CoreExB', 'CoreExA4_CoreExB', 'CoreExC2_CoreExB');

DELETE FROM "Adjacency_YieldChanges"
WHERE "YieldChangeId" IN ('CoreExA2_CoreExB', 'CoreExA4_CoreExB', 'CoreExC2_CoreExB');

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",							"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CoreExB_CoreExA2',	'LOC_DISTRICT_COREEXPANSIONB_COREXA2',	'YIELD_GOLD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_XIAN'		),
	(	'CoreExB_CoreExA4',	'LOC_DISTRICT_COREEXPANSIONB_COREXA4',	'YIELD_GOLD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_UPAPITHA'	),
	(	'CoreExB_CoreExB2',	'LOC_DISTRICT_COREEXPANSIONB_COREXB2',	'YIELD_GOLD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'		),
	(	'CoreExB_CoreExC2',	'LOC_DISTRICT_COREEXPANSIONB_COREXC2',	'YIELD_GOLD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_ELYSEE'		);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"				)
VALUES
	(	'DISTRICT_COREEXPANSIONB',	'CoreExB_CoreExA2'			),
	(	'DISTRICT_COREEXPANSIONB',	'CoreExB_CoreExA4'			),
	(	'DISTRICT_COREEXPANSIONB',	'CoreExB_CoreExB2'			),
	(	'DISTRICT_COREEXPANSIONB',	'CoreExB_CoreExC2'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExB'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExA2'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExA4'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExB2'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExC2'			);

-- Missing Adjacencies for Modern Era Borough /  Arrondissement

DELETE FROM "District_Adjacencies"
WHERE "YieldChangeId" IN ('CoreExA2_CoreExC', 'CoreExA4_CoreExC', 'CoreExB2_CoreExC');

DELETE FROM "Adjacency_YieldChanges"
WHERE "YieldChangeId" IN ('CoreExA2_CoreExC', 'CoreExA4_CoreExC', 'CoreExB2_CoreExC');

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",							"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CoreExC_CoreExA2',	'LOC_DISTRICT_COREEXPANSIONC_COREXA2',	'YIELD_GOLD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_XIAN'		),
	(	'CoreExC_CoreExA4',	'LOC_DISTRICT_COREEXPANSIONC_COREXA4',	'YIELD_GOLD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_UPAPITHA'	),
	(	'CoreExC_CoreExB2',	'LOC_DISTRICT_COREEXPANSIONC_COREXB2',	'YIELD_GOLD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'		),
	(	'CoreExC_CoreExC2',	'LOC_DISTRICT_COREEXPANSIONC_COREXC2',	'YIELD_GOLD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_ELYSEE'		);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"				)
VALUES
	(	'DISTRICT_COREEXPANSIONC',	'CoreExC_CoreExA2'			),
	(	'DISTRICT_COREEXPANSIONC',	'CoreExC_CoreExA4'			),
	(	'DISTRICT_COREEXPANSIONC',	'CoreExC_CoreExB2'			),
	(	'DISTRICT_COREEXPANSIONC',	'CoreExC_CoreExC2'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExC'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExA2'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExA4'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExB2'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExC2'			);

-- Missing Adjacencies for Harbor / Cothon / Royal Navy Dockyard

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXA2'
WHERE "ID" = 'Harbor_CoreExA2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXA4'
WHERE "ID" = 'Harbor_CoreExA4';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXB2'
WHERE "ID" = 'Harbor_CoreExB2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXC2'
WHERE "ID" = 'Harbor_CoreExC2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXC2'
WHERE "ID" = 'RoyalNavy_CoreExC2';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_COTHON',				'Harbor_CoreExA2'	),
	(	'DISTRICT_COTHON',				'Harbor_CoreExA4'	),
	(	'DISTRICT_COTHON',				'Harbor_CoreExB2'	),
	(	'DISTRICT_COTHON',				'Harbor_CoreExC2'	),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'Harbor_CoreExA2'	),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'Harbor_CoreExA4'	),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'Harbor_CoreExB2'	);

-- Missing Adjacencies for Holy Site / Lavra

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HOLYSITE_COREXA2'
WHERE "ID" = 'HolySite_CoreExA2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HOLYSITE_COREXA4'
WHERE "ID" = 'HolySite_CoreExA4';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HOLYSITE_COREXB2'
WHERE "ID" = 'HolySite_CoreExB2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HOLYSITE_COREXC2'
WHERE "ID" = 'HolySite_CoreExC2';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_LAVRA',	'HolySite_CoreExA2'	),
	(	'DISTRICT_LAVRA',	'HolySite_CoreExA4'	),
	(	'DISTRICT_LAVRA',	'HolySite_CoreExB2'	),
	(	'DISTRICT_LAVRA',	'HolySite_CoreExC2'	);

-- Missing Adjacencies for Industrial Zone / Hansa

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_INDUSTRIAL_COREXA2'
WHERE "ID" = 'Industrial_CoreExA2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_INDUSTRIAL_COREXA4'
WHERE "ID" = 'Industrial_CoreExA4';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_INDUSTRIAL_COREXB2'
WHERE "ID" = 'Industrial_CoreExB2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_INDUSTRIAL_COREXC2'
WHERE "ID" = 'Industrial_CoreExC2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivCan_negProd_1_DESCRIPTION'
WHERE "ID" = 'CivCan_negProd_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivEgp_negProd_1_DESCRIPTION'
WHERE "ID" = 'CivEgp_negProd_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivGeg_negProd_1_DESCRIPTION'
WHERE "ID" = 'CivGeg_negProd_1';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_HANSA',	'Industrial_CoreExA2'	),
	(	'DISTRICT_HANSA',	'Industrial_CoreExA4'	),
	(	'DISTRICT_HANSA',	'Industrial_CoreExB2'	),
	(	'DISTRICT_HANSA',	'Industrial_CoreExC2'	);

-- Missing Adjacencies for Theatre / Acropolis

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_THEATER_COREXA2'
WHERE "ID" = 'Theater_CoreExA2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_THEATER_COREXA4'
WHERE "ID" = 'Theater_CoreExA4';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_THEATER_COREXB2'
WHERE "ID" = 'Theater_CoreExB2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_THEATER_COREXC2'
WHERE "ID" = 'Theater_CoreExC2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivCan_negCul_1_DESCRIPTION'
WHERE "ID" = 'CivCan_negCul_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivEgp_negCul_1_DESCRIPTION'
WHERE "ID" = 'CivEgp_negCul_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_CivGeg_negCul_1_DESCRIPTION'
WHERE "ID" = 'CivGeg_negCul_1';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_ACROPOLIS',	'Theater_CoreExA2'	),
	(	'DISTRICT_ACROPOLIS',	'Theater_CoreExA4'	),
	(	'DISTRICT_ACROPOLIS',	'Theater_CoreExB2'	),
	(	'DISTRICT_ACROPOLIS',	'Theater_CoreExC2'	);

-- Placeholder Text Corrections

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivCan_Gold_DESCRIPTION'
WHERE "ID" = 'CivCan_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivCan_Gold_DESCRIPTION'
WHERE "ID" = 'CivCan_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivCan_Gold_DESCRIPTION'
WHERE "ID" = 'CivCan_Gold_3';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivEgp_Gold_DESCRIPTION'
WHERE "ID" = 'CivEGYPT_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivEgp_Gold_DESCRIPTION'
WHERE "ID" = 'CivEGYPT_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivEgp_Gold_DESCRIPTION'
WHERE "ID" = 'CivEGYPT_Gold_3';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivGeg_Gold_DESCRIPTION'
WHERE "ID" = 'CivGEORGIA_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivGeg_Gold_DESCRIPTION'
WHERE "ID" = 'CivGEORGIA_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivGeg_Gold_DESCRIPTION'
WHERE "ID" = 'CivGEORGIA_Gold_3';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivJap_Gold_DESCRIPTION'
WHERE "ID" = 'CivJAPAN_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivJap_Gold_DESCRIPTION'
WHERE "ID" = 'CivJAPAN_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_CivJap_Gold_DESCRIPTION'
WHERE "ID" = 'CivJAPAN_Gold_3';
