CREATE TABLE [dbo].[CustomersBig] (
    [CustomerID]  INT           IDENTITY (1, 1) NOT NULL,
    [CityID]      INT           NULL,
    [CompanyName] VARCHAR (209) NULL,
    [ContactName] VARCHAR (209) NULL,
    [Col1]        VARCHAR (250) NULL,
    [Col2]        VARCHAR (250) NULL,
    [CNPJ]        VARCHAR (18)  NULL,
    CONSTRAINT [xpk_CustomersBig] PRIMARY KEY CLUSTERED ([CustomerID] ASC) WITH (FILLFACTOR = 97)
);

