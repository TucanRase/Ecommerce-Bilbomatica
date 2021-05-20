<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">
    <head>
        [@cms.page /]
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <style>
        .card{
            margin:0.3rem
        }
        .navbar{
                background-color: #f2f2f2 !important;
            }
            footer{
                background-color: #f2f2f2 !important;
            }
        </style>
         
        <title>Home</title>
    </head>
     
    <body>
    
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">E-Commerce</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                [#assign navParentItem = navfn.rootPage(content)!]
                [#if navParentItem??]
                [#assign navItems = navfn.navItems(navParentItem)]
                [#list navItems as navItem]
                    <a class="nav-link" href="${cmsfn.link(navItem)!}">Listado de productos <span class="sr-only"></span></a>
                [/#list]
                [/#if]
            </li>
            </ul>
            <span class="navbar-text">
                <b>TIENDA ONLINE BILBOMATICA</b>
            </span>
        </div>
        </nav>
        <div class="container">
            <h1 class="display-1">PRODUCTOS DESTACADOS</h1>
            <div class="col-12">


            [@cms.area name="main" /]
            </div>
        </div>
        <footer class="page-footer font-small blue">
            <div class="footer-copyright text-center py-3">© Plataforma ecommerce:
                <a href="https://www.bilbomatica.es/"> BILBOMATICA.ES</a>
            </div>
        </footer>
    </body>
     
</html>