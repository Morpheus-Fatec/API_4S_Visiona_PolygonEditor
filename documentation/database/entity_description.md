# 📚 Organização das Entidades do Sistema

## 🌎 Visão Geral

O sistema Demeter trabalha para gerenciar **informações agrícolas** de fazendas, talhões, imagens de apoio e todo o ciclo de **classificações** (automáticas, manuais e revisões).  
Os dados são georreferenciados (usando PostGIS no banco) e organizados em **leituras** enviadas por **consultores**.

---

## 🏗️ Entidades

### 🏡 1. Fazendas
- **Descrição:** Cadastro de fazendas, contendo informações como nome, cidade e estado.
- **Campos principais:**
  - `id_fazenda` (PK)
  - `nome` (único e obrigatório)
  - `cidade`
  - `estado`

---

### 🌱 2. Culturas
- **Descrição:** Cadastro dos tipos de culturas agrícolas.
- **Campos principais:**
  - `id_cultura` (PK)
  - `nome` (único e obrigatório)

---

### 🧱 3. Solos
- **Descrição:** Cadastro dos tipos de solo disponíveis.
- **Campos principais:**
  - `id_solo` (PK)
  - `nome` (único e obrigatório)

---

### 📥 4. Leituras
- **Descrição:**  
  Representa o **conjunto de arquivos** carregados no sistema pelo **Consultor**.  
  Cada vez que um conjunto de talhões, imagens e classificações automáticas é enviado, uma nova leitura é criada para agrupar esses dados.
- **Campos principais:**
  - `id_leitura` (PK)

---

### 🧩 5. Talhões
- **Descrição:** Cadastro dos talhões (áreas específicas dentro de fazendas), com dados de safra, cultura, solo, área, produtividade e geometria.
- **Campos principais:**
  - `id_talhao` (PK)
  - `id_leitura` (FK para Leituras)
  - `id_fazenda` (FK para Fazendas)
  - `safra`
  - `id_cultura` (FK para Culturas)
  - `id_solo` (FK para Solos)
  - `nome`
  - `area`
  - `produtividade`
  - `estado` (Enum `EstadoTalhao`)
  - `coordenadas` (MultiPolygon - armazenado como String no sistema)

---

### 🖼️ 6. Imagens de Apoio
- **Descrição:** Imagens associadas a uma leitura, usadas para apoiar a análise dos talhões.
- **Campos principais:**
  - `id_img` (PK)
  - `id_leitura` (FK para Leituras)
  - `endereco`
  - `nome`

---

### 👥 7. Usuários
- **Descrição:** Cadastro de usuários do sistema, incluindo administradores, consultores e analistas.
- **Campos principais:**
  - `id_usuario` (PK)
  - `nome`
  - `senha`
  - `email` (único)
  - `administrador` (boolean)
  - `consultor` (boolean)
  - `analista` (boolean)

---

### 🏷️ 8. Classes
- **Descrição:** Cadastro das classes de classificação agrícola utilizadas para categorizar áreas dos talhões.
- **Campos principais:**
  - `id_classe` (PK)
  - `nome` (único)

---

### 🛠️ 9. Controle de Classificação
- **Descrição:**  
  Representa o **controle geral** de um processo de classificação para um talhão.  
  Guarda informações como tempos de interação manual, revisões e os responsáveis (analista e consultor).
- **Campos principais:**
  - `id_controle_classificacao` (PK)
  - `id_talhao` (FK para Talhões)
  - `date_time_created` (Timestamp de criação)
  - `time_spent_manual` (Tempo gasto na classificação manual)
  - `count_manual_interactions` (Quantidade de interações manuais)
  - `id_analista` (FK para Usuários)
  - `time_spent_revision` (Tempo gasto na revisão)
  - `id_consultor` (FK para Usuários)
  - `date_time_approved` (Timestamp de aprovação)

---

### ⚙️ 10. Classificação Automática
- **Descrição:**  
  Guarda as classificações automáticas geradas por IA referentes ao talhão.
- **Campos principais:**
  - `id_classificacao_automatica` (PK)
  - `id_controle_classificacao` (FK para Controle de Classificação)
  - `coordenadas_automatica` (MultiPolygon - armazenado como String no sistema)
  - `id_classe` (FK para Classes)
  - `area`

---

### 📝 11. Classificação Manual
- **Descrição:**  
  Guarda as classificações manuais feitas por analistas para corrigir ou aprimorar a classificação automática.
- **Campos principais:**
  - `id_classificacao_manual` (PK)
  - `id_controle_classificacao` (FK para Controle de Classificação)
  - `id_classe` (FK para Classes)
  - `coordenadas_manual` (MultiPolygon - armazenado como String no sistema)
  - `area`

---

### 🔍 12. Revisão de Classificação Manual
- **Descrição:**  
  Registro de revisões feitas pelos consultores em cima da classificação manual dos analistas, podendo incluir áreas de destaque e comentários.
- **Campos principais:**
  - `id_revisao_classificacao_manual` (PK)
  - `id_controle_classificacao` (FK para Controle de Classificação)
  - `coordenadas_destaque` (MultiPolygon - armazenado como String no sistema)
  - `comentario`

  ---