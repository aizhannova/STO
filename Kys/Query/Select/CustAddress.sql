/****** Список клиентов проживаюших на улице ...  ******/
SELECT [IIN]
      ,[NAME]
      ,[SECNAME]
      ,[LASTNAME]
      ,[COUNTRY]
      ,[CITY]
      ,[STREET]
      ,[HOME]
      ,[PHONE]
  FROM [Hasenova].[dbo].[CUST]
  where STREET='ул.Луговая'