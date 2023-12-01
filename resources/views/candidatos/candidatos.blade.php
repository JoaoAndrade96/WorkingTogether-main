@extends('layouts.app')
@section('conteudo')

<main class="container-main">
    <section class="section-origin">
        <div class="container-vaga">
            <div class="informacoes">
                <h4 style="font-weight:bold;">Nome da vaga</h4>
                <h4 style="font-weight:bold;">nome da empresa</h4>
                <h5>salário</h5>
                <h5>tipo de emprego</h5>
                <h5>endereco</h5>
                <h5>cidade, estado</h5>
            </div>

            <div class="logo-empresa">
                <img src="/assets/images/logo empresas/GALERIA-SITE-AMERICANAS.jpg" alt="logo da empresa" style="width: 250px; height: 250px;">
            </div>
        </div>
    </section>

    <section class="section-origin">
        <div class="container-vaga">
            <div class="logo-candidato">
                <img src="/assets/images/imagenspessoas/brooke-cagle-Nm70URdtf3c-unsplash.jpg" alt="logo da empresa" style="width: 250px; height: 200px;">
            </div>

            <div class="informacoes">
                <h5>Nome e Sobrenome</h5>
                <h5>Email</h5>
                <h5>Telefone</h5>
            </div>

            <div class="informacoes">
                <button class="botao-curriculo">
                    Currículo
                </button>
            </div>
        </div>
    </section>

    <section class="section-origin">
        <div class="container-vaga">
            <div class="logo-candidato">
                <img src="/assets/images/imagenspessoas/arnold-obizzy-FlF6S1TBZMg-unsplash.jpg" alt="logo da empresa" style="width: 250px; height: 200px;">
            </div>

            <div class="informacoes">
                <h5>Nome e Sobrenome</h5>
                <h5>Email</h5>
                <h5>Telefone</h5>
            </div>

            <div class="informacoes">
                <button class="botao-curriculo">
                    Currículo
                </button>
            </div>
        </div>
    </section>

    <section class="section-origin">
        <div class="container-vaga">
            <div class="logo-candidato">
                <img src="/assets/images/imagenspessoas/christina-wocintechchat-com-lFntEHwQvi4-unsplash.jpg" alt="logo da empresa" style="width: 250px; height: 200px;">
            </div>

            <div class="informacoes">
                <h5>Nome e Sobrenome</h5>
                <h5>Email</h5>
                <h5>Telefone</h5>
            </div>

            <div class="informacoes">
                <button class="botao-curriculo">
                    Currículo
                </button>
            </div>
        </div>
    </section>

    <section class="section-origin">
        <div class="container-vaga">
            <div class="logo-candidato">
                <img src="/assets/images/imagenspessoas/woman-8310751_1280.jpg" alt="logo da empresa" style="width: 250px; height: 200px;">
            </div>

            <div class="informacoes">
                <h5>Nome e Sobrenome</h5>
                <h5>Email</h5>
                <h5>Telefone</h5>
            </div>

            <div class="informacoes">
                <button class="botao-curriculo">
                    Currículo
                </button>
            </div>
        </div>
    </section>

    <section class="section-origin">
        <div class="container-vaga">
            <div class="logo-candidato">
                <img src="/assets/images/imagenspessoas/yingchou-han-IJrIeCs3D4g-unsplash.jpg" alt="logo da empresa" style="width: 250px; height: 200px;">
            </div>

            <div class="informacoes">
                <h5>Nome e Sobrenome</h5>
                <h5>Email</h5>
                <h5>Telefone</h5>
            </div>

            <div class="informacoes">
                <button class="botao-curriculo">
                    Currículo
                </button>
            </div>
        </div>
    </section>

</main>





<!-- 
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
</section> -->

@endsection