-- USE TNT_RH

SELECT COUNT(Nome)
FROM Funcionarios_tratados_virgula

SELECT
    COUNT(F.NOME) AS FUNCIONARIOS,
    COUNT(CASE WHEN A.Motivo_da_Saída IS NOT NULL THEN 1 END) AS FUNCIONARIOS_DESLIGADOS,
    COUNT(CASE WHEN A.Motivo_da_Saída IS NULL THEN F.NOME END) AS FUNCIONARIOS_ATIVOS
FROM Funcionarios_tratados_virgula F 
LEFT JOIN Ausencia A ON A.ID_do_Funcionário = F.ID_do_Funcionário


SELECT 
    F.DEPARTAMENTO,
    COUNT(F.NOME) AS FUNCIONARIOS,
    COUNT(CASE WHEN A.Motivo_da_Saída IS NOT NULL THEN 1 END) AS FUNCIONARIOS_DESLIGADOS,
    COUNT(CASE WHEN A.Motivo_da_Saída IS NULL THEN F.NOME END) AS FUNCIONARIOS_ATIVOS
FROM 
    Funcionarios_tratados_virgula F 
LEFT JOIN 
    Ausencia A ON A.ID_do_Funcionário = F.ID_do_Funcionário
GROUP BY 
    F.DEPARTAMENTO

SELECT 
	F.GÊNERO,
	COUNT(F.GÊNERO) AS TOTAL_GÊNERO,
    F.DEPARTAMENTO,
    COUNT(F.NOME) AS FUNCIONARIOS,
    COUNT(CASE WHEN A.Motivo_da_Saída IS NOT NULL THEN 1 END) AS FUNCIONARIOS_DESLIGADOS,
    COUNT(CASE WHEN A.Motivo_da_Saída IS NULL THEN F.NOME END) AS FUNCIONARIOS_ATIVOS
FROM 
    Funcionarios_tratados_virgula F 
LEFT JOIN 
    Ausencia A ON A.ID_do_Funcionário = F.ID_do_Funcionário
GROUP BY 
    F.DEPARTAMENTO, Gênero


SELECT 
	F.DEPARTAMENTO,
	SUM(B.Compensação_Anual_Total) AS SOMA_COMPENSAÇÃO_ANUAL,
	AVG(B.Compensação_Anual_Total) as AVG_COMEPNSAÇÃO_ANUAL
FROM Funcionarios_tratados_virgula F INNER JOIN Beneficios_tratados_virgula B ON F.ID_do_Funcionário = B.ID_do_Funcionário
GROUP BY DEPARTAMENTO


SELECT F.Departamento,
	AVG(S.Pesquisa_de_Satisfação) AS PESQUISA_SATISFAÇÃO,
	AVG(F.Salário) AS MÉDIA_SÁLARIO
FROM Funcionarios_tratados_virgula F INNER JOIN Satisfacao_tratado_virgula S ON F.ID_do_Funcionário = S.ID_do_Funcionário
GROUP BY DEPARTAMENTO


SELECT 
	F.CARGO,
	AVG(S.Pesquisa_de_Satisfação) AS PESQUISA_SATISFAÇÃO,
	AVG(F.Salário) AS MÉDIA_SÁLARIO
FROM Funcionarios_tratados_virgula F INNER JOIN Satisfacao_tratado_virgula S ON F.ID_do_Funcionário = S.ID_do_Funcionário
GROUP BY CARGO