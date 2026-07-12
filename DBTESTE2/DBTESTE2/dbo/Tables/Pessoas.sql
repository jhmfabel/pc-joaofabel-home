CREATE TABLE [dbo].[Pessoas] (
    [IdPessoa] INT            NOT NULL,
    [Nome]     NVARCHAR (150) NOT NULL,
    [CPF]      NVARCHAR (20)  NULL,
    [DataNasc] DATE           NULL,
    CONSTRAINT [PK_Pessoas] PRIMARY KEY CLUSTERED ([IdPessoa] ASC)
);


GO

