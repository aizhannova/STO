ALTER TABLE [dbo].[SZAKAZ]
ADD CONSTRAINT [SZAKAZ_SERVICE_fk] FOREIGN KEY ([ID_ZAKAZ]) 
  REFERENCES [dbo].[SERVICE] ([ID_SERV]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO