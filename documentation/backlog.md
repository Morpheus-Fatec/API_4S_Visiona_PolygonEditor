# 📌 Backlog do Projeto

## 🏗️ Épicos
- [**Cadastro de Talhões Agrícolas (.geojson)**](#📌-cadastro-de-talhões-agriculas-geojson)
- [**Mapa Global de Talhões**](#🗺️-mapa-global-de-talhões)
- [**Buscas de Talhões**](#🔎-buscas-de-talhões)
- [**Controle do Estado do Talhão**](#🔄-controle-do-estado-do-talhão)
- [**Edição da Classificação automática do Talhão**](#✏️-edição-da-classificação-automática-do-talhão)
- [**Operações com os Talhões**](#⚙️-operações-com-os-talhões)
- [**Levantamento de Métricas da Edição do Talhão**](#📊-levantamento-de-métricas-da-edição-do-talhão)
- [**Gerenciamento de Usuários**](#👥-gerenciamento-de-usuários)
- [**Gerenciamento de Fazenda, solo e cultura**](#gerenciamento-de-fazenda-solo-e-cultura)
- [**Dashboards com Métricas de Produtividade**](#📈-dashboards-com-métricas-de-produtividade)

## 🚀 Backlog de Features

### 📌 *Cadastro de Talhões Agrícolas (.geojson)*
- Implementar upload de arquivos GeoJSON contendo:
  - Os limites dos talhões (saída).
  - A classificação automática da IA (automático).
- Permitir upload de uma lista de fotos de apoio (.tif).
  - Sendo necessário o tipo geoTIFF, BigTIFF não será permitido.
- Criar funcionalidade para personalização das propriedades dos talhões.

### 🗺️ *Mapa Global de Talhões*
- Desenvolver um mapa global navegável para visualização dos talhões.
- Implementar exibição de informações ao selecionar um talhão.

### 🔎 *Buscas de Talhões*
- Criar uma lista de talhões que permita buscas precisas.
  - Adicionar filtros por:
    - Nome do talhão
    - Fazenda
    - Cultura
    - Solo
    - Safra
    - Situação
  - Permitir operação para visualizar informações do talhão.

### 📄 *Visualização de Informações Detalhadas*
- Exibir detalhes completos do talhão, incluindo:
  - Nome do talhão
  - Fazenda
    - Cidade
    - Estado
  - Cultura
  - Safra
  - Produtividade por ano
  - Área (ha)
  - Tipo de solo
  - Classificação automática
  - Fotos de apoio

### 🔄 *Controle do Estado do Talhão*
- Definir ciclo de vida do talhão:
  - **Pendente**: Inserido no sistema, sem revisão.
  - **Em análise**: Aguardando aprovação de um consultor.
  - **Sem Solução**: Revisão não possível (necessária justificativa).
  - **Reprovado**: Consultor reprova a revisão do analista (necessária justificativa, permitindo nova revisão).
  - **Aprovado**: Consultor aprova a edição feita pelo analista.

### ✏️ *Edição da Classificação automática do Talhão*
- Criar funcionalidade para:
  - Redimensionar, adicionar e remover vértices da classificação automática.
  - Utilizar imagens de apoio na edição.
  - Armazenar alterações feitas.

### ⚙️ *Operações com os Talhões*
- Implementar funcionalidade para análise dos talhões.
- Implementar funcionalidade para edição.
- Implementar funcionalidade para exclusão.
- Permitir download da classificação manual aprovada.

### 📊 *Levantamento de Métricas da Edição do Talhão*
- Monitorar tempo gasto em cada edição.
- Comparar diferenças entre a classificação automática e a manual.

### 👥 *Gerenciamento de Usuários*
O sistema deve permitir o **cadastro, edição e exclusão de usuários**, além de definir permissões específicas para cada tipo de usuário.

#### 📌 Tipos de Usuários e Permissões
- ✅ **Administrador**
  - Criar, editar e excluir usuários.  
  - Realizar todas as funções dos Consultores e Analistas.
- ✅ **Consultor**
  - Acessar dashboards e mapa.
  - Cadastrar talhões no sistema.
  - Visualizar a lista de talhões cadastrados.
  - Validar a revisão manual.
  - Realizar download da classificação manual aprovada.
- ✅ **Analista**
  - Visualizar a lista de talhões cadastrados.
  - Realizar revisão manual das áreas.

#### 📌 Regras de Acesso
- Restringir visões e operações conforme o tipo de usuário.

### *Gerenciamento de Fazenda, solo e cultura*
- O sistema deve permitir, criar, editar e excluir.

### 📈 *Dashboards com Métricas de Produtividade*
- Desenvolver dashboards com métricas de produtividade:
  - Análise do desempenho dos analistas.
  - Avaliação do desempenho da IA.
  - Adicionar filtros por:
    - Nome do talhão
    - Fazenda
    - Cultura
    - Solo
    - Safra
    - Analista
