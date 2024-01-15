
--DML UPDATE
	UPDATE funcionarios SET salario = '1500'
	WHERE id = '1';

--OU Aumento de 50% sobre Sal�rio atual.
	UPDATE funcionarios SET salario = salario*1.5
	WHERE id = '1';

--exemplo update com mais de um campo
	UPDATE funcionarios SET salario = salario*1.5, setor='TI'
	WHERE id <> '1';