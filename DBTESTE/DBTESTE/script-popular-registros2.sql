-- Script: Popular dbo.Clientes com 20 registros de teste
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
    (21,  N'Cliente Alpha Ltda',     N'Rua das Flores',    N'100',  N'Sala 1',   N'Centro',     N'São Paulo',  N'01000-000', N'SP', N'alpha@exemplo.com',  N'11', N'1111-1111', N'11.111.111/0001-01'),
    (22,  N'Beta Comércio ME',       N'Avenida Brasil',     N'200',  N'',         N'Jardim',     N'Rio de Janeiro', N'20000-000', N'RJ', N'beta@exemplo.com',   N'21', N'2222-2222', N'22.222.222/0001-02'),
    (23,  N'Gama Indústria',         N'Praça Central',      N'300',  N'Loja A',   N'Bela Vista', N'Curitiba',   N'80000-000', N'PR', N'gama@exemplo.com',   N'41', N'3333-3333', N'33.333.333/0001-03'),
    (24,  N'Delta Serviços',         N'Rua 1',              N'10',   N'Apto 101', N'Vila Nova',  N'Belo Horizonte', N'30000-000', N'MG', N'delta@exemplo.com',  N'31', N'4444-4444', N'44.444.444/0001-04'),
    (25,  N'Epsilon Soluções',       N'Av. Central',        N'55',   N'Andar 2',  N'Centro',     N'Fortaleza',  N'60000-000', N'CE', N'epsilon@exemplo.com',N'85', N'5555-5555', N'55.555.555/0001-05'),
    (26,  N'Zeta Comércio',          N'Rua das Palmeiras',  N'78',   N'',         N'Santa Cruz', N'Porto Alegre', N'90000-000', N'RS', N'zeta@exemplo.com',   N'51', N'6666-6666', N'66.666.666/0001-06'),
    (27,  N'Eta Importações',        N'Av. do Trabalho',    N'123',  N'Galpão 3', N'Industrial', N'Recife',    N'50000-000', N'PE', N'eta@exemplo.com',    N'81', N'7777-7777', N'77.777.777/0001-07'),
    (28,  N'Theta Distribuidora',    N'Rua do Mercado',     N'90',   N'Box 5',    N'Mercado',     N'Salvador',   N'40000-000', N'BA', N'theta@exemplo.com',  N'71', N'8888-8888', N'88.888.888/0001-08'),
    (29,  N'Iota Tecnologia',        N'Rua Nova',           N'5',    N'Sala 10',  N'Centro',      N'Brasília',   N'70000-000', N'DF', N'iota@exemplo.com',   N'61', N'9999-9999', N'99.999.999/0001-09'),
    (20, N'Kappa Farmacêutica',     N'Av. Saúde',          N'410',  N'',         N'Parque',      N'Campinas',   N'13000-000', N'SP', N'kappa@exemplo.com',  N'19', N'1010-1010', N'10.101.010/0001-10'),
    (31, N'Lambda Construções',     N'Rua do Lazer',       N'220',  N'Casa',     N'Jardim América', N'Ribeirão Preto', N'14000-000', N'SP', N'lambda@exemplo.com', N'16', N'1112-1112', N'11.111.111/0001-11'),
    (32, N'Mu Transportes',         N'Av. Rodoviária',     N'7',    N'Patio',    N'Logística',   N'Belém',      N'66000-000', N'PA', N'mu@exemplo.com',     N'91', N'1212-1212', N'12.121.212/0001-12'),
    (33, N'Nu Alimentação',         N'Rua do Porto',       N'18',   N'Compart.', N'Portuário',   N'Vitoria',    N'29000-000', N'ES', N'nu@exemplo.com',     N'27', N'1313-1313', N'13.131.313/0001-13'),
    (34, N'Xi Design',              N'Rua do Arte',        N'88',   N'Estudio',  N'Boêmio',      N'Florianópolis', N'88000-000', N'SC', N'xi@exemplo.com',     N'48', N'1414-1414', N'14.141.414/0001-14'),
    (35, N'Omicron Eventos',        N'Av. Festas',         N'300',  N'Salão B',  N'Eventos',     N'Goiânia',    N'74000-000', N'GO', N'omicron@exemplo.com',N'62', N'1515-1515', N'15.151.515/0001-15'),
    (36, N'Pi Educação',            N'Rua do Saber',       N'44',   N'Bloco A',  N'Universitário', N'São José', N'88100-000', N'SC', N'pi@exemplo.com',     N'48', N'1616-1616', N'16.161.616/0001-16'),
    (37, N'Rho Seguros',            N'Av. Proteção',       N'11',   N'Andar 5',  N'Financeiro',  N'Manaus',     N'69000-000', N'AM', N'rho@exemplo.com',    N'92', N'1717-1717', N'17.171.717/0001-17'),
    (38, N'Sigma Telecom',          N'Rua da Comunicação', N'66',   N'Pav. 2',   N'Tecnologia',  N'Natal',      N'59000-000', N'RN', N'sigma@exemplo.com',  N'84', N'1818-1818', N'18.181.818/0001-18'),
    (39, N'Tau Consultoria',        N'Av. Estratégia',     N'9',    N'Sala 9',   N'Empresarial',  N'João Pessoa', N'58000-000', N'PB', N'tau@exemplo.com',    N'83', N'1919-1919', N'19.191.919/0001-19'),
    (30, N'Upsilon Agro',           N'Rod. Fazenda',       N'1000', N'Sítio',    N'Rural',       N'Uberlândia', N'38400-000', N'MG', N'upsilon@exemplo.com',N'34', N'2020-2020', N'20.202.020/0001-20');

    IF @isIdentity = 1
        SET IDENTITY_INSERT dbo.Clientes OFF;

    COMMIT TRAN;
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0
        ROLLBACK TRAN;

    DECLARE @ErrorNumber INT = ERROR_NUMBER();
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    DECLARE @ErrorState INT = ERROR_STATE();

    RAISERROR ('Erro %d: %s (Severity %d, State %d)', @ErrorSeverity, 1, @ErrorNumber, @ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;
GO