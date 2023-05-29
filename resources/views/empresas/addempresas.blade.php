@extends('layouts.app')
@section('conteudo')

<section>

    <div>
        <img src="" alt="">
    </div>

    <div class="formempresas">
        <form method="post" action="{{route('salvarempresas')}}"> <!-- Essas rotas ficam na api.php -->
            @csrf
            <label for="nome">Nome da Empresa:</label>
            <input type="text" id="nome" name="nome" required><br><br>

            <label for="descricao">Descrição da Empresa:</label>
            <input type="text" id="descricao" name="descricao" required><br><br>

            <label for="email">Email Corporativo da empresa:</label>
            <input type="text" id="email" name="email" required><br><br>

            <label for="senha">Senha:</label>
            <input type="text" id="senha" name="senha" required><br><br>

            <label for="telefone">Telefone:</label>
            <input type="text" id="telefone" name="telefone" required><br><br>

            <label for="cnpj">CNPJ:</label>
            <input type="text" id="cnpj" name="cnpj" required><br><br>

            <label for="cpf">CPF:</label>
            <input type="text" id="cpf" name="cpf" required><br><br>

            <label for="logo">Logo:</label>
            <input type="text" id="logo" name="logo" required><br><br>

            <button type="submit">Submit</button>
        </form>
    </div>
</section>

<div class="d-flex justify-content-center">
    <form class="container bg-danger row g-3 my-5">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="inputCity">
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">State</label>
    <select id="inputState" class="form-select">
      <option selected>Choose...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
    </form>
</div>
@endsection