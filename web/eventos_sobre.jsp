<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap-social.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="icon" href="assets/icon.png">
        <link rel="stylesheet" href="css/circle.css">
        <link rel="icon" href="assets/icon.png">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <title>Eventos - Sobre</title>
        <link rel="stylesheet" href="css/contrast.css">
    </head>
    <body class="bannerr acessibilidade">
        <header>

            <% String log = (String) request.getSession().getAttribute("login");
                boolean nova = session.isNew();
                if (nova) {%>
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
            <% } else if (session.getAttribute("login").equals("true")) {%>
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
                if ((log.equals("false")) || nova) {%>
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
            <div class="text-right mr-5 mt-4">
                <button class="btn btn-light" onclick="fonte('d');">A-</button>
                <button class="btn btn-light" onclick="fonte('a');">A+</button>
                <a href="#altocontraste" id="altocontraste" accesskey="3" onclick="window.toggleContrast()" onkeydown="window.toggleContrast()" class="btn btn-light">
                    <img src="assets/c.png" />
                    <div id="recipiente"></div>
                </a>
            </div>
            <div class="row mt-4">
                <div class="container">
                    <div class="card boxshadow">
                        <div class="card-header">
                            <h1 class="text-center">Sobre</h1>
                        </div>
                        <div class="card-body">
                            <div class="card-body">
                                <h3 class="card-title corazul">Projeto</h3>
                                <p class="card-text text-justify">
                                    O objetivo do projeto é promover um melhor acesso à gama de eventos que a cidade do Rio realiza todos os anos. Por se tratar de uma cidade com beleza peculiar, seus eventos costumam abranger um grande número de pessoas, movimentando a indústria de hotelaria e ampliando sua renda, porém, a indústria de eventos não possui uma forma de divulgação direcionada, o que pode interferir no resultado financeiro.
                                    Visando essa carência por uma plataforma que auxilie a secretaria municipal a comunicar eventos, de seu interesse, à população, esse projeto envolve uma  agenda para marcação de eventos e a divulgação do mesmo ao público, com critérios que os organizadores deverão esclarecer na publicação do evento, tal como data, local, horário inicial, horário de término, classificação, etc.
                                </p>
                                <h3 class="card-title corazul">Quem somos</h3>
                                <p class="card-text text-justify">
                                    O FORSOFT-RIO é um projeto fruto da tríplice parceria entre a Assespro-RJ, as Empresas-Madrinhas e a Secretaria Municipal de Desenvolvimento, Emprego e Inovação que visa capacitar e empregar jovens no mercado de trabalho de TI.
                                </p>
                                <div class="container">
                                    <h4 class="card-title text-center corazul">Nossa Equipe</h4>
                                    <div class="row ">
                                        <!-- Team member -->
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/aline.png">
                                                                </p>
                                                                <h4 class="card-title">Aline Gomes</h4>
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/aline-gomes-da-silva-0439235b"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/altamir.png"">
                                                                </p>
                                                                <h4 class="card-title">Altamir Neto</h4>
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/altamir-neto-a0b33415b//"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/amanda.png"">
                                                                </p>
                                                                <h4 class="card-title">Amanda Monteiro</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/amanda-salles-monteiro-0b8958162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/danilo.png"">
                                                                </p>
                                                                <h4 class="card-title">Danilo Barbosa</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/danilo-barbosa-9497a3128/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/falcao.png"">
                                                                </p>
                                                                <h4 class="card-title">Douglas Falcão</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/douglas-falc%C3%A3o-b32088111/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/fernandes.png"">
                                                                </p>
                                                                <h4 class="card-title">Douglas Fernandes </h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/douglas-fernandes-90575911b/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/edi.png"">
                                                                </p>
                                                                <h4 class="card-title">Edionaldo Costa</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/edionaldo-costa-185b1249/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/elberth.png"">
                                                                </p>
                                                                <h4 class="card-title">Elberth Amparo</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/elberth-augusto-983660163/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/elder.png"">
                                                                </p>
                                                                <h4 class="card-title">Elder Barcellos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/elder-barcellos-162254162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/elias.png"">
                                                                </p>
                                                                <h4 class="card-title">Elias Santos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/elias-santos-9053b914a/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/eric.png"">
                                                                </p>
                                                                <h4 class="card-title">Eric da Silva</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/eric-oliveira-silva/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/fabricio.png"">
                                                                </p>
                                                                <h4 class="card-title">Fabrício Pinheiro</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/fabr%C3%ADcio-pinheiro-072250163/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/fernanda.png"">
                                                                </p>
                                                                <h4 class="card-title">Fernanda Ramalho</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/fernanda-ramalho-a45a67136/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/franciele.png"">
                                                                </p>
                                                                <h4 class="card-title">Franciele Nascimento</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/franciele-nascimento-26abb2162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/bur.png"">
                                                                </p>
                                                                <h4 class="card-title">Gabriel Bur</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/gabriel-bur-545563104/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/gabriel.png"">
                                                                </p>
                                                                <h4 class="card-title">Gabriel Cruz</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/gabriel-cruz-0b9658160/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/huedson.png"">
                                                                </p>
                                                                <h4 class="card-title">Huedson Santos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/huedson-santos-93231b15b/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/igor.png"">
                                                                </p>
                                                                <h4 class="card-title">Igor Sousa</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/igor-amorim-ab93b5b6/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/jefferson.png"">
                                                                </p>
                                                                <h4 class="card-title">Jefferson dos Santos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/jefferson-santos-3497a1b6/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/jhony.png"">
                                                                </p>
                                                                <h4 class="card-title">Jhony da Silva</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/jhony-da-silva-286445146/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/cadete.png"">
                                                                </p>
                                                                <h4 class="card-title">Jonathan Cadete</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/jonathan-cadete-gomes-pires-657b29161"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                       <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/larissa.png"">
                                                                </p>
                                                                <h4 class="card-title">Larissa Lessa</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/larissa-lessa-406b2515b/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/luan.png"">
                                                                </p>
                                                                <h4 class="card-title">Luan Farias</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/luan-farias-81746b157"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/accacio.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Accácio </h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/lucas-accacio-8705a695/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/tijolinho.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Araujo</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/lucasaraujo451/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/bandeira.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Bandeira</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/lucas-bandeira-918745121/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/piscina.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Justiniano</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/lucasjustiniano"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/matos.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Matos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/lucas-matos-trindade-de-melo-29238b161/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/pereira.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Pereira</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="#"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/porto.png"">
                                                                </p>
                                                                <h4 class="card-title">Lucas Porto</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/lucasporto98/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/pamplona.png">
                                                                </p>
                                                                <h4 class="card-title">Luiz Pamplona</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/luiz-pamplona-650596161/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/luiz.png">
                                                                </p>
                                                                <h4 class="card-title">Luiz Raphael Evangelista</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/luiz-raphael-evangelista-de-souza-1b8004163/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/matheus.png"">
                                                                </p>
                                                                <h4 class="card-title">Matheus Barbosa</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/eumatheusalves/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/meylin.png"">
                                                                </p>
                                                                <h4 class="card-title">Meylin Fernandes</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/meylin-fernandes-3a4877140/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/michele.png"">
                                                                </p>
                                                                <h4 class="card-title">Michele de Jesus</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/michele-da-silva-729a74162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/miguel.png"">
                                                                </p>
                                                                <h4 class="card-title">Miguel Angelo</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/miguel-angelo-guimarães-pereira-85114313b/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/patrick.png"">
                                                                </p>
                                                                <h4 class="card-title">Patrick Serpa</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/patrick-lira-serpa-a1241715b/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/maldini.png"">
                                                                </p>
                                                                <h4 class="card-title">Pedro Maldini</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/pedro-maldini-74b36a160/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/grilo.png"">
                                                                </p>
                                                                <h4 class="card-title">Rafael Grillo</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/rafael-grillo-385a4b162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/stephanie.png"">
                                                                </p>
                                                                <h4 class="card-title">Stephanie Freitas</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/stephanie-oliveira-c-freitas-444a81162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/tatiana.png"">
                                                                </p>
                                                                <h4 class="card-title">Tatiana dos Santos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="www.linkedin.com/in/tatiana-barbosa-828b41156"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/umberto.png"">
                                                                </p>
                                                                <h4 class="card-title">Umberto Ferraz</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/umbertoferraz"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="">
                                                <div class="">
                                                    <div class="">
                                                        <div class="">
                                                            <div class="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                                                <div class="mainflip">
                                                    <div class="frontside">
                                                        <div class="card">
                                                            <div class="card-body text-center">
                                                                <p>
                                                                    <img class="circle img-fluid" src="assets/pt/wellington.png"">
                                                                </p>
                                                                <h4 class="card-title">Wellington Santos</h4>
                                                                 
                                                                <a class="btn btn-block btn-social btn-linkedin " href="https://www.linkedin.com/in/wellington-pereira-979a68162/"><i class="fa fa-linkedin"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-xs-12 col-sm-6 col-md-4 mt-2">
                                            <div class="">
                                                <div class="">
                                                    <div class="">
                                                        <div class="">
                                                            <div class="text-center">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
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