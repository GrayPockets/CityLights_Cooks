-- Missing Adjacencies for Pairidaeza

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",								"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'Pairidaeza_CoreExA3',	'LOC_IMPROVEMENT_PAIRIDAEZA_COREXA3',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_01'	),
	(	'Pairidaeza_CoreExB3',	'LOC_IMPROVEMENT_PAIRIDAEZA_COREXB3',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",			"YieldChangeId"			)
VALUES
	(	'IMPROVEMENT_PAIRIDAEZA',	'Pairidaeza_CoreExA3'	),
	(	'IMPROVEMENT_PAIRIDAEZA',	'Pairidaeza_CoreExB3'	);
