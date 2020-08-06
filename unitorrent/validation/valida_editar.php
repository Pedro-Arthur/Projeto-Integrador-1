<?php
    session_start();
    include_once("../connection/pdo.php");

    $SendEdit = filter_input(INPUT_POST, 'SendEdit', FILTER_SANITIZE_STRING);
    if($SendEdit){
        
        $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
        $nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
        $apelido = filter_input(INPUT_POST, 'apelido', FILTER_SANITIZE_STRING);
        $telefone = filter_input(INPUT_POST, 'telefone', FILTER_SANITIZE_NUMBER_INT);
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
        
        $result_usuario = "UPDATE cadastro SET nome=:nome, apelido=:apelido, telefone=:telefone, email=:email WHERE id=$id";
        
        $update_usuario = $conn->prepare($result_usuario);
        $update_usuario->bindParam(':nome', $nome);
        $update_usuario->bindParam(':apelido', $apelido);
        $update_usuario->bindParam(':telefone', $telefone);
        $update_usuario->bindParam(':email', $email);
        
        if($update_usuario->execute()){
            $_SESSION['msg'] = "<p style='color:green;'>Perfil editado com sucesso.</p>";
            header("Location: ../editar.php");
        }else{
            $_SESSION['msg'] = "<p style='color:red;'>Perfil não foi editado com sucesso.</p>";
            header("Location: ../editar.php");
        }    
    }else{
        $_SESSION['msg'] = "<p style='color:red;'>Perfil não foi editado com sucesso.</p>";
        header("Location: ../editar.php");
    }
?>