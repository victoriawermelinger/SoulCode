CREATE VIEW controle_funcionario as 
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
    F.DEPARTAMENTO;
