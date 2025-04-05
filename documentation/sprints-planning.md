# 🏁 Sprint 1 (10/03 - 30/03)

## 📌 *Cadastro de Talhões Agrícolas (.geojson)*

- Implementar upload de arquivos GeoJSON contendo:
  - Os limites dos talhões (saída).
  - A classificação automática da IA (automático).
- Permitir upload de uma lista de fotos de apoio (.tif).
  - Sendo necessário o tipo geoTIFF, BigTIFF não será permitido.
- Criar funcionalidade para personalização das propriedades dos talhões.

## 🗺️ *Mapa Global de Talhões*

- Desenvolver um mapa global navegável para visualização dos talhões.
- Implementar exibição de informações ao selecionar um talhão.

## 🔎 *Buscas de Talhões*

- Criar uma lista de talhões que permita buscas precisas.
  - Adicionar filtros por:
    - Nome do talhão
    - Fazenda
    - Cultura
    - Solo
    - Safra
    - Situação
  - Permitir operação para visualizar informações do talhão.

## 📄 *Visualização de Informações Detalhadas*

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

---

# 🏁 Sprint 2 (07/04 - 27/04)

## 🔄 *Controle do Estado do Talhão*

- Definir ciclo de vida do talhão:
  - **Pendente**: Inserido no sistema, sem revisão.
  - **Em análise**: Aguardando aprovação de um consultor.
  - **Sem Solução**: Revisão não possível (necessária justificativa).
  - **Reprovado**: Consultor reprova a revisão do analista (necessária justificativa, permitindo nova revisão).
  - **Aprovado**: Consultor aprova a edição feita pelo analista.

## ✏️ *Edição da Classificação automática do Talhão*

- Criar funcionalidade para:
  - Redimensionar, adicionar e remover vértices da classificação automática.
  - Utilizar imagens de apoio na edição.
  - Armazenar a revisão realizada para que possa ser validada posteriormente por um consultor.
  - Exigir justificativas obrigatórias nos casos de ser "sem solução".
 
## 🧐 *Revisão Manual do Talhão*

- Permitir que o **analista realize a revisão manual** das classificações automáticas dos talhões.
- A revisão deve permitir ao analista utilizar as imagens de apoio como referência.
- Permitir que o **consultor* fornecça um feedback ao analista em forma de desenho e texto no caso dele ser **reprovado""
- Permitir ao consultor **validar, reprovar ou marcar como "sem solução"** a revisão feita pelo analista.


## ⚙️ *Operações com os Talhões*

- Implementar funcionalidade para edição.
- Implementar funcionalidade para exclusão.
- Permitir download da classificação manual aprovada.

## 📊 *Levantamento de Métricas da Edição do Talhão*

- Monitorar tempo gasto em cada edição.
- Comparar diferenças entre a classificação automática e a manual.

## 👥 Gerenciamento de Usuários

O sistema deve permitir o **cadastro, edição e exclusão de usuários**, além de definir permissões específicas para cada tipo de usuário.

### 📌 Tipos de Usuários e Permissões

### ✅ Administrador  
- Criar, editar e excluir usuários.  
- Realizar todas as funções dos Consultores e Analistas.  

### ✅ Consultor  
- Acessar dashboards e mapa.  
- Cadastrar talhões no sistema.  
- Visualizar a lista de talhões cadastrados.  
- Validar a revisão manual.  
- Realizar download da classificação manual aprovada.  

### ✅ Analista  
- Visualizar a lista de talhões cadastrados.  
- Realizar revisão manual das áreas.  

### 📌 Regras de Acesso  
- Restringir visões e operações conforme o tipo de usuário.

## ⚙️ Gerenciamento de Fazenda, solo e cultura
- O sistema deve permitir, criar, editar e excluir essas entidades.

---

# 🏁 Sprint 3 (05/05 - 25/05)

## 📈 *Dashboards com Métricas de Produtividade*

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

## 🛠️ *Revisão e Correção de Bugs*

- Revisão de funcionalidades.
- Correção de possíveis bugs.
