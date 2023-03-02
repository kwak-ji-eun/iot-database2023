-- 집계함수를 사용하기 위해서 / 그룹핑
USE sqldb;

-- GROUP BY에 작성된 컬럼명만 SELECT에 쓸 수 있음
SELECT userID AS '아이디'
	 , SUM(price) AS '평균구매개수'
  FROM buytbl
GROUP BY userID;

-- HAVING은 집계함수등의 결과값을 필터링하기 위해서
SELECT userID
	, SUM(price * amount) AS '합산'
 FROM buytbl
GROUP BY userID
HAVING SUM(price * amount) >= 1000;

-- ROLLUP 전체합계 자동계산 / Null 옆 숫자는 전체 합산
SELECT userID
	, SUM(price * amount) AS '합산'
 FROM buytbl
GROUP BY userID
    WITH ROLLUP;