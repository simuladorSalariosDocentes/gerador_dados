/* TABELA aux_alimentacao */
INSERT INTO aux_alimentacao (id, descricao, valor) VALUES (1, 'A partir de Mai/2024', 1000);


/* TABELA saude_versoes */
INSERT INTO saude_versoes (id, descricao) VALUES (1, 'A partir de Mai/2024');


/* TABELA saude_faixas */
INSERT INTO saude_faixas (id, descricao) VALUES (1, '0 a 18 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (2, '19 a 23 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (3, '24 a 28 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (4, '29 a 33 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (5, '34 a 38 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (6, '39 a 43 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (7, '44 a 48 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (8, '49 a 53 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (9, '54 a 58 anos');
INSERT INTO saude_faixas (id, descricao) VALUES (10, '59 ou mais anos');


/* TABELA saude_valores */
/* Faixa 1 - 0 a 18 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 0, 3000, 254.18);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 3001, 6000, 196.34);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 6001, 9000, 160.8);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 9001, 12000, 142.18);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 12001, 15000, 132.03);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 15001, 18000, 121.87);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 18001, 21000, 111.72);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 1, 21001, 1000000, 106.64);

/* Faixa 2 - 19 a 23 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 0, 3000, 266.17);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 3001, 6000, 207.65);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 6001, 9000, 162.92);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 9001, 12000, 144.16);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 12001, 15000, 133.86);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 15001, 18000, 123.56);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 18001, 21000, 113.27);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 2, 21001, 1000000, 108.12);

/* Faixa 3 - 24 a 28 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 0, 3000, 269.77);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 3001, 6000, 211.02);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 6001, 9000, 166.10);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 9001, 12000, 147.11);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 12001, 15000, 136.60);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 15001, 18000, 126.10);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 18001, 21000, 115.59);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 3, 21001, 1000000, 110.33);

/* Faixa 4 - 29 a 33 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 0, 3000, 297.07);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 3001, 6000, 230.21);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 6001, 9000, 178.29);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 9001, 12000, 158.69);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 12001, 15000, 148.11);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 15001, 18000, 137.53);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 18001, 21000, 126.95);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 4, 21001, 1000000, 116.37);

/* Faixa 5 - 34 a 38 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 0, 3000, 305.95);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 3001, 6000, 238.6);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 6001, 9000, 186.21);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 9001, 12000, 166.1);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 12001, 15000, 155.02);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 15001, 18000, 143.95);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 18001, 21000, 132.88);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 5, 21001, 1000000, 121.8);

/* Faixa 6 - 39 a 43 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 0, 3000, 316.1);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 3001, 6000, 248.20);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 6001, 9000, 195.23);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 9001, 12000, 174.57);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 12001, 15000, 162.93);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 15001, 18000, 151.29);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 18001, 21000, 139.66);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 6, 21001, 1000000, 128.02);

/* Faixa 7 - 44 a 48 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 0, 3000, 361.06);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 3001, 6000, 280.87);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 6001, 9000, 210.12);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 9001, 12000, 187.87);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 12001, 15000, 176.13);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 15001, 18000, 164.39);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 18001, 21000, 152.65);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 7, 21001, 1000000, 140.90);

/* Faixa 8 - 49 a 53 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 0, 3000, 366.8);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 3001, 6000, 285.34);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 6001, 9000, 213.45);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 9001, 12000, 190.85);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 12001, 15000, 178.92);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 15001, 18000, 166.99);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 18001, 21000, 155.06);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 8, 21001, 1000000, 143.14);

/* Faixa 9 - 54 a 58 anos */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 0, 3000, 372.51);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 3001, 6000, 289.9);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 6001, 9000, 216.78);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 9001, 12000, 193.82);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 12001, 15000, 181.71);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 15001, 18000, 169.6);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 18001, 21000, 157.48);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 9, 21001, 1000000, 145.37);

/* Faixa 10 - 59 ou mais */
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 0, 3000, 411.26);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 3001, 6000, 321.04);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 6001, 9000, 235.28);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 9001, 12000, 211.36);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 12001, 15000, 198.93);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 15001, 18000, 186.5);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 18001, 21000, 174.06);
INSERT INTO saude_valores (id_saude_versao, id_saude_faixa, valor_renda_inicial, valor_renda_final, valor_beneficio) VALUES (1, 10, 21001, 1000000, 161.63);




