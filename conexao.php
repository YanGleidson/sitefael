<?php

$bdhost="localhost";
$bdusername="root";
$bdpassword="";


$bdname="bdsitefael";

$conexao= mysqli_connect ($bdhost, $bdusername, $bdpassword, $bdname);


if(!$conexao){
    die("HOUVE UM ERRO:" .mysqli_connect_error());
}


?>