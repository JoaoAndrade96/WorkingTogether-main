@extends('layouts.app')
@section('conteudo')

<section class="d-flex justify-content-center">
    <div class="card" style="width: 60rem;">
    @forelse($vagas as $vaga)
        <div class="d-flex justify-content-around">
            <div class="card-body">
                <h4 class="modal-title" id="vagasModal-{{$vaga->id}}">{{$vaga->nome}}</h4>
                <h4 class="modal-title" id="vagasModal-{{$vaga->id}}">{{$vaga?->empresa?->nome}}</h4>
                <h5 class="card-subtitle mb-2">R${{$vaga->salario}}</h5>
                <h5 class="card-subtitle mb-2 text-muted">@isset($vaga?->tiposemprego?->nome)<span>{{$vaga?->tiposemprego?->nome}}</span>@endisset</h5>
                <h5 class="card-subtitle mb-2 text-muted">@isset($vaga?->empresa?->endereco?->rua)<span>{{$vaga?->empresa?->endereco?->rua}}</span>,@endisset<span>{{$vaga?->empresa?->endereco?->numero}}</span></h6>
                <h5 class="card-subtitle mb-2 text-muted">@isset($vaga?->empresa?->cidade?->nome)<span>{{$vaga?->empresa?->cidade?->nome}}</span>,@endisset<span>{{$vaga?->empresa?->cidade?->estado?->nome}}</span></h5>   
            </div>

            <div>
                <img class="logoimages img-fluid" src="{{Voyager::image($vaga?->empresa?->logo)}}" alt="logo empresa">
            </div>
        </div>
        @empty
        <h1>Não possui!</h1>
        @endforelse
    </div>
</section>

@endsection