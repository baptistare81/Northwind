CREATE TABLE [dbo].[tb_teste_index] (
    [id]   INT      IDENTITY (1, 1) NOT NULL,
    [col2] DATETIME NULL,
    [col3] BIT      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ix1]
    ON [dbo].[tb_teste_index]([col2] ASC)
    INCLUDE([col3]) WITH (FILLFACTOR = 98);

