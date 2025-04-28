# 📋 Product Backlog - Sistema de edição de classificação de um talhão agrícola.
_Última atualização: 05/04/2025_

## 📚 Índice dos Épicos

- 🟩 [Épico 1: Cadastro e Gerenciamento de Talhões](#épico-1-cadastro-e-gerenciamento-de-talhões)
- 🟦 [Épico 2: Revisão e Classificação manual de Talhões](#épico-2-revisão-e-classificação-manual-de-talhões)
- 🟨 [Épico 3: Controle de Estado do Talhão](#épico-3-controle-de-estado-do-talhão)
- 🟧 [Épico 4: Gerenciamento de Usuários e Permissões](#épico-4-gerenciamento-de-usuários-e-permissões)
- 🟪 [Épico 5: Dashboards e Métricas de Produtividade](#épico-5-dashboards-e-métricas-de-produtividade)
- 🟫 [Épico 6: Gerenciamento de Entidades Relacionadas (Fazenda, Solo, Cultura)](#épico-6-gerenciamento-de-entidades-relacionadas-fazenda-solo-cultura)


## 🟩 Épico 1: Cadastro e Gerenciamento de Talhões

**Objetivo:** Permitir que os usuários cadastrem, visualizem, editem e excluam talhões agrícolas no sistema.

### User Stories:

- ✅ Como **Consultor**, eu quero **cadastrar talhões e suas classificações provinientes de uma IA no sistema**, para manter o banco de dados atualizado com novas áreas.
- ✅ Como **Consultor**, eu quero **visualizar a lista de talhões cadastrados**, para acompanhar o andamento da sua classificação manual.
- ✅ Como **Analista**,  eu quero **visualizar a lista de talhões cadastrados**, realizar uma classificação manual.
- ✅ Como **usuário**, eu quero **buscar talhões por nome, fazenda, cultura, solo, safra e situação**, para encontrar informações específicas com rapidez.
- ✅ Como **usuário**, eu quero **visualizar detalhes completos de um talhão**, para tomar decisões com base em dados relevantes.
- ✅ Como **usuário**, eu quero **fazer upload de arquivos GeoJSON e imagens GeoTIFF dos talhões**, para alimentar o sistema com informações georreferenciadas.
- ✅ Como **Consultor**, eu quero **editar propriedades de um talhão**, afim de fazer alguma correção(não se aplica a geometria do talhão).
- ✅ Como **Consultor**, eu quero **excluir talhões do sistema**, para remover registros incorretos ou desatualizados.

---

## 🟦 Épico 2: Revisão e Classificação manual de Talhões

**Objetivo:** Permitir que analistas revisem classificações automáticas e que consultores validem ou rejeitem essas revisões.

### User Stories:

- ✅ Como **Analista**, eu quero **realizar a classificação manual dos talhões**, para garantir a precisão dos dados.
- ✅ Como **Consultor**, eu quero **validar ou reprovar revisões manuais feitas por analistas**, para garantir a qualidade dos dados.
- ✅ Como **Consultor**, eu quero **marcar na revisão manual onde está errado no caso de uma revisão reprovada**, para garantir a qualidade dos dados.
- ✅ Como **Consultor/Administrador**, eu quero **fazer o download das classificações manuais aprovadas**, para melhorar o treinando da IA.
- ✅ Como **Analista**, eu quero **usar imagens de apoio para revisar os talhões**, para ter maior contexto na análise.
- ✅ Como **Analista**, eu quero **adicionar, mover e remover vértices da classificação**, para corrigir a geometria de forma precisa.

---

## 🟨 Épico 3: Controle de Estado do Talhão

**Objetivo:** Estabelecer um fluxo de estados que representa o andamento da análise dos talhões.

### User Stories:

- ✅ Como **sistema**, eu quero **definir os estados do talhão (Pendente, Em análise, Sem Solução, Reprovado, Aprovado)**, para controlar seu ciclo de vida.
- ✅ Como **Consultor**, eu quero **aprovar ou reprovar revisões manuais**, com justificativa obrigatória quando necessário, para manter a rastreabilidade.
- ✅ Como **Analista**, eu quero **marcar um talhão como "Sem Solução"**, com justificativa, para indicar impossibilidade de revisão.

---

## 🟧 Épico 4: Gerenciamento de Usuários e Permissões

**Objetivo:** Permitir o controle de acesso e funções no sistema com base em papéis.

### User Stories:

- ✅ Como **Administrador**, eu quero **criar usuários**, para permitir acesso ao sistema.
- ✅ Como **Administrador**, eu quero **editar usuários**, para manter as informações atualizadas.
- ✅ Como **Administrador**, eu quero **excluir usuários**, para revogar acessos desnecessários.
- ✅ Como **Administrador**, eu quero **definir o tipo de cada usuário**, para garantir que eles tenham apenas as permissões necessárias.
- ✅ Como **sistema**, eu quero **restringir funcionalidades com base no tipo de usuário**, para garantir segurança e controle de acesso.

---

## 🟪 Épico 5: Dashboards e Métricas de Produtividade

**Objetivo:** Fornecer visualizações para acompanhar o desempenho dos usuários e da IA.

### User Stories:

- ✅ Como **Consultor/Administrador**, eu quero **acessar dashboards com métricas de produtividade dos analistas**, para acompanhar a eficiência da equipe.
- ✅ Como **Consultor/Administrador**, eu quero **visualizar o desempenho da IA**, para entender a acurácia da classificação automática.
- ✅ Como **usuário**, eu quero **filtrar dashboards por talhão, fazenda, cultura, solo, safra e analista**, para gerar relatórios mais específicos.

---

## 🟫 Épico 6: Gerenciamento de Entidades Relacionadas (Fazenda, Solo, Cultura)

**Objetivo:** Permitir o gerenciamento de entidades auxiliares que compõem os dados dos talhões.

### User Stories:

- ✅ Como **Analista**, eu quero **criar novas fazendas, tipos de solo e culturas**, para alimentar o sistema com novos dados.
- ✅ Como **Analista**, eu quero **editar essas entidades**, para corrigir erros ou atualizar informações.
- ✅ Como **Analista**, eu quero **excluir essas entidades**, para remover dados obsoletos.

---

