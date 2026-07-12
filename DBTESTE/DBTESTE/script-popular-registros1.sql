-- Script: Inserir 30 registros de teste (IdCliente 21-50) em dbo.Clientes
-- Revise antes de executar e confirme a base de dados alvo.

BEGIN TRY
    SET XACT_ABORT ON;
    BEGIN TRAN;

    IF NOT EXISTS (
        SELECT 1
        FROM sys.tables t
        JOIN sys.schemas s ON t.schema_id = s.schema_id
        WHERE s.name = 'dbo' AND t.name = 'Clientes'
    )
    BEGIN
        THROW 50000, 'Tabela dbo.Clientes não existe na base de dados atual.', 1;
    END

    DECLARE @isIdentity INT = COLUMNPROPERTY(OBJECT_ID('dbo.Clientes'), 'IdCliente', 'IsIdentity');

    IF @isIdentity = 1
        SET IDENTITY_INSERT dbo.Clientes ON;

    INSERT INTO dbo.Clientes
    (
      IdCliente, RazaoSocial, Logradouro, Numero, Complemento,
      Bairro, Cidade, CEP, UF, Email, DDD, Telefone, CNPJ
    )
    VALUES
    (21, N'Empresa VinteUm Ltda',    N'Rua Verde',          N'21',  N'',        N'Vila',          N'São Paulo', N'01121-000', N'SP', N'v21@exemplo.com', N'11', N'2121-2121', N'21.212.121/0001-21'),
    (22, N'Empresa VinteDois ME',     N'Av. Laranja',        N'22',  N'',        N'Jardim Laranja', N'Rio de Janeiro', N'22222-000', N'RJ', N'v22@exemplo.com', N'21', N'2222-2223', N'22.222.222/0001-22'),
    (23, N'Empresa VinteTres SA',     N'Praça Azul',         N'23',  N'Loja 2',  N'Centro',        N'Curitiba',   N'80300-000', N'PR', N'v23@exemplo.com', N'41', N'2323-2323', N'23.233.233/0001-23'),
    (24, N'Empresa VinteQuatro',      N'Rua Amarela',        N'24',  N'Apto 4',  N'Bela Vista',    N'Belo Horizonte', N'30400-000', N'MG', N'v24@exemplo.com', N'31', N'2424-2424', N'24.244.244/0001-24'),
    (25, N'Empresa VinteCinco',       N'Av. Marrom',         N'25',  N'Andar 3', N'Centro',        N'Fortaleza',  N'60025-000', N'CE', N'v25@exemplo.com', N'85', N'2525-2525', N'25.255.255/0001-25'),
    (26, N'Empresa VinteSeis',        N'Rua Rosa',           N'26',  N'',        N'Santa Rosa',    N'Porto Alegre', N'90026-000', N'RS', N'v26@exemplo.com', N'51', N'2626-2626', N'26.266.266/0001-26'),
    (27, N'Empresa VinteSete',        N'Av. das Nações',     N'27',  N'Galpão 7',N'Industrial',    N'Recife',     N'50027-000', N'PE', N'v27@exemplo.com', N'81', N'2727-2727', N'27.277.277/0001-27'),
    (28, N'Empresa VinteOito',        N'Rua do Comércio',    N'28',  N'Box 8',   N'Mercado',       N'Salvador',   N'40028-000', N'BA', N'v28@exemplo.com', N'71', N'2828-2828', N'28.288.288/0001-28'),
    (29, N'Empresa VinteNove',        N'Rua Leste',          N'29',  N'Sala 3',  N'Centro',        N'Brasília',   N'70029-000', N'DF', N'v29@exemplo.com', N'61', N'2929-2929', N'29.299.299/0001-29'),
    (30, N'Empresa Trinta',           N'Av. Norte',          N'30',  N'',        N'Parque',        N'Campinas',   N'13030-000', N'SP', N'v30@exemplo.com', N'19', N'3030-3030', N'30.303.303/0001-30'),
    (31, N'Empresa TrintaUm',         N'Rua Sul',            N'31',  N'Casa',    N'Jardim',        N'Ribeirão Preto', N'14031-000', N'SP', N'v31@exemplo.com', N'16', N'3131-3131', N'31.313.313/0001-31'),
    (32, N'Empresa TrintaDois',       N'Av. Litoral',        N'32',  N'Doca',    N'Portuário',     N'Belém',      N'66032-000', N'PA', N'v32@exemplo.com', N'91', N'3232-3232', N'32.323.323/0001-32'),
    (33, N'Empresa TrintaTres',       N'Rua das Flores',     N'33',  N'',        N'Praia',         N'Vitoria',    N'29033-000', N'ES', N'v33@exemplo.com', N'27', N'3333-3333', N'33.333.333/0001-33'),
    (34, N'Empresa TrintaQuatro',     N'Av. do Sol',         N'34',  N'Estúdio', N'Boêmio',        N'Florianópolis', N'88034-000', N'SC', N'v34@exemplo.com', N'48', N'3434-3434', N'34.343.343/0001-34'),
    (35, N'Empresa TrintaCinco',      N'Rua das Indústrias', N'35',  N'Salão',   N'Industrial',    N'Goiânia',    N'74035-000', N'GO', N'v35@exemplo.com', N'62', N'3535-3535', N'35.353.353/0001-35'),
    (36, N'Empresa TrintaSeis',       N'Av. Universitária',  N'36',  N'Bloco B', N'Universitário',  N'São José',   N'88136-000', N'SC', N'v36@exemplo.com', N'48', N'3636-3636', N'36.363.363/0001-36'),
    (37, N'Empresa TrintaSete',       N'Rua das Finanças',   N'37',  N'Andar 7', N'Financeiro',    N'Manaus',     N'69037-000', N'AM', N'v37@exemplo.com', N'92', N'3737-3737', N'37.373.373/0001-37'),
    (38, N'Empresa TrintaOito',       N'Av. da Comunicação',  N'38',  N'Pav. 3',  N'Tecnologia',    N'Natal',      N'59038-000', N'RN', N'v38@exemplo.com', N'84', N'3838-3838', N'38.383.383/0001-38'),
    (39, N'Empresa TrintaNove',       N'Rua da Estratégia',  N'39',  N'Sala 1',  N'Empresarial',    N'João Pessoa',N'58039-000', N'PB', N'v39@exemplo.com', N'83', N'3939-3939', N'39.393.393/0001-39'),
    (40, N'Empresa Quarenta',         N'Rod. Central',       N'40',  N'Sítio',   N'Rural',         N'Uberlândia', N'38440-000', N'MG', N'v40@exemplo.com', N'34', N'4040-4040', N'40.404.404/0001-40'),
    (41, N'Empresa QuarentaUm',       N'Av. das Flores',     N'41',  N'',        N'Vila Nova',     N'São Paulo',  N'01141-000', N'SP', N'v41@exemplo.com', N'11', N'4141-4141', N'41.414.414/0001-41'),
    (42, N'Empresa QuarentaDois',     N'Rua do Comércio',    N'42',  N'Loja 4',  N'Centro',        N'Salvador',   N'40042-000', N'BA', N'v42@exemplo.com', N'71', N'4242-4242', N'42.424.424/0001-42'),
    (43, N'Empresa QuarentaTres',     N'Av. Horizonte',      N'43',  N'Andar 2', N'Parque',        N'Campinas',   N'13043-000', N'SP', N'v43@exemplo.com', N'19', N'4343-4343', N'43.434.434/0001-43'),
    (44, N'Empresa QuarentaQuatro',   N'Rua Nova',           N'44',  N'Apto 9',  N'Jardim',        N'Ribeirão Preto', N'14044-000', N'SP', N'v44@exemplo.com', N'16', N'4444-4444', N'44.444.444/0001-44'),
    (45, N'Empresa QuarentaCinco',    N'Av. Porto',          N'45',  N'Doca 2',  N'Portuário',     N'Belém',      N'66045-000', N'PA', N'v45@exemplo.com', N'91', N'4545-4545', N'45.454.454/0001-45'),
    (46, N'Empresa QuarentaSeis',     N'Rua do Lago',        N'46',  N'',        N'Praia',         N'Vitoria',    N'29046-000', N'ES', N'v46@exemplo.com', N'27', N'4646-4646', N'46.464.464/0001-46'),
    (47, N'Empresa QuarentaSete',     N'Av. Serrana',        N'47',  N'Casa 1',  N'Boêmio',        N'Florianópolis', N'88047-000', N'SC', N'v47@exemplo.com', N'48', N'4747-4747', N'47.474.474/0001-47'),
    (48, N'Empresa QuarentaOito',     N'Rua do Norte',       N'48',  N'Andar 1', N'Eventos',       N'Goiânia',    N'74048-000', N'GO', N'v48@exemplo.com', N'62', N'4848-4848', N'48.484.484/0001-48'),
    (49, N'Empresa QuarentaNove',     N'Av. do Saber',       N'49',  N'Bloco C', N'Universitário',  N'São José',   N'88149-000', N'SC', N'v49@exemplo.com', N'48', N'4949-4949', N'49.494.494/0001-49'),
    (50, N'Empresa Cinquenta',        N'Rod. do Campo',      N'50',  N'Sítio 5', N'Rural',         N'Uberlândia', N'38450-000', N'MG', N'v50@exemplo.com', N'34', N'5050-5050', N'50.505.505/0001-50');

    IF @isIdentity = 1
        SET IDENTITY_INSERT dbo.Clientes OFF;

    COMMIT TRAN;
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0
        ROLLBACK TRAN;

    THROW;
END CATCH;
GO