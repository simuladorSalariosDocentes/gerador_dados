# Gerador de Dados para o Projeto para um Simulador de Vencimentos para Servidores da Carreira Docente das IFES

Este projeto contém os arquivos para gerar dados de entrada para a aplicação do simulador de salários da carreira docente das IFES.

## Diretório

Os diretórios desde projeto estão organizados da seguinte forma:

### arquivos

Contém os arquivos (formato JSON) gerados ao executar os scripts deste Gerador. 

Após gerados, os mesmos devem ser copiados para a aplicação do simulador desenvolvida em Vue.js a fim de serem utilizados como dados de entrada.

### base

Contém os arquivos SQL (banco MySQL) necessários para criar e popular a base de dados que é utilizada pelos scripts PHP para gerar os arquivos JSON.

Os arquivos SQL devem ser executados na ordem correspondente a sua numeração. 

### scripts

Contém os arquivos PHP responsáveis por gerar os arquivos JSON com os dados para o simulador.

Ao serem executados, os scripts conecentam-se a base de dados (criadas a partir dos SQLs do diretório **base**), 
carregam os dados e, a partir deles, geram os arquivos JSON necessários para a aplicação do simulador.

Os arquivos JSON gerados são salvos no diretório **arquivos**.
