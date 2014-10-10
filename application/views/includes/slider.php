
<!-- slider-->

 <section>
     <div class="container">
         <div class="row">
               <aslide class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-xxs">

                    <img src="http://placehold.it/970x300" alt="banner" class="img-responsive" />

              </aslide>
              <nav class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-xxs">
                  <ol class="breadcrumb">
                      <li><a href="<?php echo site_url('index');?>">La Casa Del Fitness</a></li>
                      <li><a href="<?php echo site_url($ubicacion);?>"><?php echo ucwords(str_replace('-',' ', $ubicacion));?></a></li>
                      <?php
                      
                      if(!empty($this->uri->segment(3)) ){
                        if($this->uri->segment(2) != "comparar" ){
                         if($this->uri->segment(2) == "sucursal" ){
                          ?>
                          <li>
                            <a href="<?php echo site_url($ubicacion."/sucursales");?>">
                              <?php echo ucwords(str_replace('-',' ', $this->uri->segment(2)));?>
                            </a>
                          </li>
                          <li class="active"><?php echo ucwords(str_replace('-',' ', $this->uri->segment(3)) );?></li>
                          <?php
                         }else{


                         ?>
                          <li>
                            <a href="<?php echo site_url($ubicacion."/".$this->uri->segment(2));?>">
                              <?php echo ucwords(str_replace('-',' ', $this->uri->segment(2)));?>
                            </a>
                          </li>
                          <li class="active"><?php echo ucwords(str_replace('-',' ', $this->uri->segment(4)) );?></li>
                        <?php
                         }
                        }else{

                            ?>
                              <li class="active"><?php echo ucwords(str_replace('-',' ', $this->uri->segment(2)));?></li>
                            <?php

                        }
                      }else if(!empty($this->uri->segment(2))){
                      ?>
                        <li class="active"><?php echo ucwords(str_replace('-',' ', $this->uri->segment(2)));?></li>
                      <?php
                      }
                      ?>
                  </ol>
              </nav>
         </div>
      </div>
 
    
  </section>
  <!-- end slider-->