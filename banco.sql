CREATE DATABASE polygoneditor;

CREATE TABLE status (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE tipo_solo (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);

CREATE TABLE papel (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(15) NOT NULL
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    papel_id INT NOT NULL REFERENCES papel(id) ON DELETE CASCADE
);

CREATE TABLE fazenda (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL
);

CREATE TABLE talhao (
    id SERIAL PRIMARY KEY,
    geojson TEXT NOT NULL,
    fazenda_id INT NOT NULL REFERENCES fazenda(id) ON DELETE CASCADE,
    cultura VARCHAR(255),
    area DECIMAL(10,2),
    tipo_solo_id INT REFERENCES tipo_solo(id) ON DELETE SET NULL,
    status_id INT REFERENCES status(id) ON DELETE SET NULL,
    analista_id INT REFERENCES usuario(id) ON DELETE SET NULL
);

CREATE TABLE talhao_imagem (
    id SERIAL PRIMARY KEY,
    talhao_id INT NOT NULL REFERENCES talhao(id) ON DELETE CASCADE,
    imagem_url TEXT NOT NULL, -- Caminho do arquivo no servidor ou S3
    data_upload TIMESTAMP DEFAULT now()
);

CREATE TABLE produtividade (
    id SERIAL PRIMARY KEY,
    talhao_id INT NOT NULL REFERENCES talhao(id) ON DELETE CASCADE,
    ano INT NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL
);

CREATE TABLE talhao_hist (
    id SERIAL PRIMARY KEY,
    talhao_id INT NOT NULL REFERENCES talhao(id) ON DELETE CASCADE,
    geojson TEXT NOT NULL,
    data_atualizacao TIMESTAMP DEFAULT now(),
    analista_id INT REFERENCES usuario(id) ON DELETE SET NULL,
    status_id INT REFERENCES status(id) ON DELETE SET NULL
);
