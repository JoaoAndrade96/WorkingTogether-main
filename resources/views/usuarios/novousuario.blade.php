@extends('layouts.app')
@section('conteudo')

<section class="py-5">
    <div class="d-flex justify-content-center">
        <form method="post" action="{{route('salvarusuario')}}">
            @csrf
            <label for="name">Nome:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="password">Senha:</label>
            <input type="text" id="password" name="password" required><br><br>
            
            <button type="submit">Submit</button>
        </form>
    </div>
</section>
@endsection