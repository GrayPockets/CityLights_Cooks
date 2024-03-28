-- Missing Adjacencies for Pairidaeza

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",								"YieldType",	"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'Pairidaeza_CoreExA2',	'LOC_IMPROVEMENT_PAIRIDAEZA_COREXA2',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_XIAN'		),
	(	'Pairidaeza_CoreExA4',	'LOC_IMPROVEMENT_PAIRIDAEZA_COREXA4',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_UPAPITHA'	),
	(	'Pairidaeza_CoreExB2',	'LOC_IMPROVEMENT_PAIRIDAEZA_COREXB2',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'		),
	(	'Pairidaeza_CoreExC2',	'LOC_IMPROVEMENT_PAIRIDAEZA_COREXC2',	'YIELD_GOLD',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_ELYSEE'		);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",			"YieldChangeId"			)
VALUES
	(	'IMPROVEMENT_PAIRIDAEZA',	'Pairidaeza_CoreExA2'	),
	(	'IMPROVEMENT_PAIRIDAEZA',	'Pairidaeza_CoreExA4'	),
	(	'IMPROVEMENT_PAIRIDAEZA',	'Pairidaeza_CoreExB2'	),
	(	'IMPROVEMENT_PAIRIDAEZA',	'Pairidaeza_CoreExC2'	);

-- Placeholder Text Corrections

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PAIRIDAEZA_COREXA'
WHERE "ID" = 'Pairidaeza_CoreExA';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PAIRIDAEZA_COREXB'
WHERE "ID" = 'Pairidaeza_CoreExB';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_IMPROVEMENT_PAIRIDAEZA_COREXC'
WHERE "ID" = 'Pairidaeza_CoreExC';
