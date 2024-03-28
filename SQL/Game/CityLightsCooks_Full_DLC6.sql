-- Missing Adjacencies for Kampung

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",						"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"		)
VALUES
	(	'CivJap_Prod_1',	'LOC_CivJap_Prod_1_DESCRIPTION',	'YIELD_PRODUCTION',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_GYOSON'	);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",		"YieldChangeId"	)
VALUES
	(	'IMPROVEMENT_KAMPUNG',	'CivJap_Prod_1'	);

-- Placeholder Text Corrections

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComC_Prod_1_DESCRIPTION'
WHERE "ID" = 'RurComC_PROD_1';
