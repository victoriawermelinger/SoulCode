-- USE TNT_RH


SELECT count(A.Motivo_da_Ausência) as motivo_saida,
a.Motivo_da_Ausência as nome 
FROM Ausencia A 
FULL JOIN Funcionarios_tratados_virgula F ON A.ID_do_Funcionário = f.ID_do_Funcionário
group by a.Motivo_da_Ausência


select count(Plano_de_Saúde) as PLANO_DE_SAÚDE 
from Beneficios_tratados_virgula
GROUP BY Plano_de_Saúde 

SELECT COUNT(Cargo) AS CARGO,
Departamento
FROM Funcionarios_tratados_virgula
GROUP BY Departamento

SELECT Departamento, 
SUM(Salário) AS SALARIO_SOMADO
FROM Funcionarios_tratados_virgula
GROUP BY Departamento


SELECT AVG(Salário) AS MEDIA_SALARIO,
Departamento
FROM Funcionarios_tratados_virgula
GROUP BY Departamento


SELECT AVG(S.Pesquisa_de_Satisfação)as MEDIA_PESQUISA,
F.DEPARTAMENTO
FROM Satisfacao_tratado_virgula S INNER JOIN  Funcionarios_tratados_virgula F ON S.ID_do_Funcionário = f.ID_do_Funcionário
GROUP BY Departamento


