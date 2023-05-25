@extends('layouts.app')
@section('conteudo')

<section class="py-5">
  <div class="container-fluid w-50 py-4">
    <form class="d-flex">
        <div class="input-group input-group-lg">
            <input class="form-control me-2" type="search" placeholder="Quais Empresas deseja buscar?" aria-label="Search">
            <button class="btn btn-dark" type="submit">Buscar</button>
        </div>
    </form>
  </div>
  <hr class="border border-2 border border-dark ms-5 me-5">
</section>

<section>
    <!-- Card -->
    <div class="d-flex flex-wrap justify-content-center">
        @forelse($empresas as $empresa)
        <a data-bs-toggle="modal" data-bs-target="#empresasModal-{{$empresa->id}}">
            <div class="card cardempresas m-2">
                <div class="card-body text-center">
                    <div class="my-2">
                        <img class="logoimages img-fluid" src="{{Voyager::image($empresa->logo)}}" alt="logo empresa">
                    </div>
                    <h5 class="card-title">{{$empresa->nome}}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Essa empresa possui: {{$empresa?->vagas?->count()}}  vagas.</h6>
                    <h6 class="card-subtitle">clique para ver mais...</h6>
                </div>
            </div>
        </a>


                <!-- Modal -->
                <div class="modal fade" id="empresasModal-{{$empresa->id}}" tabindex="-1" aria-labelledby="empresasModal-{{$empresa->id}}Label" aria-hidden="true" datavagamodal="{{$empresa->id}}">
                    <div class="modal-dialog modal-dialog-scrollable modal-xl modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="modal-title" id="empresasModal-{{$empresa->id}}">{{$empresa->nome}}</h4>
                                        <h5 class="card-subtitle mb-2 text-muted">@isset($empresa?->endereco?->rua)<span>{{$empresa?->endereco?->rua}}</span>,@endisset<span>{{$empresa?->endereco?->numero}}</span>

                                        <h5 class="card-subtitle mb-2 text-muted">@isset($empresa?->cidade?->nome)<span>{{$empresa?->cidade?->nome}}</span>,@endisset<span>{{$empresa?->cidade?->estado?->nome}}</span></h5>
                                    </div>  

                                    <div>
                                        <img class="logoimages img-fluid" src="{{Voyager::image($empresa?->logo)}}" alt="logo empresa">
                                    </div>
                                </div>

                                <div class="my-5">
                                    <h5 class="modal-title" id="empresasModal-{{$empresa->id}}">Sobre a empresa:</h5>
                                     <h6 class="card-subtitle mb-2 text-muted">{{$empresa->descricao}}</h6>
                                </div>

                                <div class="my-5">
                                    <h5 class="modal-title text-center" id="empresasModal-{{$empresa->id}}">Vagas</h5>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="empresasModal-{{$empresa->id}}">Close</button>
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