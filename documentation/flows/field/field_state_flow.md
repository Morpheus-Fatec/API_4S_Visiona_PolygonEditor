# 🔄 Ciclo do Controle de Classificação

O fluxo de controle de classificação no sistema funciona da seguinte forma:

1. **📥 Leitura criada:**  
   Um **consultor** carrega arquivos de talhões, classificações automáticas e imagens de apoio → isso gera uma nova **Leitura**.

2. **🌱 Criação do Talhão:**  
   A partir dos dados carregados, o sistema cria os **Talhões**, inicialmente com estado `Pendente`.

3. **⚙️ Classificação Automática:**  
   O sistema associa a **Classificação Automática** ao talhão.

4. **🛠️ Controle de Classificação criado:**  
   Para cada talhão, é criado um **Controle de Classificação**, onde será armazenado o histórico de atividades de classificação.

5. **⌛ Em Análise:**  
   Após a classificação manual, o talhão fica com o status `Em Análise`.

6. **🔎 Avaliação da Classificação Manual:**  
   O **consultor** avalia a classificação manual:

   - Se **Aprovado** → O talhão muda para `Aprovado` ✅
   - Se **Reprovado** → O talhão muda para o status `Reprovado` e retorna para o **analista** fazer uma nova rodada de ajustes 🔄

6. **🏁 Finalização:**  
   Quando o talhão é aprovado, a opção de download dos dados é habilitada e o ciclo de classificação do talhão é encerrado.
