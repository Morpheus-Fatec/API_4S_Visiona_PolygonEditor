# Sprint 2 - Tarefas (07/04 - 27/04)

- **[Pendências](#pendências)**
  - [Conversão de Coordenadas](#conversão-de-coordenadas) Cesar - (08/04)
  - [Otimização da escrita no Banco de Dados](#otimização-da-escrita-no-banco-de-dados) Mateus - (07/04)
  - [Variáveis de Ambiente](#variáveis-de-ambiente-desenvolvimento--produção) Mateus - (09/04)
  - [Melhorias na Tela de Cadastro](#melhorias-na-tela-de-cadastro) Paloma - (10/04)
  - [Paginação dos Talhões](#paginação-dos-talhões) Gabriel - (11/04)

- **[Tasks](#tasks)**
  - [Wireframes de Telas Faltantes](#wireframes-de-telas-faltantes) Cesar / Mateus / Ricardo - (07/04)
  - [Controle de Estado dos Talhões](#controle-de-estado-dos-talhões) Mateus - (11/04)
  - [Fluxograma de Permissões](#fluxograma-de-permissões) Mateus - (10/04)
  - [CRUD de Usuários](#crud-de-usuários) Paloma / Vinicius - (21/04 / 13/04)
  - [Gerenciamento de Fazenda, Solo e Cultura](#gerenciamento-de-fazenda-solo-e-cultura) Ricardo / Cesar - (13/04)
  - [Classificação Manual do Talhão](#classificação-manual-do-talhão) Elbert / Ricardo - (21/04)
  - [Revisão da classificação manual](#revisão-da-classificação-manual) Pendente - (21/04)
  - [Operações com Talhões](#operações-com-talhões) Elbert / Ricardo - (21/04)



---

<br><br>

# Pendências

## Conversão de Coordenadas

**Responsável:** [@cesarpelogia](https://github.com/cesarpelogia)  
**Back-end**  
**Dificuldade:** 3  
**Prioridade:** 3  
**Data de entrega:** 08/04/2025  
**Descrição:**  
- As coordenadas inseridas como string devem ser convertidas para dados geométricos no banco de dados, tanto na ida quanto na volta.

<br>

## Otimização da escrita no Banco de Dados

**Responsável:** [@MateusMSoares](https://github.com/MateusMSoares)  
**Back-end**  
**Dificuldade:** 1  
**Prioridade:** 3  
**Data de entrega:** 07/04/2025  
**Descrição:**  
- O sistema deve rapidamente persistir os talhões e suas respectivas propriedades no banco de dados.

## Variáveis de Ambiente (Desenvolvimento / Produção)

**Responsável:** [@MateusMSoares](https://github.com/MateusMSoares)  
**FullStack**  
**Dificuldade:** 1  
**Prioridade:** 3  
**Data de entrega:** 09/04/2025  
**Descrição:**  
- Isolar o ambiente de desenvolvimento com o de produção por meio de arquivos .env.

<br>

## Melhorias na Tela de Cadastro

**Responsável:** [@PalomaSoaresR](https://github.com/PalomaSoaresR)  
**FullStack**  
**Dificuldade:** 2  
**Prioridade:** 3  
**Data de entrega:** 10/04/2025  
**Descrição:**  
- **Front-end:**  
  - Impedir que campos obrigatórios estejam nulos.  
  - Fornecer um modal que consiga apresentar os erros lançados pelo back.  
- **Back-end:**  
  - Lançar exceções em pontos críticos do processamento da leitura, fornecendo mensagens de erro claras.  
  - Adicionar ao ErrorResponse códigos relacionados ao erro.

<br>

## Paginação dos Talhões

**Responsável:** [@gabriel15asouza](https://github.com/gabriel15asouza)  
**FullStack**  
**Dificuldade:** 1  
**Prioridade:** 3  
**Data de entrega:** 11/04/2025  
**Descrição:**  
- Implementar exibição de 20 itens por página para todas as listagens da aplicação.

---

<br><br>

# Tasks

## Classificação Manual do Talhão

**Épico:** Épico 2: Revisão e Classificação manual de Talhões  
**Responsáveis:** [@ElbertJean](https://github.com/ElbertJean) (Front) / [@r1cardvs](https://github.com/r1cardvs) (Back)  

**Front-end:** Elbert  
**Dificuldade:** 3  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  

**Back-end:** Ricardo  
**Dificuldade:** 3  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  

**Descrição:**  
- **Front-end:** Permitir ao analista criar uma versão manual da classificação.  
- **Back-end:** Armazenar a versão manual criada pelo analista.

<br>

## Revisão da classificação manual

**Épico:** Épico 2: Revisão e Classificação manual de Talhões  
**Responsáveis:** PENDENTE

**Front-end:**  
**Dificuldade:** 3  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  

**Back-end:** PENDENTE  
**Dificuldade:** 3  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  

**Descrição:**  
- **Front-end:**  
  - Implementar uma visão que possibilite uma revisão manual.  
  - Permitir que altere o estado do talhão (Sem Solução, Reprovado e Aprovado).  
  - Permitir que sejam feitas marcações na classificação manual e seja atribuído um label a essa marcação.  
- **Back-end:**  
  - Receber a nova camada de revisão, sendo uma geometria e um "comentário".  
  - Atualizar talhão.

<br>

## Controle de Estado dos Talhões

**Responsável:** [@MateusMSoares](https://github.com/MateusMSoares)  
**FullStack**  
**Dificuldade:** 2  
**Prioridade:** 3  
**Data de entrega:** 11/04/2025  
**Descrição:**  
- Implementar fluxo de transição entre os estados: Pendente, Em Análise, Sem Solução, Reprovado e Aprovado.

## Operações com Talhões

**Responsáveis:** [@ElbertJean](https://github.com/ElbertJean) (Front) / [@r1cardvs](https://github.com/r1cardvs) (Back)  

**Front-end:**  
**Dificuldade:** 2  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  

**Back-end:**  
**Dificuldade:** 2  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  

**Descrição:**  
- **Front-end:**  
  - Permitir editar as propriedades do talhão, exceto seu status.  
- **Back-end:**  
  - Atualizar talhão.

<br>

## CRUD de Usuários

**Responsáveis:** [@PalomaSoaresR](https://github.com/PalomaSoaresR) (Front) / [@viniciusFUU](https://github.com/viniciusFUU) (Back)  

**Front-end:** Paloma / Cesar  
**Dificuldade:** 2  
**Prioridade:** 2  
**Data de entrega:** 21/04/2025  

**Back-end:** Vinicius  
**Dificuldade:** 2  
**Prioridade:** 2  
**Data de entrega:** 13/04/2025  

**Descrição:**  
- **Front-end:**  
  - Interface para gerenciar usuários (criar, editar e excluir), apenas acessada pelo administrador.  
  - Definir campos obrigatórios para o cadastro de um usuário e alinhar com PO.  
  - Cada usuário pode ter apenas um papel.  
  - Existem 3 papéis: administrador, consultor e analista.  
- **Back-end:**  
  - CRUD de usuário.

<br>

## Gerenciamento de Fazenda, Solo e Cultura

**Responsáveis:** [@r1cardvs](https://github.com/r1cardvs) (Front) / [@cesarpelogia](https://github.com/cesarpelogia) (Back)  

**Front-end:** Ricardo  
**Dificuldade:** 1  
**Prioridade:** 1  
**Data de entrega:** 13/04/2025  

**Back-end:** Cesar  
**Dificuldade:** 1  
**Prioridade:** 1  
**Data de entrega:** 13/04/2025  

**Descrição:**  
- **Front-end:**  
  - Criar interface de gerenciamento para Fazenda, Solo e Cultura.  
- **Back-end:**  
  - Implementar endpoints de CRUD para Fazenda, Solo e Cultura.

<br>

## Wireframes de Telas Faltantes

**Responsáveis:** [@cesarpelogia](https://github.com/cesarpelogia) / [@MateusMSoares](https://github.com/MateusMSoares) / [@r1cardvs](https://github.com/r1cardvs)  

**Documentação:** Cesar / Mateus / Ricardo  
**Dificuldade:** 1  
**Prioridade:** 3  
**Data de entrega:** 07/04/2025  

**Descrição:**  
- Desenhar wireframes das telas de:  
  - Cadastro de usuários  
  - Controle de talhões  
- Basear nos fluxos e permissões definidos previamente.

<br>

## Fluxograma de Permissões

**Responsável:** [@MateusMSoares](https://github.com/MateusMSoares)  

**Documentação:** Mateus  
**Dificuldade:** 1  
**Prioridade:** 3  
**Data de entrega:** 10/04/2025  

**Descrição:**  
- Criar documento visual contendo os fluxos de acesso e permissões.  
- Detalhar o que cada tipo de usuário pode ou não fazer no sistema.

---

<br><br>

# Sprint 3 - Tarefas (05/05 - 25/05)

## Segurança e Autenticação

**Responsáveis:** [@gabriel15asouza](https://github.com/gabriel15asouza) (Front) / [@Isaque-BD](https://github.com/Isaque) (Back)  

**Front-end:** Gabriel  
**Dificuldade:** 2  
**Prioridade:** 2  
**Data de entrega:** 21/04/2025  

**Back-end:** Isaque  
**Dificuldade:** 2  
**Prioridade:** 2  
**Data de entrega:** 21/04/2025  

**Descrição:**  
- **Front-end:**  
  - Restringir acesso a rotas e componentes com base no papel do usuário.  
- **Back-end:**  
  - Bloquear endpoints para usuários não autorizados.  
  - Implementar autenticação e autorização segura.

<br>

## Localização por Coordenadas

**Responsável:** [@viniciusFUU](https://github.com/viniciusFUU)  
**Front-end**  
**Dificuldade:** 2  
**Prioridade:** 3  
**Data de entrega:** 21/04/2025  
**Descrição:**  
- Detectar automaticamente cidade e estado ao importar talhões via GeoJSON.
