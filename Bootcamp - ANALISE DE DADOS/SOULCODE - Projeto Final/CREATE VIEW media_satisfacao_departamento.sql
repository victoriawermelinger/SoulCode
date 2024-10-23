CREATE VIEW media_satisfacao_departamento AS
SELECT 
    AVG(S.Pesquisa_de_Satisfa��o) AS MEDIA_PESQUISA,
    F.DEPARTAMENTO
FROM 
    Satisfacao_tratado_virgula S 
INNER JOIN  
    Funcionarios_tratados_virgula F ON S.ID_do_Funcion�rio = F.ID_do_Funcion�rio
GROUP BY 
    F.DEPARTAMENTO


	