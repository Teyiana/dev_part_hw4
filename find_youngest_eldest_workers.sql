SELECT 'ELDEST' AS TYPE, NAME, BIRTHDAY FROM WORKER WHERE BIRTHDAY = (SELECT MAX(BIRTHDAY) FROM WORKER)
UNION
SELECT 'YANGEST' AS TYPE, NAME, BIRTHDAY FROM WORKER WHERE BIRTHDAY = (SELECT MIN(BIRTHDAY) FROM WORKER)
