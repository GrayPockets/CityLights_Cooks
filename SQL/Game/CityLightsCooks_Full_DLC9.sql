-- Missing Adjacencies for Farming Town / Frontier Town
INSERT INTO "District_Adjacencies"
	(	"DistrictType",					"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREX_FRONTIER_TOWN',	'RurCom_Oppidium'	);

-- Missing Adjacencies for Mining Colony / Hetet / Tsikhe
INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREX_TROYU',		'RurCom_Oppidium'	),
	(	'DISTRICT_COREX_TSIKHE',	'RurCom_Oppidium'	);

-- Missing Adjacencies for Fishing Village / Gyoson
INSERT INTO "District_Adjacencies"
	(	"DistrictType",				"YieldChangeID"		)
VALUES
	(	'DISTRICT_COREX_GYOSON',	'RurCom_Oppidium'	);

-- Missing Adjacencies for Golf Course

INSERT INTO "Adjacency_YieldChanges"
	(	"ID",					"Description",					"YieldType",		"YieldChange",	"OtherDistrictAdjacent",	"TilesRequired",	"AdjacentNaturalWonder",	"AdjacentSeaResource",	"AdjacentImprovement",	"AdjacentFeature",	"PrereqCivic",	"PrereqTech",	"AdjacentDistrict"			)
VALUES
	(	'Culture_01_CoreExB3',	'LOC_DISTRICT_THEATER_COREXB3',	'YIELD_CULTURE',	1,				0,							1,					0,							0,						NULL,					NULL,				NULL,			NULL,			'DISTRICT_COREX_VENICE_02'	);

INSERT INTO "Improvement_Adjacencies"
	(	"ImprovementType",			"YieldChangeId"	)
VALUES
	(	'IMPROVEMENT_GOLF_COURSE',	'Theater_CoreExA3'		),
	(	'IMPROVEMENT_GOLF_COURSE',	'Culture_01_CoreExB3'	);
