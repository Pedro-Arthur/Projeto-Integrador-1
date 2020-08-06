<?php
    session_start();
    include_once("../connection/pdo.php");

    $SendCadImg = filter_input(INPUT_POST, 'SendCadImg', FILTER_SANITIZE_STRING);
    if ($SendCadImg) {
        
        $nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
        $lancamento = filter_input(INPUT_POST, 'lancamento', FILTER_SANITIZE_STRING);
        $direcao = filter_input(INPUT_POST, 'direcao', FILTER_SANITIZE_STRING);
        $producao = filter_input(INPUT_POST, 'producao', FILTER_SANITIZE_STRING);
        $duracao = filter_input(INPUT_POST, 'duracao', FILTER_SANITIZE_STRING);
        $nome_imagem = $_FILES['imagem']['name'];
        
        $result_img = "INSERT INTO registro (nome, lancamento, direcao, producao, duracao, imagem) VALUES (:nome, :lancamento, :direcao, :producao, :duracao, :imagem)";
        $insert_msg = $conn->prepare($result_img);
        $insert_msg->bindParam(':nome', $nome);
        $insert_msg->bindParam(':lancamento', $lancamento);
        $insert_msg->bindParam(':direcao', $direcao);
        $insert_msg->bindParam(':producao', $producao);
        $insert_msg->bindParam(':duracao', $duracao);
        $insert_msg->bindParam(':imagem', $nome_imagem);

        if ($insert_msg->execute()) {

            $ultimo_id = $conn->lastInsertId();

            $diretorio = '../uploads/' . $ultimo_id.'/';

            mkdir($diretorio, 0755);
            
            if(move_uploaded_file($_FILES['imagem']['tmp_name'], $diretorio.$nome_imagem)){
                $_SESSION['msg'] = "<p style='color:green;'>Dados salvos com sucesso e upload da imagem realizado com sucesso. <a href='listas.php'>Ver filmes</a></p>";
                header("Location: ../registro.php");
            }else{
                $_SESSION['msg'] = "<p><span style='color:green;'>Dados salvos com sucesso. </span><span style='color:red;'>Erro ao realizar o upload da imagem</span></p>";
                header("Location: ../registro.php");
            }        
        } else {
            $_SESSION['msg'] = "<p style='color:red;'>Erro ao salvar os dados</p>";
            header("Location: ../registro.php");
        }
    } else {
        $_SESSION['msg'] = "<p style='color:red;'>Erro ao salvar os dados</p>";
        header("Location: ../registro.php");
    }
?>