CREATE TABLE [dbo].[Clientes] (
    [IdCliente]   INT            IDENTITY (1, 1) NOT NULL,
    [RazaoSocial] NVARCHAR (200) NOT NULL,
    [Logradouro]  NVARCHAR (200) NULL,
    [Numero]      NVARCHAR (20)  NULL,
    [Complemento] NVARCHAR (100) NULL,
    [Bairro]      NVARCHAR (100) NULL,
    [Cidade]      NVARCHAR (100) NULL,
    [CEP]         VARCHAR (9)    NULL,
    [UF]          CHAR (2)       NULL,
    [Email]       NVARCHAR (256) NULL,
    [DDD]         CHAR (2)       NULL,
    [Telefone]    VARCHAR (20)   NULL,
    [CNPJ]        VARCHAR (18)   NULL,
    PRIMARY KEY CLUSTERED ([IdCliente] ASC),
    CONSTRAINT [UQ_Clientes_CNPJ] UNIQUE NONCLUSTERED ([CNPJ] ASC)
);


GO

