CREATE TABLE [dbo].[OrdersBig] (
    [OrderID]    INT             IDENTITY (1, 1) NOT NULL,
    [CustomerID] INT             NULL,
    [OrderDate]  DATE            NOT NULL,
    [Value]      NUMERIC (18, 2) NOT NULL,
    CONSTRAINT [xpk_OrdersBig] PRIMARY KEY CLUSTERED ([OrderID] ASC) WITH (FILLFACTOR = 97)
);

