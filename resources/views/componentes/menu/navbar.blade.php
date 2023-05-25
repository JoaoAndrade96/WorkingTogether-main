<nav class="navbar navbar-expand-lg navbar-light py-2">
    <div class="container-fluid">
        <a class="navbar-brand text-white" href="#">
            <img src="/assets/images/logo/icon.png" alt="" width="75" height="70" class="d-inline-block align-text-center">
            Working Together
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="{{route('welcome')}}">INICÍO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('vagas')}}">VAGAS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="{{route('empresas')}}">EMPRESAS</a>
                </li>
            </ul>
            <div class="d-flex">
                <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button> -->
            </div>
            <ul class="navbar-nav me-2 mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="{{route('login')}}">LOGIN</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active text-white" aria-current="page" href="{{route('cadastro')}}">CADASTRO</a>
                </li>
            </ul>
        </div>
    </div>
</nav>