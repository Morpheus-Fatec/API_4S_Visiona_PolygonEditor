## 🏆 Planejamento de Sprints Refatorado (Pronto na Sprint 3)

### 🏁 Sprint 1 (10/03 - 30/03)
- **Cadastro de Talhões Agrícolas (.geojson):**
  - Implementar upload de arquivos GeoJSON.
  - Validar campos obrigatórios (nome da fazenda, cultura, produtividade, etc.).
  - Salvar dados no banco de dados.

- **Visualização Inicial de Talhões no Mapa:**
  - Integrar biblioteca de mapas (Leaflet).
  - Exibir polígonos dos talhões cadastrados.
  - Adicionar interatividade (tooltips com informações ao clicar nos polígonos).

- **Filtros e Buscas de Talhões:**
  - Implementar filtros por nome, cultura, cidade e estado.
  - Exibir resultados no mapa e em uma lista.

- **Visualização de Informações Detalhadas:**
  - Exibir informações detalhadas dos talhões (nome da fazenda, cultura, área, etc.).

---

### 🏁 Sprint 2 (07/04 - 27/04)
- **Edição de Polígonos no Mapa:**
  - Permitir mover, redimensionar, adicionar e remover vértices dos polígonos.
  - Salvar alterações automaticamente no banco de dados.
  
- **Histórico de Alterações nos Talhões:**
  - Registrar todas as alterações (quem editou, quando e o que foi modificado).
  - Permitir visualização de versões anteriores.

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