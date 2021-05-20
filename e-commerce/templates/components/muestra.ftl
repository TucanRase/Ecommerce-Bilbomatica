<div class='container'>
    <div class="row mt-5 justify-content-center">
     
        [#assign rutaProductos = cmsfn.contentByPath("/", "inventario")]
        [#assign productos = cmsfn.children(rutaProductos,"producto")!]
    
        [#list productos]
            [#items as producto]
            [#assign imgRef = damfn.getAssetLink(producto.imagen)!]
                [#if producto.id?has_content]
                [#assign num = producto.precio?number]
                    [#if num gt 10]
                    <div class="card" style="width: 18rem;">
                    <img src="${imgRef}" style="width:286px;height:400px" class="card-img-top" alt=${producto.nombre}>
                    <div class="card-body">
                        <h5 class="card-title">${producto.nombre}</h5>
                        <p class="card-text">${producto.detalles}</p>
                        <a href="#" class="btn btn-primary">Ver detalles</a>
                    </div>
                    </div>
                    [/#if]
                [/#if]
            [/#items]
        [/#list]
    </div>
</div>
