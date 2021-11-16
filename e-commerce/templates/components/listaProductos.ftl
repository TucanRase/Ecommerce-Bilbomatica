<form action="${state.originalBrowserURL}" method="get">
        <div class="form-group" >
            <select class="form-control" name="filtro" id="selectFiltro" onchange="this.form.submit()">
            <option>Categoria</option>
            <option>Nombre</option>
            </select>
        </div>
</form>
<div class='container'>
    <div class="row mt-6 justify-content-center">
     
        [#assign rutaProductos = cmsfn.contentByPath("/", "inventario")]
        [#assign productos = cmsfn.children(rutaProductos,"producto")!]

        [#assign filtroUrl = ctx.filtro!]<!--  valor para ordenar la lista segun el dropdown  -->
        [#if filtroUrl?has_content]
        [#else ]
            [#assign filtroUrl = "categoria"]
        [/#if]
            [#list productos ?sort_by(filtroUrl?lower_case) as producto ]
                [#if producto.id?has_content && producto.stock?number gt 0]
                [#assign imgRef = damfn.getAssetLink(producto.imagen)!]
                    <div class="card mx-2 mb-3" style="width: 18rem;">
                    
                    <div class="card-body"><img class="card-img-top mx-auto d-block" style="width:200px;height:200px;margin: auto" src="${imgRef}" alt="Imagen de ${producto.nombre}">
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><h5>${producto.nombre}</h5></li>
                    </ul>
                    <div class="card-body">
                    [#assign subNavigationRootPage = navfn.ancestorPageAtLevel(content, 2)!]
                        [#if subNavigationRootPage??]
                        [#assign navItems = navfn.navItems(subNavigationRootPage)]
                            [#list navItems as navItem]
                            <a class="btn btn-secondary" href="${cmsfn.link(navItem)!}?id=${producto.id}" role="button">Ver detalles</a>
                            [/#list]
                        [/#if] 
                    </div>
                    </div>
                [/#if]
            [/#list]
    </div>
</div>

