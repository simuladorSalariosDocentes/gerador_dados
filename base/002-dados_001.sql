/* TABELA versoes */
INSERT INTO versoes (id, descricao) VALUES (1, 'Jan/2025 a Abr/2026');
INSERT INTO versoes (id, descricao) VALUES (2, 'Mai/2026 em diante');


/* TABELA classes */
INSERT INTO classes (id, descricao, id_versao) VALUES (1, 'A/Assistente - Nível 1', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (2, 'B/Adjunto - Nível 1', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (3, 'B/Adjunto - Nível 2', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (4, 'B/Adjunto - Nível 3', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (5, 'B/Adjunto - Nível 4', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (6, 'C/Associado - Nível 1', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (7, 'C/Associado - Nível 2', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (8, 'C/Associado - Nível 3', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (9, 'C/Associado - Nível 4', 1);
INSERT INTO classes (id, descricao, id_versao) VALUES (10, 'Titular', 1);

INSERT INTO classes (id, descricao, id_versao) VALUES (11, 'A/Assistente - Nível 1', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (12, 'B/Adjunto - Nível 1', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (13, 'B/Adjunto - Nível 2', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (14, 'B/Adjunto - Nível 3', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (15, 'B/Adjunto - Nível 4', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (16, 'C/Associado - Nível 1', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (17, 'C/Associado - Nível 2', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (18, 'C/Associado - Nível 3', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (19, 'C/Associado - Nível 4', 2);
INSERT INTO classes (id, descricao, id_versao) VALUES (20, 'Titular', 2);


/* TABELA regimes */
INSERT INTO regimes (id, descricao) VALUES (1, 'DE (Dedicação Exclusiva)');
INSERT INTO regimes (id, descricao) VALUES (2, '40h');
INSERT INTO regimes (id, descricao) VALUES (3, '20h');


/* TABELA classes_regimes */
/* Classes da versão 1 */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (1, 1, 6180.85); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (1, 2, 4326.60); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (1, 3, 3090.43); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (2, 1, 6520.80); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (2, 2, 4564.56); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (2, 3, 3260.40); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (3, 1, 6814.23); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (3, 2, 4769.97); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (3, 3, 3407.12); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (4, 1, 7120.87); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (4, 2, 4984.62); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (4, 3, 3560.44); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (5, 1, 7441.31); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (5, 2, 5208.92); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (5, 3, 3720.66); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (6, 1, 9190.02); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (6, 2, 6433.02); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (6, 3, 4595.01); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (7, 1, 9603.57); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (7, 2, 6722.51); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (7, 3, 4801.79); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (8, 1, 10035.73); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (8, 2, 7025.02); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (8, 3, 5017.87); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (9, 1, 10487.34); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (9, 2, 7341.15); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (9, 3, 5243.67); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (10, 1, 11536.10); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (10, 2, 8075.27); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (10, 3, 5768.05); /* 20h */

/* Classes da versão 2 */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (11, 1, 6397.18); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (11, 2, 4478.03); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (11, 3, 3198.59); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (12, 1, 6781.01); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (12, 2, 4746.71); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (12, 3, 3390.51); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (13, 1, 7120.06); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (13, 2, 4984.05); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (13, 3, 3560.03); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (14, 1, 7476.06); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (14, 2, 5233.25); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (14, 3, 3738.03); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (15, 1, 7849.87); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (15, 2, 5494.91); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (15, 3, 3924.93); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (16, 1, 9616.09); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (16, 2, 6731.27); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (16, 3, 4808.04); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (17, 1, 10096.89); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (17, 2, 7067.83); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (17, 3, 5048.45); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (18, 1, 10601.74); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (18, 2, 7421.22); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (18, 3, 5300.87); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (19, 1, 11131.82); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (19, 2, 7792.29); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (19, 3, 5565.91); /* 20h */

INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (20, 1, 12245.03); /* DE */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (20, 2, 8571.51); /* 40h */
INSERT INTO classes_regimes (id_classe, id_regime, valor) VALUES (20, 3, 6122.50); /* 20h */


/* TABELA titulacoes */
INSERT INTO titulacoes (id, descricao) VALUES (1, 'Graduação');
INSERT INTO titulacoes (id, descricao) VALUES (2, 'Aperfeiçoamento');
INSERT INTO titulacoes (id, descricao) VALUES (3, 'Especialização (RSCI)');
INSERT INTO titulacoes (id, descricao) VALUES (4, 'Mestrado (RSCII)');
INSERT INTO titulacoes (id, descricao) VALUES (5, 'Doutorado (RSCIII)');


/* TABELA titulacoes_rt */
/* Graduação */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (1, 1, 0); /* DE */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (1, 2, 0); /* 40h */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (1, 3, 0); /* 20h */

/* Aperfeiçoamento */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (2, 1, 10); /* DE */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (2, 2, 7.5); /* 40h */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (2, 3, 5); /* 20h */

/* Especialização (RSCI) */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (3, 1, 20); /* DE */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (3, 2, 15); /* 40h */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (3, 3, 10); /* 20h */

/* Mestrado (RSCII) */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (4, 1, 50); /* DE */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (4, 2, 37.5); /* 40h */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (4, 3, 25); /* 20h */

/* Doutorado (RSCIII) */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (5, 1, 115); /* DE */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (5, 2, 86.25); /* 40h */
INSERT INTO titulacoes_rt (id_titulacao, id_regime, percentual) VALUES (5, 3, 57.5); /* 20h */
