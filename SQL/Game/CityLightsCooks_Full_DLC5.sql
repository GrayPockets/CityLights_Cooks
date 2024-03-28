-- Missing Adjacencies for Pyramid

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",						"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"				)
VALUES
	(	'Pyramid_CoreExA2',	'LOC_IMPROVEMENT_PYRAMID_COREXA2',	'YIELD_FOOD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_XIAN'			),
	(	'Pyramid_CoreExA4',	'LOC_IMPROVEMENT_PYRAMID_COREXA4',	'YIELD_FOOD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_UPAPITHA'		),
	(	'Pyramid_CoreExB2',	'LOC_IMPROVEMENT_PYRAMID_COREXB2',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'			),
	(	'Pyramid_CoreExC2',	'LOC_IMPROVEMENT_PYRAMID_COREXC2',	'YIELD_FOOD',	3,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_ELYSEE'			),
	(	'CivCan_Faith_1',	'LOC_CivCan_Faith_1_DESCRIPTION',	'YIELD_FAITH',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FRONTIER_TOWN'	);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",		"YieldChangeId"		)
VALUES
	(	'IMPROVEMENT_PYRAMID',	'Pyramid_CoreExA2'	),
	(	'IMPROVEMENT_PYRAMID',	'Pyramid_CoreExA4'	),
	(	'IMPROVEMENT_PYRAMID',	'Pyramid_CoreExB2'	),
	(	'IMPROVEMENT_PYRAMID',	'Pyramid_CoreExC2'	),
	(	'IMPROVEMENT_PYRAMID',	'CivCan_Faith_1'	);

-- Placeholder Text Corrections

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PYRAMID_COREXA'
WHERE "ID" = 'Pyramid_CoreExA';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PYRAMID_COREXB'
WHERE "ID" = 'Pyramid_CoreExB';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PYRAMID_COREXC'
WHERE "ID" = 'Pyramid_CoreExC';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PYRAMID_RURCOMA'
WHERE "ID" = 'Pyramid_RurCom';
