@extends('layouts.app')
@section('conteudo')

<div class="textlogin text-center">
    <h4>As vagas que você postar aparecerão para toda a nossa comunidade!</h4>
</div>

<section class="d-flex py-5">
    <div class="ms-5 ps-5">
        <img src="/assets/images/vectors/Devices-cuate.png" alt="imagem ilustrativa" width="650" height="650">
    </div>

    <div class="formusuarios d-flex">
        <form method="post" action="{{route('salvarvaga')}}"> <!-- Essas rotas ficam na api.php -->
            @csrf
            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Nome da Vaga:</label>
                <input class="form-control" type="text" id="nome" name="nome" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Descrição:</label>
                <input class="form-control" type="text" id="descricao" name="descricao" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Requisitos:</label>
                <input class="form-control" type="text" id="requisitos" name="requisitos" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Salário</label>
                <input class="form-control" type="text" id="salario" name="salario" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Cargo</label>
                <input class="form-control" type="text" id="cargo" name="cargo" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Experiências</label>
                <input class="form-control" type="text" id="experiencias" name="experiencias" required>
            </div>

            <div class="mb-4">
                <label for="formGroupExampleInput" class="form-label">Beneficíos</label>
                <input class="form-control" type="text" id="beneficios" name="beneficios" required>
            </div>

            <div class="mb-4 text-center">
                <button type="submit" class="btn btn-lg text-white" style="background-color:#546E7A" >Publicar a Vaga!</button>
            </div>
        </form>
    </div>
</section>

@endsection