-- 1. Remover um leitor sem empréstimos ativos
DELETE FROM Leitor
WHERE idLeitor = 3;

-- 2. Remover categoria não utilizada
DELETE FROM Categoria
WHERE idCategoria = 3;

-- 3. Remover um empréstimo cancelado
DELETE FROM Emprestimo
WHERE idEmprestimo = 2;
