/****** Objeto:  ForeignKey [FK_analiticaindicador_indicadorclasificacion]    Fecha de la secuencia de comandos: 04/27/2016 12:38:21 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_analiticaindicador_indicadorclasificacion]') AND parent_object_id = OBJECT_ID(N'[dbo].[analiticaindicador]'))
ALTER TABLE [dbo].[analiticaindicador]  WITH CHECK ADD  CONSTRAINT [FK_analiticaindicador_indicadorclasificacion] FOREIGN KEY([clasificacion])
REFERENCES [dbo].[indicadorclasificacion] ([indicadorclasificacionid])
GO
ALTER TABLE [dbo].[analiticaindicador] CHECK CONSTRAINT [FK_analiticaindicador_indicadorclasificacion]
GO
/****** Objeto:  ForeignKey [FK_visitapaciente_visitapaciente]    Fecha de la secuencia de comandos: 04/27/2016 12:40:48 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_visitapaciente_visitapaciente]') AND parent_object_id = OBJECT_ID(N'[dbo].[visitapaciente]'))
ALTER TABLE [dbo].[visitapaciente]  WITH CHECK ADD  CONSTRAINT [FK_visitapaciente_visitapaciente] FOREIGN KEY([visitapacienteid])
REFERENCES [dbo].[visitapaciente] ([visitapacienteid])
GO
ALTER TABLE [dbo].[visitapaciente] CHECK CONSTRAINT [FK_visitapaciente_visitapaciente]
GO
