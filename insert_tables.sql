-- VOLUNTARIOS
INSERT INTO Voluntario (Nome, Funcao) VALUES
('Carla Ramos', 'Atendente'),
('João Medeiros', 'Catalogador'),
('Beatriz Silva', 'Administrador');

-- AUTORES
INSERT INTO Autor (Nome, idVoluntario) VALUES
('Machado de Assis', 2),
('Clarice Lispector', 2),
('George Orwell', 3);

-- CATEGORIAS
INSERT INTO Categoria (NomeCategoria) VALUES
('Romance'),
('Ficção Científica'),
('Drama');

-- LIVROS
INSERT INTO Livro (Titulo, idAutor, AnoPublicacao, Status, idCategoria, idVoluntario) VALUES
 ('Dom Casmurro', 1, 1901, 'disponivel', 1, 1),
('A Hora da Estrela', 2, 1977, 'disponivel', 3, 1),
('1984', 3, 1949, 'disponivel', 2, 3);

-- LEITORES
INSERT INTO Leitor (Nome, Contato, Endereco) VALUES
('Ana Costa', 'email1@example.com', 'Rua das Flores, 123'),
('Pedro Souza', 'email2@example.com', 'Av. Brasil, 450'),
('Marina Duarte', 'email3@example.com', 'Rua Azul, 89');

-- EMPRESTIMOS
INSERT INTO Emprestimo (DataEmprestimo, DataPrevista, DataDevolucao, CodigoLivro, idLeitor, idVoluntario) VALUES
('2025-02-01', '2025-02-15', NULL, 1, 1, 1),
('2025-02-03', '2025-02-17', NULL, 3, 2, 3),
('2025-02-05', '2025-02-20', NULL, 2, 3, 1);
