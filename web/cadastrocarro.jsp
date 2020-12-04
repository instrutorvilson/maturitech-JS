<%-- 
    Document   : cadastrocarro
    Created on : 30 de out de 2020, 08:34:09
    Author     : entra21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar - cadastro carro</title>       
        <link rel="stylesheet" href="styles/estilos.css"> 
    </head>
    <body>
        <header>
            <script src="scripts/cabecalho.js"></script> 
        </header>
        <section>
            <nav>
                <script src="scripts/menu.js"></script> 
            </nav>
            <article>
               <h1>Cadastro carro</h1>
                <hr />        
                <form action="recebeDadosCarro.jsp" method="POST">
                    <label>Informe a placa</label>
                    <input type="text" name="placa" /> 

                    <br />
                    <label>Informe a marca</label>
                    <input type="text" name="marca" />

                    <br />
                    <label>Informe modelo</label>
                    <input type="text" name="modelo" />

                    <br />
                    <label>Informe km</label>
                    <input type="text" name="km" />

                    <br />
                    <input type="checkbox" name="arcondicionado">
                      Ar condicionado?</input>

                      <br />
                      <input type="checkbox" name="direcaohidraulica" checked="true">
                     Direção hidráulica?</input>

                     <hr />
                     <input type="button" value="Salvar" onclick="enviaForm()"/>
                </form>         
            </article>
        </section>
        <footer>
            <script src="scripts/rodape.js"></script>
        </footer>             
        
        <script>
            function enviaForm(){
                var placa = document.getElementsByName("placa");
                if(placa[0].value === ""){
                    placa[0].focus();
                    alert("Informe a placa");
                    exit();
                }
                
                var marca = document.getElementsByName("marca");
                if(marca[0].value === ""){
                    marca[0].focus();
                    alert("Informe a marca");
                    exit();
                }
                
                var modelo = document.getElementsByName("modelo");
                if(modelo[0].value === ""){
                    modelo[0].focus();
                    alert("Informe a modelo");
                    exit();
                }
                var km = document.getElementsByName("km");
                if(km[0].value === ""){
                    km[0].focus();
                    alert("Informe a km");
                    exit();
                } 
                document.forms[0].submit();                
            }
        </script>    
    </body>   
</html>
