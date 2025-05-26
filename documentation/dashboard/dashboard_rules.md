# 📊 Dashboard

## 📌 Gráfico de Qualidade das Análises

Este conjunto de gráficos apresenta um comparativo da qualidade das análises realizadas por um analista em relação ao desempenho de toda a equipe. Para isso, as análises são classificadas em três grupos:

- **Análises aprovadas sem nenhuma solicitação de revisão**  
  Cor: Azul  
  Indica análises realizadas de forma mais assertiva, sem necessidade de retrabalho.

- **Análises com até duas reprovações**  
  Cor: Amarelo  
  Indica análises que exigiram algum retrabalho, mas ainda estão dentro de um espectro aceitável.

- **Análises com mais de duas reprovações**  
  Cor: Vermelho  
  Indica análises que demandaram muito retrabalho, sendo consideradas mais críticas.

São exibidos dois gráficos: um referente às análises feitas pelo analista individualmente e outro com a somatória das análises de toda a equipe.

---

## 📈 Gráfico de Desempenho do Analista

Esse conjunto de gráficos permite ao usuário analisar o trabalho de cada analista no mês atual, trazendo uma relação de análises entregues, pendentes e reprovadas por analista.

**Filtros possíveis:**  
- Mês da análise: Valor numérico de 1 até 12

---

## ⚙️ Métrica de Produtividade

Apenas um número sendo exibido em um card, trazendo o valor racional da soma de toda área que o analista teve de talhões aprovados, pela quantidade de tempo dedicado às análises.

**Fórmula:**  
Área Total Aprovada de Análises / Tempo Gasto em Análises

No card será exibido um valor numérico com a unidade metros quadrados por tempo, trazendo os valores do analista em comparação com os mesmos valores de toda a equipe somada.

---

## 📅 Produtividade do Analista por Mês

Esse conjunto de gráficos representa a produção e entrega do analista por um intervalo de tempo, sendo disponível para o usuário analisar toda a produtividade do analista por um ano.

**Filtros possíveis:**  
- Ano de exibição  
  Tipo: numérico  
  Dados: Anos presentes na base

---

## 🧮 Gráfico Análise de Produtividade do Consultor

Esse conjunto de gráficos representa a produção e entrega do consultor por um intervalo de tempo, sendo disponível para o usuário analisar toda a produtividade do consultor por um ano.

**Filtros possíveis:**  
- Ano de exibição  
  Tipo: numérico  
  Dados: Anos presentes na base

---

## 🗂️ Painel de Controle de Análise e Revisão dos Talhões

O painel de controle será útil para a visualização geral e situacional do talhão.

Será exibida uma tabela contendo as seguintes informações:
- Nome do talhão
- Data de entrada no sistema
- Nome do analista responsável pela análise
- Tempo total da análise
- Quantidade de análises realizadas até o momento
- Nome do consultor responsável
- Situação (aprovado / reprovado)
- Tempo da revisão
- Data de aprovação
- Tempo total que o talhão está no sistema

Caso o talhão não possua análise ou revisão, o campo correspondente estará nulo ou exibirá um aviso (em definição).

---

## 🧠 Gráfico Saúde da Análise Automática

Este gráfico tem como objetivo analisar a efetividade das análises automáticas, trazendo uma visão de quanto trabalho foi aplicado pelos analistas e consultores para concluir a entrega dos talhões.

No gráfico é possível analisar a diferença total entre a quantidade de classificações no início do processo e a quantidade de classificações ao final do processo, sempre considerando os últimos quatro meses.

---

## ✅ Métrica da Qualidade da Classificação Automática

Esta métrica traz um valor racional dado pela fórmula:

**Quantidade de talhões marcados como "sem solução" / Número total de talhões analisados * 100**

Esse valor irá trazer a porcentagem de talhões marcados como "sem solução", mudando de cor de acordo com o número: mais azul escuro próximo de 0 e mais vermelho próximo de 100.

---

## 🟩 Métrica de Talhões Sem Edição

Será mostrado em um card o número de talhões que não foi necessário a edição da classificação na análise.

Ou seja, contabiliza os talhões em que a classificação inicial é igual à classificação final.

---

[⬅️ Voltar ao início](../../README.md)

---