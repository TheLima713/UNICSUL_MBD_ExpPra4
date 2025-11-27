-- Listar livros disponiveis
SELECT
	Titulo,
    AnoPublicacao
FROM Livro
WHERE Status = 'disponivel';

-- Listar os leitores em ordem alfabética
SELECT
	Nome,
    Contato
FROM Leitor
ORDER BY Nome ASC;

-- Listar os livros e seus autores
SELECT
	L.Titulo,
    A.Nome AS Autor
FROM Livro L
JOIN Autor A
	ON L.idAutor = A.idAutor
;
-- Listagem de emprestimo completa
SELECT
	E.idEmprestimo,
	L.Titulo,
	Le.Nome AS Leitor,
	V.Nome AS Voluntario,
	E.DataEmprestimo,
	E.DataPrevista,
	E.DataDevolucao
FROM Emprestimo E
LEFT JOIN Livro L
	ON E.CodigoLivro = L.CodigoLivro
LEFT JOIN Leitor Le
	ON E.idLeitor = Le.idLeitor
LEFT JOIN Voluntario V
	ON E.idVoluntario = V.idVoluntario
;

-- Listagem de emprestimos atrasados
SELECT
	E.idEmprestimo,
	L.Titulo,
	Le.Nome AS Leitor,
	V.Nome AS Voluntario,
	E.DataEmprestimo,
	E.DataPrevista,
	E.DataDevolucao
FROM Emprestimo E
LEFT JOIN Livro L
	ON E.CodigoLivro = L.CodigoLivro
LEFT JOIN Leitor Le
	ON E.idLeitor = Le.idLeitor
LEFT JOIN Voluntario V
	ON E.idVoluntario = V.idVoluntario
WHERE 1=1
	AND now() > E.DataPrevista
    AND DataDevolucao IS NULL
;