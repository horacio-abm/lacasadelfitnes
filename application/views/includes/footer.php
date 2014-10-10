  <!-- footer-->
      <footer>
         <div class="container">
             <div class="row">
                  <div class="col-md-6 col-sm-12 ">
                 
                      <div class="row">
                           <div class="col-md-6  col-sm-6 col-xs-6 col-lg-6 ">
                                <div class="clear"></div>
                                <h2>PRODUCTOS</h2>
                                <ul>
                                <li><a href="<?php echo site_url($ubicacion.'/cintas-para-correr');?>">Cintas para Correr</a></li>
                                <li><a href="<?php echo site_url($ubicacion.'/bicicletas-fijas');?>">Bicicletas Fijas</a></li>
                                <li><a href="<?php echo site_url($ubicacion.'/bicicletas-indoor');?>">Bicicletas Indoor</a></li>
                                <li><a href="<?php echo site_url($ubicacion.'/plataformas-vibratorias');?>">Plataformas Vibratorias</a></li>
                                <li><a href="<?php echo site_url($ubicacion.'/caminadores-elipticos');?>">Caminadores Elípticos</a></li>
                                <li><a href="<?php echo site_url($ubicacion.'/entrenadores');?>">Entrenadores</a></li>
                                <li><a href="<?php echo site_url($ubicacion.'/accesorios');?>">Accesorios</a></li>

                                <li><a href="<?php echo site_url($ubicacion.'/gimnasios');?>">Gimnasios</a></li>

                                </ul>
                            </div>
                            <div class="col-md-6  col-sm-6 col-xs-6 col-lg-6">
                                 <h2>LA CASA DEL FITNESS</h2>
                                 <ul>
                                    <li><a href="<?php echo site_url($ubicacion.'/envios');?>">Envíos</a></li>
                                    <li><a href="<?php echo site_url($ubicacion.'/garantia');?>">Garantía</a></li>
                                    <li><a href="<?php echo site_url($ubicacion.'/contactenos');?>">Contáctenos</a></li>
                                    <li><a href="<?php echo site_url($ubicacion.'/sucursales');?>">Sucursales</a></li>
                                    <li><a data-toggle="modal" href="#politica-modal">Política de privacidad</a></li>
                                </ul>                    
                            </div>

                      </div>
                  </div>
                 
                 
                   <div class="col-md-6 col-sm-12">
                       <div class="row">
                            <div class="col-md-5  col-sm-6 col-xs-6 col-lg-5 promo">
                                <h2>SUCURSALES</h2>
                                <ul>
                                 <li><a href="<?php echo site_url($ubicacion.'/sucursal/villa-crespo');?>">Villa Crespo</a></li>
                                 <li><a href="<?php echo site_url($ubicacion.'/sucursal/lomas-zamora');?>">Lomas De Zamora</a></li>
                                 <li><a href="<?php echo site_url($ubicacion.'/sucursal/bahia-blanca');?>">Bahía Blanca</a></li>
                                 <li><a href="<?php echo site_url($ubicacion.'/sucursal/rosario');?>">Rosario</a></li>
                                 <li><a href="<?php echo site_url($ubicacion.'/sucursal/cuyo');?>">Cuyo</a></li>


                                </ul>

                            </div>
                            <div class="col-md-7  col-sm-6 col-xs-6 col-lg-7 promo">
                                <h2>NEWSLETTER</h2>
                                <p>Recibí todos los meses nuestras promos y novedades.</p>
                                <form class="form-horizontal form-consulta " method="post" action="<?php echo site_url($ubicacion.'/newsletter');?>" accept-charset="UTF-8">

                                    <div class="row">
                                        <div class="control-group col-md-12">

                                          <input type="email" id="email" required="" name="email" style=" max-width: 140px;" class="input-small " placeholder="Ingresá tu email">
                                          <input type="submit" class="btn btn-danger btn-sm  " style=" margin:-2px 3px;" value="Enviar" style="">
                                      </div>
                                    </div>
                                </form>

                                 <h2 class="col-md-5">SEGUINOS</h2>
                                  <ul class="col-md-6">
                                      <li><span class="pull-left" style="color:#fff">Encontranos<br> en Facebook</span> <a href="https://www.facebook.com/casafitness" target="_blank" style="margin-left: 10px;" class="sprite fb pull-right"></a></li>
                                </ul>    
                                 <div class="col-md-3" >

                                     <a href="http://qr.afip.gob.ar/?qr=37-ljnyXK9gC91BELNai9A,," target="_F960AFIPInfo"><img src="http://www.afip.gob.ar/images/f960/DATAWEB.jpg" width="58" height="79" border="0"></a>
                                 </div>
                            </div>
                       </div>
                  </div>
             </div>
         </div>
          
      </footer>
      <!-- end footer-->
      

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo site_url('assets/js/bootstrap.min.js');?>"></script>
    <script src="<?php echo site_url('assets/js/script.js');?>"></script>
  </body>
</html>