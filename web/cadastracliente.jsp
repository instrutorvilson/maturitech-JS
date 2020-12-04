<%-- 
    Document   : cadastracliente
    Created on : 9 de nov de 2020, 10:28:34
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="styles/estilos.css">
         
    </head>
    <body>
        <script src="scripts/menu.js"></script>
        <h1>Cadastro de clientes</h1>
        <hr />
        <p id="erros"></p>
        <form action="recebedadoscliente.jsp" method="POST">
            <label>Inform cpf</label>
            <input type="text" name="cpf" />
            <label id="erroCpf" class="error"></label>
            <br />
            
            <label>Inform nome</label>
            <input type="text" name="nome" /> <br />
            <label>Inform fone</label>
            <input type="text" name="fone" /> <br />
            <label>Inform email</label>
            <input type="text" name="email" /> <br />
            <label>Inform numero de cartão</label>
            <input type="text" name="numeroCartao" /> <br />
            <hr />
            <input type="button" value="Salvar" onclick="enviarDados()" />
        </form>
        <script>
            function enviarDados(){
               debugger; 
               var semErros = true; 
               var erros = document.getElementById("erros"); 
               var cpf =document.getElementsByName("cpf");
               if(cpf[0].value === ""){
                 erros.innerHTML = "Informe cpf";
                 document.getElementById("erroCpf").innerHTML = "Informe cpf";
                // cpf[0].focus();
                 semErros = false;
               }
               
               var nome =document.getElementsByName("nome");
               if(nome[0].value === ""){
                 erros.innerHTML += "<br>Informe nome";
                 nome[0].style="border: red solid 5px";
                 //nome[0].focus();
                 semErros = false;
               }
               if(semErros)
                  document.forms[0].submit();
            }
        </script>    
    </body>
</html>
