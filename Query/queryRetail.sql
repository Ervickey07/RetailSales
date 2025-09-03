USE  RetailSales
GO

-- Orders per Status ?
SELECT STATUS ,COUNT(*) as total_Sale
from Orders
GROUP BY STATUS;