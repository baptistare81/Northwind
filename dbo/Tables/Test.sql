CREATE TABLE [dbo].[Test] (
    [ID]              INT           IDENTITY (1, 1) NOT NULL,
    [PassaportNumber] CHAR (11)     NOT NULL,
    [FirstName]       VARCHAR (200) NOT NULL,
    [LastName]        VARCHAR (200) NULL,
    [Address]         VARCHAR (200) NULL,
    [Neighborhood]    VARCHAR (200) NULL,
    [City]            VARCHAR (200) NULL,
    CONSTRAINT [PK__Test] PRIMARY KEY NONCLUSTERED ([ID] ASC, [PassaportNumber] ASC, [FirstName] ASC)
);


GO
CREATE CLUSTERED INDEX [ix_PassaportNumber]
    ON [dbo].[Test]([PassaportNumber] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_FirstNameLastName]
    ON [dbo].[Test]([FirstName] ASC, [LastName] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_LastName]
    ON [dbo].[Test]([LastName] ASC);


GO
CREATE NONCLUSTERED INDEX [ix_Address]
    ON [dbo].[Test]([Address] ASC);

