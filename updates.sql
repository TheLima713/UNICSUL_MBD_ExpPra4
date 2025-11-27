-- 1. Atualizar status de um livro emprestado
UPDATE Livro
SET Status = 'emprestado'
WHERE CodigoLivro = 1;

-- 2. Alterar endereço do leitor
UPDATE Leitor
SET Endereco = 'Rua das Acácias, 500'
WHERE idLeitor = 2;

-- 3. Ajustar data de devolução de um empréstimo
UPDATE Emprestimo
SET DataDevolucao = '2025-02-10'
WHERE idEmprestimo = 1;
