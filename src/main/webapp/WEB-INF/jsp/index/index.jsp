<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Classroom EaD</title>
        <jsp:include page="../common/head.jsp"></jsp:include>
        </head>
        <body>
            <!--Cabeçalho-->
        <jsp:include page="../common/nav.jsp"></jsp:include>

            <main>
                <section class="jumbotron text-center">
                    <div class="container">
                        <h1 class="jumbotron-heading">Classroom EaD</h1>
                        <p class="lead text-muted">Classroom EaD é um Sistema para cadastro de alunos e notas e futuramente Professores.</p>
                        <p>
                            <a href="${pageContext.request.contextPath}/signin" class="btn btn-primary my-2">Faça Login</a>
                            <a href="${pageContext.request.contextPath}/signin" class="btn btn-success my-2">Cadastrar Aluno</a>
                        </p>
                    </div>
                </section>
         
            <div>
                <div class="container">
                    <div class="row">
                        <div class="row">
                            <div class="col-lg-4">
                                <img src="assets/icons/tecnologia.svg" alt="" width="150" height="150" title="tecnologia">
                                <br/><br/>
                                <h3>Login</h3>
                                <p>Mussum Ipsum, cacilds vidis litro abertis. Manduma pindureta quium dia nois paga. Atirei o pau no gatis, per gatis num morreus. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Detraxit consequat et quo num tendi nada.</p>
                                <p><a class="btn btn-secondary" href="#" role="button">Ver detalhes &raquo;</a></p>
                            </div>
                            <div class="col-lg-4">
                                <img src="assets/icons/multimidia.svg" alt="" width="150" height="150" title="multimidia">
                                <br/><br/>
                                <h3>Cadastrar Aluno</h3>
                                <p>Mussum Ipsum, cacilds vidis litro abertis. Manduma pindureta quium dia nois paga. Atirei o pau no gatis, per gatis num morreus. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Detraxit consequat et quo num tendi nada.</p>
                                <p><a class="btn btn-secondary" href="#" role="button">Ver detalhes &raquo;</a></p>
                            </div>
                            <div class="col-lg-4">
                                <img src="assets/icons/seo-e-web.svg" alt="" width="150" height="150" title="seo-e-web">
                                <br/><br/>
                                <h3>Relatórios</h3>
                                <p>Mussum Ipsum, cacilds vidis litro abertis. Manduma pindureta quium dia nois paga. Atirei o pau no gatis, per gatis num morreus. Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Detraxit consequat et quo num tendi nada.</p>
                                <p><a class="btn btn-secondary" href="#" role="button">Ver detalhes &raquo;</a></p>
                            </div>
                        </div>
                    </div> 
                <br/><br/>
                </div>
            </div>
            </main>

            <!--Rodapé-->
        <jsp:include page="../common/footer.jsp"></jsp:include>
    </body>
</html>
