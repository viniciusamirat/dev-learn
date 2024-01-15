 --Renomeando campo da tabela
 EXEC sp_rename 'TABELA_ORIGEM.CAMPO_ORIG', 'Campo_orig', 'COLUMN'

EXEC Sp_rename 'colaborador.endereco', 'ender', 'COLUMN'

--Renomeando Tabela
--EXEC sp_rename 'Nome Antigo', 'Nome Novo'
EXEC Sp_rename 'colaborador','FUNC';

EXEC Sp_rename 'FUNC','colaborador';