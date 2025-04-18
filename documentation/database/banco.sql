CREATE DATABASE Demeter;

\c Demeter;

CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TYPE estado_talhao AS ENUM ('Pendente', 'Aprovado', 'Em Analise', 'Reprovado', 'Sem Solução');

CREATE TABLE Fazendas (
    id_fazenda SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(100) NOT NULL
);

CREATE TABLE Culturas (
    id_cultura SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Solos (
    id_solo SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Leituras (
    id_leitura SERIAL PRIMARY KEY
);

CREATE TABLE Talhoes (
    id_talhao SERIAL PRIMARY KEY,
    id_leitura INTEGER REFERENCES Leituras(id_leitura) ON DELETE SET NULL,
    id_fazenda INTEGER REFERENCES Fazendas(id_fazenda) ON DELETE CASCADE,
    safra VARCHAR(7) NOT NULL,
    id_cultura INTEGER REFERENCES Culturas(id_cultura) ON DELETE SET NULL,
    id_solo INTEGER REFERENCES Solos(id_solo) ON DELETE SET NULL,
    nome VARCHAR(255) NOT NULL,
    area DECIMAL(10,2) NOT NULL,
    produtividade FLOAT NOT NULL,
    estado estado_talhao NOT NULL,
    coordenadas geometry(MultiPolygon, 4326) NOT NULL
);

CREATE TABLE ImagensApoio (
    id_img SERIAL PRIMARY KEY,
    id_leitura INTEGER REFERENCES Leituras(id_leitura) ON DELETE CASCADE,
    endereco TEXT NOT NULL,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE Usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    administrador BOOLEAN NOT NULL DEFAULT FALSE,
    consultor BOOLEAN NOT NULL DEFAULT FALSE,
    analista BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE Classes (
    id_classe SERIAL PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE classificacoes_originais (
    id_classificacao SERIAL PRIMARY KEY,
    coordenadas_originais geometry(MultiPolygon, 4326) NOT NULL,
    id_talhao INTEGER NOT NULL REFERENCES Talhoes(id_talhao) ON DELETE CASCADE,
    id_classe INTEGER NOT NULL REFERENCES Classes(id_classe) ON DELETE CASCADE
    area DECIMAL(10,2) NOT NULL
);

CREATE TABLE classificacoes_revisadas (
    id SERIAL PRIMARY KEY,
    id_classificacao_original INTEGER NOT NULL REFERENCES classificacoes_originais(id_classificacao) ON DELETE CASCADE,
    coordenadas geometry(MultiPolygon, 4326) NOT NULL,
    data_inicio_analise TIMESTAMP,
    data_fim_analise TIMESTAMP,
    id_analista INTEGER NOT NULL REFERENCES Usuarios(id_usuario),
    status estado_talhao NOT NULL
    area DECIMAL(10,2) NOT NULL
);