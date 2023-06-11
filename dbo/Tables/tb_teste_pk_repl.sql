CREATE TABLE [dbo].[tb_teste_pk_repl] (
    [id]  INT IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [id2] INT NOT NULL,
    [id3] INT NOT NULL,
    CONSTRAINT [pk] PRIMARY KEY CLUSTERED ([id] ASC, [id2] ASC)
);

