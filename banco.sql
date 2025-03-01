CREATE DATABASE polygoneditor;

CREATE TABLE status (
    UniqueID SERIAL PRIMARY KEY,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE tipo_solo (
    UniqueID SERIAL PRIMARY KEY,
    tipo VARCHAR(30) NOT NULL
);

CREATE TABLE papel (
    UniqueID SERIAL PRIMARY KEY,
    tipo VARCHAR(15) NOT NULL,
    descricao TEXT,
    nivel_acesso INT NOT NULL
);

CREATE TABLE usuario (
    UniqueID SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    papel_id INT REFERENCES papel(UniqueID)
);

CREATE TABLE fazenda (
    UniqueID SERIAL PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cidade VARCHAR(255) NOT NULL,
    Estado VARCHAR(255) NOT NULL,
    user_resp_id INT REFERENCES Usuarios(UniqueID)
);

CREATE TABLE produtividade (
    UniqueID SERIAL PRIMARY KEY,
    talhao_id INT REFERENCES Talhao(UniqueID),
    ano INT NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL
);

CREATE TABLE talhao (
    UniqueID SERIAL PRIMARY KEY,
    geojson TEXT NOT NULL,
    fazenda_id INT REFERENCES Fazenda(UniqueID),
    cultura VARCHAR(255),
    produtividade_id INT REFERENCES Produtividade(UniqueID),
    area DECIMAL(10,2),
    tipo_solo_id INT REFERENCES tipo_solo(UniqueID),
    status_id INT REFERENCES status(UniqueID),
    analista_id INT REFERENCES Usuarios(UniqueID)
);

CREATE TABLE talhao_hist (
    UniqueID SERIAL PRIMARY KEY,
    geojson TEXT NOT NULL,
    data_atualizacao TIMESTAMP NOT NULL,
    analista_id INT REFERENCES Usuarios(UniqueID),
    status_id INT REFERENCES status(UniqueID)
);