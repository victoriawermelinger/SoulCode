-- USE TNT_RH

SELECT COUNT(Nome)
FROM Funcionarios_tratados_virgula

SELECT
    COUNT(F.NOME) AS FUNCIONARIOS,
    COUNT(CASE WHEN A.Motivo_da_Sa�da IS NOT NULL THEN 1 END) AS FUNCIONARIOS_DESLIGADOS,
    COUNT(CASE WHEN A.Motivo_da_Sa�da IS NULL THEN F.NOME END) AS FUNCIONARIOS_ATIVOS
FROM Funcionarios_tratados_virgula F 
LEFT JOIN Ausencia A ON A.ID_do_Funcion�rio = F.ID_do_Funcion�rio


SELECT 
    F.DEPARTAMENTO,
    COUNT(F.NOME) AS FUNCIONARIOS,
    COUNT(CASE WHEN A.Motivo_da_Sa�da IS NOT NULL THEN 1 END) AS FUNCIONARIOS_DESLIGADOS,
    COUNT(CASE WHEN A.Motivo_da_Sa�da IS NULL THEN F.NOME END) AS FUNCIONARIOS_ATIVOS
FROM 
    Funcionarios_tratados_virgula F 
LEFT JOIN 
    Ausencia A ON A.ID_do_Funcion�rio = F.ID_do_Funcion�rio
GROUP BY 
    F.DEPARTAMENTO

SELECT 
	F.G�NERO,
	COUNT(F.G�NERO) AS TOTAL_G�NERO,
    F.DEPARTAMENTO,
    COUNT(F.NOME) AS FUNCIONARIOS,
    COUNT(CASE WHEN A.Motivo_da_Sa�da IS NOT NULL THEN 1 END) AS FUNCIONARIOS_DESLIGADOS,
    COUNT(CASE WHEN A.Motivo_da_Sa�da IS NULL THEN F.NOME END) AS FUNCIONARIOS_ATIVOS
FROM 
    Funcionarios_tratados_virgula F 
LEFT JOIN 
    Ausencia A ON A.ID_do_Funcion�rio = F.ID_do_Funcion�rio
GROUP BY 
    F.DEPARTAMENTO, G�nero


SELECT 
	F.DEPARTAMENTO,
	SUM(B.Compensa��o_Anual_Total) AS SOMA_COMPENSA��O_ANUAL,
	AVG(B.Compensa��o_Anual_Total) as AVG_COMEPNSA��O_ANUAL
FROM Funcionarios_tratados_virgula F INNER JOIN Beneficios_tratados_virgula B ON F.ID_do_Funcion�rio = B.ID_do_Funcion�rio
GROUP BY DEPARTAMENTO


SELECT F.Departamento,
	AVG(S.Pesquisa_de_Satisfa��o) AS PESQUISA_SATISFA��O,
	AVG(F.Sal�rio) AS M�DIA_S�LARIO
FROM Funcionarios_tratados_virgula F INNER JOIN Satisfacao_tratado_virgula S ON F.ID_do_Funcion�rio = S.ID_do_Funcion�rio
GROUP BY DEPARTAMENTO


SELECT 
	F.CARGO,
	AVG(S.Pesquisa_de_Satisfa��o) AS PESQUISA_SATISFA��O,
	AVG(F.Sal�rio) AS M�DIA_S�LARIO
FROM Funcionarios_tratados_virgula F INNER JOIN Satisfacao_tratado_virgula S ON F.ID_do_Funcion�rio = S.ID_do_Funcion�rio
GROUP BY CARGO