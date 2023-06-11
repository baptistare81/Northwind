CREATE TABLE [dbo].[Order_DetailsBig] (
    [OrderID]      INT      NOT NULL,
    [ProductID]    INT      NOT NULL,
    [Shipped_Date] DATETIME NOT NULL,
    [Quantity]     INT      NULL,
    CONSTRAINT [xpk_Order_DetailsBig] PRIMARY KEY CLUSTERED ([OrderID] ASC, [ProductID] ASC) WITH (FILLFACTOR = 97),
    CONSTRAINT [FK] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[OrdersBig] ([OrderID])
);

