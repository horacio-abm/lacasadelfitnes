<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['capital-federal/404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "sitio";
$route['index'] = "sitio/index";

/********************************** Capital Federal***********************************************/

$route['set_vista']		                                                        = "sitio/set_vista";
$route['set_orden']		                                                        = "sitio/set_orden";
$route['capital-federal']                                                       = "sitio/cintas/capital-federal/null/0";
$route['capital-federal/cintas-para-correr']                                    = "sitio/cintas/capital-federal/null/0";
$route['capital-federal/cintas-para-correr/(:num)']                             = "sitio/cintas/capital-federal/null/$1";
$route['capital-federal/cintas-para-correr/filtro/(:any)']                      = "sitio/cintas/capital-federal/$1/0";
$route['capital-federal/cintas-para-correr/filtro/(:any)/(:num)']               = "sitio/cintas/capital-federal/$1/$2";
$route['capital-federal/cintas-para-correr/info/(:any)']                        = "sitio/get_cinta/capital-federal/$1";


$route['capital-federal']                                                       = "sitio/bicicletas_fijas/capital-federal/null/0";
$route['capital-federal/bicicletas-fijas']                                      = "sitio/bicicletas_fijas/capital-federal/null/0";
$route['capital-federal/bicicletas-fijas/(:num)']                               = "sitio/bicicletas_fijas/capital-federal/null/$1";
$route['capital-federal/bicicletas-fijas/filtro/(:any)']                        = "sitio/bicicletas_fijas/capital-federal/$1/0";
$route['capital-federal/bicicletas-fijas/filtro/(:any)/(:num)']                 = "sitio/bicicletas_fijas/capital-federal/$1/$2";
$route['capital-federal/bicicletas-fijas/info/(:any)']                          = "sitio/get_bicicleta_fija/capital-federal/$1";

$route['capital-federal']                                                       = "sitio/bicicletas_indoor/capital-federal/null/0";
$route['capital-federal/bicicletas-indoor']                                     = "sitio/bicicletas_indoor/capital-federal/null/0";
$route['capital-federal/bicicletas-indoor/(:num)']                              = "sitio/bicicletas_indoor/capital-federal/null/$1";
$route['capital-federal/bicicletas-indoor/filtro/(:any)']                       = "sitio/bicicletas_indoor/capital-federal/$1/0";
$route['capital-federal/bicicletas-indoor/filtro/(:any)/(:num)']                = "sitio/bicicletas_indoor/capital-federal/$1/$2";
$route['capital-federal/bicicletas-indoor/info/(:any)']                         = "sitio/get_bicicleta_indoor/capital-federal/$1";

$route['capital-federal']                                                       = "sitio/plataformas_vibratorias/capital-federal/null/0";
$route['capital-federal/plataformas-vibratorias']                               = "sitio/plataformas_vibratorias/capital-federal/null/0";
$route['capital-federal/plataformas-vibratorias/(:num)']                        = "sitio/plataformas_vibratorias/capital-federal/null/$1";
$route['capital-federal/plataformas-vibratorias/filtro/(:any)']                 = "sitio/plataformas_vibratorias/capital-federal/$1/0";
$route['capital-federal/plataformas-vibratorias/filtro/(:any)/(:num)']          = "sitio/plataformas_vibratorias/capital-federal/$1/$2";
$route['capital-federal/plataformas-vibratorias/info/(:any)']                   = "sitio/get_plataforma/capital-federal/$1";

$route['capital-federal']                                                       = "sitio/caminadores_elipticos/capital-federal/null/0";
$route['capital-federal/caminadores-elipticos']                                 = "sitio/caminadores_elipticos/capital-federal/null/0";
$route['capital-federal/caminadores-elipticos/(:num)']                          = "sitio/caminadores_elipticos/capital-federal/null/$1";
$route['capital-federal/caminadores-elipticos/filtro/(:any)']                   = "sitio/caminadores_elipticos/capital-federal/$1/0";
$route['capital-federal/caminadores-elipticos/filtro/(:any)/(:num)']            = "sitio/caminadores_elipticos/capital-federal/$1/$2";
$route['capital-federal/caminadores-elipticos/info/(:any)']                     = "sitio/get_caminador/capital-federal/$1";

$route['capital-federal']                                                       = "sitio/entrenadores/capital-federal/null/0";
$route['capital-federal/entrenadores']                                          = "sitio/entrenadores/capital-federal/null/0";
$route['capital-federal/entrenadores/(:num)']                                   = "sitio/entrenadores/capital-federal/null/$1";
$route['capital-federal/entrenadores/filtro/(:any)']                            = "sitio/entrenadores/capital-federal/$1/0";
$route['capital-federal/entrenadores/filtro/(:any)/(:num)']                     = "sitio/entrenadores/capital-federal/$1/$2";
$route['capital-federal/entrenadores/info/(:any)']                              = "sitio/get_entrenador/capital-federal/$1";

$route['capital-federal']                                                       = "sitio/entrenadores/capital-federal/null/0";
$route['capital-federal/accesorios']                                            = "sitio/accesorios/capital-federal/null/0";
$route['capital-federal/accesorios/(:num)']                                     = "sitio/accesorios/capital-federal/null/$1";
$route['capital-federal/accesorios/filtro/(:any)']                              = "sitio/accesorios/capital-federal/$1/0";
$route['capital-federal/accesorios/filtro/(:any)/(:num)']                       = "sitio/accesorios/capital-federal/$1/$2";
$route['capital-federal/accesorios/info/(:any)']                                = "sitio/get_accesorio/capital-federal/$1";

$route['capital-federal']                                                       = "sitio/gimnasios/capital-federal/null/0";
$route['capital-federal/gimnasios']                                             = "sitio/gimnasios/capital-federal/null/0";
$route['capital-federal/gimnasios/(:num)']                                      = "sitio/gimnasios/capital-federal/null/$1";
$route['capital-federal/gimnasios/filtro/(:any)']                               = "sitio/gimnasios/capital-federal/$1/0";
$route['capital-federal/gimnasios/filtro/(:any)/(:num)']                        = "sitio/gimnasios/capital-federal/$1/$2";
$route['capital-federal/gimnasios/info/(:any)']                                 = "sitio/get_gimnasio/capital-federal/$1";




$route['capital-federal/comparar/cintas-para-correr/(:num)/(:num)/(:num)']         = "sitio/comparar/capital-federal/cintas-para-correr/$1/$2/$3";
$route['capital-federal/comparar/cintas-para-correr/(:num)/(:num)']               = "sitio/comparar/capital-federal/cintas-para-correr/$1/$2";

$route['capital-federal/comparar/bicicletas-fijas/(:num)/(:num)/(:num)']           = "sitio/comparar/capital-federal/bicicletas-fijas/$1/$2/$3";
$route['capital-federal/comparar/bicicletas-fijas/(:num)/(:num)']                  = "sitio/comparar/capital-federal/bicicletas-fijas/$1/$2";

$route['capital-federal/comparar/bicicletas-indoor/(:num)/(:num)/(:num)']          = "sitio/comparar/capital-federal/bicicletas-indoor/$1/$2/$3";
$route['capital-federal/comparar/bicicletas-indoor/(:num)/(:num)']                = "sitio/comparar/capital-federal/bicicletas-indoor/$1/$2";

$route['capital-federal/comparar/plataformas-vibratorias/(:num)/(:num)/(:num)']    = "sitio/comparar/capital-federal/plataformas-vibratorias/$1/$2/$3";
$route['capital-federal/comparar/plataformas-vibratorias/(:num)/(:num)']          = "sitio/comparar/capital-federal/plataformas-vibratorias/$1/$2";

$route['capital-federal/comparar/caminadores-elipticos/(:num)/(:num)/(:num)']      = "sitio/comparar/capital-federal/capital-federal/caminadores-elipticos/$1/$2/$3";
$route['capital-federal/comparar/caminadores-elipticos/(:num)/(:num)']            = "sitio/comparar/capital-federal/capital-federal/caminadores-elipticos/$1/$2";

$route['capital-federal/comparar/entrenadores/(:num)/(:num)/(:num)']               = "sitio/comparar/capital-federal/entrenadores/$1/$2/$3";
$route['capital-federal/comparar/entrenadores/(:num)/(:num)']                     = "sitio/comparar/capital-federal/entrenadores/$1/$2";

$route['capital-federal/comparar/accesorios/(:num)/(:num)/(:num)']                 = "sitio/comparar/capital-federal/accesorios/$1/$2/$3";
$route['capital-federal/comparar/accesorios/(:num)/(:num)']                       = "sitio/comparar/capital-federal/accesorios/$1/$2";

$route['capital-federal/comparar/gimnasios/(:num)/(:num)/(:num)']                  = "sitio/comparar/capital-federal/gimnasios/$1/$2/$3";
$route['capital-federal/comparar/gimnasios/(:num)/(:num)']                        = "sitio/comparar/capital-federal/gimnasios/$1/$2";



$route['capital-federal/por-que-elegirnos'] = "sitio/porque_elegirnos/capital-federal";
$route['capital-federal/contactenos'] = "sitio/contactenos/capital-federal";
$route['capital-federal/sucursales'] = "sitio/sucursales/capital-federal";
$route['capital-federal/empresa'] = "sitio/empresa/capital-federal";
$route['capital-federal/envios'] = "sitio/envios/capital-federal";
$route['capital-federal/garantia'] = "sitio/garantia/capital-federal";

$route['capital-federal/sucursal/villa-crespo'] = "sitio/sucursal/capital-federal/villa-crespo";
$route['capital-federal/sucursal/lomas-de-zamora'] = "sitio/sucursal/capital-federal/lomas-de-zamora";
$route['capital-federal/sucursal/bahia-blanca'] = "sitio/sucursal/capital-federal/bahia-blanca";
$route['capital-federal/sucursal/san-juan'] = "sitio/sucursal/capital-federal/san-juan";
/**********************************Fin Capital Federal***********************************************/


/**********************************Cuyo***********************************************/
$route['cuyo']                                                       = "sitio/cintas/cuyo/null/0";
$route['cuyo/cintas-para-correr']                                    = "sitio/cintas/cuyo/null/0";
$route['cuyo/cintas-para-correr/(:num)']                             = "sitio/cintas/cuyo/null/$1";
$route['cuyo/cintas-para-correr/filtro/(:any)']                      = "sitio/cintas/cuyo/$1/0";
$route['cuyo/cintas-para-correr/filtro/(:any)/(:num)']               = "sitio/cintas/cuyo/$1/$2";
$route['cuyo/cintas-para-correr/info/(:any)']                        = "sitio/get_cinta/cuyo/$1";


$route['cuyo']                                                       = "sitio/bicicletas_fijas/cuyo/null/0";
$route['cuyo/bicicletas-fijas']                                      = "sitio/bicicletas_fijas/cuyo/null/0";
$route['cuyo/bicicletas-fijas/(:num)']                               = "sitio/bicicletas_fijas/cuyo/null/$1";
$route['cuyo/bicicletas-fijas/filtro/(:any)']                        = "sitio/bicicletas_fijas/cuyo/$1/0";
$route['cuyo/bicicletas-fijas/filtro/(:any)/(:num)']                 = "sitio/bicicletas_fijas/cuyo/$1/$2";
$route['cuyo/bicicletas-fijas/info/(:any)']                          = "sitio/get_bicicleta_fija/cuyo/$1";

$route['cuyo']                                                       = "sitio/bicicletas_indoor/cuyo/null/0";
$route['cuyo/bicicletas-indoor']                                     = "sitio/bicicletas_indoor/cuyo/null/0";
$route['cuyo/bicicletas-indoor/(:num)']                              = "sitio/bicicletas_indoor/cuyo/null/$1";
$route['cuyo/bicicletas-indoor/filtro/(:any)']                       = "sitio/bicicletas_indoor/cuyo/$1/0";
$route['cuyo/bicicletas-indoor/filtro/(:any)/(:num)']                = "sitio/bicicletas_indoor/cuyo/$1/$2";
$route['cuyo/bicicletas-indoor/info/(:any)']                         = "sitio/get_bicicleta_indoor/cuyo/$1";

$route['cuyo']                                                       = "sitio/plataformas_vibratorias/cuyo/null/0";
$route['cuyo/plataformas-vibratorias']                               = "sitio/plataformas_vibratorias/cuyo/null/0";
$route['cuyo/plataformas-vibratorias/(:num)']                        = "sitio/plataformas_vibratorias/cuyo/null/$1";
$route['cuyo/plataformas-vibratorias/filtro/(:any)']                 = "sitio/plataformas_vibratorias/cuyo/$1/0";
$route['cuyo/plataformas-vibratorias/filtro/(:any)/(:num)']          = "sitio/plataformas_vibratorias/cuyo/$1/$2";
$route['cuyo/plataformas-vibratorias/info/(:any)']                   = "sitio/get_plataforma/cuyo/$1";

$route['cuyo']                                                       = "sitio/caminadores_elipticos/cuyo/null/0";
$route['cuyo/caminadores-elipticos']                                 = "sitio/caminadores_elipticos/cuyo/null/0";
$route['cuyo/caminadores-elipticos/(:num)']                          = "sitio/caminadores_elipticos/cuyo/null/$1";
$route['cuyo/caminadores-elipticos/filtro/(:any)']                   = "sitio/caminadores_elipticos/cuyo/$1/0";
$route['cuyo/caminadores-elipticos/filtro/(:any)/(:num)']            = "sitio/caminadores_elipticos/cuyo/$1/$2";
$route['cuyo/caminadores-elipticos/info/(:any)']                     = "sitio/get_caminador/cuyo/$1";

$route['cuyo']                                                       = "sitio/entrenadores/cuyo/null/0";
$route['cuyo/entrenadores']                                          = "sitio/entrenadores/cuyo/null/0";
$route['cuyo/entrenadores/(:num)']                                   = "sitio/entrenadores/cuyo/null/$1";
$route['cuyo/entrenadores/filtro/(:any)']                            = "sitio/entrenadores/cuyo/$1/0";
$route['cuyo/entrenadores/filtro/(:any)/(:num)']                     = "sitio/entrenadores/cuyo/$1/$2";
$route['cuyo/entrenadores/info/(:any)']                              = "sitio/get_entrenador/cuyo/$1";

$route['cuyo']                                                       = "sitio/entrenadores/cuyo/null/0";
$route['cuyo/accesorios']                                            = "sitio/accesorios/cuyo/null/0";
$route['cuyo/accesorios/(:num)']                                     = "sitio/accesorios/cuyo/null/$1";
$route['cuyo/accesorios/filtro/(:any)']                              = "sitio/accesorios/cuyo/$1/0";
$route['cuyo/accesorios/filtro/(:any)/(:num)']                       = "sitio/accesorios/cuyo/$1/$2";
$route['cuyo/accesorios/info/(:any)']                                = "sitio/get_accesorio/cuyo/$1";

$route['cuyo']                                                       = "sitio/gimnasios/cuyo/null/0";
$route['cuyo/gimnasios']                                             = "sitio/gimnasios/cuyo/null/0";
$route['cuyo/gimnasios/(:num)']                                      = "sitio/gimnasios/cuyo/null/$1";
$route['cuyo/gimnasios/filtro/(:any)']                               = "sitio/gimnasios/cuyo/$1/0";
$route['cuyo/gimnasios/filtro/(:any)/(:num)']                        = "sitio/gimnasios/cuyo/$1/$2";
$route['cuyo/gimnasios/info/(:any)']                                 = "sitio/get_gimnasio/cuyo/$1";


$route['cuyo/comparar/cintas-para-correr/(:num)/(:num)/(:num)']         = "sitio/comparar/cuyo/cintas-para-correr/$1/$2/$3";
$route['cuyo/comparar/cintas-para-correr/(:num)/(:num)']               = "sitio/comparar/cuyo/cintas-para-correr/$1/$2";

$route['cuyo/comparar/bicicletas-fijas/(:num)/(:num)/(:num)']           = "sitio/comparar/cuyo/bicicletas-fijas/$1/$2/$3";
$route['cuyo/comparar/bicicletas-fijas/(:num)/(:num)']                  = "sitio/comparar/cuyo/bicicletas-fijas/$1/$2";

$route['cuyo/comparar/bicicletas-indoor/(:num)/(:num)/(:num)']          = "sitio/comparar/cuyo/bicicletas-indoor/$1/$2/$3";
$route['cuyo/comparar/bicicletas-indoor/(:num)/(:num)']                = "sitio/comparar/cuyo/bicicletas-indoor/$1/$2";

$route['cuyo/comparar/plataformas-vibratorias/(:num)/(:num)/(:num)']    = "sitio/comparar/cuyo/plataformas-vibratorias/$1/$2/$3";
$route['cuyo/comparar/plataformas-vibratorias/(:num)/(:num)']          = "sitio/comparar/cuyo/plataformas-vibratorias/$1/$2";

$route['cuyo/comparar/caminadores-elipticos/(:num)/(:num)/(:num)']      = "sitio/comparar/cuyo/cuyo/caminadores-elipticos/$1/$2/$3";
$route['cuyo/comparar/caminadores-elipticos/(:num)/(:num)']            = "sitio/comparar/cuyo/cuyo/caminadores-elipticos/$1/$2";

$route['cuyo/comparar/entrenadores/(:num)/(:num)/(:num)']               = "sitio/comparar/cuyo/entrenadores/$1/$2/$3";
$route['cuyo/comparar/entrenadores/(:num)/(:num)']                     = "sitio/comparar/cuyo/entrenadores/$1/$2";

$route['cuyo/comparar/accesorios/(:num)/(:num)/(:num)']                 = "sitio/comparar/cuyo/accesorios/$1/$2/$3";
$route['cuyo/comparar/accesorios/(:num)/(:num)']                       = "sitio/comparar/cuyo/accesorios/$1/$2";

$route['cuyo/comparar/gimnasios/(:num)/(:num)/(:num)']                  = "sitio/comparar/cuyo/gimnasios/$1/$2/$3";
$route['cuyo/comparar/gimnasios/(:num)/(:num)']                        = "sitio/comparar/cuyo/gimnasios/$1/$2";



$route['cuyo/por-que-elegirnos'] = "sitio/porque_elegirnos/cuyo";
$route['cuyo/contactenos'] = "sitio/contactenos/cuyo";
$route['cuyo/sucursales'] = "sitio/sucursales/cuyo";
$route['cuyo/empresa'] = "sitio/empresa/cuyo";
$route['cuyo/envios'] = "sitio/envios/cuyo";
$route['cuyo/garantia'] = "sitio/garantia/cuyo";

$route['cuyo/sucursal/villa-crespo'] = "sitio/sucursal/cuyo/villa-crespo";
$route['cuyo/sucursal/lomas-de-zamora'] = "sitio/sucursal/cuyo/lomas-de-zamora";
$route['cuyo/sucursal/bahia-blanca'] = "sitio/sucursal/cuyo/bahia-blanca";
$route['cuyo/sucursal/san-juan'] = "sitio/sucursal/cuyo/san-juan";

/**********************************Fin Cuyo***********************************************/

/**********************************Rosario***********************************************/


$route['rosario']                                                       = "sitio/cintas/rosario/null/0";
$route['rosario/cintas-para-correr']                                    = "sitio/cintas/rosario/null/0";
$route['rosario/cintas-para-correr/(:num)']                             = "sitio/cintas/rosario/null/$1";
$route['rosario/cintas-para-correr/filtro/(:any)']                      = "sitio/cintas/rosario/$1/0";
$route['rosario/cintas-para-correr/filtro/(:any)/(:num)']               = "sitio/cintas/rosario/$1/$2";
$route['rosario/cintas-para-correr/info/(:any)']                        = "sitio/get_cinta/rosario/$1";


$route['rosario']                                                       = "sitio/bicicletas_fijas/rosario/null/0";
$route['rosario/bicicletas-fijas']                                      = "sitio/bicicletas_fijas/rosario/null/0";
$route['rosario/bicicletas-fijas/(:num)']                               = "sitio/bicicletas_fijas/rosario/null/$1";
$route['rosario/bicicletas-fijas/filtro/(:any)']                        = "sitio/bicicletas_fijas/rosario/$1/0";
$route['rosario/bicicletas-fijas/filtro/(:any)/(:num)']                 = "sitio/bicicletas_fijas/rosario/$1/$2";
$route['rosario/bicicletas-fijas/info/(:any)']                          = "sitio/get_bicicleta_fija/rosario/$1";

$route['rosario']                                                       = "sitio/bicicletas_indoor/rosario/null/0";
$route['rosario/bicicletas-indoor']                                     = "sitio/bicicletas_indoor/rosario/null/0";
$route['rosario/bicicletas-indoor/(:num)']                              = "sitio/bicicletas_indoor/rosario/null/$1";
$route['rosario/bicicletas-indoor/filtro/(:any)']                       = "sitio/bicicletas_indoor/rosario/$1/0";
$route['rosario/bicicletas-indoor/filtro/(:any)/(:num)']                = "sitio/bicicletas_indoor/rosario/$1/$2";
$route['rosario/bicicletas-indoor/info/(:any)']                         = "sitio/get_bicicleta_indoor/rosario/$1";

$route['rosario']                                                       = "sitio/plataformas_vibratorias/rosario/null/0";
$route['rosario/plataformas-vibratorias']                               = "sitio/plataformas_vibratorias/rosario/null/0";
$route['rosario/plataformas-vibratorias/(:num)']                        = "sitio/plataformas_vibratorias/rosario/null/$1";
$route['rosario/plataformas-vibratorias/filtro/(:any)']                 = "sitio/plataformas_vibratorias/rosario/$1/0";
$route['rosario/plataformas-vibratorias/filtro/(:any)/(:num)']          = "sitio/plataformas_vibratorias/rosario/$1/$2";
$route['rosario/plataformas-vibratorias/info/(:any)']                   = "sitio/get_plataforma/rosario/$1";

$route['rosario']                                                       = "sitio/caminadores_elipticos/rosario/null/0";
$route['rosario/caminadores-elipticos']                                 = "sitio/caminadores_elipticos/rosario/null/0";
$route['rosario/caminadores-elipticos/(:num)']                          = "sitio/caminadores_elipticos/rosario/null/$1";
$route['rosario/caminadores-elipticos/filtro/(:any)']                   = "sitio/caminadores_elipticos/rosario/$1/0";
$route['rosario/caminadores-elipticos/filtro/(:any)/(:num)']            = "sitio/caminadores_elipticos/rosario/$1/$2";
$route['rosario/caminadores-elipticos/info/(:any)']                     = "sitio/get_caminador/rosario/$1";

$route['rosario']                                                       = "sitio/entrenadores/rosario/null/0";
$route['rosario/entrenadores']                                          = "sitio/entrenadores/rosario/null/0";
$route['rosario/entrenadores/(:num)']                                   = "sitio/entrenadores/rosario/null/$1";
$route['rosario/entrenadores/filtro/(:any)']                            = "sitio/entrenadores/rosario/$1/0";
$route['rosario/entrenadores/filtro/(:any)/(:num)']                     = "sitio/entrenadores/rosario/$1/$2";
$route['rosario/entrenadores/info/(:any)']                              = "sitio/get_entrenador/rosario/$1";

$route['rosario']                                                       = "sitio/entrenadores/rosario/null/0";
$route['rosario/accesorios']                                            = "sitio/accesorios/rosario/null/0";
$route['rosario/accesorios/(:num)']                                     = "sitio/accesorios/rosario/null/$1";
$route['rosario/accesorios/filtro/(:any)']                              = "sitio/accesorios/rosario/$1/0";
$route['rosario/accesorios/filtro/(:any)/(:num)']                       = "sitio/accesorios/rosario/$1/$2";
$route['rosario/accesorios/info/(:any)']                                = "sitio/get_accesorio/rosario/$1";

$route['rosario']                                                       = "sitio/gimnasios/rosario/null/0";
$route['rosario/gimnasios']                                             = "sitio/gimnasios/rosario/null/0";
$route['rosario/gimnasios/(:num)']                                      = "sitio/gimnasios/rosario/null/$1";
$route['rosario/gimnasios/filtro/(:any)']                               = "sitio/gimnasios/rosario/$1/0";
$route['rosario/gimnasios/filtro/(:any)/(:num)']                        = "sitio/gimnasios/rosario/$1/$2";
$route['rosario/gimnasios/info/(:any)']                                 = "sitio/get_gimnasio/rosario/$1";



$route['rosario/comparar/cintas-para-correr/(:num)/(:num)/(:num)']         = "sitio/comparar/rosario/cintas-para-correr/$1/$2/$3";
$route['rosario/comparar/cintas-para-correr/(:num)/(:num)']               = "sitio/comparar/rosario/cintas-para-correr/$1/$2";

$route['rosario/comparar/bicicletas-fijas/(:num)/(:num)/(:num)']           = "sitio/comparar/rosario/bicicletas-fijas/$1/$2/$3";
$route['rosario/comparar/bicicletas-fijas/(:num)/(:num)']                  = "sitio/comparar/rosario/bicicletas-fijas/$1/$2";

$route['rosario/comparar/bicicletas-indoor/(:num)/(:num)/(:num)']          = "sitio/comparar/rosario/bicicletas-indoor/$1/$2/$3";
$route['rosario/comparar/bicicletas-indoor/(:num)/(:num)']                = "sitio/comparar/rosario/bicicletas-indoor/$1/$2";

$route['rosario/comparar/plataformas-vibratorias/(:num)/(:num)/(:num)']    = "sitio/comparar/rosario/plataformas-vibratorias/$1/$2/$3";
$route['rosario/comparar/plataformas-vibratorias/(:num)/(:num)']          = "sitio/comparar/rosario/plataformas-vibratorias/$1/$2";

$route['rosario/comparar/caminadores-elipticos/(:num)/(:num)/(:num)']      = "sitio/comparar/rosario/rosario/caminadores-elipticos/$1/$2/$3";
$route['rosario/comparar/caminadores-elipticos/(:num)/(:num)']            = "sitio/comparar/rosario/rosario/caminadores-elipticos/$1/$2";

$route['rosario/comparar/entrenadores/(:num)/(:num)/(:num)']               = "sitio/comparar/rosario/entrenadores/$1/$2/$3";
$route['rosario/comparar/entrenadores/(:num)/(:num)']                     = "sitio/comparar/rosario/entrenadores/$1/$2";

$route['rosario/comparar/accesorios/(:num)/(:num)/(:num)']                 = "sitio/comparar/rosario/accesorios/$1/$2/$3";
$route['rosario/comparar/accesorios/(:num)/(:num)']                       = "sitio/comparar/rosario/accesorios/$1/$2";

$route['rosario/comparar/gimnasios/(:num)/(:num)/(:num)']                  = "sitio/comparar/rosario/gimnasios/$1/$2/$3";
$route['rosario/comparar/gimnasios/(:num)/(:num)']                        = "sitio/comparar/rosario/gimnasios/$1/$2";



$route['rosario/por-que-elegirnos'] = "sitio/porque_elegirnos/rosario";
$route['rosario/contactenos'] = "sitio/contactenos/rosario";
$route['rosario/sucursales'] = "sitio/sucursales/rosario";
$route['rosario/empresa'] = "sitio/empresa/rosario";
$route['rosario/envios'] = "sitio/envios/rosario";
$route['rosario/garantia'] = "sitio/garantia/rosario";

$route['rosario/sucursal/villa-crespo'] = "sitio/sucursal/rosario/villa-crespo";
$route['rosario/sucursal/lomas-de-zamora'] = "sitio/sucursal/rosario/lomas-de-zamora";
$route['rosario/sucursal/bahia-blanca'] = "sitio/sucursal/rosario/bahia-blanca";
$route['rosario/sucursal/san-juan'] = "sitio/sucursal/rosario/san-juan";

/**********************************Fin Rosario***********************************************/

/**********************************Bahia Blanca***********************************************/

$route['bahia-blanca']                                                       = "sitio/cintas/bahia-blanca/null/0";
$route['bahia-blanca/cintas-para-correr']                                    = "sitio/cintas/bahia-blanca/null/0";
$route['bahia-blanca/cintas-para-correr/(:num)']                             = "sitio/cintas/bahia-blanca/null/$1";
$route['bahia-blanca/cintas-para-correr/filtro/(:any)']                      = "sitio/cintas/bahia-blanca/$1/0";
$route['bahia-blanca/cintas-para-correr/filtro/(:any)/(:num)']               = "sitio/cintas/bahia-blanca/$1/$2";
$route['bahia-blanca/cintas-para-correr/info/(:any)']                        = "sitio/get_cinta/bahia-blanca/$1";


$route['bahia-blanca']                                                       = "sitio/bicicletas_fijas/bahia-blanca/null/0";
$route['bahia-blanca/bicicletas-fijas']                                      = "sitio/bicicletas_fijas/bahia-blanca/null/0";
$route['bahia-blanca/bicicletas-fijas/(:num)']                               = "sitio/bicicletas_fijas/bahia-blanca/null/$1";
$route['bahia-blanca/bicicletas-fijas/filtro/(:any)']                        = "sitio/bicicletas_fijas/bahia-blanca/$1/0";
$route['bahia-blanca/bicicletas-fijas/filtro/(:any)/(:num)']                 = "sitio/bicicletas_fijas/bahia-blanca/$1/$2";
$route['bahia-blanca/bicicletas-fijas/info/(:any)']                          = "sitio/get_bicicleta_fija/bahia-blanca/$1";

$route['bahia-blanca']                                                       = "sitio/bicicletas_indoor/bahia-blanca/null/0";
$route['bahia-blanca/bicicletas-indoor']                                     = "sitio/bicicletas_indoor/bahia-blanca/null/0";
$route['bahia-blanca/bicicletas-indoor/(:num)']                              = "sitio/bicicletas_indoor/bahia-blanca/null/$1";
$route['bahia-blanca/bicicletas-indoor/filtro/(:any)']                       = "sitio/bicicletas_indoor/bahia-blanca/$1/0";
$route['bahia-blanca/bicicletas-indoor/filtro/(:any)/(:num)']                = "sitio/bicicletas_indoor/bahia-blanca/$1/$2";
$route['bahia-blanca/bicicletas-indoor/info/(:any)']                         = "sitio/get_bicicleta_indoor/bahia-blanca/$1";

$route['bahia-blanca']                                                       = "sitio/plataformas_vibratorias/bahia-blanca/null/0";
$route['bahia-blanca/plataformas-vibratorias']                               = "sitio/plataformas_vibratorias/bahia-blanca/null/0";
$route['bahia-blanca/plataformas-vibratorias/(:num)']                        = "sitio/plataformas_vibratorias/bahia-blanca/null/$1";
$route['bahia-blanca/plataformas-vibratorias/filtro/(:any)']                 = "sitio/plataformas_vibratorias/bahia-blanca/$1/0";
$route['bahia-blanca/plataformas-vibratorias/filtro/(:any)/(:num)']          = "sitio/plataformas_vibratorias/bahia-blanca/$1/$2";
$route['bahia-blanca/plataformas-vibratorias/info/(:any)']                   = "sitio/get_plataforma/bahia-blanca/$1";

$route['bahia-blanca']                                                       = "sitio/caminadores_elipticos/bahia-blanca/null/0";
$route['bahia-blanca/caminadores-elipticos']                                 = "sitio/caminadores_elipticos/bahia-blanca/null/0";
$route['bahia-blanca/caminadores-elipticos/(:num)']                          = "sitio/caminadores_elipticos/bahia-blanca/null/$1";
$route['bahia-blanca/caminadores-elipticos/filtro/(:any)']                   = "sitio/caminadores_elipticos/bahia-blanca/$1/0";
$route['bahia-blanca/caminadores-elipticos/filtro/(:any)/(:num)']            = "sitio/caminadores_elipticos/bahia-blanca/$1/$2";
$route['bahia-blanca/caminadores-elipticos/info/(:any)']                     = "sitio/get_caminador/bahia-blanca/$1";

$route['bahia-blanca']                                                       = "sitio/entrenadores/bahia-blanca/null/0";
$route['bahia-blanca/entrenadores']                                          = "sitio/entrenadores/bahia-blanca/null/0";
$route['bahia-blanca/entrenadores/(:num)']                                   = "sitio/entrenadores/bahia-blanca/null/$1";
$route['bahia-blanca/entrenadores/filtro/(:any)']                            = "sitio/entrenadores/bahia-blanca/$1/0";
$route['bahia-blanca/entrenadores/filtro/(:any)/(:num)']                     = "sitio/entrenadores/bahia-blanca/$1/$2";
$route['bahia-blanca/entrenadores/info/(:any)']                              = "sitio/get_entrenador/bahia-blanca/$1";

$route['bahia-blanca']                                                       = "sitio/entrenadores/bahia-blanca/null/0";
$route['bahia-blanca/accesorios']                                            = "sitio/accesorios/bahia-blanca/null/0";
$route['bahia-blanca/accesorios/(:num)']                                     = "sitio/accesorios/bahia-blanca/null/$1";
$route['bahia-blanca/accesorios/filtro/(:any)']                              = "sitio/accesorios/bahia-blanca/$1/0";
$route['bahia-blanca/accesorios/filtro/(:any)/(:num)']                       = "sitio/accesorios/bahia-blanca/$1/$2";
$route['bahia-blanca/accesorios/info/(:any)']                                = "sitio/get_accesorio/bahia-blanca/$1";

$route['bahia-blanca']                                                       = "sitio/gimnasios/bahia-blanca/null/0";
$route['bahia-blanca/gimnasios']                                             = "sitio/gimnasios/bahia-blanca/null/0";
$route['bahia-blanca/gimnasios/(:num)']                                      = "sitio/gimnasios/bahia-blanca/null/$1";
$route['bahia-blanca/gimnasios/filtro/(:any)']                               = "sitio/gimnasios/bahia-blanca/$1/0";
$route['bahia-blanca/gimnasios/filtro/(:any)/(:num)']                        = "sitio/gimnasios/bahia-blanca/$1/$2";
$route['bahia-blanca/gimnasios/info/(:any)']                                 = "sitio/get_gimnasio/bahia-blanca/$1";




$route['bahia-blanca/comparar/cintas-para-correr/(:num)/(:num)/(:num)']         = "sitio/comparar/bahia-blanca/cintas-para-correr/$1/$2/$3";
$route['bahia-blanca/comparar/cintas-para-correr/(:num)/(:num)']               = "sitio/comparar/bahia-blanca/cintas-para-correr/$1/$2";

$route['bahia-blanca/comparar/bicicletas-fijas/(:num)/(:num)/(:num)']           = "sitio/comparar/bahia-blanca/bicicletas-fijas/$1/$2/$3";
$route['bahia-blanca/comparar/bicicletas-fijas/(:num)/(:num)']                  = "sitio/comparar/bahia-blanca/bicicletas-fijas/$1/$2";

$route['bahia-blanca/comparar/bicicletas-indoor/(:num)/(:num)/(:num)']          = "sitio/comparar/bahia-blanca/bicicletas-indoor/$1/$2/$3";
$route['bahia-blanca/comparar/bicicletas-indoor/(:num)/(:num)']                = "sitio/comparar/bahia-blanca/bicicletas-indoor/$1/$2";

$route['bahia-blanca/comparar/plataformas-vibratorias/(:num)/(:num)/(:num)']    = "sitio/comparar/rosario/plataformas-vibratorias/$1/$2/$3";
$route['bahia-blanca/comparar/plataformas-vibratorias/(:num)/(:num)']          = "sitio/comparar/rosario/plataformas-vibratorias/$1/$2";

$route['bahia-blanca/comparar/caminadores-elipticos/(:num)/(:num)/(:num)']      = "sitio/comparar/bahia-blanca/rosario/caminadores-elipticos/$1/$2/$3";
$route['bahia-blanca/comparar/caminadores-elipticos/(:num)/(:num)']            = "sitio/comparar/bahia-blanca/rosario/caminadores-elipticos/$1/$2";

$route['bahia-blanca/comparar/entrenadores/(:num)/(:num)/(:num)']               = "sitio/comparar/bahia-blanca/entrenadores/$1/$2/$3";
$route['bahia-blanca/comparar/entrenadores/(:num)/(:num)']                     = "sitio/comparar/bahia-blanca/entrenadores/$1/$2";

$route['bahia-blanca/comparar/accesorios/(:num)/(:num)/(:num)']                 = "sitio/comparar/bahia-blanca/accesorios/$1/$2/$3";
$route['bahia-blanca/comparar/accesorios/(:num)/(:num)']                       = "sitio/comparar/bahia-blanca/accesorios/$1/$2";

$route['bahia-blanca/comparar/gimnasios/(:num)/(:num)/(:num)']                  = "sitio/comparar/bahia-blanca/gimnasios/$1/$2/$3";
$route['bahia-blanca/comparar/gimnasios/(:num)/(:num)']                        = "sitio/comparar/bahia-blanca/gimnasios/$1/$2";

$route['bahia-blanca/por-que-elegirnos'] = "sitio/porque_elegirnos/bahia-blanca";
$route['bahia-blanca/contactenos'] = "sitio/contactenos/bahia-blanca";
$route['bahia-blanca/sucursales'] = "sitio/sucursales/bahia-blanca";
$route['bahia-blanca/empresa'] = "sitio/empresa/bahia-blanca";
$route['bahia-blanca/envios'] = "sitio/envios/bahia-blanca";
$route['bahia-blanca/garantia'] = "sitio/garantia/bahia-blanca";

$route['bahia-blanca/sucursal/villa-crespo'] = "sitio/sucursal/bahia-blanca/villa-crespo";
$route['bahia-blanca/sucursal/lomas-de-zamora'] = "sitio/sucursal/bahia-blanca/lomas-de-zamora";
$route['bahia-blanca/sucursal/bahia-blanca'] = "sitio/sucursal/bahia-blanca/bahia-blanca";

/**********************************Fin Bahia Blanca***********************************************/


$route['capital-federal/404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */