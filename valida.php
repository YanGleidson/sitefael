<?php



// Conectar ao banco de dados
$db = new PDO('mysql:host=localhost;dbname=bdsitefael', 'root', '');

// Verificar se o formulário de login foi enviado
if (isset($_POST['login.html'])) {

    // Validar os dados do formulário
    $nomeusuario = filter_input(INPUT_POST, 'nomeusuario', FILTER_SANITIZE_STRING);
    $senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);

    // Escapar dos dados
    $nomeusuario = mysqli_real_escape_string($dbsitefael, $nomeusuario);
    $senha = mysqli_real_escape_string($dbsitefael, $senha);

    // Fazer a consulta ao banco de dados
    $sql = 'SELECT * FROM bdsitefael WHERE usuarios = ? AND password = ?';
    $stmt = $db->prepare($sql);
    $stmt->bindParam(1, $nomeusuario);
    $stmt->bindParam(2, $senha);
    $stmt->execute();

    // Verificar os resultados da consulta
    $user = $stmt->fetch();
    if ($user) {

        // Fazer login no usuário
        session_start();
        $_SESSION['usuarios'] = $user['nome'];

        // Redirecionar o usuário para a página inicial
        header('Location: homepromocao.php');

    } else {

        // Exibir uma mensagem de erro
        echo 'Nome de usuário e/ou senha incorretos.';

    }

}

?>




