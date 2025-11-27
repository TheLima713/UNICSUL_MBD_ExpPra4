CREATE DATABASE BibliotecaLivroLivre;
USE BibliotecaLivroLivre;

-- ==========================
-- TABELA: VOLUNTARIO
-- ==========================
CREATE TABLE Voluntario (
    idVoluntario INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Funcao VARCHAR(100)
);

-- ==========================
-- TABELA: AUTOR
-- ==========================
CREATE TABLE Autor (
    idAutor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    idVoluntario INT NOT NULL,-- Voluntario que cadastrou o Autor
    FOREIGN KEY (idVoluntario) REFERENCES Voluntario(idVoluntario)
);

-- ==========================
-- TABELA: CATEGORIA
-- ==========================
CREATE TABLE Categoria (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL
);

-- ==========================
-- TABELA: LIVRO
-- ==========================
CREATE TABLE Livro (
    CodigoLivro INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(200) NOT NULL,
    idAutor INT NOT NULL,
    AnoPublicacao YEAR,
    Status ENUM('disponivel','emprestado') DEFAULT 'disponivel',
    idCategoria INT NOT NULL,
    idVoluntario INT NOT NULL,-- Voluntario que cadastrou o Livro
    FOREIGN KEY (idAutor) REFERENCES Autor(idAutor),
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idVoluntario) REFERENCES Voluntario(idVoluntario)
);

-- ==========================
-- TABELA: LEITOR
-- ==========================
CREATE TABLE Leitor (
    idLeitor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(120) NOT NULL,
    Contato VARCHAR(80),
    Endereco VARCHAR(150)
);

-- ==========================
-- TABELA: EMPRESTIMO
-- ==========================
CREATE TABLE Emprestimo (
    idEmprestimo INT AUTO_INCREMENT PRIMARY KEY,
    DataEmprestimo DATE NOT NULL,
    DataPrevista DATE NOT NULL,
    DataDevolucao DATE,
    CodigoLivro INT NOT NULL,
    idLeitor INT NOT NULL,
    idVoluntario INT NOT NULL,-- Voluntario que cadastrou o Emprestimo
    FOREIGN KEY (CodigoLivro) REFERENCES Livro(CodigoLivro),
    FOREIGN KEY (idLeitor) REFERENCES Leitor(idLeitor),
    FOREIGN KEY (idVoluntario) REFERENCES Voluntario(idVoluntario)
);
