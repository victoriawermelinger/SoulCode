-- USE TNT_RH


SELECT count(A.Motivo_da_Aus�ncia) as motivo_saida,
a.Motivo_da_Aus�ncia as nome 
FROM Ausencia A 
FULL JOIN Funcionarios_tratados_virgula F ON A.ID_do_Funcion�rio = f.ID_do_Funcion�rio
group by a.Motivo_da_Aus�ncia


select count(Plano_de_Sa�de) as PLANO_DE_SA�DE 
from Beneficios_tratados_virgula
GROUP BY Plano_de_Sa�de 

SELECT COUNT(Cargo) AS CARGO,
Departamento
FROM Funcionarios_tratados_virgula
GROUP BY Departamento

SELECT Departamento, 
SUM(Sal�rio) AS SALARIO_SOMADO
FROM Funcionarios_tratados_virgula
GROUP BY Departamento


SELECT AVG(Sal�rio) AS MEDIA_SALARIO,
Departamento
FROM Funcionarios_tratados_virgula
GROUP BY Departamento


SELECT AVG(S.Pesquisa_de_Satisfa��o)as MEDIA_PESQUISA,
F.DEPARTAMENTO
FROM Satisfacao_tratado_virgula S INNER JOIN  Funcionarios_tratados_virgula F ON S.ID_do_Funcion�rio = f.ID_do_Funcion�rio
GROUP BY Departamento


