<header class="masthead">
    <div class="container">
        <div class="masthead-subheading">
           {{setting('site.title')}}
        </div>
        <div class="masthead-heading text-uppercase">
            {{setting('site.description')}}
        </div>
        <a class="btn btn-primary btn-xl text-uppercase" href="#services">
            {{$botao ?? 'Conheça a aplicação'}}
        </a>
    </div>
</header>
