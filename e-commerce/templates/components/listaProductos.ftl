<div class='container'>
    <div class="row mt-6 justify-content-center">
     
        [#assign rutaProductos = cmsfn.contentByPath("/", "inventario")]
        [#assign productos = cmsfn.children(rutaProductos,"producto")!]

    
        [#list productos]
            [#items as producto]
                [#if producto.id?has_content]
                 [#assign imgRef = damfn.getAssetLink(producto.imagen)!]
                    <div class="card mx-2 mb-3" style="width: 18rem;">
                    
                    <div class="card-body"><img class="card-img-top-center" style="width:200px;height:200px;margin: 0 auto" src="${imgRef}" alt="Imagen de ${producto.nombre}">
                        <h5 class="card-title">${producto.nombre}</h5>
                        <p class="card-text">${producto.detalles}</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">${producto.precio}€</li>
                        <li class="list-group-item">${producto.id}</li>
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
            [/#items]
        [/#list]
    </div>
</div>

