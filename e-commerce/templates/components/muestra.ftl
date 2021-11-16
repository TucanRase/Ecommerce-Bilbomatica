<div class='container'>
    <div class="row mt-5 justify-content-center">
     
        [#assign rutaProductos = cmsfn.contentByPath("/", "inventario")]
        [#assign productos = cmsfn.children(rutaProductos,"producto")!]
    
        [#list productos]
            [#items as producto]
            [#assign imgRef = damfn.getAssetLink(producto.imagen)!]
                [#if producto.id?has_content]
                [#assign num = producto.precio?number]
                    [#if num lt 60 && producto.stock?number gt 0]
                    <div class="card" style="width: 18rem;">
                    <img src="${imgRef}" style="width:286px;height:400px" class="card-img-top mx-auto d-block" alt=${producto.nombre}>
                    <div class="card-body">
                        <h5 class="card-title">${producto.nombre}</h5>
                        <h3>${producto.precio}€</h3>
                        [#assign subNavigationRootPage = navfn.ancestorPageAtLevel(content, 1)!]
                        [#if subNavigationRootPage??]
                        [#assign navItems = navfn.navItems(subNavigationRootPage)]
                            [#list navItems as navItem]
                               <a class="btn btn-secondary" href="${cmsfn.link(navItem)!}" role="button">Ver productos</a>
                            [/#list]
                        [/#if]
                    </div>
                    </div>
                    [/#if]
                [/#if]
            [/#items]
        [/#list]
    </div>
</div>
