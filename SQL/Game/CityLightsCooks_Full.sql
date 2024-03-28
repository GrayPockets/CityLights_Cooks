-- Missing Adjacencies for Golf Course / Polder / Terrace Farm

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",					"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"		)
VALUES
	(	'Culture_01_CoreExB2',	'LOC_DISTRICT_THEATER_COREXB2',	'YIELD_CULTURE',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_FUERTE'	);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",			"YieldChangeId"	)
VALUES
	(	'IMPROVEMENT_GOLF_COURSE',	'Theater_CoreExA4'		),
	(	'IMPROVEMENT_GOLF_COURSE',	'Theater_CoreExA2'		),
	(	'IMPROVEMENT_GOLF_COURSE',	'Culture_01_CoreExB2'	),
	(	'IMPROVEMENT_GOLF_COURSE',	'Culture_01_CoreExC2'	),
	(	'IMPROVEMENT_POLDER',		'CivCan_Gold_1'			),
	(	'IMPROVEMENT_POLDER',		'CivCan_Gold_2'			),
	(	'IMPROVEMENT_POLDER',		'CivCan_Gold_3'			),
	(	'IMPROVEMENT_TERRACE_FARM',	'CivCan_Gold_1'			),
	(	'IMPROVEMENT_TERRACE_FARM',	'CivCan_Gold_2'			),
	(	'IMPROVEMENT_TERRACE_FARM',	'CivCan_Gold_3'			);
