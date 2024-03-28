-- Missing Adjacencies for Campus / Observatory / Seowon

DELETE FROM "District_Adjacencies"
WHERE "DistrictType" = 'DISTRICT_OBSERVATORY' AND "YieldChangeId" = 'RurComA_Sci_1';

INSERT INTO "District_Adjacencies"
	(	"DistrictType",			"YieldChangeID"		)
VALUES
	(	'DISTRICT_OBSERVATORY',	'RurComA_negSci_1'	);
