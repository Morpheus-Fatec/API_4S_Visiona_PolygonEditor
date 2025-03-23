# 📌 Backlog do Projeto

## 🏗️ Épicos
- [**Cadastro de Talhões Agrícolas (.geojson)**](#📌-cadastro-de-talhões-agriculas-geojson)
- [**Mapa e visualização dos talhões**](#🗺️-Visualização-de-talhões-por-meio-de-mapa-e-lista)
- [**Edição de GeoJSON**](#🗺️-mapa-interativo-para-visualização-e-edição-de-geojson)
- [**Download dos Talhões Revisados**](#📥-download-dos-talhões-revisados)
- [**Dashboards com Métricas sobre os Consultores e a IA**](#📈-dashboards-com-métricas-sobre-os-consultores-e-a-ia)
- [**Controle de Permissões e Usuários**](#🔐-controle-de-permissões-e-usuários)

## 🚀 Backlog de Features

### 📌 Cadastro de Talhões Agrícolas (.geojson)
**Descrição:**  
- Upload de arquivos GeoJSON contendo os limites dos talhões (saída).  
- Upload de arquivos GeoJSON contendo a classificação automática da IA (automático).  
- Upload de uma lista de fotos (.tif).  
- Personalizar as propriedades dos talhões.  

---

### 🗺️ Mapa Global de Talhões
**Descrição:**  
- Possibilitar a busca de talhões navegando pelo mapa.  
- Exibir mais informações ao selecionar um talhão.  

---

### 🔍 Buscas de Talhões
**Descrição:**  
- Exibir uma lista de talhões que possibilite operações.  
- Implementar filtros por nome, cultura, cidade, estado e situação.  

---

### 📊 Visualização de Informações dos Talhões
**Descrição:**  
- Exibir informações detalhadas dos talhões:  
  - Nome do talhão  
  - Nome da fazenda  
  - Cultura
  - Safra  
  - Produtividade por ano  
  - Área (ha)  
  - Tipo de solo  
  - Cidade  
  - Estado  

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
**Descrição:**  
- Permitir download da classificação manual aprovada.  

---

### 📈 Dashboards com Métricas sobre os Consultores e a IA
**Descrição:**  
- Gerar métricas de produtividade com base em tempo, polígonos modificados e diferença de área.  
- Indicadores disponíveis:  
  - Tempo gasto nas alterações.  
  - Polígonos adicionados ou removidos.  
  - Diferença de área entre versões.  
  - Exibição em dashboards interativos.  
  - Exibir taxa de acerto da IA.  

---

### 🔐 Controle de Permissões e Usuários
**Descrição:**  
- Implementar permissões de acesso e funcionalidades por tipo de usuário.  

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

---

## ✅ Requisitos Funcionais e Não Funcionais

- Três tipos de usuários: **Administrador, Analista e Consultor**.  
- **Cadastro e edição de áreas agrícolas**.  
- **Upload de arquivos .geojson** para cadastro de geometrias.  
- Informações obrigatórias no cadastro:  
  - Nome da fazenda, cultura, produtividade, área, tipo de solo, cidade e estado.  
- **Dashboards interativos** com filtros e visualização no mapa.  
- **Ferramenta de desenho para edição de geometria** no mapa interativo.  
