CREATE DATABASE Demeter;

\c Demeter;

-- Extensão PostGIS: Habilita o suporte a dados geoespaciais no banco de dados, permitindo operações com geometria e geografia.
CREATE EXTENSION IF NOT EXISTS postgis;

-- Tipo ENUM estado_talhao: Define os possíveis estados de um talhão.
CREATE TYPE estado_talhao AS ENUM ('Pendente', 'Aprovado', 'Em Analise', 'Reprovado', 'Sem Solução');

-- Tabela Fazendas: Armazena informações sobre as fazendas cadastradas.
CREATE TABLE Fazendas (
    id_fazenda SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL,
    cidade VARCHAR(255),
    estado VARCHAR(100)
);

-- Tabela Culturas: Armazena os tipos de culturas agrícolas.
CREATE TABLE Culturas (
    id_cultura SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

-- Tabela Solos: Armazena os tipos de solos cadastrados.
CREATE TABLE Solos (
    id_solo SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

-- Tabela Leituras: Armazena informações sobre as leituras realizadas.
CREATE TABLE Leituras (
    id_leitura SERIAL PRIMARY KEY
);

-- Tabela Talhoes: Armazena informações sobre os talhões cadastrados.
CREATE TABLE Talhoes (
    id_talhao SERIAL PRIMARY KEY,
    id_leitura INTEGER REFERENCES Leituras(id_leitura) ON DELETE SET NULL,
    id_fazenda INTEGER REFERENCES Fazendas(id_fazenda) ON DELETE CASCADE,
    safra VARCHAR(7) NOT NULL,
    id_cultura INTEGER REFERENCES Culturas(id_cultura) ON DELETE SET NULL,
    id_solo INTEGER REFERENCES Solos(id_solo) ON DELETE SET NULL,
    nome VARCHAR(255) NOT NULL,
    area DECIMAL(10,2) NOT NULL,
    produtividade FLOAT,
    estado estado_talhao NOT NULL,
    coordenadas geometry(MultiPolygon, 4326) NOT NULL
);

-- Tabela ImagensApoio: Armazena imagens relacionadas às leituras.
CREATE TABLE ImagensApoio (
    id_img SERIAL PRIMARY KEY,
    id_leitura INTEGER REFERENCES Leituras(id_leitura) ON DELETE CASCADE,
    endereco TEXT NOT NULL,
    nome VARCHAR(255) NOT NULL
);

-- Tabela Usuarios: Armazena informações sobre os usuários do sistema.
CREATE TABLE Usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    administrador BOOLEAN NOT NULL DEFAULT FALSE,
    consultor BOOLEAN NOT NULL DEFAULT FALSE,
    analista BOOLEAN NOT NULL DEFAULT FALSE
);

-- Inserção do usuário administrador para primeiro acesso
INSERT INTO Usuarios (nome, email, senha, administrador, consultor, analista)
VALUES ('Administrador', 'admim@admin.com.br', 'admin', TRUE, FALSE, FALSE);


-- Tabela Classes: Armazena as classes de classificação utilizadas no sistema.
CREATE TABLE Classes (
    id_classe SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

-- Tabela controle_classificacao: Armazena informações de controle sobre as classificações.
CREATE TABLE controle_classificacao (
    id_controle_classificacao SERIAL PRIMARY KEY,
    id_talhao BIGINT NOT NULL,
    date_time_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    time_spent_manual BIGINT,
    count_manual_interactions INT,
    id_analista BIGINT,
    time_Spent_Revision BIGINT,
    id_consultor BIGINT,
    date_time_approved TIMESTAMP,

    CONSTRAINT fk_controle_field FOREIGN KEY (id_talhao) REFERENCES talhoes(id_talhao),
    CONSTRAINT fk_controle_analista FOREIGN KEY (id_analista) REFERENCES usuarios(id_usuario),
    CONSTRAINT fk_controle_consultor FOREIGN KEY (id_consultor) REFERENCES usuarios(id_usuario)
);

-- Tabela classficacao_automatica: Armazena as classificações automáticas realizadas.
CREATE TABLE classficacao_automatica (
    id_classificacao_automatica SERIAL PRIMARY KEY,
    id_controle_classificacao BIGINT NOT NULL,
    coordenadas_automatica geometry(MultiPolygon, 4326),
    id_classe BIGINT NOT NULL,
    area NUMERIC(10, 2) NOT NULL,

    CONSTRAINT fk_automatica_controle FOREIGN KEY (id_controle_classificacao) REFERENCES controle_classificacao(id_controle_classificacao),
    CONSTRAINT fk_automatica_classe FOREIGN KEY (id_classe) REFERENCES classes(id_classe)
);

-- Tabela classificacao_manual: Armazena as classificações manuais realizadas pelos analistas.
CREATE TABLE classificacao_manual (
    id_classificacao_manual SERIAL PRIMARY KEY,
    id_controle_classificacao BIGINT NOT NULL,
    id_classe BIGINT NOT NULL,
    coordenadas_manual geometry(MultiPolygon, 4326),
    area NUMERIC(10, 2) NOT NULL,

    CONSTRAINT fk_manual_controle FOREIGN KEY (id_controle_classificacao) REFERENCES controle_classificacao(id_controle_classificacao),
    CONSTRAINT fk_manual_classe FOREIGN KEY (id_classe) REFERENCES classes(id_classe)
);

-- Tabela revisao_classificacao_manual: Armazena revisões realizadas pelos consultores em classificações manuais.
CREATE TABLE revisao_classificacao_manual (
    id_revisao_classificacao_manual SERIAL PRIMARY KEY,
    id_controle_classificacao BIGINT NOT NULL,
    coordenadas_destaque geometry(MultiPolygon, 4326),
    comentario TEXT,

    CONSTRAINT fk_revisao_controle FOREIGN KEY (id_controle_classificacao) REFERENCES controle_classificacao(id_controle_classificacao)
);