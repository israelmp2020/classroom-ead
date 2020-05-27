<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
        <title>Página Inicial</title>
    </head>
    <body>
        <%--menu--%>
        <jsp:include page="../common/menu.jsp"></jsp:include>   


        <%--corpo--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Página Inicial</h1>                      
            </div>
            <div>
                <table class="table table-borderless">
                    <thead>                          
                    <td nowrap="nowrap"> 
                    <tr><th scope="col">Nome Completo:</th></tr>
                    <tr><th scope="col">CPF:</th></tr>
                    <tr><th scope="col">Data/Nasc:</th></tr>
                    <tr><th scope="col">Endereço:</th></tr>
                    <tr><th scope="col">Cidade/UF:</th></tr> 
                    <tr><th scope="col">N°:</th></tr>
                    <tr><th scope="col">Número de Contato:</th></tr>
                    <tr><th scope="col">Email:</th></tr> 
                    <tr><th scope="col">Turma:</th></tr>   
                    </thead>
                    <tbody>
                    <c:forEach items="${studentList}" var="student">
                        <tr>
                            <td>${student.name}</td>
                            <td>${student.cpf}</td>
                            <td>${student.age}</td>
                            <td>${student.address.street}</td>
                            <td>${student.address.city}</td>
                            <td>${student.address.numberCa}</td>
                            <td>${student.numberTe}</td>
                            <td>${student.email}</td> 
                            <td>${student.classTu}</td>
                            <td>
                        <fmt:formatDate pattern="dd/MM/yyyy" value="${student.createdAt}"/>
                        </td>
                        </tr> 
                    </c:forEach>
                    </tbody>
                </table>
                <div>
                    <button type="button" class="btn btn-primary">Editar</button>
                    <button type="button" class="btn btn-danger">Exclir</button>
                    <button type="button" class="btn btn-warning" style="color: #ffffff;" >Imprimir</button>
                </div>
            </div>
            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
        </main>

    </body>
</html>
