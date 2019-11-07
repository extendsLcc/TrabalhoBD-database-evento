# **trabalho-database**

## **Objetivo:**
Projetar e implementar uma base de dados para um sistema de Gestão de Eventos
Científicos. As tabelas citadas no item 1 não limitam esta base de dados, portanto faz parte
deste trabalho a identificação e implementação de novas tabelas ou novos atributos a fim de
atender a todos os requisitos do sistema.


## **1) Dentre as funcionalidades obrigatórias, a base de dados do sistema deverá contemplar:**

1.1) Cadastro de eventos científicos (nome do evento, data de início, data fim, local);

1.2) Cadastro de participantes dos eventos (nome, CPF, e-mail, telefone, instituição, grau de
instrução do participante);

1.3) Cadastro de organizadores (nome, CPF, telefone, função);

1.4) Cadastro de palestrantes (nome, CPF, e-mail, telefone);

1.5) Cadastro das atividades dos eventos (palestras, oficinas ou minicursos) que estarão
disponíveis para inscrição (título, descrição da atividade, carga horaria, palestrante, qual a
quantidade máxima de inscritos, ensalamento);

1.6) Gerenciar o pagamento das inscrições dos participantes (quando pagou, valor pago);

1.7) Gerenciar as inscrições e o ensalamento dos participantes nas atividades;

1.8) Gerenciar as despesas relacionadas ao evento (descrição da despesa, data, valor, se a
despesa está vinculada com alguma atividade);

## **2) O usuário deste sistema deve ter a opção de extrair no mínimo as seguintes informações:**

2.1) Lista com dados de todos os participantes cadastrados no respectivo evento;

2.2) Lista com o nome, e-mail e telefone dos participantes com pagamento de inscrição
pendente para o evento;

2.3) Obter uma lista com o número de participantes ativos (inscrição paga) agrupada por
atividade do evento (listar todas as atividades mesmo as que não possuem inscrições);

2.4) Consultar qual atividade do evento tem o maior número de inscritos;

2.5) Lista com o roteiro/sequencia das atividades selecionadas na inscrição por um
participante em um evento;

2.6) Lista completa com a programação geral (em ordem cronológica) do evento, título e
descrição das atividades, nome do palestrante, data e hora, local / sala;

2.7) Lista com informações das atividades que acontecerão em um determinado dia do
evento;

2.8) Lista com os dados completos de uma atividade (onde e quando ocorrerá, nome do
palestrante, título e descrição da atividade);

2.9) Uma consulta que demonstre qual foi o total de arrecadação com as inscrições e o total
de despesas de um determinado evento;

2.10) Lista com nome, função e contato de todos os organizadores vinculados a um evento;
Observações:

- Para cada uma das requisições acima, implemente uma consulta em SQL.

- Sua consulta deve ser capaz de resolver totalmente a especificação e seu banco de dados

deve estar devidamente populado para que a consulta possa ser adequadamente testada.

- Caso sua modelagem de dados não ofereça condições para resolução dessas consultas, a
modelagem deverá ser reformulada.

## **3) Este trabalho deverá ser feito utilizando o banco de dados MySQL e de preferência utilizando a ferramenta MySQL Workbench.**

## **4) Os arquivos que deverão ser entregues são:**

4.1) O diagrama com o Modelo Relacional da base (formato mwb ou imagem png);

4.2) O Script DDL para a implementação da base de dados (formato sql);

4.3) O Script DML utilizado para popular as tabelas (formato sql) sendo:

- Tabela de cadastro de Eventos: mínimo 2 registros

- Tabela de cadastro de Atividades: mínimo 5 registros por Evento

- Tabela de cadastro de Participantes: mínimo 15 registros por Evento

- Tabela de cadastro de Organizadores: mínimo 5 registros por Evento

Demais tabelas deverão estar populadas com no mínimo três registros.
É incentivado a população do banco de dados com mais registros que o mínimo
solicitado sempre que isso se mostrar adequado para ilustrar de forma interessante o
armazenamento de relacionamentos.

4.4) O Script com todas as consultas solicitadas no item 2 (formato sql);

4.5) É imprescindível que os arquivos a serem entregues tenham o nome dos integrantes da

dupla (Ex: nome_nome_diagrama.mwb, nome_nome_script-ddl.sql, nome_nome_script-
dml.sql e nome_nome_script-consultas.sql).

Todos os arquivos produzidos neste trabalho deverão ser postados no classroom, na área de
um dos integrantes da dupla em Atividade específica deste trabalho.

A data máxima para entrega do trabalho é 08 de novembro às 20h, mas as duplas podem
postar os arquivos no classroom alguns dias antes, se assim preferirem.

No dia 08 de novembro, durante a aula, as duplas apresentarão a base de dados
implementada, demonstrando a estrutura da base e executando as consultas do item 2.

O tempo dado para a realização do trabalho é suficiente para que as duplas não deixem as
postagens para serem feitas na última hora e também para que não haja tentativas de
entrega após a data.

Entregas após a data não serão aceitas e a dupla que deixar de entregar o trabalho na data
correta ou antes dela, receberá conceito D no trabalho.