
--    `TABELA Y` INNER JOIN `TABELA X` ON `ID TABELA X` = `FK TABELA Y`

--    2.1) Lista com dados de todos os participantes cadastrados no respectivo evento;

--    TOTAL 15 para cada evento

SET @evento = 1;

SELECT pessoa.*, participante.email, evento.nome 
FROM pessoa 
INNER JOIN participante ON participante.Pessoa_idPessoa = pessoa.idPessoa 
INNER JOIN inscricao ON inscricao.Participante_Pessoa_idPessoa = participante.Pessoa_idPessoa
INNER JOIN evento ON evento.idEvento = inscricao.Evento_idEvento
WHERE idEvento=@evento


--    2.2) Lista com o nome, e-mail e telefone dos participantes com pagamento de inscrição pendente para o evento;

--    TOTAL 8 sem pagamento

SET @evento = 1;

SELECT pessoa.nome, pessoa.telefone, participante.email, atividade.titulo, inscricaoatividade.dataPagamento
FROM pessoa
INNER JOIN participante ON participante.Pessoa_idPessoa = pessoa.idPessoa
INNER JOIN inscricao ON inscricao.Participante_Pessoa_idPessoa = participante.Pessoa_idPessoa
INNER JOIN inscricaoatividade ON inscricaoatividade.Inscricao_idInscricao = inscricao.idInscricao
INNER JOIN atividade ON atividade.idAtividade = inscricaoatividade.Atividade_idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE inscricaoatividade.dataPagamento IS NULL
AND idEvento=@evento


--    2.3) Obter uma lista com o número de participantes ativos (inscrição paga) agrupada por atividade do evento (listar todas as atividades mesmo as que não possuem inscrições);

SET @evento = 1;

SELECT evento.nome, atividade.titulo, atividade.limiteInscricoes, 
    ( SELECT COUNT( inscricaoatividade.Atividade_idAtividade) 
        FROM inscricaoatividade 
        WHERE inscricaoatividade.Atividade_idAtividade=atividade.idAtividade ) AS quantidadeInscritos
FROM atividade
LEFT JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade=atividade.idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE idEvento = @evento
GROUP BY atividade.titulo


--    2.4) Consultar qual atividade do evento tem o maior número de inscritos;

SET @evento = 1;

SELECT evento.nome, atividade.titulo, atividade.limiteInscricoes, 
    ( SELECT COUNT( inscricaoatividade.Atividade_idAtividade) 
        FROM inscricaoatividade 
        WHERE inscricaoatividade.Atividade_idAtividade=atividade.idAtividade ) AS quantidadeInscritos
FROM atividade
LEFT JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade=atividade.idAtividade
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
WHERE evento.idEvento = @evento
GROUP BY atividade.titulo
ORDER BY quantidadeInscritos DESC
LIMIT 1


--    2.5) Lista com o roteiro/sequencia das atividades selecionadas na inscrição por um participante em um evento;

SET @evento = 1;
SET @participante = 1;

SELECT evento.nome, tipoatividade.nome, atividade.titulo, atividade.data, CONCAT( sala.nome," - ", sala.numero ) AS sala, cargahoraria.duracao, pessoa.nome, pessoa.cpf, pessoa.telefone, participante.email
FROM atividade
INNER JOIN sala ON sala.idSala = atividade.Sala_idSala
INNER JOIN tipoatividade ON tipoatividade.idTipoAtividade = atividade.TipoAtividade_idTipoAtividade
INNER JOIN cargahoraria ON cargahoraria.idCargaHoraria = atividade.CargaHoraria_idCargaHoraria
INNER JOIN evento ON evento.idEvento = atividade.Evento_idEvento
INNER JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade = atividade.idAtividade
INNER JOIN inscricao ON inscricao.idInscricao = inscricaoatividade.Inscricao_idInscricao
INNER JOIN participante ON participante.Pessoa_idPessoa = inscricao.Participante_Pessoa_idPessoa
INNER JOIN pessoa ON pessoa.idPessoa = participante.Pessoa_idPessoa
WHERE pessoa.idPessoa = @participante AND evento.idEvento = @evento
ORDER BY atividade.data


-- 	2.6) Lista completa com a programação geral (em ordem cronológica) do evento, título e descrição das atividades, nome do palestrante, data e hora, local / sala;

SET @evento = 1;

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
WHERE evento.idEvento = @evento
ORDER BY atividade.data


-- 	2.7) Lista com informações das atividades que acontecerão em um determinado dia do evento;

SET @evento = 1;

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
WHERE evento.idEvento = @evento
AND DATE_FORMAT( atividade.data, '%Y %m %d' ) = DATE_FORMAT( '2018-09-03', '%Y %m %d' )
-- AND atividade.data BETWEEN '2018-09-03' AND '2018-09-09'


-- 	2.8) Lista com os dados completos de uma atividade (onde e quando ocorrerá, nome do palestrante, título e descrição da atividade);

SET @evento = 1;
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
WHERE evento.idEvento = 1 
AND (atividade.idAtividade = @PESQUISA OR atividade.titulo LIKE CONCAT('%', @PESQUISA, '%') 
		OR tipoatividade.nome LIKE CONCAT('%', @PESQUISA, '%')
        OR pessoa.nome LIKE CONCAT('%', @PESQUISA, '%')
        OR atividade.idAtividade = @PESQUISA )
ORDER BY atividade.data


-- 2.9) Uma consulta que demonstre qual foi o total de arrecadação com as inscrições e o total de despesas de um determinado evento;

SELECT 
    evento.nome, SUM(despesa.valor) as totalDespesa , 
    ( SELECT SUM( atividade.valor ) FROM  atividade 
    INNER JOIN inscricaoatividade 
    ON inscricaoatividade.Atividade_idAtividade = atividade.idAtividade
    WHERE inscricaoatividade.dataPagamento IS NOT NULL AND atividade.Evento_idEvento = 2 )
    AS `total arrecadacao por inscrição`
FROM evento
INNER JOIN Despesa ON despesa.Evento_idEvento = evento.idEvento
WHERE evento.idEvento = 2
GROUP BY evento.nome
ORDER BY totalDespesa DESC;


-- 	2.10) Lista com nome, função e contato de todos os organizadores vinculados a um evento; 

SET @evento = 1;

SELECT pessoa.nome, funcao.nome, pessoa.telefone
FROM organizador
INNER JOIN pessoa ON pessoa.idPessoa = organizador.Pessoa_idPessoa
INNER JOIN funcao ON funcao.idfuncao = organizador.Funcao_idFuncao
INNER JOIN evento ON evento.idEvento = organizador.Evento_idEvento
WHERE evento.idEvento = @evento