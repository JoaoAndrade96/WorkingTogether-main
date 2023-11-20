@extends('layouts.app')
@section('conteudo')

<div class="textlogin text-center">
    <h1>Informe seus dados para se candidatar a vaga</h1>
</div>

<section class="d-flex">
    <div>
        <img src="/assets/images/vectors/Job offers-amico.png" alt="imagem ilustrativa" width="600" height="600">
    </div>

    <div class="formusuarios d-flex">
        <form method="post" action="{{route('salvarvaga')}}"> <!-- Essas rotas ficam na api.php -->
            @csrf
            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Nome e Sobrenome:</label>
                <input class="form-control" type="text" id="nome" name="nome" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Email:</label>
                <input class="form-control" type="text" id="descricao" name="descricao" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Telefone:</label>
                <input class="form-control" type="text" id="requisitos" name="requisitos" required>
            </div>

            <div class="mb-3">
                <label label for="formFile" class="form-label">Envie seu Currículo!</label>
                <input class="form-control" type="file" id="formFile">
            </div>

            <div class="mb-4 text-center">
                <button type="submit" class="btn btn-lg text-white" style="background-color:#546E7A" >Publicar a Vaga!</button>
            </div>
        </form>
    </div>

</section>







@endsection