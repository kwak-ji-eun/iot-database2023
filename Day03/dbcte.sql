-- CTE Common Table Expression
WITH cte_join(userID, name, prodName, price)
AS
(
	SELECT b.userID
		 , u.Name
         , u.price
	  FROM buytbl AS b
	  JOIN usertbl AS u
	    ON b.userID = u.userID
)

SELECT * FROM cte_join;