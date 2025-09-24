SELECT invoiceDate, qtyShip, 
		sum(qtyShip * unitPrice) OVER(ORDER BY invoiceDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as RT_Sales

FROM DBO.InvoiceDetailHistory

WHERE item = '123456789'
