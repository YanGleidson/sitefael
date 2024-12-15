<?php
include("conexao.php");


$nome=$_POST['nomeproduto'];
$marca=$_POST['marca'];
$quantidade=$_POST['quantidade'];

$valor=$_POST['valor'];

$sql="INSERT INTO produtos( nomeproduto, marca, quantidade, valor) 
VALUES('$nome', '$marca', '$quantidade', '$valor')";


if(mysqli_query($conexao, $sql)){
    echo "sucesso";
    
}
else{
    echo "ERRO" .mysqli_connect_error($conexao);
}
mysqli_close($conexao);

?>