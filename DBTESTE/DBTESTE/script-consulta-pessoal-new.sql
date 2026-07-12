/********************************************************************************
*   Autor   : João Fabel
*   Data    : 09/06/2026
*   Objetivo: Consultar o cadastro de pessoas (Família)
********************************************************************************/

SELECT ps.IdPessoa,
       ps.Nome,
       ps.CPF,
       FORMAT(ps.DataNasc, 'dd/MM/yyyy') AS DataNasc
FROM   dbo.Pessoas AS ps WITH (NOLOCK)
WHERE  ps.DataNasc IS NOT NULL
--AND  ps.CPF      IS NOT NULL
  AND  ps.IdPessoa > 0
ORDER  BY ps.DataNasc;