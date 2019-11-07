-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema eventos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema eventos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `eventos` DEFAULT CHARACTER SET utf8 ;
USE `eventos` ;

-- -----------------------------------------------------
-- Table `eventos`.`Local`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Local` (
  `idLocal` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(155) NOT NULL,
  PRIMARY KEY (`idLocal`),
  UNIQUE INDEX `idLocal_UNIQUE` (`idLocal` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Evento` (
  `idEvento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `dataInicio` DATETIME NOT NULL,
  `dataFim` DATETIME NULL,
  `Local_idLocal` INT NOT NULL,
  PRIMARY KEY (`idEvento`),
  UNIQUE INDEX `idEvento_UNIQUE` (`idEvento` ASC) ,
  INDEX `fk_Evento_Local1_idx` (`Local_idLocal` ASC) ,
  CONSTRAINT `fk_Evento_Local1`
    FOREIGN KEY (`Local_idLocal`)
    REFERENCES `eventos`.`Local` (`idLocal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Pessoa` (
  `idPessoa` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(200) NOT NULL,
  `cpf` VARCHAR(14) NOT NULL,
  `telefone` VARCHAR(45) NULL,
  PRIMARY KEY (`idPessoa`),
  UNIQUE INDEX `idPessoa_UNIQUE` (`idPessoa` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Instituicao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Instituicao` (
  `idInstituicao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idInstituicao`),
  UNIQUE INDEX `idInstituicao_UNIQUE` (`idInstituicao` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`GrauInstrucao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`GrauInstrucao` (
  `idGrauInstrucao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(155) NOT NULL,
  PRIMARY KEY (`idGrauInstrucao`),
  UNIQUE INDEX `idGrauInstrucao_UNIQUE` (`idGrauInstrucao` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Participante` (
  `Pessoa_idPessoa` INT NOT NULL,
  `email` VARCHAR(255) NULL,
  `Instituicao_idInstituicao` INT NOT NULL,
  `GrauInstrucao_idGrauInstrucao` INT NOT NULL,
  PRIMARY KEY (`Pessoa_idPessoa`),
  UNIQUE INDEX `Pessoa_idPessoa_UNIQUE` (`Pessoa_idPessoa` ASC) ,
  INDEX `fk_Participante_Instituicao1_idx` (`Instituicao_idInstituicao` ASC) ,
  INDEX `fk_Participante_GrauInstrucao1_idx` (`GrauInstrucao_idGrauInstrucao` ASC) ,
  CONSTRAINT `fk_Participante_Pessoa`
    FOREIGN KEY (`Pessoa_idPessoa`)
    REFERENCES `eventos`.`Pessoa` (`idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participante_Instituicao1`
    FOREIGN KEY (`Instituicao_idInstituicao`)
    REFERENCES `eventos`.`Instituicao` (`idInstituicao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participante_GrauInstrucao1`
    FOREIGN KEY (`GrauInstrucao_idGrauInstrucao`)
    REFERENCES `eventos`.`GrauInstrucao` (`idGrauInstrucao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Funcao` (
  `idFuncao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(85) NULL,
  PRIMARY KEY (`idFuncao`),
  UNIQUE INDEX `idFuncao_UNIQUE` (`idFuncao` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Organizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Organizador` (
  `Pessoa_idPessoa` INT NOT NULL,
  `Evento_idEvento` INT NOT NULL,
  `Funcao_idFuncao` INT NOT NULL,
  PRIMARY KEY (`Pessoa_idPessoa`, `Evento_idEvento`, `Funcao_idFuncao`),
  INDEX `fk_Organizador_Evento1_idx` (`Evento_idEvento` ASC) ,
  INDEX `fk_Organizador_Funcao1_idx` (`Funcao_idFuncao` ASC) ,
  CONSTRAINT `fk_Organizador_Pessoa1`
    FOREIGN KEY (`Pessoa_idPessoa`)
    REFERENCES `eventos`.`Pessoa` (`idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Organizador_Evento1`
    FOREIGN KEY (`Evento_idEvento`)
    REFERENCES `eventos`.`Evento` (`idEvento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Organizador_Funcao1`
    FOREIGN KEY (`Funcao_idFuncao`)
    REFERENCES `eventos`.`Funcao` (`idFuncao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Palestrante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Palestrante` (
  `Pessoa_idPessoa` INT NOT NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Palestrante_Pessoa1`
    FOREIGN KEY (`Pessoa_idPessoa`)
    REFERENCES `eventos`.`Pessoa` (`idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`TipoAtividade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`TipoAtividade` (
  `idTipoAtividade` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(145) NOT NULL,
  PRIMARY KEY (`idTipoAtividade`),
  UNIQUE INDEX `idTipoEvento_UNIQUE` (`idTipoAtividade` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Sala`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Sala` (
  `idSala` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NOT NULL,
  `nome` VARCHAR(65) NOT NULL,
  PRIMARY KEY (`idSala`),
  UNIQUE INDEX `idSala_UNIQUE` (`idSala` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`CargaHoraria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`CargaHoraria` (
  `idCargaHoraria` INT NOT NULL AUTO_INCREMENT,
  `duracao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCargaHoraria`),
  UNIQUE INDEX `idCargaHoraria_UNIQUE` (`idCargaHoraria` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Atividade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Atividade` (
  `idAtividade` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(255) NOT NULL,
  `descricao` TEXT NULL,
  `limiteInscricoes` INT NOT NULL,
  `TipoAtividade_idTipoAtividade` INT NOT NULL,
  `Evento_idEvento` INT NOT NULL,
  `Palestrante_Pessoa_idPessoa` INT NOT NULL,
  `Sala_idSala` INT NOT NULL,
  `CargaHoraria_idCargaHoraria` INT NOT NULL,
  PRIMARY KEY (`idAtividade`),
  UNIQUE INDEX `idAtividade_UNIQUE` (`idAtividade` ASC) ,
  INDEX `fk_Atividade_TipoEvento1_idx` (`TipoAtividade_idTipoAtividade` ASC) ,
  INDEX `fk_Atividade_Evento1_idx` (`Evento_idEvento` ASC) ,
  INDEX `fk_Atividade_Palestrante1_idx` (`Palestrante_Pessoa_idPessoa` ASC) ,
  INDEX `fk_Atividade_Sala1_idx` (`Sala_idSala` ASC) ,
  INDEX `fk_Atividade_CargaHoraria1_idx` (`CargaHoraria_idCargaHoraria` ASC) ,
  CONSTRAINT `fk_Atividade_TipoEvento1`
    FOREIGN KEY (`TipoAtividade_idTipoAtividade`)
    REFERENCES `eventos`.`TipoAtividade` (`idTipoAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Atividade_Evento1`
    FOREIGN KEY (`Evento_idEvento`)
    REFERENCES `eventos`.`Evento` (`idEvento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Atividade_Palestrante1`
    FOREIGN KEY (`Palestrante_Pessoa_idPessoa`)
    REFERENCES `eventos`.`Palestrante` (`Pessoa_idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Atividade_Sala1`
    FOREIGN KEY (`Sala_idSala`)
    REFERENCES `eventos`.`Sala` (`idSala`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Atividade_CargaHoraria1`
    FOREIGN KEY (`CargaHoraria_idCargaHoraria`)
    REFERENCES `eventos`.`CargaHoraria` (`idCargaHoraria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Inscricao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Inscricao` (
  `idInscricao` INT NOT NULL AUTO_INCREMENT,
  `dataInscricao` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `Participante_Pessoa_idPessoa` INT NOT NULL,
  `Evento_idEvento` INT NOT NULL,
  PRIMARY KEY (`idInscricao`),
  UNIQUE INDEX `idInscricao_UNIQUE` (`idInscricao` ASC) ,
  INDEX `fk_Inscricao_Participante1_idx` (`Participante_Pessoa_idPessoa` ASC) ,
  INDEX `fk_Inscricao_Evento1_idx` (`Evento_idEvento` ASC) ,
  CONSTRAINT `fk_Inscricao_Participante1`
    FOREIGN KEY (`Participante_Pessoa_idPessoa`)
    REFERENCES `eventos`.`Participante` (`Pessoa_idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscricao_Evento1`
    FOREIGN KEY (`Evento_idEvento`)
    REFERENCES `eventos`.`Evento` (`idEvento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`Despesa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`Despesa` (
  `idDespesa` INT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(255) NOT NULL,
  `data` DATE NOT NULL,
  `valor` DOUBLE NOT NULL,
  `Atividade_idAtividade` INT NULL,
  `Evento_idEvento` INT NOT NULL,
  PRIMARY KEY (`idDespesa`),
  UNIQUE INDEX `idDespesa_UNIQUE` (`idDespesa` ASC) ,
  INDEX `fk_Despesa_Atividade1_idx` (`Atividade_idAtividade` ASC) ,
  INDEX `fk_Despesa_Evento1_idx` (`Evento_idEvento` ASC) ,
  CONSTRAINT `fk_Despesa_Atividade1`
    FOREIGN KEY (`Atividade_idAtividade`)
    REFERENCES `eventos`.`Atividade` (`idAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Despesa_Evento1`
    FOREIGN KEY (`Evento_idEvento`)
    REFERENCES `eventos`.`Evento` (`idEvento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eventos`.`InscricaoAtividade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eventos`.`InscricaoAtividade` (
  `idInscricaoAtividade` INT NOT NULL AUTO_INCREMENT,
  `Atividade_idAtividade` INT NOT NULL,
  `Inscricao_idInscricao` INT NOT NULL,
  `dataPagamento` DATE NULL,
  `valor` DOUBLE NULL,
  PRIMARY KEY (`idInscricaoAtividade`),
  UNIQUE INDEX `idInscricaoAtividade_UNIQUE` (`idInscricaoAtividade` ASC) ,
  INDEX `fk_InscricaoAtividade_Atividade1_idx` (`Atividade_idAtividade` ASC) ,
  INDEX `fk_InscricaoAtividade_Inscricao1_idx` (`Inscricao_idInscricao` ASC) ,
  CONSTRAINT `fk_InscricaoAtividade_Atividade1`
    FOREIGN KEY (`Atividade_idAtividade`)
    REFERENCES `eventos`.`Atividade` (`idAtividade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_InscricaoAtividade_Inscricao1`
    FOREIGN KEY (`Inscricao_idInscricao`)
    REFERENCES `eventos`.`Inscricao` (`idInscricao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
