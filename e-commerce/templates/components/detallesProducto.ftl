<div class='container'>
    <div class="row mt-6 justify-content-center">
     
        [#assign rutaProductos = cmsfn.contentByPath("/", "inventario")]
        [#assign productos = cmsfn.children(rutaProductos,"producto")!]
        [#assign idUrl = ctx.id!]


        <div class="container" >
            [#list productos]
                [#items as producto]
                    [#if producto.id?has_content]
                        [#if producto.id==idUrl]
                        [#assign imgRef = damfn.getAssetLink(producto.imagen)!]
                        <!--<div id=“varProductoFree” type=“hidden” value=“${producto}”></div> -->
                           <h1>${producto.nombre} <small class="text-muted">${producto.categoria}</small></h3>

                            <div class="row">

                                <div class="col-md-8 ">
                                <img class="img-fluid" src="${imgRef}" style="max-width: 100%;max-height: 75vh;" alt="Imagen de ${producto.nombre}">
                                </div>

                                <div class="col-md-4 list-group">
                                    <h3 class="my-3 list-group-item list-group-item-action">Descripción</h3>
                                    <p>${producto.detalles}</p>
                                    <h3 class="my-3 list-group-item list-group-item-action">Características</h3>
                                    <ul class="list-group-item list-group-item-secondary">
                                        <li>${producto.precio}€</li>
                                        <li>Peso del paquete: ${producto.peso}Kg</li>
                                        <li>Marca: ${producto.marca}</li>
                                        <li>Este producto está disponible. ¡En Stock!</li>
                                    </ul>
                                    <!-- <button type="button" ${resfn.css("/e-commerce.*css")} class="btn btn-warning" onclick="addItemToCart(${producto.nombre},${producto.precio},1)">Añadir al carrito</button> -->
                                </div>
                            </div>
                        [/#if]
                    [/#if]
                [/#items]
            [/#list]

        </div>
    </div>
</div>

