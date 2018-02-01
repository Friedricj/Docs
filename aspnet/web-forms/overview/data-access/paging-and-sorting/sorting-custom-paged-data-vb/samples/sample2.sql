SELECT ProductID, ProductName, ...
FROM
   (SELECT ProductID, ProductName, ..., ROW_NUMBER() OVER
    (ORDER BY @sortExpression) AS RowRank
    FROM Products) AS ProductsWithRowNumbers
WHERE RowRank > 10 AND RowRank <= 20