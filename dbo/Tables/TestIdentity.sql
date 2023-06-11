CREATE TABLE [dbo].[TestIdentity] (
    [ID]              INT           IDENTITY (1, 1) NOT NULL,
    [PassaportNumber] CHAR (11)     NULL,
    [FirstName]       VARCHAR (200) NULL,
    [LastName]        VARCHAR (200) NULL,
    [Address]         VARCHAR (200) NULL,
    [Neighborhood]    VARCHAR (200) NULL,
    [City]            VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ix_FirstNameLastName]
    ON [dbo].[TestIdentity]([FirstName] ASC, [LastName] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_LastName]
    ON [dbo].[TestIdentity]([LastName] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_Address]
    ON [dbo].[TestIdentity]([Address] ASC);

