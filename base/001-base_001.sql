/* TABELA versoes */
CREATE TABLE versoes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_versoes PRIMARY KEY (id)
);

/* TABELA classes */
CREATE TABLE classes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    id_versao INTEGER NOT NULL,
    CONSTRAINT pk_classes PRIMARY KEY (id)
);
ALTER TABLE classes ADD CONSTRAINT fk_versoes FOREIGN KEY (id_versao) REFERENCES versoes (id);

/* TABELA regimes */
CREATE TABLE regimes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_regimes PRIMARY KEY (id)
);

/* TABELA classes_regimes */
CREATE TABLE classes_regimes (
    id INTEGER NOT NULL AUTO_INCREMENT,
    id_classe INTEGER NOT NULL,
    id_regime INTEGER NOT NULL,
    valor FLOAT NOT NULL,
    CONSTRAINT pk_classes_regimes PRIMARY KEY (id)
);
ALTER TABLE classes_regimes ADD CONSTRAINT fk_classes FOREIGN KEY (id_classe) REFERENCES classes (id);
ALTER TABLE classes_regimes ADD CONSTRAINT fk_regimes FOREIGN KEY (id_regime) REFERENCES regimes (id);
ALTER TABLE classes_regimes ADD CONSTRAINT uk_classes_regimes UNIQUE (id_classe, id_regime);

/* TABELA titulacoes */
CREATE TABLE titulacoes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_titulacoes PRIMARY KEY (id)
);

/* TABELA titulacoes */
CREATE TABLE titulacoes_rt (
    id INTEGER NOT NULL AUTO_INCREMENT,
    id_titulacao INTEGER NOT NULL,
    id_regime INTEGER NOT NULL,
    percentual FLOAT NOT NULL,
    CONSTRAINT titulacoes_rt PRIMARY KEY (id)
);
ALTER TABLE titulacoes_rt ADD CONSTRAINT fk_titulacoes FOREIGN KEY (id_titulacao) REFERENCES titulacoes (id);
ALTER TABLE titulacoes_rt ADD CONSTRAINT fk_regimes2 FOREIGN KEY (id_regime) REFERENCES regimes (id);
ALTER TABLE titulacoes_rt ADD CONSTRAINT uk_titulacoes_rt UNIQUE (id_titulacao, id_regime);
