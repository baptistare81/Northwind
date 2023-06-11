CREATE TABLE [dbo].[BigTable] (
    [Col1] INT         NULL,
    [Col2] CHAR (1100) NULL
);


GO
CREATE CLUSTERED INDEX [Cluster_BigTable_Col1]
    ON [dbo].[BigTable]([Col1] ASC);

