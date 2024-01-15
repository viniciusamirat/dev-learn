use curso;

CREATE TABLE DIM_DATA(
    ID_DIM_DATA INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    DATA DATE NOT NULL,
    ANO SMALLINT NOT NULL,
    MES SMALLINT NOT NULL,
    DIA SMALLINT NOT NULL,
    DIA_SEMANA SMALLINT NOT NULL,
    DIA_ANO SMALLINT NOT NULL,
    ANO_BISSEXTO CHAR(1) NOT NULL,
    DIA_UTIL CHAR(1) NOT NULL,
    FIM_SEMANA CHAR(1) NOT NULL,
    FERIADO CHAR(1) NOT NULL,
    NOME_FERIADO VARCHAR(30) NULL,
    NOME_DIA_SEMANA VARCHAR(15) NOT NULL,
    NOME_DIA_SEMANA_ABREV CHAR(3) NOT NULL,
    NOME_MES VARCHAR(15) NOT NULL,
    NOME_MES_ABREV CHAR(3) NOT NULL,
    QUINZENA SMALLINT NOT NULL,
    BIMESTRRE SMALLINT NOT NULL,
    TRIMESTRE SMALLINT NOT NULL,
    SEMESTRE SMALLINT NOT NULL,
    NR_SEMANA_MES SMALLINT NOT NULL,
    NR_SEMANA_ANO SMALLINT NOT NULL,
    ESTACAO_ANO VARCHAR(15) NOT NULL,
    DATA_POR_EXTENSO VARCHAR(50) NOT NULL,
    EVENTO VARCHAR(50) NULL
)


DECLARE @dataInicial date,
        @dataFinal date,
        @data date,
        @ano smallint,
        @mes smallint,
        @dia smallint,
        @diaSemana smallint,
        @diaUtil char(1),
        @fimSemana char(1),
        @feriado char(1),
        @preFeriado char(1),
        @posFeriado char(1),
        @nomeFeriado varchar(30),
        @nomeDiaSemana varchar(15),
        @nomeDiaSemanaAbrev char(3),
        @nomeMes varchar(15),
        @nomeMesAbrev char(3),
        @bimestre smallint,
        @trimestre smallint,
        @semestre smallint,
        @nrSemanaMes smallint,
        @estacaoAno varchar(15),
        @dataPorExtenso varchar(50);

-- periodo que quero criar os dados
set @dataInicial = '01/01/2012';
set @dataFinal = '31/12/2030';

WHILE @dataInicial <= @dataFinal
    BEGIN
        set @data = @dataInicial
        set @ano = year(@data)
        set @mes = month(@data)
        set @dia = day(@data)
        set @diaSemana = Datepart(weekday, @data)

        if @diaSemana in (1,7)
            set @fimSemana = 'S'
        else 
            set @fimSemana = 'N'
        
        --feriados

        if (@mes = 1 and @dia = 1) or (@mes = 12 and @dia = 31)
            set @nomeFeriado = 'confraternização universal'
        else if (@mes = 4 and @dia = 21)
            set @nomeFeriado = 'Tiradentes'
        else if (@mes = 5 and @dia = 1)
            set @nomeFeriado = 'Dia do trabalho'
        else if (@mes = 9 and @dia = 7)
            set @nomeFeriado = 'Independência do Brasil'
        else if(@mes = 12 and @dia = 25)
            set @nomeFeriado = 'Natal'
        else 
            set @nomeFeriado = null
        

        if (@mes = 1 and @dia = 1) or (@mes = 12 and @dia = 31) OR
        (@mes = 4 and @dia = 21) OR
        (@mes = 5 and @dia = 1) OR 
        (@mes = 9 and @dia = 7) OR
        (@mes = 12 and @dia = 25)
            SET @feriado = 'S'
        else 
            set @feriado = 'N'
        


        set @nomeMes = case when @mes = 1 then 'janeiro'
                            when @mes = 2 then 'fevereiro'
                            when @mes = 3 then 'março'
                            when @mes = 4 then 'abril'
                            when @mes = 5 then 'maio'
                            when @mes = 6 then 'junho'
                            when @mes = 7 then 'julho'
                            when @mes = 8 then 'agosto'
                            when @mes = 9 then 'setembo'
                            when @mes = 10 then 'outubro'
                            when @mes = 11 then 'novembro'
                            when @mes = 12 then 'dezembro'
                        end;
        
        set @nomeMesAbrev = case when @mes = 1 then 'jan'
                                when @mes = 2 then 'fev'
                                when @mes = 3 then 'mar'
                                when @mes = 4 then 'abr'
                                when @mes = 5 then 'mai'
                                when @mes = 6 then 'jun'
                                when @mes = 7 then 'jul'
                                when @mes = 8 then 'ago'
                                when @mes = 9 then 'set'
                                when @mes = 10 then 'out'
                                when @mes = 11 then 'nov'
                                when @mes = 12 then 'dez'
                            end;

        if @fimSemana = 'S' or @feriado = 'S'
            BEGIN
                SET @diaUtil = 'N'
            END
        ELSE 
            BEGIN
                SET @diaUtil = 'S'
            END
        
        set @nomeDiaSemana = case when @diaSemana = 1 then 'domingo'
                                    when @diaSemana = 2 then 'segunda-feira'
                                    when @diaSemana = 3 then 'ter�a-feira'
                                    when @diaSemana = 4 then 'quarta-feira'
                                    when @diaSemana = 5 then 'quinta-feira'
                                    when @diaSemana = 6 then 'sexta-feira'
        else 's�bado' end

        set @nomeDiaSemanaAbrev = case when @diaSemana = 1 then 'dom'
                                        when @diaSemana = 2 then 'seg'
                                        when @diaSemana = 3 then 'ter'
                                        when @diaSemana = 4 then 'qua'
                                        when @diaSemana = 5 then 'qui'
                                        when @diaSemana = 6 then 'sex'
        else 's�b' end

        set @bimestre = case when @mes in (1,2) then 1
                            when @mes in (3,4) then 2
                            when @mes in (5,6) then 3
                            when @mes in (7,8) then 4
                            when @mes in (9,10) then 5
        else 6 end

        set @trimestre = case when @mes in (1,2,3) then 1
                            when @mes in (4,5,6) then 2
                            when @mes in (7,8,9) then 3
        else 4 end

        set @nrSemanaMes = case when @dia < 8 then 1
                                when @dia < 15 then 2
                                when @dia < 22 then 3
                                when @dia < 29 then 4
        else 5 end
        --20 Mar 2017 - outono
        --21 Jun 2017 - inverno
        --22 Set 2017 - primavera
        --21 Dez 2017 - verao

        if @data between cast('23/09/'+convert(char(4),@ano) as date) 
            and cast('20/12/'+convert(char(4),@ano) as date)
            set @estacaoAno = 'primavera'
        else if @data between cast('21/03/'+convert(char(4),@ano) as date) 
        and cast('20/06/'+convert(char(4),@ano) as date)
            set @estacaoAno = 'outono'
        else if @data between cast('21/06/'+convert(char(4),@ano) as date) 
        and cast('22/09/'+convert(char(4),@ano) as date)
            set @estacaoAno = 'inverno'
        else -- @data between 21/12 e 20/03
            set @estacaoAno = 'ver�o'

        INSERT INTO DIM_DATA
        SELECT @data
            ,@ano
            ,@mes
            ,@dia
            ,@diaSemana
            ,datepart(dayofyear,@data) --DIA_ANO
            ,case when (@ano % 4) = 0 then 'S' else 'N' end -- ANO_BISSEXTO
            ,@diaUtil
            ,@fimSemana
            ,@feriado
            ,@nomeFeriado
            ,@nomeDiaSemana
            ,@nomeDiaSemanaAbrev
            ,@nomeMes
            ,@nomeMesAbrev
            ,case when @dia < 16 then 1 else 2 end -- QUINZENA
            ,@bimestre
            ,@trimestre
            ,case when @mes < 7 then 1 else 2 end -- SEMESTRE
            ,@nrSemanaMes
            ,datepart(wk,@data)--NR_SEMANA_ANO, smallint
            ,@estacaoAno
            ,lower(@nomeDiaSemana + ', ' + cast(@dia as varchar) + ' de ' + @nomeMes + ' de ' + cast(@ano as varchar))
            ,null--EVENTO, varchar(50))

        set @dataInicial = dateadd(day,1,@dataInicial) 
    end


        --SELECT  * from DIM_DATA


