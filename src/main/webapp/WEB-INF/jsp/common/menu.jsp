<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">
        <img src="icons/ebook.svg" alt="" width="32" height="32" title="Bootstrap">
        Classrom EaD
    </a>
    <div class="dropdown">
        <a type="button" class="btn btn-outline-light" href="${pageContext.request.contextPath}/signout">Signout</a>
    </div>
</nav>           
<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">                                                      
                    <div class="bg-light border-right" id="sidebar-wrapper">
                        <div class="list-group list-group-flush"> 
                            <a href="${pageContext.request.contextPath}/home" class="list-group-item list-group-item-action bg-light">Página Inicial</a>
                            <a href="${pageContext.request.contextPath}/students/new" class="list-group-item list-group-item-action bg-light"> Cadastrar Aluno</a>
                            <a href="${pageContext.request.contextPath}/students/list" class="list-group-item list-group-item-action bg-light"> Alunos Cadastrados</a>
                            <hr>
                        </div>
                    </div>
                </ul>                      
            </div>
        </nav>

    </div>
</div>