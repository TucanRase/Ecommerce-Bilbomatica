<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">
    <head>
        [@cms.page /]
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <title>Lista de Productos</title>
        <style>
            .card .btn{
                margin:0.3rem;
            }
            .navbar{
                background-color: #f2f2f2 !important;
            }
            footer{
                background-color: #f2f2f2 !important;
            }
        </style>
    </head>
    <body>
    [#assign navigationRootPage = navfn.rootPage(content)!]
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="${cmsfn.link(navigationRootPage)!}">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="https://www.bilbomatica.es/">Bilbomatica</a>
            </li>
            </ul>
            <span class="navbar-text">
                <b>TIENDA ONLINE BILBOMATICA</b>
            </span>
        </div>
        </nav>
        <h1 style="text-align:center">Listado de productos en venta</h1>
        <div class="container">
          <div class="row">
            <div class="col-12">
              [#-- ** main area ** --]
              [@cms.area name="main" /]
            </div>
          </div>
        </div>
        <footer class="page-footer font-small cyan darken-3">
            <div class="footer-copyright text-center py-3">© Plataforma ecommerce:
                <a href="https://www.bilbomatica.es/"> BILBOMATICA.ES</a>
            </div>
        </footer>
    </body>
</html>