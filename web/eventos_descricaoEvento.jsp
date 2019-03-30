<%@page import="java.sql.ResultSet"%>
<%@page import="persistence.DaoEvento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt-br">
    <%int id = Integer.parseInt(request.getParameter("id")); %>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-social.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/style2.css">
        <link rel="icon" href="assets/icon.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <title>Eventos - Descrição do evento</title>
        <link rel="stylesheet" href="css/contrast.css">
    </head>
    <body class="bannerr acessibilidade">
        <header>

            <% int auth = 0;
                String log = (String) request.getSession().getAttribute("login");
              boolean nova = session.isNew();
              if (nova) {
            auth=0;%>
            <nav class="navbar navbar-expand-lg navbar-light" style=" background: linear-gradient(#27408B,#4A708B);">
                <a class="navbar-brand ml-auto mr-auto" href="index.jsp"> 
                    <img src="assets/logo.png" alt="Logo Prefeitura Rio" width="240" height="42">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon">
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto ml-auto" id="login">


                    </ul>
                    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="loginModalLabel">
                                        Fazer o login
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form id="form-login" method="POST" action="Login">
                                        <div class="form-group">
                                            <label for="user-login" class="col-form-label">
                                                Usuário:
                                            </label>
                                            <input type="text" class="form-control" name="email" id="user-login" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="pass-login" class="col-form-label">
                                                Senha:
                                            </label>
                                            <input type="password" class="form-control" name="senha" id="pass-login" required>
                                            <div class="text-right">
                                                <a href="eventos_recuperacaoSenha.jsp">
                                                    Esqueci a senha
                                                </a>
                                            </div>
                                        </div>
                                        <div class="form-group text-center">
                                            <input type="submit" class="btn btn-success" id="btn-logar" value="Logar">
                                        </div>
                                        <br>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <% } else if (session.getAttribute("login").equals("true")) {
            auth = 1;
            %>
            <nav class="navbar navbar-expand-lg navbar-light  pl-5 " style=" background: linear-gradient(#27408B,#4A708B);">
                <a class="navbar-brand ml-auto mr-auto" href="index.html">
                    <img src="assets/logo.png" alt="Logo Prefeitura Rio" width="240" height="42">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon">
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto ml-auto ">
                        <li class="nav-item ">
                            <a class="itemnav ml-4" href="index.jsp" > Página inicial <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item ">
                            <a class="itemnav  ml-4" href="eventos_sobre.jsp" > Sobre <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item ">
                            <a class="itemnav ml-4" href="eventos_contato.jsp"> Contato <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item ">
                            <a class="itemnav ml-4" href="eventos_funcionario.jsp"> ${nome} <span class="sr-only">(current)</span></a>
                        </li>
                        <!--<li class="nav-item ">
                            <a class="itemnav  ml-4 " href="#" data-toggle="modal" data-target="#loginModal" data-whatever="@getLogin"> Login <span class="sr-only">(current)</span></a>
                        </li>-->
                        <li class="nav-item ">
                            <a class="itemnav  ml-4  text-light" href="logout.jsp" style="cursor: pointer">Sair</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <%} else
             if ((log.equals("false")) || nova) {
            auth=0;%>
            <nav class="navbar navbar-expand-lg navbar-light" style=" background: linear-gradient(#27408B,#4A708B);">
                <a class="navbar-brand ml-auto mr-auto" href="index.jsp"> 
                    <img src="assets/logo.png" alt="Logo Prefeitura Rio" width="240" height="42">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon">
                    </span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto ml-auto" id="login">


                    </ul>
                    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="loginModalLabel">
                                        Fazer o login
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form id="form-login" method="POST" action="Login">
                                        <div class="form-group">
                                            <label for="user-login" class="col-form-label">
                                                Usuário:
                                            </label>
                                            <input type="text" class="form-control" name="email" id="user-login" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="pass-login" class="col-form-label">
                                                Senha:
                                            </label>
                                            <input type="password" class="form-control" name="senha" id="pass-login" required>
                                            <div class="text-right">
                                                <a href="eventos_recuperacaoSenha.jsp">
                                                    Esqueci a senha
                                                </a>
                                            </div>
                                        </div>
                                        <div class="form-group text-center">
                                            <input type="submit" class="btn btn-success" id="btn-logar" value="Logar">
                                        </div>
                                        <br>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <% }%>
        </header>
        <main>
            <%
                DaoEvento dao = new DaoEvento();

                ResultSet rs = dao.CarregarUnico(id);

                while (rs.next()) {
            %>
            <div class="text-right mr-5 mt-4">
                <button class="btn btn-light" onclick="fonte('d');">A-</button>
                <button class="btn btn-light" onclick="fonte('a');">A+</button>
                <a href="#altocontraste" id="altocontraste" accesskey="3" onclick="window.toggleContrast()" onkeydown="window.toggleContrast()" class="btn btn-light">
                    <img src="assets/c.png" />
                    <div id="recipiente"></div>
                </a>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row mt-4">
                            <div class="card w-100 boxshadow">
                                <div class="card-header">
                                    <h1 class="text-center"><%= rs.getString("Nome")%></h1>
                                </div>
                                <div class="card-body">
                                    <div class="card text-center boxshadow">
                                        <% if (rs.getString("Imagem").equals("Vazio")) { %>
                                        <img class="card-img-top" alt="text" src="/AgendaEventos/assets/evento2.jpg">
                                        <%} else {%>
                                        <img class="card-img-top" alt="text" src="assets/<%=rs.getInt("IDEvento")%>"><%}%>
                                    </div>
                                    <hr />

                                    <h5 class="display-4 corazul text-center">Detalhes do Evento</h5>
                                    <% if (auth==1){%>
                                    <form action="FileUpload" method="POST" enctype="multipart/form-data" >
                                        <input type="file" name="file"/>
                                        <input type="hidden" name="img" value="<%=request.getParameter("id") %>"/>
                                        <input type="submit" value="Adicionar Imagem">
                                    </form> <%}%>
                                    <p class="card-text text-right"></p>

                                    <h4>Descrição:</h4>
                                    <p><%= rs.getString("Descricao")%></p>
                                    <hr>
                                    <h4>Data inicial:</h4>
                                    <p><%= rs.getString("DataInicial")%></p>
                                    <h4>Data final:</h4>
                                    <p><%= rs.getString("DataFinal")%> </p>
                                    <h4>Hora inicial:</h4>
                                    <p><%= rs.getString("HoraInicial")%></p>
                                    <h4>Hora final:</h4>
                                    <p><%= rs.getString("HoraFinal")%></p>
                                    <h4>Classificação Indicativa:</h4>
                                    <p><%= rs.getString("ClassificacaoIndicativa")%></p>
                                    <h4>Local:</h4>
                                    <p> <%= rs.getString("Bairro")%> - <%= rs.getString("Rua")%> - Rio de Janeiro, RJ</p>
                                    <hr>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col"></div>
                </div>
            </div>
        </div>
    </div>
    <%
        }
    %>
</main>
<!-- RODAPÉ -->
<footer class="page-footer font-small stylish-color-dark text-center mt-5">
    <div class="container" style="font-size: 14px">

        <div class="row">
            <div class="col">
                <a href="#" class="text-light">Mapa do Site</a>
            </div>
            <nav class="col">
                <a class="text-light dropdown-toggle" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                    Outros Links
                </a>
            </nav>
            <div class="col">
                <span>Siga - nos</span>
                <div class="social-icons">
                    <a class="text-light fa fa-facebook mr-2" href="https://www.facebook.com/PrefeituradoRio" style="text-decoration:none">
                    </a>
                    <a class="text-light fa fa-twitter mr-2" href="https://twitter.com/Prefeitura_Rio" style="text-decoration:none">
                    </a>
                    <a class="text-light fa fa-instagram mr-2" href="https://www.instagram.com/prefeitura_rio/" style="text-decoration:none">
                    </a>
                </div>
            </div>
        </div>

        <div class="row ">
            <div class="col justify-content-center nav-pills collapse" id="navbarToggleExternalContent">
                <hr>
                <a class="text-light col" href="eventos_ajuda.jsp">Ajuda</a>
                <a class="text-light col" href="eventos_perguntasFrequentes.jsp">FAQ</a>
                <a class="text-light col" href="eventos_termosDeUso.jsp">Termos de Uso</a>
                <a class="text-light col" href="eventos_politicaDePrivacidade.jsp">Política de Privacidade</a>
            </div>
        </div>

        <hr>
        <div class="col text-center">
            <p>© 2018 Copyright - Todos os direitos reservados</p>
            <a class="text-light" href="https://www.forsoft.org.br/">FORSOFT-RIO</a>
        </div>

    </div>
</footer>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="js/bdLocal.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/zoomInOut.js"></script>
<script src="js/acessibilidade.js"></script>
<script src="http://arquivos.weblibras.com.br/auto/wl-min.js"></script>
<script>
                    var wl = new WebLibras({
                        compatibilityMode: true
                    });
</script>
</body>

</html>