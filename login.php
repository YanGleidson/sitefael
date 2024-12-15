<?php
include("conexao.php");






if(!empty($_POST) AND (empty($_POST['nomeusuario']) OR empty($_POST['senha']))) {
    header("Location: login.php"); exit;
}

$link = new PDO ("mysql:localhost; bdname=bdsitefael","root", "");

$nomeusuario = $_POST['nomeusuario'];
$senha = $_POST['senha'];

$query = $link->prepare('SELECT * FROM bdsitefael.usuarios WHERE login=:user and senha=:senha;');

$query->bindValue(":nomeusuario", $nomeusuario);
$query->bindValue(":senha", $senha);

$query->execute();

if($query->rowCount()==1)
{

    echo "<script> alert('Sucesso!');
            top.location.href='Homepromocao.php';
    </script>";

}
else
{
    echo "<script> alert('Senha Incorreta!');
            top.location.href='login.php';
    </script>";

}









$nomeusuario=$_POST['nomeusuario'];
$senha=$_POST['senha'];


$sql="INSERT INTO  ( nomeusuario, senha) 
VALUES('$nomeusuario', '$senha')";


if(mysqli_query($conexao, $sql)){
    echo "sucesso";
    
}
else{
    echo "ERRO" .mysqli_connect_error($conexao);
}









mysqli_close($conexao);




?>




