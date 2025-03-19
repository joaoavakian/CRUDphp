-- Cria o banco de dados, se não existir
CREATE DATABASE IF NOT EXISTS social_media;

-- Seleciona o banco de dados para uso
USE social_media;

-- Cria a tabela de usuários
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Cria a tabela de postagens
CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
); 

-- Inserindo usuários de exemplo
INSERT INTO users (username, email, password) VALUES
('joao_silva', 'joao@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'), -- senha: password
('maria_santos', 'maria@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('pedro_oliveira', 'pedro@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('ana_costa', 'ana@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('carlos_pereira', 'carlos@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('julia_ferreira', 'julia@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('lucas_rodrigues', 'lucas@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('beatriz_almeida', 'beatriz@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('rafael_souza', 'rafael@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('isabela_lima', 'isabela@email.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- Inserindo postagens de exemplo
INSERT INTO posts (user_id, content, created_at) VALUES
(1, 'Olá pessoal! Acabei de me juntar a esta rede social. Espero fazer muitos amigos aqui!', '2024-03-15 10:00:00'),
(2, 'Compartilhando meu novo projeto de programação. Estou muito feliz com o resultado!', '2024-03-15 11:30:00'),
(3, 'Alguém quer jogar videogame hoje à noite?', '2024-03-15 14:15:00'),
(4, 'Acabei de ler um livro incrível! Recomendo a todos.', '2024-03-15 16:45:00'),
(5, 'Fiz uma viagem incrível no fim de semana. Compartilhando algumas fotos!', '2024-03-15 18:20:00'),
(6, 'Novo recorde pessoal na academia hoje! 💪', '2024-03-15 20:00:00'),
(7, 'Alguém tem dicas para aprender programação?', '2024-03-15 21:30:00'),
(8, 'Hoje é dia de pizza! 🍕', '2024-03-15 22:15:00'),
(9, 'Acabei de terminar um curso online. Muito conteúdo interessante!', '2024-03-15 23:00:00'),
(10, 'Boa noite a todos! Amanhã tem mais! 😊', '2024-03-15 23:45:00'); 
