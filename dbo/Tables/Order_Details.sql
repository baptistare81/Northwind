CREATE TABLE [dbo].[Order_Details] (
    [OrderID]   INT      NOT NULL,
    [ProductID] INT      NOT NULL,
    [UnitPrice] MONEY    CONSTRAINT [DF_Order_Details_UnitPrice] DEFAULT ((0)) NOT NULL,
    [Quantity]  SMALLINT CONSTRAINT [DF_Order_Details_Quantity] DEFAULT ((1)) NOT NULL,
    [Discount]  REAL     CONSTRAINT [DF_Order_Details_Discount] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED ([OrderID] ASC, [ProductID] ASC) WITH (FILLFACTOR = 97),
    CONSTRAINT [CK_Discount] CHECK ([Discount]>=(0) AND [Discount]<=(1)),
    CONSTRAINT [CK_Quantity] CHECK ([Quantity]>(0)),
    CONSTRAINT [CK_UnitPrice] CHECK ([UnitPrice]>=(0)),
    CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [ix_productID]
    ON [dbo].[Order_Details]([ProductID] ASC)
    INCLUDE([UnitPrice], [Quantity], [Discount]);


GO
CREATE STATISTICS [st_UnitPrice]
    ON [dbo].[Order_Details]([UnitPrice]);


GO
CREATE STATISTICS [st_qty]
    ON [dbo].[Order_Details]([Quantity]);


GO
CREATE STATISTICS [st_discount]
    ON [dbo].[Order_Details]([Discount]);

