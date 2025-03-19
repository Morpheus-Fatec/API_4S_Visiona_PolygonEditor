
## 🏆 Planejamento de Sprints Refatorado (Pronto na Sprint 3)

### 🏁 Sprint 1 (10/03 - 30/03)
- **Cadastro de Talhões Agrícolas (.geojson):**
  - Upload de arquivos GeoJSON que contenha os limites dos talhões(saida).
  - Upload de arquivos GeoJSON que contenha a classificação automática da IA(automatico).
  - Upload de uma lista de fotos(.tif)
  - Personalizar as propriedades dos talhões.

- **Mapa global de talhões:**
  - Mapa global navegável para visualização de talhões.
  - Exibir mais informações desse talhões.

- **Buscas de Talhões:**
  - Exibir uma lista de talhões que possibilite operações.
  - Implementar filtros por nome, cultura, cidade, estado e situação.
  
- **Visualização de Informações Detalhadas:**
  - Exibir informações detalhadas dos talhões:
    - Nome talhão
    - Nome da fazenda
    - Cultura (soja, milho, etc.)
    - Safra
    - Produtividade por ano
    - Área (ha)
    - Tipo de solo
    - Cidade
    - Estado

---

### 🏁 Sprint 2 (07/04 - 27/04)
- **Edição da classificação do talhão:**
  - Permitir redimensionar, adicionar e remover vértices da classificação automática.
  - Armazenar alterações.
  
- **Controle do estado do talhão:**
  - Ciclo de vida de um talhão:
      Pendente: Inserido no sistema, ainda sem revisão.
      Revisado: Aguardando aprovação de um consultor.
      Sem Solução: Quando a revisão não é possível (necessária justificativa).
      Reprovado: Quando um consultor reprova a revisão de um analista (necessária justificativa) e sendo possível uma nova revisão.
      Aprovado: Quando o consultor aprova a edição do analista.

- **Download dos Talhões Revisados:**
  - Permitir download do GeoJSON atualizado após edição.

- **Métricas de Produtividade dos Analistas:**
  - Implementar métricas como tempo gasto, polígonos modificados e diferença de área.
  - Exibir dados em gráficos interativos.

- **Controle de Tempo e Edição:**
  - Rastrear tempo gasto em cada edição.
  - Calcular diferença de área e número de polígonos modificados.

- **Dashboards com Métricas de Produtividade:**
  - Exibir métricas de produtividade dos analistas e desempenho da IA.
  - Adicionar filtros por período, cultura ou região.

- **Taxa de Acerto da IA:**
  - Comparar talhões gerados pela IA com correções feitas pelos analistas.

---

### 🏁 Sprint 3 (05/05 - 25/05)

- **Taxa de Acerto da IA:**
  - Exibir taxa de acerto em porcentagem.

- **Gerenciamento de Usuários:**
  - Permitir cadastro, edição e exclusão de usuários.
  - Atribuir permissões específicas para cada tipo de usuário (Administrador, Analista, Consultor).

- **Notificações sobre Talhões Pendentes:**
  - Enviar notificações para analistas sobre talhões que precisam de revisão.

- **Revisão e Correção de Bugs:**
  - Testar todas as funcionalidades e corrigir possíveis erros.

- **Preparação para Apresentação:**
  - Criar demonstrações para a banca avaliadora.
  - Preparar documentação final (manuais, especificação da API, etc.).

  ---

  ### 🏁 Sprint Final e Feira de Soluções (26/05 - 29/12)
- Apresentação da solução.
