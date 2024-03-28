DELETE FROM "District_Adjacencies"
WHERE "DistrictType" = 'DISTRICT_COREX_FUERTE' AND "YieldChangeId" IN ('CoreExC_DiploQuarter_Cul', 'CoreExC_DiploQuarter_Sci');

INSERT INTO "District_Adjacencies"
	(	"DistrictType",		"YieldChangeID"		)
VALUES
-- Missing Adjacencies for Classical Era Borough / Ling Yi / Mandala / Classical Era Sestiere
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_DiploQuarter_Cul'	),
	(	'DISTRICT_COREX_UPAPITHA',	'CoreExA_DiploQuarter_Sci'	),
-- Missing Adjacencies for Renaissance Era Borough / Fuerte Colonial / Renaissance Era Sestiere
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_DiploQuarter_Cul'	),
	(	'DISTRICT_COREX_FUERTE',	'CoreExB_DiploQuarter_Sci'	);