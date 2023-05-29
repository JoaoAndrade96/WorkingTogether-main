@extends('layouts.app')
@section('conteudo')

    <div class="textlogin text-center">
        <h4>Tenha acesso as melhores oportunidades na Working Together</h4>
        <h5>A sua plataforma profissional na busca de emprego</h5>
    </div>

<section class="d-flex py-5">
    <div class="ms-5 ps-5">
        <img src="/assets/images/vectors/Business deal-amico.png" alt="iamgem ilustrativa" width="500" height="500">
    </div>

    <div class="formusuarios d-flex">
        <form method="post" action="{{route('salvarusuario')}}">
            @csrf
            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Nome e Sobrenome</label>
                <input class="form-control" type="text" id="name" name="name" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Email</label>
                <input class="form-control" type="email" id="email" name="email" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Senha</label>
                <input class="form-control" type="password" id="password" name="password" required>
            </div>

            <div class="mb-4 text-center">
                <button type="submit" class="btn btn-lg text-white" style="background-color:#546E7A" >Cadastrar-me</button>
            </div>

            <div class="text-center pt-1">
                <a class="text-dark" href="{{route('adicionarempresas')}}">Quer se cadastrar como empresa?</a>
            </div>
        </form>
    </div>
</section>
@endsection