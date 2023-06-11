CREATE TABLE [dbo].[TestTab1] (
    [ID]   INT             IDENTITY (1, 1) NOT NULL,
    [Col1] CHAR (5000)     NULL,
    [Col2] CHAR (1250)     NULL,
    [Col3] CHAR (1250)     NULL,
    [Col4] NUMERIC (18, 2) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ix_Col4]
    ON [dbo].[TestTab1]([Col4] ASC);

