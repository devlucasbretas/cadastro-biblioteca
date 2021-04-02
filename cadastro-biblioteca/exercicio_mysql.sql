
-- Criação da tabela de endereço
CREATE TABLE endereco (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    rua VARCHAR(30),
    cep VARCHAR(8),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    uf_estado VARCHAR(2),
    compremento VARCHAR(255)
)

-- Criação da tabela editora
CREATE TABLE editora (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_endereco INT REFERENCES endereco(id)   
)

-- Criação da Tabela autor
CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_endereco INT REFERENCES endereco(id)
)

-- Criação da tabela livro
CREATE TABLE livro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    id_editora INT REFERENCES editora(id),
    id_autor INT REFERENCES autor(id),
    categoria VARCHAR(30)
)

-- Criação da tabela leitor
CREATE TABLE leitor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_endereco INT REFERENCES endereco(id)
)

-- Criação da tabela de empréstimos 
CREATE TABLE emprestimo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_emprestimo DATE,
    id_leitor INT REFERENCES leitor(id),
    id_livro INT REFERENCES livro(id)
)




