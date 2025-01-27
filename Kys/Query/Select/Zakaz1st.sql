/****** Список клиентов оформивших закз 1го числа ******/
SELECT [Hasenova].[dbo].[ZAKAZ].[ID_ZAKAZ]
       ,[Hasenova].[dbo].TS_TYPE.TS_NAME
      ,[Hasenova].[dbo].[CUST].LASTNAME
      ,[Hasenova].[dbo].[CUST].NAME
      ,[Hasenova].[dbo].[CUST].SECNAME
      ,[Hasenova].[dbo].[ZAKAZ].[DATA]
      ,[Hasenova].[dbo].TS_MARK.TS_NAME
      ,[Hasenova].[dbo].[ZAKAZ].[TSINFO]
      ,[Hasenova].[dbo].[ZAKAZ].[EDATA]
      
  FROM [Hasenova].[dbo].[ZAKAZ],[Hasenova].[dbo].[CUST],[Hasenova].[dbo].TS_MARK,[Hasenova].[dbo].TS_TYPE
  where 
  (DATEPART(d,[Hasenova].[dbo].[ZAKAZ].[DATA])=1) 
  and 
  ([Hasenova].[dbo].[ZAKAZ].[ID_CUST]=[Hasenova].[dbo].[CUST].IIN) 
  and 
  ([Hasenova].[dbo].TS_MARK.ID_TTS=[Hasenova].[dbo].[ZAKAZ].ID_TSMARK)
  and
  ([Hasenova].[dbo].TS_TYPE.ID_TTS=[Hasenova].[dbo].[ZAKAZ].[ID_TS])