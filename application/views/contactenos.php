<main>
    <div class="container">
        <div class="row" id="box-secs">
            
        <div class="col-md-4" >
            <p class="text-center"><img src="http://www.lacasadelfitness.com/assets/img/img_contactanos.jpg" alt="empresa" width="100%"></p>
        </div>
            
            
        <div class="col-md-8" >
             <h1>ESPECIALISTAS EN ASESORAMIENTO FITNESS</h1>
             <h2>Ante cualquier consulta, no dudes en escribirnos <br> Nuestros representantes están para asesorarte.</h2>
            <form class="form-horizontal form-consulta contactenos " method="post" action="http://www.lacasadelfitness.com/capital-federal/enviar-contacto" accept-charset="UTF-8">

                <div class="row">
                       <div class="control-group col-md-6">
                            <label class="control-label" for="nombre">Nombre y Apellido</label>
                            <input type="text" id="nombre" minlength="3" required="" name="nombre" class="form-control input-small" placeholder="Nombre y Apellido">
                        </div>
                        <div class="control-group col-md-6">
                            <label class="control-label" for="telefono">Teléfono</label>
                            <input type="telephone" minlength="8" id="telefono" required="" name="telefono" class="form-control input-small" placeholder="Teléfono">
                        </div>
                        <div class="control-group col-md-6">
                          <label class="control-label" for="localidad">Localidad o Provincia</label>
                         <select id="localidad" name="localidad" class="form-control input-small"> 
                                        <option value="">Seleccione una opción</option> 
                                        <option value="Bahia Blanca">Bahía Blanca</option>

                                        <option value="Lomas de Zamora">Lomas de Zamora</option> 

                                        <option value="Neuquén">Neuquén</option> 
                                        <option value="Rosario">Rosario</option>
                                        <option value="San Juan">Cuyo</option>
                                        <option value="Villa Crespo">Villa Crespo</option>
                                        <option value="">-----------------</option> 
                                        <option value="Buenos Aires"> Buenos Aires</option> 
                                        <option value="Capital Federal" selected="selected">Capital Federal y GBA</option>
                                        <option value="Catamarca"> Catamarca</option> 
                                        <option value="Chaco"> Chaco</option> 
                                        <option value="Chubut"> Chubut</option> 
                                        <option value="Córdoba"> Córdoba</option> 
                                        <option value="Corrientes"> Corrientes</option> 
                                        <option value="Entre Ríos"> Entre Ríos</option> 
                                        <option value="Formosa"> Formosa</option> 
                                        <option value="GBA (hasta 15km)"> GBA (hasta 15km)</option> 
                                        <option value="GBA (hasta 25km)"> GBA (hasta 25km)</option> 
                                        <option value="GBA (hasta 35km)"> GBA (hasta 35km)</option> 
                                        <option value="Jujuy"> Jujuy</option> 
                                        <option value="La Pampa"> La Pampa</option> 
                                        <option value="La Rioja"> La Rioja</option> 
                                        <option value="Misiones"> Misiones</option> 
                                        <option value="Río Negro"> Río Negro</option> 
                                        <option value="Salta"> Salta</option> 
                                        <option value="San Luis"> San Luis</option> 
                                        <option value="Santa Cruz"> Santa Cruz</option> 
                                        <option value="Santa Fe"> Santa Fe</option> 
                                        <option value="Santiago del Estero"> Santiago del Estero</option> 
                                        <option value="Tierra del Fuego"> Tierra del Fuego</option> 
                                        <option value="Tucumán"> Tucumán</option> 
                                    </select>
                      </div>

                      <div class="control-group col-md-6">
                          <label class="control-label" for="email">Email</label>
                          <input type="email" id="email" required="" name="email" class="form-control input-small" placeholder="Email">
                      </div>
                    
                      <div class="control-group col-md-6 local-de-consulta">
                          <label class="control-label" for="local de consulta">Local de consulta</label><br>
                          <div class="row">
                                <div class="col-md-6">
                                     <div class="radio">
                                          <label  for="local">
                                          <input type="radio" name="local" value="Indistinto" checked="">
                                              Indistinto
                                          </label>
                                     </div>
                                     <div class="radio">
                                          <label  for="local">
                                              <input type="radio" name="local" value="Villa Crespo">
                                              Villa Crespo
                                          </label>
                                      </div>

                                     <div class="radio">
                                          <label  for="local">
                                              <input type="radio" name="local" value="Bahia Blanca">
                                              Bahía Blanca 
                                          </label>
                                     </div>
                                </div>
                                <div class="col-md-6">
                                      <div class="radio">
                                          <label  for="local">
                                              <input type="radio" name="local" value="Cuyo">
                                             Cuyo
                                          </label>
                                      </div>

                                      <div class="radio">
                                          <label  for="local">
                                              <input type="radio" name="local" value="Rosario">
                                              Rosario
                                          </label>
                                      </div>
                                      <div class="radio">
                                         <label  for="local">
                                              <input type="radio" name="local" value="Lomas de Zamora">
                                              Lomas de Zamora
                                          </label>
                                      </div>
                                </div>
                              </div>
                         
                        </div>
                      <div class="control-group col-md-6 mensaje-box">
                                <label class="control-label" for="mensaje">Mensaje</label>
                                <textarea class="form-control" rows="3" placeholder="Mensaje" name="mensaje" style="resize: none;"></textarea>
                            </div>


                          <div class="form-actions col-md-12 ">
                               <input type="hidden" name="tipoConsulta" value="contacto">


                              <input type="text" value="" name="robotHuman" class="hide">
                              <button type="submit" class="btn btn-primary pull-right "><i class="glyphicon glyphicon-comment"></i> CONSULTAR</button>

                          </div>
                </div>
            </form>
        </div>
        
        
      
        
        
    </div>
    </div>
</main>