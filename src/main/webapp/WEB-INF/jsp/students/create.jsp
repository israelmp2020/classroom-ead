<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
        <title>Cadatrar Aluno</title>
    </head>
    <body>
        <%--menu--%>
        <jsp:include page="../common/menu.jsp"></jsp:include> 

        <%--corpo--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Cadatrar Aluno</h1>                      
            </div>
            <div>
                <form action="/classroom-ead/students" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="name">Nome Completo:</label>
                            <input type="text" name="student.name" class="form-control" id="name" placeholder="Israel Morais Pereira">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="cpf">CPF:</label>
                            <input type="text" name="student.cpf" class="form-control" id="cpf" placeholder="000.000.000-00">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="age">Data/Nasc:</label>
                            <input type="text" name="student.age" class="form-control" id="age" placeholder="00/00/0000">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="street">Endereço:</label>
                            <input type="text" name="student.address.street" class="form-control" id="inputEmail4" placeholder="Rua: Fulano de tal">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="city">Cidade/UF:</label>
                            <input type="text" name="student.address.city" class="form-control" id="inputPassword4" placeholder="Juazeiro do Norte-CE">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="numberCa">N°:</label>
                            <input type="text" name="student.address.numberCa" class="form-control" id="inputZip" placeholder="Ex: 1046">
                        </div>
                    </div>                                      
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label for="numberTe">Número de Contato:</label>
                            <input type="text" name="student.numberTe" class="form-control" id="inputCity" placeholder="(99) 9.9999-9999">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="email">Email:</label>
                            <input type="text" name="student.email" class="form-control" id="inputZip" placeholder="email@emal.com">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="classTu">Turma:</label>
                            <select name="student.classTu" id="inputState" class="form-control">
                                <option >Selecione...</option>
                                <option>1° Ano</option>
                                <option>2° Ano</option>
                                <option>3° Ano</option>
                            </select>
                        </div> 

                    </div>                    
                    <button type="submit" class="btn btn-primary">Cadastrar Aluno</button>
                </form>
            </div>
            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
        </main>

    </body>
</html>
