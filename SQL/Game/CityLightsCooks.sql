-- Correct Cothon to give Gold (or Production) adjacencies instead of Food

UPDATE "Adjacency_YieldChanges"
SET
	"YieldType" = 'YIELD_GOLD'
WHERE "ID" IN ('CoreExA_CothonGoldOne', 'Cothon_CoreExA', 'Cothon_CoreExB', 'Cothon_CoreExC');

UPDATE "Adjacency_YieldChanges"
SET
	"YieldType" = 'YIELD_PRODUCTION'
WHERE "ID" IN ('CoreExB_CothonProdOne', 'CoreExC_CothonProdOne');

UPDATE "District_Adjacencies"
SET
	"YieldChangeID" = 'RurComA_negGold_1'
WHERE "DistrictType" = 'DISTRICT_COTHON' AND "YieldChangeID" = 'RurComA_negFood_1';

UPDATE "District_Adjacencies"
SET
	"YieldChangeID" = 'RurComB_negGold_1'
WHERE "DistrictType" = 'DISTRICT_COTHON' AND "YieldChangeID" = 'RurComB_negFood_1';

UPDATE "District_Adjacencies"
SET
	"YieldChangeID" = 'RurComC_negGold_1'
WHERE "DistrictType" = 'DISTRICT_COTHON' AND "YieldChangeID" = 'RurComC_negFood_1';

-- Missing Adjacencies for Campus / Observatory / Seowon
-- Missing Adjacencies for Farming Town
-- Missing Adjacencies for Mining Colony
UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_negSci_1_DESCRIPTION'
WHERE "ID" = 'RurComB_negSci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_Sci_1_DESCRIPTION'
WHERE "ID" = 'RurComB_Sci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_negGold_1_DESCRIPTION'
WHERE "ID" = 'RurComB_negGold_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_negCul_1_DESCRIPTION'
WHERE "ID" = 'RurComB_negCul_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_negFood_1_DESCRIPTION'
WHERE "ID" = 'RurComB_negFood_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComB_negProd_1_DESCRIPTION'
WHERE "ID" = 'RurComB_negProd_1';

-- Missing Adjacencies for Fishing Village
UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_negSci_1_DESCRIPTION'
WHERE "ID" = 'RurComC_negSci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_Sci_1_DESCRIPTION'
WHERE "ID" = 'RurComC_Sci_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_negGold_1_DESCRIPTION'
WHERE "ID" = 'RurComC_negGold_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_negCul_1_DESCRIPTION'
WHERE "ID" = 'RurComC_negCul_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_negFood_1_DESCRIPTION'
WHERE "ID" = 'RurComC_negFood_1';

UPDATE "Adjacency_YieldChanges"
SET
	"Description" = 'LOC_RurComC_negProd_1_DESCRIPTION'
WHERE "ID" = 'RurComC_negProd_1';

-- Placeholder Text Corrections

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComA_Gold_DESCRIPTION'
WHERE "ID" = 'RurComA_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComA_Gold_DESCRIPTION'
WHERE "ID" = 'RurComA_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComA_Gold_DESCRIPTION'
WHERE "ID" = 'RurComA_Gold_3';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComB_Gold_DESCRIPTION'
WHERE "ID" = 'RurComB_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComB_Gold_DESCRIPTION'
WHERE "ID" = 'RurComB_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComB_Gold_DESCRIPTION'
WHERE "ID" = 'RurComB_Gold_3';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComC_Gold_DESCRIPTION'
WHERE "ID" = 'RurComC_Gold_1';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComC_Gold_DESCRIPTION'
WHERE "ID" = 'RurComC_Gold_2';

UPDATE "Adjacency_YieldChanges"
SET "Description" = 'LOC_RurComC_Gold_DESCRIPTION'
WHERE "ID" = 'RurComC_Gold_3';
