-- Active: 1677474349402@@127.0.0.1@3306@employees
-- UPDATE & TRANSACTION
START TRANSACTION;

-- 경고! UPDATE 구문에는 WHERE절 빼면 안됨!!!
UPDATE usertbl_bak
    SET mobile1 = '010'
    , mobile2 = '6666-7788'
    , addr = '부산'
WHERE userID = 'KJE';
COMMIT;
ROLLBACK;

-- DELETE
-- WHERE절이 빠지면
DELETE FROM usertbl
 WHERE userID = 'KJE'