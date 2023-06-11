﻿CREATE TABLE [dbo].[EmployeeTerritories] (
    [EmployeeID]  INT          NOT NULL,
    [TerritoryID] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_EmployeeTerritories] PRIMARY KEY NONCLUSTERED ([EmployeeID] ASC, [TerritoryID] ASC) WITH (FILLFACTOR = 97),
    CONSTRAINT [FK_EmployeeTerritories_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID]),
    CONSTRAINT [FK_EmployeeTerritories_Territories] FOREIGN KEY ([TerritoryID]) REFERENCES [dbo].[Territories] ([TerritoryID])
);

