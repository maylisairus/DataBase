SELECT 'YOUNGEST' AS TYPE, NAME, BIRTHDAY FROM worker WHERE BIRTHDAY=(SELECT MAX (BIRTHDAY)FROM worker) UNION SELECT 'ELDEST' AS TYPE, NAME, BIRTHDAY FROM  worker WHERE BIRTHDAY=(SELECT MIN(BIRTHDAY)FROM worker);