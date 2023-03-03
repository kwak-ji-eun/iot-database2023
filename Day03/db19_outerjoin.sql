-- INNER JOIN
SELECT s.stdName, s.addr, c.clubName, t.roomNo
  FROM stdtbl AS s
 INNER JOIN stdclubtbl AS c
    ON s.stdName = c.stdName
 INNER JOIN clubtbl AS t
    ON c.clubName = t.clubName;
 