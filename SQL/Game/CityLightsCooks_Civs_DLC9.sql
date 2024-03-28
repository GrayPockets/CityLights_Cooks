-- Missing Adjacencies for Aquaduct / Bath

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",					"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CL_Aquaduct_CoreExA3',	'LOC_DISTRICT_AQUADUCT_COREXA3',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,		'DISTRICT_COREX_VENICE_01'	),
	(	'CL_Aquaduct_CoreExB3',	'LOC_DISTRICT_AQUADUCT_COREXB3',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,		'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_AQUEDUCT',	'CL_Aquaduct_CoreExA3'	),
	(	'DISTRICT_AQUEDUCT',	'CL_Aquaduct_CoreExB3'	),
	(	'DISTRICT_BATH',		'CL_Aquaduct_CoreExA3'	),
	(	'DISTRICT_BATH',		'CL_Aquaduct_CoreExB3'	);

-- Missing Adjacencies for Campus / Seowon

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_CAMPUS_COREXA3'
WHERE "ID" = 'Campus_CoreExA3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_CAMPUS_COREXB3'
WHERE "ID" = 'Campus_CoreExB3';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_CAMPUS',		'Campus_CoreExA3'	),
	(	'DISTRICT_CAMPUS',		'Campus_CoreExB3'	);

-- Missing Adjacencies for Commercial Hub / Suguba

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_COMMER_COREXA3'
WHERE "ID" = 'CommHub_CoreExA3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_COMMER_COREXB3'
WHERE "ID" = 'CommHub_CoreExB3';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"		)
VALUES
	(	'DISTRICT_COMMERCIAL_HUB',	'CommHub_CoreExA3'	),
	(	'DISTRICT_COMMERCIAL_HUB',	'CommHub_CoreExB3'	),
	(	'DISTRICT_SUGUBA',			'CommHub_CoreExA3'	),
	(	'DISTRICT_SUGUBA',			'CommHub_CoreExB3'	);

-- Missing Adjacencies for Classical Era Borough / Ling Yi / Mandala / Classical Era Sestiere

DELETE FROM "District_Adjacencies"
WHERE "YieldChangeId" IN ('CoreExA3_CoreExB', 'CoreExA3_CoreExC');

DELETE FROM "Adjacency_YieldChanges"
WHERE "YieldChangeId" IN ('CoreExA3_CoreExB', 'CoreExA3_CoreExC');

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",						"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CoreExA_CoreExA3',	'LOC_DISTRICT_COREEXPANSIONA_COREXA3',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_01'	),
	(	'CoreExA_CoreExB3',	'LOC_DISTRICT_COREEXPANSIONA_COREXB3',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREEXPANSIONA',	'CoreExA_CoreExA3'			),
	(	'DISTRICT_COREEXPANSIONA',	'CoreExA_CoreExB3'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExA3'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_CoreExB3'			),
	(	'DISTRICT_COREX_XIAN',		'CoreExA_Hippo'				),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExA3'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_CoreExB3'			),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_Hippo'				),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExA'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExA2'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExA3'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExA4'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExB2'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExB3'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_CoreExC2'			),
	(	'DISTRICT_COREX_VENICE_01',	'CoreExA_Hippo'				);

-- Missing Adjacencies for Renaissance Era Borough / Fuerte Colonial / Renaissance Era Sestiere

DELETE FROM "District_Adjacencies"
WHERE "YieldChangeId" IN ('CoreExB3_CoreExA', 'CoreExB3_CoreExC');

DELETE FROM "Adjacency_YieldChanges"
WHERE "YieldChangeId" IN ('CoreExB3_CoreExA', 'CoreExB3_CoreExC');

DELETE FROM "District_Adjacencies"
WHERE "DistrictType" = 'DISTRICT_COREX_VENICE_02' AND "YieldChangeId" = 'District_Production_2';

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",						"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CoreExB_CoreExA3',	'LOC_DISTRICT_COREEXPANSIONB_COREXA3',	'YIELD_GOLD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_01'	),
	(	'CoreExB_CoreExB3',	'LOC_DISTRICT_COREEXPANSIONB_COREXB3',	'YIELD_GOLD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREEXPANSIONB',	'CoreExB_CoreExA3'			),
	(	'DISTRICT_COREEXPANSIONB',	'CoreExB_CoreExB3'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExA3'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_CoreExB3'			),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_Hippo'				),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExB'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExA2'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExA3'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExA4'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExB2'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExB3'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_CoreExC2'			),
	(	'DISTRICT_COREX_VENICE_02',	'CoreExB_Hippo'				),
	(	'DISTRICT_COREX_VENICE_02',	'District_Production_1'		);

-- Missing Adjacencies for Modern Era Borough /  Arrondissement

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",						"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'CoreExC_CoreExA3',	'LOC_DISTRICT_COREEXPANSIONC_COREXA3',	'YIELD_GOLD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_01'	),
	(	'CoreExC_CoreExB3',	'LOC_DISTRICT_COREEXPANSIONC_COREXB3',	'YIELD_GOLD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREEXPANSIONC',	'CoreExC_CoreExA3'			),
	(	'DISTRICT_COREEXPANSIONC',	'CoreExC_CoreExB3'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExA3'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_CoreExB3'			),
	(	'DISTRICT_COREX_ELYSEE',	'CoreExC_Hippo'				);

-- Missing Adjacencies for Harbor / Cothon / Royal Navy Dockyard

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXA3'
WHERE "ID" = 'Harbor_CoreExA3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HARBOR_COREXB3'
WHERE "ID" = 'Harbor_CoreExB3';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",					"YieldChangeID"		)
VALUES
	(	'DISTRICT_HARBOR',				'Harbor_CoreExA3'	),
	(	'DISTRICT_HARBOR',				'Harbor_CoreExB3'	),
	(	'DISTRICT_COTHON',				'Harbor_CoreExA3'	),
	(	'DISTRICT_COTHON',				'Harbor_CoreExB3'	),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'Harbor_CoreExA3'	),
	(	'DISTRICT_ROYAL_NAVY_DOCKYARD',	'Harbor_CoreExB3'	);

-- Missing Adjacencies for Holy Site / Lavra

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HOLYSITE_COREXA3'
WHERE "ID" = 'HolySite_CoreExA3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_HOLYSITE_COREXB3'
WHERE "ID" = 'HolySite_CoreExB3';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_HOLY_SITE',	'HolySite_CoreExA3'	),
	(	'DISTRICT_HOLY_SITE',	'HolySite_CoreExB3'	),
	(	'DISTRICT_LAVRA',		'HolySite_CoreExA3'	),
	(	'DISTRICT_LAVRA',		'HolySite_CoreExB3'	);

-- Missing Adjacencies for Industrial Zone / Hansa / Oppidum

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_INDUSTRIAL_COREXA3'
WHERE "ID" = 'Industrial_CoreExA3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_INDUSTRIAL_COREXB3'
WHERE "ID" = 'Industrial_CoreExB3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_Prod_1_DESCRIPTION'
WHERE "ID" = 'Gual_RurComB_Prod_2';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_Prod_1_DESCRIPTION'
WHERE "ID" = 'Gual_RurComC_Prod_2';

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",						"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"				)
VALUES
	(	'Gual_CivCan_Prod_2',	'LOC_CivCan_Prod_1_DESCRIPTION',	'YIELD_PRODUCTION',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FRONTIER_TOWN'	),
	(	'Gual_CivEgp_Prod_2',	'LOC_CivEgp_Prod_1_DESCRIPTION',	'YIELD_PRODUCTION',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_TROYU'			),
	(	'Gual_CivGeg_Prod_2',	'LOC_CivGeg_Prod_1_DESCRIPTION',	'YIELD_PRODUCTION',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_TSIKHE'			),
	(	'Gual_CivJap_Prod_2',	'LOC_CivJap_Prod_1_DESCRIPTION',	'YIELD_PRODUCTION',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_GYOSON'			);
	
INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"			)
VALUES
	(	'DISTRICT_INDUSTRIAL_ZONE',	'Industrial_CoreExA3'	),
	(	'DISTRICT_INDUSTRIAL_ZONE',	'Industrial_CoreExB3'	),
	(	'DISTRICT_HANSA',			'Industrial_CoreExA3'	),
	(	'DISTRICT_HANSA',			'Industrial_CoreExB3'	),
	(	'DISTRICT_OPPIDUM',			'Gual_CivCan_Prod_2'	),
	(	'DISTRICT_OPPIDUM',			'Gual_CivEgp_Prod_2'	),
	(	'DISTRICT_OPPIDUM',			'Gual_CivGeg_Prod_2'	),
	(	'DISTRICT_OPPIDUM',			'Gual_CivJap_Prod_2'	);

-- Missing Adjacencies for Theatre / Acropolis

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_THEATER_COREXA3'
WHERE "ID" = 'Theater_CoreExA3';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_DISTRICT_THEATER_COREXB3'
WHERE "ID" = 'Theater_CoreExB3';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_THEATER',		'Theater_CoreExA3'	),
	(	'DISTRICT_THEATER',		'Theater_CoreExB3'	),
	(	'DISTRICT_ACROPOLIS',	'Theater_CoreExA3'	),
	(	'DISTRICT_ACROPOLIS',	'Theater_CoreExB3'	);
