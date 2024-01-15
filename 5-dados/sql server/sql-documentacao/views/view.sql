use AdventureWorks2017;

--criando uma view
CREATE VIEW v_data_contratacao
AS
    SELECT p.firstname,
            p.lastname.
            e.businessentityid,
            e.hiredate,
            FROM humanresources.employee e
            JOIN person.person AS p
ON e.businessentityid = p.businessentityid;

-- pesquisando ela
SELECT * FROM v_data_contratacao
WHERE year(hiredate) = '2009';


--alterando a os campos da view (não os dados, os campos)
ALTER VIEW v_data_contratacao
AS
    SELECT p.firstname,
            p.lastname.
            e.businessentityid,
            e.hiredate,
            FROM humanresources.employee e
            JOIN person.person AS p
ON e.businessentityid = p.businessentityid;
