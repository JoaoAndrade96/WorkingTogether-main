@extends('layouts.app')
@section('conteudo')

<section>
    <div class="d-flex justify-content-center">
        <form method="post" action="{{route('salvarvaga')}}"> <!-- Essas rotas ficam na api.php -->
            @csrf
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required><br><br>

            <label for="descricao">Descrição:</label>
            <input type="text" id="descricao" name="descricao" required><br><br>

            <label for="requisitos">Requisitos:</label>
            <input type="text" id="requisitos" name="requisitos" required><br><br>

            <label for="salario">Salário</label>
            <input type="text" id="salario" name="salario" required><br><br>
            
            <label for="cargo">Cargo</label>
            <input type="text" id="cargo" name="cargo" required><br><br>
            
            <label for="experiencias">Experiências</label>
            <input type="text" id="experiencias" name="experiencias" required><br><br>
            
            <label for="beneficios">Beneficíos</label>
            <input type="text" id="beneficios" name="beneficios" required><br><br>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</section>

@endsection