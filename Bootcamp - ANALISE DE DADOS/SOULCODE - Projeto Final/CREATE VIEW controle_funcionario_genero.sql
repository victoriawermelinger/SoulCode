CREATE VIEW controle_funcionario_genero as
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