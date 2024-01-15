--ASCII Exemplo
--
	select ASCII('SQL')
	select ASCII('S')
	select ASCII('Q')
	select ASCII('L')

/*O exemplo a seguir sup e um conjunto de caracteres ASCII e retorna o valor 
ASCII e o caractere CHAR para cada caractere na cadeia de 
caracteres da frase  TEste*/
	DECLARE @posicao INT, 
	@string CHAR(5);
	-- Initialize the variables.
	SET @posicao = 1;
	SET @string = 'TEste';
		WHILE @posicao <= Datalength(@string)  
			BEGIN  
				SELECT Ascii(Substring(@string, @posicao, 1))cod_ascii,
				Char(Ascii(Substring(@string, @posicao, 1)))
				SET @posicao = @posicao + 1  
			END;

--select Ascii(Substring('Ola Mundo', 1, 1))
			
--LTRIM
--Retorna uma express o de caractere depois de remover espa os em branco   esquerda

	DECLARE @string_to_trim VARCHAR(60);
	SET @string_to_trim ='     Cinco espa os no inicio.';
	SELECT  'Texto sem espa o:'+Ltrim(@string_to_trim); 
	SELECT  'Texto Com espa o:'+@string_to_trim; 

--STR

--Exemplo Retorna dados de caractere convertidos de dados num ricos.

SELECT  Str(123.45, 6, 1);
--Prova de conversao de numerico para caractere
SELECT 'Teste '+Str(123.45, 6, 1);
--sumila erro
SELECT 'Teste '+123.45;


/*Quando a express o excede o comprimento especificado, a cadeia de 
caracteres retorna ** para o comprimento especificado*/

SELECT Str(123.45, 2, 2); 

--CONCAT
/*Retorna uma cadeia de caracteres que   o resultado da concatena o de dois ou mais valores*/
 


SELECT Concat(CURRENT_USER, 
               ' Seu Saldo   R$', 
			   11.00, 
			   ' em ',
               day(getdate()),'/',
			   month(getdate()),'/',
			   year(getdate())) AS Resultado;

--Simulando erro com
SELECT CURRENT_USER+ 
               ' Seu Saldo   R$'+ 
			   11.00+
			   ' em '+
               day(getdate())+'/'+
			   month(getdate())+'/'+
			   year(getdate())AS Resultado;


--CONCAT_WS 
--Separa e retornar valores de cadeia de caracteres concatenados com o delimitador especificado ]
--no argumento da primeira fun o.
--Aten o ignora valores null 
USE crm;

SELECT CONCAT_WS('|',a.primeiro_nome,a.ultimo_nome,a.email,a.nascimento,a.sexo)
 from cliente a;

--exemplo
use curso
--select a.id_aluno,a.nome,b.id_disciplina,c.nome_disc,b.periodo from alunos a
--select CONCAT_WS('|',a.id_aluno,a.nome,b.id_disciplina,c.nome_disc,b.periodo) from alunos a
select CONCAT_WS('|',a.id_aluno,a.nome,
                  isnull(b.id_disciplina,''),
                  isnull(c.nome_disc,''),
                  isnull(b.periodo,'sem period')) from alunos a
left join matricula b
on a.id_aluno=b.id_aluno
left join disciplina c
on b.id_disciplina=c.id_disciplina;

--REPLACE
/*Substitui todas as ocorr ncias de um valor da cadeia de caracteres 
especificado por outro valor de cadeia de caracteres*/
--O exemplo a seguir substitui a cadeia de caracteres cde em abcdefghi por xxx.
	
	SELECT 'abcdefghicde' de,
		Replace('abcdefghicde', 'cde', 'xxx') para

--O exemplo a seguir substitui a cadeia de caracteres cde em teste por producao.
SELECT  'Isto  teste' de,
		Replace('Isto  teste', 'teste', 'producao')para;

--REPLACE NO SELECT
	use curso
	SELECT REGIAO,
		REPLACE(REGIAO,'Sul','South') 
		FROM regiao

--Exemplo de Update usando replace.

CREATE TABLE pessoas  
	(nome VARCHAR(30)
	)
--inserindo registros
	INSERT INTO pessoas VALUES ('Jos ') 
	INSERT INTO pessoas VALUES ('Andr ') 
	INSERT INTO pessoas VALUES('Helem') 
--verificando registros

select * from pessoas
--
UPDATE pessoas SET nome=replace(nome, ' ', 'e');

--REPLICATE
--Repete um valor da cadeia de caracteres um n mero especificado de vezes
/*O exemplo a seguir replica um caractere 0 quatro vezes na frente de um c digo 
de linha de produ o no banco de dados*/
    use AdventureWorks2017
	SELECT name,
	       productline,
		   Replicate('0', 4) + productline AS 'Codigo'
	FROM Production.product 
	WHERE productline = 'T'
	ORDER BY name

/*Usando REPLICATE e DATALENGTH
O exemplo a seguir preenche n meros   esquerda at  um comprimento especificado, 
  medida que s o convertidos de um tipo de dados num rico em caractere ou Unicode.*/



--LEFT
--Retorna a parte da esquerda de uma cadeia de caracteres com o n mero de caracteres especificado.

	use AdventureWorks2017
	SELECT  NAME,
			LEFT(NAME, 5)
	FROM production.product 
	ORDER BY productid;

--UPPER
--Retorna uma express o de caractere com dados de caractere em min sculas convertidos em mai sculas
	use curso
	SELECT estado, 
		   upper(estado) 
	from regiao

--SUBSTRING
--Retorna uma substring de caractere com dados de caractere dento do par metro informado
use AdventureWorks2017
	SELECT lastname nome,
		   Substring(lastname, 1, 3) lastname1,
		   Substring(lastname, 4, 10) lastname2 
	FROM person.person 
	ORDER BY lastname; 

--REVERSE
--Retorna a ordem inversa de um valor da cadeia de caracteres.

	SELECT firstname,
		   Reverse(firstname) AS Reverse 
		   FROM person.person 
   WHERE businessentityid < 5 
   ORDER BY firstname

--LEN
--Retorna o n mero de caracteres da express o da cadeia de caracteres especificada, 
--excluindo espa os em branco   direita
	SELECT  firstname,
			Len(firstname) AS Tamanho  	        
   FROM sales.vindividualcustomer 
   WHERE countryregionname = 'Australia'; 
 
--DATALENGTH
--Retorna o n mero de bytes usado para representar qualquer express o
	SELECT NAME,
			Datalength(NAME)as data  	   
	FROM production.product 
	ORDER BY NAME;

--Comparando Datalength com Len
SELECT NAME,
		Datalength(NAME)as Datalength,
  Len(NAME)as len		   
	FROM production.product 
	ORDER BY NAME


use curso
--drop table t1
CREATE TABLE t1  
	(  c1 VARCHAR(3),
			c2 CHAR(3),
			c3 NVARCHAR(3)  
	 );

INSERT INTO t1 VALUES ('2','2','2') 
INSERT INTO t1 VALUES ('37','37','37') 
INSERT INTO t1 VALUES ('597','597','597')

--select * from t1
--drop table t1
SELECT c1,
       c2,
	   c3,
	   Datalength(c1)dtlc1,
	   Datalength(c2)dtlc2,
	   Datalength(c3)dtlc3
	   FROM t1;


--RIGHT
--Retorna a parte da direita de uma cadeia de caracteres com o n mero de caracteres especificado
use curso
	SELECT a.estado,
		   RIGHT(estado, 5) AS 'Estado'
	FROM regiao a
	
--LOWER
--Retorna uma express o de caractere depois de converter 
--para min sculas os dados de caracteres em mai sculas
--O exemplo a seguir usa a fun o LOWER, a fun o UPPER, 
--e aninha a fun o UPPER dentro da fun o LOWER selecionando 
--nomes de produtos com pre os entre US$ 11 e US$ 20. 
--Este exemplo usa o banco de dados AdventureWorks2014

use AdventureWorks2017
	SELECT Substring(NAME, 1, 20)name,
		   Lower(Substring(NAME, 1, 20)) AS Lower,
		   Upper(Substring(NAME, 1, 20)) AS Upper,
		   Lower(Upper(Substring(NAME, 1, 20))) AS LowerUpper 
   FROM production.product 
   WHERE listprice BETWEEN 11.00 AND 20.00; 

--RTRIM
--Retorna uma cadeia de caracteres depois de truncar todos os espa os em branco   direita
--EXEMPLO SIMPLES
SELECT Rtrim('Removendo espa os. ');

--EXEMPLO 2
	DECLARE @string_to_trim VARCHAR(60);
	SET @string_to_trim ='Deixamos 4 espacos apos final da senten a.    ';
	SELECT @string_to_trim + ' proxima string.';
	SELECT Rtrim(@string_to_trim) + ' proxima string.'


