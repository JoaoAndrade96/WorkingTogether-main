@extends('layouts.app')
@section('conteudo')

    <div class="textlogin text-center">
      <h4>Encontre profissionais qualificados para trabalhar em seu negócio!</h4>
    </div>

<section class="d-flex py-5">
    <div class="ms-5 ps-5">
        <img src="/assets/images/vectors/tech company-cuate.png" alt="iamgem ilustrativa" width="600" height="600">
    </div>

    <div class="formempresas d-flex">
        <form method="post" action="{{route('salvarempresas')}}"> <!-- Essas rotas ficam na api.php -->
            @csrf
            <div class="d-flex">
              <div class="mx-4">
                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label">Nome da Empresa:</label>
                  <input class="form-control" type="text" id="nome" name="nome" required>
                </div>

                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label">Email Corporativo da empresa:</label>
                  <input class="form-control" type="email" id="email" name="email" required>
                </div>
            
                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label">Senha:</label>
                  <input class="form-control" type="text" id="senha" name="senha" required>
                </div>
              </div>

              <div class="mx-2">
                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label">Telefone:</label>
                  <input class="form-control" type="text" id="telefone" name="telefone" required>
                </div>

                <div class="mb-3">
                  <label for="formGroupExampleInput" class="form-label">CNPJ:</label>
                  <input class="form-control" type="text" id="cnpj" name="cnpj" required>
                </div>

                <div class="mb-3">
                  <label for="formFile" class="form-label">Escolha a Imagem Principal de sua Empresa:</label>
                  <input class="form-control" type="file" id="logo" name="logo">
                </div>
              </div>
            </div>

            <div class="d-flex justify-content-center">
              <div class="mb-3">
                <label for="formGroupExampleInput" class="form-label">Descrição da Empresa:</label>
                <textarea class="form-control exampleFormControlTextarea1" id="descricao" rows="3" name="descricao" required></textarea>
              </div>
            </div>

            <div class="d-flex justify-content-center my-3">
              <button type="submit" class="btn btn-lg text-white" style="background-color:#546E7A" >Cadastrar-me</button>
            </div>
        </form>
    </div>
</section>
@endsection