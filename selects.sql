
#  `TABELA Y` INNER JOIN `TABELA X` ON `ID TABELA X` = `FK TABELA Y`

#2.1) Lista com dados de todos os participantes cadastrados no respectivo evento;

SELECT /*count(1) as quantidade,*/ pessoa.*, participante.email, evento.nome 
FROM pessoa 
INNER JOIN participante ON Pessoa_idPessoa = idPessoa 
INNER JOIN inscricao ON Participante_Pessoa_idPessoa = Pessoa_idPessoa
INNER JOIN evento ON idEvento = Evento_idEvento
WHERE idEvento=2

#2.2) Lista com o nome, e-mail e telefone dos participantes com pagamento de inscrição pendente para o evento;
SELECT pessoa.nome, pessoa.telefone, participante.email, atividade.titulo 
FROM pessoa
INNER JOIN participante ON Pessoa_idPessoa = idPessoa
INNER JOIN inscricao ON Participante_Pessoa_idPessoa = Pessoa_idPessoa
INNER JOIN inscricaoatividade ON Inscricao_idInscricao = idInscricao
INNER JOIN atividade ON idAtividade = Atividade_idAtividade
WHERE inscricaoatividade.dataPagamento IS NULL


SELECT atividade.idAtividade, atividade.titulo , 
    ( SELECT COUNT( inscricaoatividade.Atividade_idAtividade) 
        FROM inscricaoatividade 
        WHERE inscricaoatividade.Atividade_idAtividade=atividade.idAtividade ) AS qtdFuncionarios
FROM atividade
LEFT JOIN inscricaoatividade ON inscricaoatividade.Atividade_idAtividade=atividade.idAtividade
GROUP BY atividade.titulo

#2.3) Obter uma lista com o número de participantes ativos (inscrição paga) agrupada por atividade do evento (listar todas as atividades mesmo as que não possuem inscrições);
SELECT atividade.idAtividade, ATIVIDADE.titulo, inscricaoatividade.dataPagamento #, count( inscricaoatividade.idInscricaoAtividade ) as qtd
FROM atividade
RIGHT JOIN inscricaoatividade ON Atividade_idAtividade = idAtividade
#WHERE inscricaoatividade.dataPagamento IS NOT NULL

#INNER JOIN evento ON idEvento = Evento_idEvento
#AND idEvento = 1
