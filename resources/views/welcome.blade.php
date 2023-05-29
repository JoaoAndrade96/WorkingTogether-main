@extends('layouts.app')
@section('conteudo')

<section class="py-5">
    <div class="text-center">
        <h2>Encontre sua sonhada vaga de emprego na Working Together</h2>
    </div>
  <div class="container-fluid w-50 py-4">
    <form class="d-flex">
        <div class="input-group input-group-lg">
            <input class="form-control me-2" type="search" placeholder="Quais Vagas ou Empresas deseja buscar? Em qual local?" aria-label="Search">
            <button class="btn btn-dark" type="submit">Buscar</button>
        </div>
    </form>
  </div>
  <hr class="border border-2 border border-dark ms-5 me-5">
</section>

<section> <!-- Vagas -->
    <div class="text-center my-4">
        <h2>As melhores sugestões para você</h2>
    </div>

    <div class="d-flex">
        <div>
            <img src="/assets/images/vectors/Sample 38.png" alt="pessoa saindo de dentro do celular" width="600" height="480">
        </div>

        <div class="d-flex flex-wrap">
            @forelse($vagas as $vaga)
                <div class="card cardvagaswelcome m-2">
                    <div class="card-body">
                        <h5 class="card-title">{{$vaga->nome}}</h5>
                        <h5 class="card-title">{{$vaga?->empresa?->nome}}</h5>
                        <p class="card-text">Veja mais</p>
                    </div>
                </div>
            @empty
            <h1>Não possui!</h1>    
            @endforelse
        </div>
    </div>
</section>

<section> <!-- Empresas -->
    <div class="text-center">
        <h2>Entre em contato direto com as melhores empresas</h2>
    </div>

        <div class="d-flex">
            <div>
                <img src="/assets/images/vectors/Sample 27 copy.png" alt="mulher sentada numa cadeira e uma mulher saindo de dentro do celular" width="600" height="480">
            </div>

            <div class="d-flex flex-wrap">
                @forelse($empresas as $empresa)
                    <div class="card cardempresasinicio m-2">
                        <div class="card-body">
                            <div class="text-center">
                                <img class="logoimages img-fluid" src="{{Voyager::image($empresa->logo)}}" alt="logo empresa">
                            </div>
                        </div>
                    </div>
                @empty
                <h1>Não possui!</h1>    
                @endforelse
            </div>
        </div>
</section>

@endsection