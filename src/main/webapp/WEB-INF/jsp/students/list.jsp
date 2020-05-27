<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
        <title>Alunos Cadastrados</title>
    </head>
    <body>
        <%--menu--%>
        <jsp:include page="../common/menu.jsp"></jsp:include>        

        <%--corpo--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Alunos Cadastrados</h1>                      
            </div>
            <div>
                <div class="form-inline my-2 my-lg-0">                        
                    <div class="col-md-2 mb-3">
                        <label for="country">Turma</label>
                        <select class="custom-select d-block w-100" id="turma">
                            <option >Selecione...</option>
                            <option>1° Ano</option>
                            <option>2° Ano</option>
                            <option>3° Ano</option>
                        </select>                                                
                    </div>
                    <input class="form-control mr-sm-2" type="search" placeholder="Pesquisar" aria-label="Pesquisar">
                    <button class="btn btn-outline-dark " type="submit">Pesquisar</button>
                </div>         
                <br/><br/>
                <div>
                    <div>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">ID°</th>
                                    <th scope="col">Nome</th>
                                    <th scope="col">Turma</th>
                                    <th scope="col">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${studentList}" var="student">
                                <tr>
                                    <th scope="row"></th>
                                    <td>${student.name}</td>
                                    <td>${student.classTu}</td>
                                    <td>

                                    <td>
                                        <a href="${pageContext.request.contextPath}/students/id/${student.id}">Editar</a> 
                                        <form method="POST" action="${pageContext.request.contextPath}/students/remove">
                                            <input type="hidden" name="id" value="${student.id}"/>
                                            <button>
                                                Excluir
                                            </button>
                                        </form>
                                    </td>
                                </td>
                                </tr>  
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
        </main>

    </body>
</html>
