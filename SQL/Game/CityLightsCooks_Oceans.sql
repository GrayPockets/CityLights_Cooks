-- Support for Sukritact's Oceans

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",				"Description",			"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict",	"AdjacentResourceClass"	)
VALUES
	(	'RurComC_Kelp_CUL',	'LOC_RurComC_Kelp_CUL',	'YIELD_CULTURE',	2,				0,							1,					0,							0,						NULL,					'FEATURE_SUK_KELP',		NULL,			NULL,			NULL,				'NO_RESOURCECLASS'		);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",				"YieldChangeId"		)
VALUES
	(	'IMPROVEMENT_ARTIFICIAL_REEF',	'RurComC_Kelp_CUL'	);
