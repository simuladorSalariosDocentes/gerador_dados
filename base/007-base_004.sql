/* TABELA gratificacoes_fcc */
CREATE TABLE gratificacoes_fcc (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    valor FLOAT NOT NULL,
    CONSTRAINT pk_gratificacoes_fcc PRIMARY KEY (id)
);

/* TABELA gratificacoes_fg_versoes */
CREATE TABLE gratificacoes_fg_versoes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_gratificacoes_fg_versoes PRIMARY KEY (id)
);

/* TABELA gratificacoes_fg_valores */
CREATE TABLE gratificacoes_fg_valores (
    id INTEGER NOT NULL AUTO_INCREMENT,
    id_gratificacoes_fg_versao INTEGER NOT NULL,
    descricao VARCHAR(10) NOT NULL,
    valor FLOAT NOT NULL,
    CONSTRAINT pk_gratificacoes_fg_valores PRIMARY KEY (id)
);
ALTER TABLE gratificacoes_fg_valores ADD CONSTRAINT fk_gratificacoes_fg_versoes FOREIGN KEY (id_gratificacoes_fg_versao) REFERENCES gratificacoes_fg_versoes (id);

/* TABELA gratificacoes_cd_versoes */
CREATE TABLE gratificacoes_cd_versoes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_gratificacoes_cd_versoes PRIMARY KEY (id)
);

/* TABELA gratificacoes_cd_valores */
CREATE TABLE gratificacoes_cd_valores (
    id INTEGER NOT NULL AUTO_INCREMENT,
    id_gratificacoes_cd_versao INTEGER NOT NULL,
    descricao VARCHAR(10) NOT NULL,
    valor FLOAT NOT NULL,
    CONSTRAINT pk_gratificacoes_cd_valores PRIMARY KEY (id)
);
ALTER TABLE gratificacoes_cd_valores ADD CONSTRAINT fk_gratificacoes_cd FOREIGN KEY (id_gratificacoes_cd_versao) REFERENCES gratificacoes_cd_versoes (id);
