CREATE TABLE [dbo].[ProductsBig] (
    [ProductID]   INT           IDENTITY (1, 1) NOT NULL,
    [ProductName] VARCHAR (8)   NULL,
    [Col1]        VARCHAR (250) NULL,
    [Col2]        CHAR (5000)   NULL,
    CONSTRAINT [xpk_ProductsBig] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

