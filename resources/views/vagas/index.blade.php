@extends('layouts.app')
@section('conteudo')

<section class="py-5">
  <div class="container-fluid w-50 py-4">
    <form class="d-flex">
        <div class="input-group input-group-lg">
            <input class="form-control me-2" type="search" placeholder="Quais Vagas deseja buscar? Em qual local?" aria-label="Search">
            <button class="btn btn-dark" type="submit">Buscar</button>
        </div>
    </form>
  </div>
  <hr class="border border-2 border border-dark ms-5 me-5">
</section>

<section>  
        <!-- Card -->
        <div class="d-flex flex-wrap justify-content-center">
            @forelse($vagas as $vaga)
            <a data-bs-toggle="modal" data-bs-target="#vagasModal-{{$vaga->id}}">
                <div class="card cardvagas mx-3 my-3">
                    <div class="card-body">
                        <h5 class="card-title">{{$vaga->nome}}</h5>

                        <h5 class="card-title">{{$vaga?->empresa?->nome}}</h5>

                        <h6 class="card-subtitle mb-2 text-muted my-1">@isset($vaga?->tiposemprego?->nome)<span>{{$vaga?->tiposemprego?->nome}}</span>@endisset</h6>

                        <h6 class="card-subtitle mb-2 text-muted my-1">@isset($vaga?->empresa?->cidade?->nome)<span>{{$vaga?->empresa?->cidade?->nome}}</span>,@endisset<span>{{$vaga?->empresa?->cidade?->estado?->nome}}</span></h6>
                        <div class="overflow-auto w-100 h-25 my-3">
                            <h6 class="modal-title">Sobre a vaga : {{$vaga->descricao}}</h6>
                        </div>
                        <h6 class="card-subtitle text-center my-3">clique para ver mais...</h6>
                    </div>
                </div>
            </a>    

                <!-- Modal -->
                <div class="modal fade" id="vagasModal-{{$vaga->id}}" tabindex="-1" aria-labelledby="vagasModal-{{$vaga->id}}Label" aria-hidden="true" datavagamodal="{{$vaga->id}}">
                <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered">
                    <div class="modal-content">
                    <div class="modal-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">{{$vaga->nome}}</h5>

                                <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">{{$vaga?->empresa?->nome}}</h5>

                                <h5 class="card-subtitle mb-2">R${{$vaga->salario}}</h5>

                                <h6 class="card-subtitle mb-2 text-muted">@isset($vaga?->tiposemprego?->nome)<span>{{$vaga?->tiposemprego?->nome}}</span>@endisset</h6>

                                <h6 class="card-subtitle mb-2 text-muted">@isset($vaga?->empresa?->endereco?->rua)<span>{{$vaga?->empresa?->endereco?->rua}}</span>,@endisset<span>{{$vaga?->empresa?->endereco?->numero}}</span></h6>

                                <h6 class="card-subtitle mb-2 text-muted">@isset($vaga?->empresa?->cidade?->nome)<span>{{$vaga?->empresa?->cidade?->nome}}</span>,@endisset<span>{{$vaga?->empresa?->cidade?->estado?->nome}}</span></h6>
                                
                            </div>

                            <div>
                                <img class="logoimages img-fluid" src="{{Voyager::image($vaga?->empresa?->logo)}}" alt="logo empresa">
                            </div>
                        </div>

                        <div class="mt-5">
                            <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">Sobre a vaga</h5>
                            <h6 class="card-subtitle mb-2 text-muted">{{$vaga->descricao}}</h6>

                            <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">Requisitos</h5>
                            <h6 class="card-subtitle mb-2 text-muted">{{$vaga->requisitos}}</h6>


                            <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">Cargo</h5>
                            <h6 class="card-subtitle mb-2 text-muted">{{$vaga->cargo}}</h6>

                            <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">Experiências</h5>
                            <h6 class="card-subtitle mb-2 text-muted">{{$vaga->experiencia}}</h6>

                            <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">Formações Academicas</h5>
                            <h6 class="card-subtitle mb-2 text-muted">@isset($vaga?->formacaoacademica?->nome)<span>{{$vaga?->formacaoacademica?->nome}}</span>@endisset</h6>

                            <h5 class="modal-title" id="vagasModal-{{$vaga->id}}">Benefícios</h5>
                            <h6 class="card-subtitle mb-2 text-muted">{{$vaga->beneficios}}</h6>
                        </div>

                    </div>
                    <div class="modal-footer d-flex justify-content-between">

                        <div class="text-center mt-4">
                            <button type="button" class="btn btn-dark btn-lg">Candidatar-se</button>
                        </div>

                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="vagasModal-{{$vaga->id}}">Close</button>
                    </div>
                    </div>
                </div>
                </div>
            @empty
            <h1>Não possui!</h1>
            @endforelse
        </div>
</section>


@endsection