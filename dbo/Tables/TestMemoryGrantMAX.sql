CREATE TABLE [dbo].[TestMemoryGrantMAX] (
    [ID]    INT           IDENTITY (1, 1) NOT NULL,
    [Col1]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col2]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col3]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col4]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col5]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col6]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col7]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col8]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col9]  VARCHAR (MAX) DEFAULT (newid()) NULL,
    [Col10] VARCHAR (MAX) DEFAULT (newid()) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

