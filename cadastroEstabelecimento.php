<?php
include("conexao.php");


$nomefantasia=$_POST['nomefantasia'];
$cnpj=$_POST['cnpj'];
$telefone=$_POST['telefone'];
$email=$_POST['email'];
$senha=$_POST['senha'];

$sql="INSERT INTO cadastro( nomefantasia, cnpj, telefone, email, senha) 
VALUES('$nomefantasia', '$cnpj', '$telefone', '$email', '$senha')";


if(mysqli_query($conexao, $sql)){
    echo "sucesso";
    
}
else{
    echo "ERRO" .mysqli_connect_error($conexao);
}
mysqli_close($conexao);

?>