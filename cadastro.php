<?php
include("conexao.php");


$nome=$_POST['nome'];
$sobrenome=$_POST['sobrenome'];
$telefone=$_POST['telefone'];
$email=$_POST['email'];
$senha=$_POST['senha'];

$sql="INSERT INTO usuarios( nome, sobrenome, telefone, email, senha) 
VALUES('$nome', '$sobrenome', '$telefone', '$email', '$senha')";


if(mysqli_query($conexao, $sql)){
    echo "sucesso";
    
}
else{
    echo "ERRO" .mysqli_connect_error($conexao);
}
mysqli_close($conexao);

?>






