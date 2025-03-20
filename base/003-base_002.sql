/* TABELA aux_alimentacao */
CREATE TABLE aux_alimentacao (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    valor FLOAT NOT NULL,
    CONSTRAINT pk_aux_alimentacao PRIMARY KEY (id)
);

/* TABELA saude_versoes */
CREATE TABLE saude_versoes (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_saude_versoes PRIMARY KEY (id)
);

/* TABELA saude_faixas */
CREATE TABLE saude_faixas (
    id INTEGER NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    CONSTRAINT pk_saude_faixas PRIMARY KEY (id)
);

/* TABELA saude_valores */
CREATE TABLE saude_valores (
    id INTEGER NOT NULL AUTO_INCREMENT,
    id_saude_versao INTEGER NOT NULL,
    id_saude_faixa INTEGER NOT NULL,
    valor_renda_inicial FLOAT NOT NULL,
    valor_renda_final FLOAT NOT NULL,
    valor_beneficio FLOAT NOT NULL,
    CONSTRAINT pk_saude_valores PRIMARY KEY (id)
);
ALTER TABLE saude_valores ADD CONSTRAINT fk_saude_versoes FOREIGN KEY (id_saude_versao) REFERENCES saude_versoes (id);
ALTER TABLE saude_valores ADD CONSTRAINT fk_saude_faixas FOREIGN KEY (id_saude_faixa) REFERENCES saude_faixas (id);
