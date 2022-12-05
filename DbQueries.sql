 --Query to fetch the chunk of data from Database using Offset and fetch next/first 
 
 SELECT * from Account ORDER BY accountNumber Desc OFFSET 0 rows fetch Next 5 rows only;
 
 --Joining two tables (Account as acc and Transaction as trans) using Inner Join.
 
 SELECT acc.accountNumber,trans.transactionCode,trans.amount, trans.tranId,trans.debitCreditIndicator, trans.TraceNumber FROM Account acc INNER JOIN TransactionInfo trans ON acc.accountNumber=? and trans.AccountNo=?

------Postgres queries.

SELECT * FROM "ITransactionInfo" where "TranId"='3abb7ad1650011ed9b06000d3ac4a164';

SELECT * FROM "IWireAdviceDetails" where "AdviceReference"='3aa708f5650011ed9a48000d3ac4a164'

SELECT trans."AccountNo", trans."TranId", wires."AdviceReference" FROM "ITransactionInfo" as "trans" INNER JOIN "IWireAdviceDetails" as "wires" ON trans."AdviceReference" = wires."AdviceReference"
