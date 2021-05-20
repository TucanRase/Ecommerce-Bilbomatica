<div class='container'>
    <div class="row mt-6 justify-content-center">
     
        [#assign rutaProductos = cmsfn.contentByPath("/", "inventario")]
        [#assign productos = cmsfn.children(rutaProductos,"producto")!]
        [#assign campaignParameter = ctx.id!]


        <div class="container">
            [#list productos]
                [#items as producto]
                    [#if producto.id?has_content]
                        [#if producto.id==campaignParameter]
                        [#assign imgRef = damfn.getAssetLink(producto.imagen)!]
                        <h1 class="my-4">${producto.nombre}</h1>

                        <div class="row">

                            <div class="col-md-8">
                            <img class="img-fluid" src="${imgRef}" alt="Imagen de ${producto.nombre}">
                            </div>

                            <div class="col-md-4">
                            <h3 class="my-3">Descripción</h3>
                            <p>${producto.detalles}</p>
                            <h3 class="my-3">Características</h3>
                            <ul>
                                <li>${producto.precio}€</li>
                                <li>Peso</li>
                                <li>Marca</li>
                            </ul>
                        </div>
                    [/#if]
                    [/#if]
                [/#items]
            [/#list]

        </div>
    </div>
</div>

