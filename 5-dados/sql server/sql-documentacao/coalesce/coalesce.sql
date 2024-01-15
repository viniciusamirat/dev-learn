--retorna só o primeiro valor que for encontrado e que não for nulo
SELECT COALESCE(null, null, 'Terceiro valor', 'quarto valor');

--retorna um erro em tempo de execução
SELECT COALESCE(NULL, NULL, NULL, NULL, NULL);

