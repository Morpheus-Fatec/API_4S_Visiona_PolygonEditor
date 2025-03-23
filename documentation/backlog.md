# 📌 Backlog do Projeto

## 🏗️ Épicos
- [**Cadastro de Talhões Agrícolas (.geojson)**](#📌-cadastro-de-talhões-agriculas-geojson)
- [**Mapa e visualização dos talhões**](#🗺️-Visualização-de-talhões-por-meio-de-mapa-e-lista)
- [**Edição de GeoJSON**](#🗺️-mapa-interativo-para-visualização-e-edição-de-geojson)
- [**Download dos Talhões Revisados**](#📥-download-dos-talhões-revisados)
- [**Dashboards com Métricas sobre os Consultores e a IA**](#📊-gerar-métricas-de-produtividade-dos-analistas)
- [**Controle de Permissões e Usuários**](#🔐-definir-permissões-e-funções-para-usuários)

## 🚀 Backlog de Features

### 📌 Cadastro de Talhões Agrícolas (.geojson)
**Título:** Cadastro de talhões agrícolas com GeoJSON gerados pela IA  
**Descrição:** 
- Receber polígonos de talhões agrícolas no formato GeoJSON.
- GeoJSON deve conter:
  - Nome da fazenda
  - Cultura (soja, milho, etc.)
  - Produtividade por ano
  - Área
  - Tipo de solo
  - Cidade e estado

  ---


### 🗺️ Visualização de talhões por meio de mapa e lista
**Título:** Implementar mapa e uma lista de talhões.  
**Descrição:** 
- Mapa para visualização global.
- Lista para que seja possível filtrar os talhões.

---

### 🗺️ Edição dos Talhões
**Título:** Implementar mapa e uma lista de talhões.  
**Descrição:** 
- Mapa para visualização global.
- Lista para que seja possível filtrar os talhões.

---

### 📥 Download dos Talhões Revisados
**Título:** Permitir o download dos talhões agrícolas após edição e revisão  
**Descrição:**
- Após a edição de um talhão agrícola, o sistema deve permitir o download do arquivo GeoJSON revisado em um formato que possa ser reutilizado para melhorar a performance da IA.

---

### 📊 Dashboards com Métricas sobre os Consultores e a IA
**Título:** Gerar métricas de produtividade com base em tempo, polígonos modificados e diferença de área  
**Descrição:**
- Tempo gasto nas alterações.
- Polígonos adicionados ou removidos.
- Diferença de área entre versões.
- Exibição em dashboards interativos.
- Exibir taxa de acerto da IA.

---

### 🔐 Controle de Permissões e Usuários
**Título:** Implementar permissões de acesso e funcionalidades por tipo de usuário  
**Descrição:**
#### **Analista:**
- Visualizar informações das áreas.
- Aprovar ou rejeitar áreas cadastradas.
- Editar e atualizar informações no banco.

#### **Consultor:**
- Acessar dashboards e mapas.
- Cadastrar novas áreas no sistema.

#### **Administrador:**
- Acessar todas as funcionalidades dos consultores e analistas.
- Gerenciar usuários (cadastrar, editar e excluir).


## ✅ Requisitos Funcionais e Não Funcionais

- Três tipos de usuários: **Administrador, Analista e Consultor**.
- **Cadastro e edição de áreas agrícolas**.
- **Upload de arquivos .geojson** para cadastro de geometrias.
- Informações obrigatórias no cadastro:
  - Nome da fazenda, cultura, produtividade, área, tipo de solo, cidade e estado.
- **Dashboards interativos** com filtros e visualização no mapa.
- **Ferramenta de desenho para edição de geometria** no mapa interativo.
