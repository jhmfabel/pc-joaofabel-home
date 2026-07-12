SELECT
    p.IdPessoa,
    UPPER(p.Nome) AS Nome,
    p.CPF,
    CONVERT(varchar(10), p.DataNasc, 103) AS DataNasc,
    DATEDIFF(year, p.DataNasc, CAST(GETDATE() AS date))
      - CASE WHEN DATEADD(year, DATEDIFF(year, p.DataNasc, CAST(GETDATE() AS date)), p.DataNasc) > CAST(GETDATE() AS date) THEN 1 ELSE 0 END AS Age
FROM dbo.Pessoas AS p
WHERE p.DataNasc IS NOT NULL
  AND (
    DATEDIFF(year, p.DataNasc, CAST(GETDATE() AS date))
      - CASE WHEN DATEADD(year, DATEDIFF(year, p.DataNasc, CAST(GETDATE() AS date)), p.DataNasc) > CAST(GETDATE() AS date) THEN 1 ELSE 0 END
  ) < 18
ORDER BY p.DataNasc DESC;