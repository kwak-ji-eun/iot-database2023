-- Active: 1677474349402@@127.0.0.1@3306@employees
/*  책대여점 데이터베이스 실습 */
-- 1. divtbl
SELECT *
  FROM divtbl;

-- 2. bookstbl
SELECT *
  FROM bookstbl;
  
-- 3. membertbl
SELECT *
  FROM membertbl;
  
-- 4. rentaltbl
SELECT *
  FROM retaltbl;

-- 책을 봅시다
SELECT b.Author AS '저자명'
	 , b.Division AS '장르코드'
     , b.Names AS '책제목'
	 , DATE_FORMAT(b.ReleaseDate, '%Y년%m월%d일') AS '출판일'
     , FORMAT(b.price, '0000') AS 구매 
	b.price AS '금액'
	
     , DATE_FORMAT('2023-03-03 17:05:10', '%Y년%m월%d일 %H시%i분%s초')
  FROM bookstbl AS b;

-- 회원을 봅시다
SELECT m.NAMES AS '회원명'
      , m.Levels AS '등급'
      , m.Addr AS '주소'
      , SUBSTRING_INDEX(m.Email,'@', as m.Eamil) AS 연락처
      , m.Email AS '이메일'
    FMOM MEMbertabl AS m
    ORDER BY m.Names ASC;