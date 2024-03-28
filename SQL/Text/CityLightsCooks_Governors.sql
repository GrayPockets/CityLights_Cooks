-- Remove original Park entry

DELETE FROM "LocalizedText"
WHERE "Language" = 'en_US' AND "Tag" IN ('LOC_IMPROVEMENT_CITY_PARK_NAME', 'LOC_IMPROVEMENT_CITY_PARK_DESCRIPTION');
