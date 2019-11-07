/*  LOCAL   */
INSERT INTO `eventos`.`local` (`idLocal`, `nome`) VALUES ('1', 'IFPR - Campus Umuarama');
INSERT INTO `eventos`.`local` (`idLocal`, `nome`) VALUES ('2', 'UNIPAR Cede - Universidade Paranaense');
INSERT INTO `eventos`.`local` (`idLocal`, `nome`) VALUES ('3', 'Faculdade ALFA de Umuarama');

/*  INSTITUIÇÃO */
INSERT INTO `eventos`.`instituicao` (`idInstituicao`,`nome`) VALUES ('1', 'IFPR');
INSERT INTO `eventos`.`instituicao` (`idInstituicao`,`nome`) VALUES ('2', 'Unipar');
INSERT INTO `eventos`.`instituicao` (`idInstituicao`,`nome`) VALUES ('3', 'Faculdade Alfa');
INSERT INTO `eventos`.`instituicao` (`idInstituicao`,`nome`) VALUES ('4', 'UEM');

/*  EVENTOS */
INSERT INTO `eventos`.`evento` (`idEvento`, `nome`, `dataInicio`, `dataFim`, `Local_idLocal`) VALUES ('1', 'III BRINFU - BIENAL REGIONAL DE INFORMÁTICA DE UMUARAMA', '2018-08-22', '2018-08-24', '2');
INSERT INTO `eventos`.`evento` (`idEvento`, `nome`, `dataInicio`, `dataFim`, `Local_idLocal`) VALUES ('2', 'VII SETEC', '2019-09-16', '2019-09-21', '1');

/*  GRAU DE INSTRUÇÃO   */
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('1', 'Analfabeto');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('2', 'Ensino fundamental incompleto');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('3', 'Ensino fundamental completo');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('4', 'Ensino médio incompleto');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('5', 'Ensino médio completo');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('6', 'Superior completo');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('7', 'Pós-graduação');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('8', 'Mestrado');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('9', 'Doutorado');
INSERT INTO `eventos`.`grauinstrucao` (`idGrauInstrucao`, `nome`) VALUES ('10', 'Pós-Doutorado');

/*  FUNÇÃO DO ORGANIZADOR   */
INSERT INTO `eventos`.`funcao` (`idFuncao`, `nome`) VALUES ('1','Monitor');
INSERT INTO `eventos`.`funcao` (`idFuncao`, `nome`) VALUES ('2','Assistente de Sala');
INSERT INTO `eventos`.`funcao` (`idFuncao`, `nome`) VALUES ('3','Orientador');
INSERT INTO `eventos`.`funcao` (`idFuncao`, `nome`) VALUES ('4','Técnico de Laboratório');
INSERT INTO `eventos`.`funcao` (`idFuncao`, `nome`) VALUES ('5','Divulgador');
INSERT INTO `eventos`.`funcao` (`idFuncao`, `nome`) VALUES ('6','Coordenador');

/*  Participantes   */
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('1', 'Eduarda Andreia Daiane Nogueira','947.369.905-03','(67) 98389-5290');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('2', 'Paulo Gustavo Souza','056.851.142-57','(31) 98583-5327');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('3', 'Breno Ruan Sebastião Gomes','689.424.842-71','(69) 98982-4450');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('4', 'Alexandre Eduardo Bryan da Silva','654.809.408-56','(96) 99390-8664');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('5', 'Eloá Sophia Viana','192.289.920-85','(63) 99573-1051');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('6', 'Ruan César Mendes','258.980.031-26','(92) 99681-6905');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('7', 'Beatriz Hadassa Manuela da Cruz','549.609.652-90','(54) 99540-2570');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('8', 'Cauê Levi da Luz','064.466.046-53','(94) 98842-1759');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('9', 'Renato Sebastião Gael Martins','581.012.762-20','(62) 98146-6725');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('10', 'Edson Miguel Nogueira','062.439.254-63','(44) 98703-7199');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('11', 'Eloá Pietra Nunes','269.207.497-18','(21) 99312-7243');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('12', 'Flávia Maya Melo','996.179.611-05','(82) 99245-4350');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('13', 'Lucas Enrico Novaes','996.350.601-14','(98) 99518-2403');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('14', 'Stefany Marli Moura','815.630.669-47','(68) 99828-4666');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('15', 'Luzia Maria Farias','150.907.560-74','(69) 98181-3149');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('16', 'Benjamin Nathan Cardoso','104.027.177-40','(11) 98923-1330');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('17', 'Leandro Lorenzo Renato Sales','594.736.066-72','(63) 99823-8024');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('18', 'Carlos Eduardo Thiago Marcos Vinicius Peixoto','252.580.514-39','(21) 98866-3811');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('19', 'Lúcia Emilly Aragão','871.434.356-86','(82) 99367-7920');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('20', 'Anthony Theo Rocha','756.324.345-32','(22) 99753-2628');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('21', 'Renato Gabriel Murilo Moreira','745.072.253-45','(86) 98309-9077');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('22', 'Ester Raimunda Moura','831.920.907-23','(27) 99942-7749');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('23', 'Flávia Elza Rebeca Jesus','760.037.433-10','(95) 98443-2459');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('24', 'Nathan Henry Almeida','168.501.950-18','(69) 98974-4161');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('25', 'Lúcia Emilly da Mata','433.188.359-00','(84) 98421-1325');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('26', 'Fabiana Manuela Novaes','927.238.563-64','(98) 98966-9952');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('27', 'Larissa Ana Marlene Nunes','588.248.200-34','(91) 98435-9207');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('28', 'Matheus Nathan Figueiredo','627.976.174-60','(41) 98955-3862');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('29', 'Paulo Márcio Martins','738.391.254-30','(47) 98967-7726');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('30', 'Theo Kaique Melo','913.591.327-40','(73) 98472-1213');

/* Palestrantes */
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('31', 'Lucca Emanuel Henrique Melo','031.853.646-35','(83) 98271-5423');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('32', 'Bernardo Thales Sebastião da Mata','414.130.553-70','(95) 99731-6658');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('33', 'César Calebe Martin Nunes','737.804.386-90','(44) 98725-6843');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('34', 'Rodrigo Caleb Alexandre Martins','138.796.239-61','(27) 99911-5521');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('35', 'Ian Giovanni Levi Carvalho','140.265.886-96','(63) 98894-2689');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('36', 'Eloá Flávia Helena Aragão','678.620.209-87','(96) 98236-7243');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('37', 'Enzo Manuel Martins','876.559.091-05','(11) 98638-8054');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('38', 'Oliver Nelson Bernardo Nogueira','638.428.062-05','(86) 98340-2859');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('39', 'Paulo Daniel Baptista','263.665.515-88','(54) 98816-5566');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('40', 'Lucca Emanuel Pedro Fernandes','245.890.565-00','(17) 98391-1908');

/* Organizadores */
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('41', 'Caio Leandro Melo','955.966.964-80','(68) 99534-9444');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('42', 'Sebastiana Heloise Marcela Moreira','980.229.774-70','(93) 99553-5303');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('43', 'Eloá Vitória Liz Duarte','192.628.032-65','(67) 99114-2951');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('44', 'Isis Giovanna Teixeira','015.167.119-20','(91) 99373-6909');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('45', 'Laís Hadassa Marlene Peixoto','356.093.992-54','(47) 98331-1340');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('46', 'Luzia Amanda Sebastiana Aragão','066.662.960-95','(98) 98480-0576');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('47', 'Anthony Martin Raul Moreira','235.146.613-67','(91) 99650-6109');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('48', 'Kauê César Porto','607.103.213-09','(92) 99886-8290');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('49', 'Igor Sebastião Carvalho','680.559.849-48','(99) 99532-7595');
INSERT INTO `eventos`.`pessoa`(`idPessoa`, nome,cpf,telefone) VALUES ('50', 'Caleb Bernardo Moreira','858.176.762-14','(96) 99628-2591');


/* Participantes */
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (1,"mattis.semper@dignissimMaecenas.edu",1,4);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (2,"erat.Etiam@magnis.org",3,10);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (3,"tempor.augue.ac@utpharetra.ca",3,1);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (4,"sit.amet.risus@acmattisornare.net",2,2);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (5,"luctus.et@Proinsedturpis.co.uk",4,9);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (6,"ac.mi@sociis.org",3,10);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (7,"libero@necurnasuscipit.ca",2,7);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (8,"tristique@netusetmalesuada.co.uk",1,5);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (9,"molestie@euturpisNulla.co.uk",4,5);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (10,"tempor@duiCras.org",3,8);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (11,"tellus@ligula.org",3,1);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (12,"mollis.Phasellus@sem.ca",4,1);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (13,"mauris.rhoncus.id@inceptoshymenaeos.net",4,1);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (14,"non.bibendum.sed@quamafelis.co.uk",2,1);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (15,"libero.Proin.sed@pharetrasedhendrerit.net",2,2);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (16,"faucibus.id@nonummyultriciesornare.co.uk",2,6);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (17,"elit.dictum.eu@vitaemauris.ca",4,3);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (18,"in@Nullamvitae.net",1,4);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (19,"laoreet.ipsum@ac.co.uk",3,10);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (20,"neque@parturientmontesnascetur.com",1,1);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (21,"et@ultrices.ca",3,5);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (22,"ac.feugiat@leo.ca",2,3);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (23,"amet.faucibus.ut@egestasDuisac.net",2,4);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (24,"ac.mattis.ornare@diam.org",1,5);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (25,"amet.risus@magnatellus.edu",2,9);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (26,"ullamcorper@pulvinararcu.co.uk",3,6);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (27,"nulla.In@Integeridmagna.org",1,5);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (28,"velit@sedturpisnec.net",2,5);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (29,"Cum@semper.net",1,2);
INSERT INTO `eventos`.`participante` (`Pessoa_idPessoa`,`email`,`Instituicao_idInstituicao`,`GrauInstrucao_idGrauInstrucao`) VALUES (30,"nunc@Integer.com",2,10);

/* Palestrantes */
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (31,"semper.erat@Aliquam.edu");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (32,"enim.Suspendisse@erat.org");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (33,"luctus@Curabitur.co.uk");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (34,"sem@ipsum.ca");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (35,"interdum@scelerisquesedsapien.edu");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (36,"ante.ipsum.primis@semsemper.net");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (37,"velit.in@morbitristique.com");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (38,"vel.sapien@sollicitudinamalesuada.edu");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (39,"vitae.sodales@quisdiamluctus.ca");
INSERT INTO `eventos`.`palestrante` (`Pessoa_idPessoa`,`email`) VALUES (40,"quis.urna.Nunc@rhoncus.co.uk");

/*  Organizadores */
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (48, 1, 5);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (48, 2, 2);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (41, 2, 1);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (47, 2, 1);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (42, 2, 1);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (44, 1, 3);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (49, 1, 4);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (43, 1, 2);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (44, 1, 4);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (45, 2, 2);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (46, 2, 2);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (48, 1, 4);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (49, 2, 6);
INSERT INTO `eventos`.`organizador` (Pessoa_idPessoa, Evento_idEvento, Funcao_idFuncao) VALUES (41, 1, 6);


/*  Tipo de Atividade   */
INSERT INTO `eventos`.`tipoatividade` (`idTipoAtividade`, `nome`) VALUES ('1', 'Palestra');
INSERT INTO `eventos`.`tipoatividade` (`idTipoAtividade`, `nome`) VALUES ('2', 'Officina');
INSERT INTO `eventos`.`tipoatividade` (`idTipoAtividade`, `nome`) VALUES ('3', 'Minicurso');

/*  Sala    */
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('1', '1', 'Laboratório de Quimica');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('2', '2', 'Quimica');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('3', '3', 'Quimica');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('4', '1', 'Sala de Aula');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('5', '4', 'Laboratório de Informatica');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('6', '3', 'Laboratório de Informatica');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('7', '2', 'Laboratório de Informatica');
INSERT INTO `eventos`.`sala` (`idSala`, `numero`, `nome`) VALUES ('8', '1', 'Laboratório de Informatica');

/*  Carga Horaria   */
INSERT INTO `eventos`.`CargaHoraria` (`idCargaHoraria`,`duracao`) VALUES (1,"2 horas");
INSERT INTO `eventos`.`CargaHoraria` (`idCargaHoraria`,`duracao`) VALUES (2,"4 horas");
INSERT INTO `eventos`.`CargaHoraria` (`idCargaHoraria`,`duracao`) VALUES (3,"6 horas");
INSERT INTO `eventos`.`CargaHoraria` (`idCargaHoraria`,`duracao`) VALUES (4,"8 horas");

/*  Atividade   */
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (1,"Fundamentos de Gerenciamento de Projetos","dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.", 21,3,2,39,1, 1 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (2,"Utilização de óleo vegetal residual como incentivo a educação ambiental","nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere", 25,1,1,37,7, 2 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (3,"Arte e saúde mental: vivenciando a cor a partir da aquarela","blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus", 27,2,2,37,2, 3 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (4,"Técnicas em aquarela para iniciantes","leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,", 26,2,1,33,8, 4 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (5,"Introdução às planilhas eletrônicas","enim, gravida sit amet, dapibus id, blandit at, nisi. Cum", 21,3,2,34,6, 1 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (6,"O que corre em suas veias? Introdução ao estudo de células sanguíneas","Proin sed turpis nec mauris blandit mattis. Cras eget nisi", 39,3,2,33,1, 2 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (7,"Photoshop","ultrices sit amet, risus. Donec nibh enim, gravida sit amet,", 34,3,2,34,1, 3 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (8,"Robótica no desenvolvimento da lógica de programação","erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat",22,2,2,36,4, 4 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (9,"Noção básica de programação de Jogos 2D no Construct 2","luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis.",39,1,1,31,2, 1 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (10,"A Tecnologia Blockchain do Zero: Aplicações e Impactos","ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu",26,3,2,31,5, 2 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (11,"Arquitetura contemporânea e o mundo do trabalho","ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,",31,2,2,33,6, 3 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (12,"Relatórios com JasperReports e iReport Designer","ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit",32,2,1,37,8, 4 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (13,"Utilização de óleo vegetal  residual como incentivo a educação ambiental","molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,",31,3,1,34,2, 1 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (14,"Lei das Águas","Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.",30,1,2,37,8, 2 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (15,"O aprendizado da Libras por meio da música","ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam",32,3,1,35,8, 3 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (16,"Introdução à planilhas eletrônicas","lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies",40,3,2,34,2, 4 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (17,"Arte e saúde mental: vivenciando a cor a partir da aquarela","Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent",23,1,1,36,5, 1 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (18,"Produção de mudas","habitant morbi tristique senectus et netus et malesuada fames ac",27,3,1,40,8, 2 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (19,"Cenários Econômicos","sed pede nec ante blandit viverra. Donec tempus, lorem fringilla",31,3,2,39,1, 3 );
INSERT INTO `eventos`.`atividade` (`idAtividade`,`titulo`,`descricao`,`limiteInscricoes`,`TipoAtividade_idTipoAtividade`,`Evento_idEvento`,`Palestrante_Pessoa_idPessoa`,`Sala_idSala`, `CargaHoraria_idCargaHoraria`) VALUES (20,"Como elaborar um currículo?","erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus",34,3,1,37,8, 4 );
