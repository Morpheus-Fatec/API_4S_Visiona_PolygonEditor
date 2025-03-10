# <p align = "center"> Morpheus x Visiona - API 4º Semestre - BD 2025
Editor de polígonos que oferece métricas qualitativas e quantitativas sobre as correções. Projeto desenvolvido para a disciplina de Tecnologia em Banco de Dados da Fatec São José dos Campos - Prof. Jessen Vidal.

<br>
<br>
<div style="display: flex; justify-content: center; gap: 40px; align-items: center;">
    <img src="./documentation/images/Logo_Morpheus.png" alt="Logotipo Morpheus" width="40%">
    <img src="./documentation/images/logo-visiona.svg" alt="Logotipo Visiona" width="40%">
</div>
<br>
<br>
<p align="center">
  <a href="#integrantes-da-equipe">Integrantes da Equipe</a> •
  <a href="#descrição-do-desafio">Desafio</a> •
  <a href="#objetivo">Objetivo</a> •
  <a href="#requisitos">Requisitos Funcionais</a> •
  <a href="#cronograma">Cronograma</a> •
  <a href="#product-backlog">Product Backlog</a> •
  <a href="#grafico-burndown">Gráfico Burndown</a> •
  <a href="#documentação">Documentação</a> •
  <a href="#tecnologias-utilizadas">Tecnologias Utilizadas</a>
</p>

<br>

## :mortar_board: <a id="integrantes-da-equipe"> Integrantes da Equipe: </a>

| **Nome**                   | **Função**            | **LinkedIn**                                                  |
|:----------------------:|:-----------------:|:----------------------------------------------------------:|
| César Truyts           | Scrum Master      | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/cesar-augusto-anselmo-pelogia-truyts-94a08a268/) |
| Mateus Marques          | Product Owner    | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/mateus-soares-4983681a0) |
| Elbert Jean         | Desenvolvedor     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/elbertjean/) |
| Gabriel Souza           | Desenvolvedor     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/gabriel-alves-de-souza-5b7747267/) |
| Isaque de Souza           | Desenvolvedor     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/isaque-souza-6760b8270/) |
| Julio Araujo           | Desenvolvedor     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/julio-cesar-da-silva-araujo-65182911b/) |
| Ricardo Campos         | Product Owner     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/ricardo-campos-ba56091b5/) |
| Paloma Soares  | Desenvolvedor     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/paloma-soares-rocha/) |
| Vinícius Monteiro  | Desenvolvedor     | [![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin&labelColor=blue)](https://www.linkedin.com/in/viniciusvasm/) |

<br>

## :anger: <a id=descrição-do-desafio> Descrição do Desafio: </a>

Editor de polígonos que oferece métricas qualitativas e quantitativas sobre as correções..

<br>

## :dart: <a id="objetivo"> Objetivo

Este projeto tem como objetivo desenvolver um sistema Web para análise e edição geoespacial voltado para o setor agrícola, permitindo a interação entre administradores, analistas e consultores. A plataforma fornecerá ferramentas para visualização, edição e análise de dados geoespaciais em tempo real, contribuindo para a melhoria da performance de modelos de inteligência artificial utilizados no mapeamento agrícola. Além disso, o sistema oferecerá um dashboard para monitoramento e possibilitará a utilização de benchmarks da produtividade dos analistas.

<br>

## :page_facing_up: <a id="requisitos"> Requisitos </a>

| Funcionalidade                          | Indicador |
|-----------------------------------------|-----------|
| Cadastro de talhões agriculas (.geojson) | I      |
| Mapa Interativo para Visualização e Edição de GeoJSON   | II       |
| Histórico de Alterações nos Talhões     | III       |
| Download dos Talhões Revisados         | IV        |
| Dashboards com Métricas sobre os Consultores e a IA   | V   |
| Controle de Permissões e Usuários          | VI      |



<br>

## :calendar: <a id="cronograma"> Cronograma </a>

| Sprint  | Nome | Data inicio  | Data Fim | Status |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| --  | KickOff   | 24/02   | 28/02 | Ok |
|  1  | Sprint 1   | 10/03   | 30/03 |  |
|  2  | Sprint review / Planning   | 31/03   | 04/04 |  |
|  3  | Sprint 2   | 07/04   | 27/04 |  |
|  4  | Sprint review / Planning  | 28/04   | 02/05 |  |
|  5  | Sprint 3   | 05/05   | 25/05 |  |
|  6  | Sprint review   | 26/05   | 28/05 |  |
|  7  | Feira de Soluções  | 29/12     |

<br>

## :date: <a id="product-backlog"> Product BackLog: </a>
| ID  | Como           | Desejo                                                                                     | Sprint | Prioridade | Dependência | Requisito |
|-----|----------------|--------------------------------------------------------------------------------------------|--------|------------|-------------|-----------|
| A   | Consultor      | Cadastrar talhões agrícolas via upload de arquivos GeoJSON, para que eu possa visualizá-los e editá-los no sistema. | 1      | Alta       | -           | I         |
| B   | Analista       | Visualizar os talhões agrícolas em um mapa interativo, para que eu possa analisar as áreas cadastradas. | 1      | Alta       | A           | II        |
| C   | Analista       | Filtrar e buscar talhões agrícolas por nome, cultura, cidade ou estado, para que eu possa encontrar rapidamente as áreas de interesse. | 1      | Média      | B           | II        |
| D   | Consultor      | Visualizar informações detalhadas dos talhões (nome da fazenda, cultura, área, etc.), para que eu possa tomar decisões informadas. | 1      | Baixa      | B           | II        |
| E   | Analista       | Editar os polígonos dos talhões no mapa, para que eu possa corrigir erros ou ajustar as áreas. | 2      | Alta       | B           | II        |
| F   | Analista       | Visualizar o histórico de alterações dos talhões, para que eu possa auditar as mudanças realizadas. | 2      | Alta       | E           | III       |
| G   | Consultor      | Baixar os talhões revisados em formato GeoJSON, para que eu possa reutilizá-los em outras ferramentas. | 2      | Alta       | E           | IV        |
| H   | Administrador  | Visualizar métricas de produtividade dos analistas, para que eu possa avaliar o desempenho da equipe. | 2      | Alta       | E           | V         |
| I   | Analista       | Implementar controle de tempo e edição dos talhões, para que eu possa medir minha produtividade. | 2      | Alta       | E           | V         |
| J   | Consultor      | Acessar mapa e dashboards com métricas, para que eu possa acompanhar o progresso do projeto. | 2      | Média      | H. I   | V         |
| K   | Administrador  | Gerenciar usuários (cadastrar, editar, excluir), para que eu possa controlar o acesso ao sistema. | 3      | Média      | -           | VI        |
| L   | Administrador  | Atribuir permissões específicas para cada tipo de usuário, para que eu possa garantir a segurança do sistema. | 3      | Média      | K           | VI        |
| N   | Analista       | Receber notificações sobre talhões que precisam de revisão, para que eu possa priorizar meu trabalho. | 3      | Baixa      | E           | III       |

<a href="/documentation/backlog.md" target="_blank">
    <button style="background-color:#4CAF50; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer;">
        Acessar critério de Aprovação
    </button>
</a>


<br>

## :chart_with_upwards_trend: <a id="grafico-burndown"> Gráfico Burndown </a>
<div align="center">
    <img src="./documentation/burndown/BurnDownChartSprint4.png" alt="Gráfico Burndown" alt="Gráfico Burndown" width="75%">
</div>

<br>

## :clipboard: Board de Atividades

Acesse o Board de atividades do Time para visualizar as atividades planejadas, em desenvolvimento e prontas.

<a href="https://github.com/orgs/Morpheus-Fatec/projects/1/views/1" target="_blank">
    <button style="background-color:#4CAF50; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer;">
        Board de Atividades
    </button>
</a>

<br>

## :page_with_curl: Documentação

<a href="./documentation/" target="_blank">
    <button style="background-color:#4CAF50; color:white; padding:10px 20px; border:none; border-radius:5px; cursor:pointer;">
        Documentação do Projeto
    </button>
</a>

### Estrutura da Documentação:
- **[Diagrams](./documentation/diagrams/)**: Contém os diagramas e esquemas do projeto, incluindo o Diagrama Entidade-Relacionamento (DER) e diagramas de arquitetura.
- **[API](./documentation/api/)**: Contém a especificação da API, exemplos de requisições e respostas, e guias de autenticação.
- **[Manuais](./documentation/manuals/)**: Contém manuais do usuário, guias de instalação, configuração e resolução de problemas.


## :bookmark: <a id="tecnologias-utilizadas"> Tecnologias Utilizadas </a>
> * [Java](https://www.java.com/pt-BR/) - Versão 21
> * [JavaScript](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript) - Versão ES6+
> * [Bootstrap](https://getbootstrap.com/) - Versão 5.3.3
> * [MySQL](https://www.mysql.com/) - Versão 8.0
> * [JDBC MySQL](https://dev.mysql.com/downloads/connector/j/) - Versão 8.0.26
> * [Maven](https://maven.apache.org/) - Versão 3.8.1
> * [Spring Boot](https://spring.io/projects/spring-boot) - Versão 3.3.3
> * [Vue.js](https://vuejs.org/) - Versão 3
> * [Git](https://git-scm.com/)
> * [GitHub](https://github.com/)
> * [Intellij](https://www.jetbrains.com/pt-br/idea/)
> * [VisualStudioCode](https://visualstudio.microsoft.com/pt-br/)
> * [Discord](https://discord.com/)
> * [Slack](https://slack.com/)
> * [Google Docs](https://docs.google.com/)
