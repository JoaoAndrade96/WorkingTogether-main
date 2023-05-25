@extends('layouts.app')
@section('conteudo')

<section>
    <div class="d-flex justify-content-center">
        <form method="post" action="{{route('salvarempresas')}}"> <!-- Essas rotas ficam na api.php -->
            @csrf
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required><br><br>

            <label for="descricao">Descrição:</label>
            <input type="text" id="descricao" name="descricao" required><br><br>

            <label for="email">Email:</label>
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

@endsection