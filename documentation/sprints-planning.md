## 🏁 Sprint 1 (10/03 - 30/03)

### 📌 *Cadastro de Talhões Agrícolas (.geojson)*

- Implementar upload de arquivos GeoJSON contendo:
  - Os limites dos talhões (saída).
  - A classificação automática da IA (automático).
- Permitir upload de uma lista de fotos de apoio (.tif).
- Criar funcionalidade para personalização das propriedades dos talhões.

### 🗺️ *Mapa Global de Talhões*

- Desenvolver um mapa global navegável para visualização dos talhões.
- Implementar exibição de informações detalhadas ao selecionar um talhão.

### 🔎 *Buscas de Talhões*

- Criar uma lista de talhões que permita buscas precisas.
  - Adicionar filtros por:
    - Nome do talhão
    - Fazenda
    - Cultura
    - Solo
    - Safra
    - Situação
  - Permitir operação para visualizar informações detalhadas do talhão.

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

---

## 🏁 Sprint 2 (07/04 - 27/04)

### 🔄 *Controle do Estado do Talhão*

- Definir ciclo de vida do talhão:
  - **Pendente**: Inserido no sistema, sem revisão.
  - **Em análise**: Aguardando aprovação de um consultor.
  - **Sem Solução**: Revisão não possível (necessária justificativa).
  - **Reprovado**: Consultor reprova a revisão do analista (necessária justificativa, permitindo nova revisão).
  - **Aprovado**: Consultor aprova a edição feita pelo analista.

### ⚙️ *Operações com os Talhões*

- Implementar funcionalidade para análise dos talhões.
- Implementar funcionalidade para edição.
- Implementar funcionalidade para exclusão.
- Permitir download da classificação manual aprovada.

### ✏️ *Edição da Classificação automática do Talhão*

- Criar funcionalidade para:
  - Redimensionar, adicionar e remover vértices da classificação automática.
  - Utilizar imagens de apoio na edição.
  - Armazenar alterações feitas.

### 📊 *Levantamento de Métricas da Edição do Talhão*

- Monitorar tempo gasto em cada edição.
- Comparar diferenças entre a classificação automática e a manual.

### 👥 *Gerenciamento de Usuários*

- Criar sistema de cadastro, edição e exclusão de usuários.
- Definir permissões específicas para os tipos de usuários:

#### **Tipos de Usuários e Permissões**

**Administrador**
- Criar, editar e excluir usuários.
- Realizar as mesmas funções que o Consultor e o Analista.

**Consultor**
- Acessar dashboards e mapa.
- Cadastrar talhões no sistema.
- Visualizar lista de talhões cadastrados.
- Validar a revisão manual.
- Realizar download da classificação manual aprovada.

**Analista**
- Visualizar lista de talhões cadastrados.
- Realizar revisão manual das áreas.

- Restringir visões e operações conforme o tipo de usuário.

---

## 🏁 Sprint 3 (05/05 - 25/05)

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

### 🛠️ *Revisão e Correção de Bugs*

- Revisão de funcionalidades.
- Correção de possíveis bugs.
