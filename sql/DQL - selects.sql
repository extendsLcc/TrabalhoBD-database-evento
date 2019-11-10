
--    `TABELA Y` INNER JOIN `TABELA X` ON `ID TABELA X` = `FK TABELA Y`

--    2.1) Lista com dados de todos os participantes cadastrados no respectivo evento;

--    TOTAL 15 para cada evento

-- id ou nome
SET @evento = 'setec';

SELECT pessoa.*, participante.email, grauinstrucao.nome as `Grau de Instrução`, instituicao.nome as `Instituição`, evento.nome AS evento
FROM pessoa 
INNER JOIN participante ON participante.Pessoa_idPessoa = pessoa.idPessoa 
INNER JOIN grauinstrucao ON grauinstrucao.idGrauInstrucao = participante.GrauInstrucao_idGrauInstrucao
INNER JOIN instituicao ON instituicao.idInstituicao = participante.Instituicao_idInstituicao
INNER JOIN inscricao ON inscricao.Participante_Pessoa_idPessoa = participante.Pessoa_idPessoa
INNER JOIN evento ON evento.idEvento = inscricao.Evento_idEvento
WHERE evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%');


--    2.2) Lista com o nome, e-mail e telefone dos participantes com pagamento de inscrição pendente para o evento;

--    TOTAL 8 sem pagamento

-- id ou nome
SET @evento = 'setec';

SELECT pessoa.nome, pessoa.telefone, participante.email, grauinstrucao.nome as `Grau de Instrução`, instituicao.nome as `Instituição`,
        atividade.titulo as `Atividade` , inscricaoatividade.dataPagamento, evento.nome AS evento
FROM pessoa
INNER JOIN participante ON participante.Pessoa_idPessoa = pessoa.idPessoa
INNER JOIN grauinstrucao ON grauinstrucao.idGrauInstrucao = participante.GrauInstrucao_idGrauInstrucao
INNER JOIN instituicao ON instituicao.idInstituicao = participante.Instituicao_idInstituicao
INNER JOIN inscricao ON inscricao.Participante_Pessoa_idPessoa = participante.Pessoa_idPessoa
INNER JOIN inscricaoatividade ON inscricaoatividade.Inscricao_idInscricao = inscricao.idInscricao
INNER JOIN atividade ON atividade.idAtividade = inscricaoatividade.Atividade_idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE inscricaoatividade.dataPagamento IS NULL
AND ( evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%') );


--    2.3) Obter uma lista com o número de participantes ativos (inscrição paga) agrupada por atividade do evento (listar todas as atividades mesmo as que não possuem inscrições);

-- id ou nome
SET @evento = 'brinfu';

SELECT evento.nome, atividade.titulo, atividade.limiteInscricoes AS `Número de Vagas`, 
    ( SELECT COUNT( inscricaoatividade.Atividade_idAtividade) 
        FROM inscricaoatividade 
        WHERE inscricaoatividade.Atividade_idAtividade=atividade.idAtividade ) AS `quantidade de Inscritos`
FROM atividade
LEFT JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade=atividade.idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%')
GROUP BY atividade.titulo;


--    2.4) Consultar qual atividade do evento tem o maior número de inscritos;

-- id ou nome
SET @evento = 'brinfu';

SELECT evento.nome, atividade.titulo, atividade.limiteInscricoes, 
    ( SELECT COUNT( inscricaoatividade.Atividade_idAtividade) 
        FROM inscricaoatividade 
        WHERE inscricaoatividade.Atividade_idAtividade=atividade.idAtividade ) AS quantidadeInscritos
FROM atividade
LEFT JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade=atividade.idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%')
GROUP BY atividade.titulo
ORDER BY quantidadeInscritos DESC
LIMIT 1;


--    2.5) Lista com o roteiro/sequencia das atividades selecionadas na inscrição por um participante em um evento;

-- id ou nome
SET @evento = 'brinfu';
-- id ou nome
SET @participante = 'edu';

SELECT evento.nome, tipoatividade.nome, atividade.titulo, atividade.data, CONCAT( sala.nome," - ", sala.numero ) AS sala, cargahoraria.duracao, pessoa.nome AS `Nome do Participante`, pessoa.cpf, pessoa.telefone, participante.email
FROM atividade
INNER JOIN sala ON sala.idSala = atividade.Sala_idSala
INNER JOIN tipoatividade ON tipoatividade.idTipoAtividade = atividade.TipoAtividade_idTipoAtividade
INNER JOIN cargahoraria ON cargahoraria.idCargaHoraria = atividade.CargaHoraria_idCargaHoraria
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
INNER JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade = atividade.idAtividade
INNER JOIN inscricao ON inscricao.idInscricao = inscricaoatividade.Inscricao_idInscricao
INNER JOIN participante ON participante.Pessoa_idPessoa = inscricao.Participante_Pessoa_idPessoa
INNER JOIN pessoa ON pessoa.idPessoa = participante.Pessoa_idPessoa
WHERE ( pessoa.idPessoa = @participante OR pessoa.nome LIKE CONCAT('%', @participante, '%') ) 
AND ( evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%') )
ORDER BY atividade.data;


-- 	2.6) Lista completa com a programação geral (em ordem cronológica) do evento, título e descrição das atividades, nome do palestrante, data e hora, local / sala;

-- id ou nome
SET @evento = 'setec';

SELECT evento.nome AS Evento, tipoatividade.nome AS `Tipo da atividade`, atividade.titulo AS `Atividade`,
		atividade.data AS `Data e Hora de inicio`, CONCAT( sala.nome," - ", sala.numero ) AS sala, local.nome AS `Local`, cargahoraria.duracao, pessoa.nome AS palestrante, atividade.descricao 
FROM atividade
INNER JOIN sala ON sala.idSala = atividade.Sala_idSala
INNER JOIN tipoatividade ON tipoatividade.idTipoAtividade = atividade.TipoAtividade_idTipoAtividade
INNER JOIN cargahoraria ON cargahoraria.idCargaHoraria = atividade.CargaHoraria_idCargaHoraria
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
INNER JOIN `local` ON local.idLocal = evento.Local_idLocal
INNER JOIN palestrante ON palestrante.Pessoa_idPessoa = atividade.Palestrante_Pessoa_idPessoa
INNER JOIN pessoa ON pessoa.idPessoa = palestrante.Pessoa_idPessoa
WHERE ( evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%') )
ORDER BY atividade.data;


-- 	2.7) Lista com informações das atividades que acontecerão em um determinado dia do evento;

-- id ou nome
SET @evento = 'brinfu';

SELECT evento.nome AS Evento, tipoatividade.nome AS `Tipo da atividade`, atividade.titulo AS `Atividade`,
		atividade.data, CONCAT( sala.nome," - ", sala.numero ) AS sala, local.nome AS `Local`, cargahoraria.duracao, pessoa.nome AS palestrante, atividade.descricao 
FROM atividade
INNER JOIN sala ON sala.idSala = atividade.Sala_idSala
INNER JOIN tipoatividade ON tipoatividade.idTipoAtividade = atividade.TipoAtividade_idTipoAtividade
INNER JOIN cargahoraria ON cargahoraria.idCargaHoraria = atividade.CargaHoraria_idCargaHoraria
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
INNER JOIN `local` ON local.idLocal = evento.Local_idLocal
INNER JOIN palestrante ON palestrante.Pessoa_idPessoa = atividade.Palestrante_Pessoa_idPessoa
INNER JOIN pessoa ON pessoa.idPessoa = palestrante.Pessoa_idPessoa
WHERE (evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%') )
AND DATE_FORMAT( atividade.data, '%Y %m %d' ) = DATE_FORMAT( '2018-09-03', '%Y %m %d' );
-- AND atividade.data BETWEEN '2018-09-03' AND '2018-09-09'


-- 	2.8) Lista com os dados completos de uma atividade (onde e quando ocorrerá, nome do palestrante, título e descrição da atividade);

-- id ou nome
SET @evento = 'setec';
--  nome do tipo da atividade, titulo da atividade, nome do palestrante ou id da atividade.
SET @PESQUISA = 'minicurso';

SELECT evento.nome AS Evento, tipoatividade.nome AS `Tipo da atividade`, atividade.titulo AS `Atividade`,
		atividade.data, CONCAT( sala.nome," - ", sala.numero ) AS sala, local.nome AS `Local`, cargahoraria.duracao, pessoa.nome AS palestrante, atividade.descricao 
FROM atividade
INNER JOIN sala ON sala.idSala = atividade.Sala_idSala
INNER JOIN tipoatividade ON tipoatividade.idTipoAtividade = atividade.TipoAtividade_idTipoAtividade
INNER JOIN cargahoraria ON cargahoraria.idCargaHoraria = atividade.CargaHoraria_idCargaHoraria
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
INNER JOIN `local` ON local.idLocal = evento.Local_idLocal
INNER JOIN palestrante ON palestrante.Pessoa_idPessoa = atividade.Palestrante_Pessoa_idPessoa
INNER JOIN pessoa ON pessoa.idPessoa = palestrante.Pessoa_idPessoa
WHERE ( evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%') )
AND (atividade.idAtividade = @PESQUISA OR atividade.titulo LIKE CONCAT('%', @PESQUISA, '%') 
		OR tipoatividade.nome LIKE CONCAT('%', @PESQUISA, '%')
        OR pessoa.nome LIKE CONCAT('%', @PESQUISA, '%')
        OR atividade.idAtividade = @PESQUISA )
ORDER BY atividade.data;


-- 2.9) Uma consulta que demonstre qual foi o total de arrecadação com as inscrições e o total de despesas de um determinado evento;

-- idEvento
SET @evento = 1;

SELECT 
    evento.nome, SUM(despesa.valor) AS `Total das despesas` , 
    ( 
        SELECT SUM( atividade.valor ) 
        FROM  atividade 
        INNER JOIN inscricaoatividade 
        ON inscricaoatividade.Atividade_idAtividade = atividade.idAtividade
        WHERE inscricaoatividade.dataPagamento IS NOT NULL 
        AND atividade.Evento_idEvento = @evento 
    )
    AS `total arrecadacao por inscrição`
FROM evento
INNER JOIN Despesa ON despesa.Evento_idEvento = evento.idEvento
WHERE evento.idEvento = @evento
GROUP BY evento.nome
ORDER BY `Total das despesas` DESC;

-- Helper Consulta todas as inscrições em atividades com a data de pagamento registrada e o valor de cada atividade
SET @evento = 1
SELECT atividade.titulo, atividade.valor, inscricaoatividade.dataPagamento
FROM  atividade 
INNER JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade = atividade.idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE inscricaoatividade.dataPagamento IS NOT NULL AND atividade.Evento_idEvento = @evento;


-- 	2.10) Lista com nome, função e contato de todos os organizadores vinculados a um evento; 

-- id ou nome
SET @evento = 'setec';

SELECT pessoa.nome, funcao.nome, pessoa.telefone
FROM organizador
INNER JOIN pessoa ON pessoa.idPessoa = organizador.Pessoa_idPessoa
INNER JOIN funcao ON funcao.idfuncao = organizador.Funcao_idFuncao
INNER JOIN evento ON evento.idEvento = organizador.Evento_idEvento
WHERE ( evento.idEvento = @evento OR evento.nome LIKE CONCAT('%', @evento, '%') );