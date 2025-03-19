# 📌 Backlog do Projeto

## 🏗️ Épicos
- [**Cadastro de Talhões Agrícolas (.geojson)**](#📌-cadastro-de-talhões-agrícolas-geojson)
- [**Mapa Global de Talhões**](#🗺️-mapa-global-de-talhões)
- [**Buscas de Talhões**](#🔍-buscas-de-talhões)
- [**Visualização de Informações dos Talhões**](#📊-visualização-de-informações-dos-talhões)
- [**Edição da Classificação do Talhão**](#✏️-edição-da-classificação-do-talhão)
- [**Controle do Estado do Talhão**](#🔄-controle-do-estado-do-talhão)
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

### ✏️ Edição da Classificação do Talhão
**Descrição:**  
- Permitir redimensionar, adicionar e remover vértices da classificação automática.  
- Armazenar alterações.  

---

### 🔄 Controle do Estado do Talhão
**Descrição:**  
- Definir o ciclo de vida de um talhão:  
  - **Pendente:** Inserido no sistema, ainda sem revisão.  
  - **Revisado:** Aguardando aprovação de um consultor.  
  - **Sem Solução:** Quando a revisão não é possível (necessária justificativa).  
  - **Reprovado:** Quando um consultor reprova a revisão de um analista (necessária justificativa), sendo possível uma nova revisão.  
  - **Aprovado:** Quando o consultor aprova a edição do analista.  

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
