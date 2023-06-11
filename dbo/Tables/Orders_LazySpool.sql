CREATE TABLE [dbo].[Orders_LazySpool] (
    [ID]        INT             IDENTITY (1, 1) NOT NULL,
    [Customer]  INT             NOT NULL,
    [Employee]  VARCHAR (30)    NOT NULL,
    [Quantity]  SMALLINT        NOT NULL,
    [Value]     NUMERIC (18, 2) NOT NULL,
    [OrderDate] DATETIME        NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC) WITH (FILLFACTOR = 97)
);

