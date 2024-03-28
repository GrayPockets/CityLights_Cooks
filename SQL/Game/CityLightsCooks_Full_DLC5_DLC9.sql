-- Missing Adjacencies for Pyramid

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",						"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'Pyramid_CoreExA3',	'LOC_IMPROVEMENT_PYRAMID_COREXA3',	'YIELD_FOOD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_01'	),
	(	'Pyramid_CoreExB3',	'LOC_IMPROVEMENT_PYRAMID_COREXB3',	'YIELD_FOOD',	2,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",		"YieldChangeId"		)
VALUES
	(	'IMPROVEMENT_PYRAMID',	'Pyramid_CoreExA3'	),
	(	'IMPROVEMENT_PYRAMID',	'Pyramid_CoreExB3'	);
