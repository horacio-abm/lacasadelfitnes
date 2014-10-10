<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sitio extends CI_Controller {

    public function __construct() {
        parent::__construct();
      
        $this->ubicacion = null;
        $this->load->library('curl'); 
 
    }

    
    public function set_vista(){
        $this->session->set_userdata('vista',$_POST['vista']);
        return redirect( $_SERVER['HTTP_REFERER']);
    }     
    public function set_orden(){
      
         $this->session->set_userdata('orden',$_POST['orden']);
         return redirect( $_SERVER['HTTP_REFERER']);
    }     
        
	public function index()
	{
          
            $ubicacion   =  null;
            //$client_ip   = '200.50.170.2';
            $client_ip   = $this->input->ip_address();

            $client_info =  $this->curl->simple_get('http://api.ipinfodb.com/v3/ip-city/?key=52694ab60bc5db4b3698bed1a0adfd693dcad0aee7f73c375a093c51b8990b83&ip='.$client_ip.'&format=json');
            $client_data = json_decode($client_info, true);
            
            if($this->input->valid_ip($client_ip)){

              $ubicacion =  $this->switch_region($client_data);
            }else{
              $ubicacion= 'capital-federal';
            }
            return redirect($ubicacion);
    }
        
    private function extract_id($param) {
        $txt = $param;
        $re1='.*?';	
        $re2='\\d+';	
        $re3='.*?';	
        $re4='(\\d+)';	

        if ($c=preg_match_all ("/".$re1.$re2.$re3.$re4."/is", $txt, $matches))
        {
            $int1=$matches[1][0];
            return $int1;
        }
    }
        
    
        
    public function switch_region($client_data) {
               
         if($client_data['countryName'] == "ARGENTINA"){
                switch (trim($client_data['regionName'])) {
                    case 'BUENOS AIRES':
                         $result =  $this->switch_city($client_data);
                        break;
                    case 'MENDOZA':
                    case 'SAN JUAN':
                    case 'LA RIOJA':
                    case 'SAN LUIS':
                         $result =  $this->switch_city($client_data);
                        break;
                    case 'SANTA FE':
                         $result =  $this->switch_city($client_data);
                        break;
                    default:
                         $result =  $this->switch_city($client_data);
                        break;
                }
                return $result;
            }else{
                $result = 'capital-federal';    
                return $result;
            }
    }
        
    public function switch_city($client_data = null) {

        $ubicacion = null;

        switch ($client_data['cityName']) {
            case 'BAHIA BLANCA':
                $ubicacion = 'bahia-blanca';
                break;
            case 'DISTRITO FEDERAL':
                $ubicacion = 'capital-federal';
                break;
            case 'MENDOZA':
            case 'SAN JUAN':
            case 'LA RIOJA':
            case 'SAN LUIS':
                $ubicacion = 'cuyo';
                break;
            case 'ROSARIO':
            case 'SANTA FE':
                $ubicacion = 'rosario';
                break;
            default:
                $ubicacion = 'capital-federal';
                break;
        }
         
        return $ubicacion;
    
    }

    
	public function comparar($ubicacion='capital-federal',$seccion="cintas-para-correr",$equipo_1=null,$equipo_2=null,$equipo_3=null)
	{
        $data['ubicacion'] = $ubicacion;
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('comparar');
		$this->load->view('includes/footer');
	}
        
        
        
    private function make_pagination($ubicacion,$seccion='cintas-para-correr',$filtro = null) {
      
        $pages=21; 
        $this->load->library('pagination'); 
        $config['total_rows']     = 63;
        $config['per_page']       = $pages;
        $config['num_links']      = 5; 
        if( $filtro !== 'null'){
            $config['base_url']       = site_url($ubicacion."/".$seccion."/filtro/".$filtro); 
            $config["uri_segment"]    = 5 ; 

        }else{

            $config['base_url']       = site_url($ubicacion."/".$seccion);
            $config["uri_segment"]    = 3 ; 
        }
        $data['pagination']       = $this->pagination->initialize($config);      
        $data['lista_equipos']    = array(21); 
     }


	public function cintas($ubicacion='capital-federal',$filtro=null,$page=0)
	{       

       
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
     
	}

	public function bicicletas_indoor($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
        
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
	public function bicicletas_fijas($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
       
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
	public function plataformas_vibratorias($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
       
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
	public function caminadores_elipticos($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
        
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
	public function entrenadores($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
        
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
	
	public function accesorios($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
        
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
	public function gimnasios($ubicacion='capital-federal',$filtro=null,$page=0)
	{       
        
        $data['ubicacion'] = $ubicacion;
        $data['filtro']    = $filtro;
        $data['page']      = $page;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
        $this->make_pagination($ubicacion,'cintas-para-correr',$filtro);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('listador'.$this->session->userdata('vista'));
        $this->load->view('includes/footer');
	}
    public function get_cinta($ubicacion = 'capital-federal', $equipo = null)
    {
        $data['ubicacion'] = $ubicacion;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['equipo']   =  $equipo;
//                $this->extract_id($equipo);
        $this->load->view('includes/head',$data);
        $this->load->view('includes/header');
        $this->load->view('includes/nav');
        $this->load->view('includes/slider');
        $this->load->view('ficha');
        $this->load->view('includes/footer');
    }
        
        
        
    public function get_bicicleta_fija($ubicacion = 'capital-federal', $equipo = null) {
        
    }
    public function get_bicicleta_indoor($ubicacion = 'capital-federal', $equipo = null) {
        
    }
    public function get_plataforma($ubicacion = 'capital-federal', $equipo = null) {
        
    }
    public function get_caminador($ubicacion = 'capital-federal', $equipo = null) {
        
    }
    public function get_entrenador($ubicacion = 'capital-federal', $equipo = null) {
        
    }
    public function get_accesorio($ubicacion = 'capital-federal', $equipo = null) {
        
    }
    public function get_gimnasio($ubicacion = 'capital-federal', $equipo = null) {
        
    }
        
        
    public function porque_elegirnos($ubicacion='capital-federal')
	{       
        $data['ubicacion'] = $ubicacion;
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('porque_elegirnos');
		$this->load->view('includes/footer');
	}
        public function contactenos($ubicacion='capital-federal')
	{       
        $data['ubicacion'] = $ubicacion;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('contactenos');
		$this->load->view('includes/footer');
	}
        public function sucursales($ubicacion='capital-federal')
	{       
        $data['ubicacion'] = $ubicacion;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('sucursales');
		$this->load->view('includes/footer');
	}
        public function empresa($ubicacion='capital-federal')
	{       
        $data['ubicacion'] = $ubicacion;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('empresa');
		$this->load->view('includes/footer');
	}
        public function envios($ubicacion='capital-federal')
	{       
        $data['ubicacion'] = $ubicacion;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('envios');
		$this->load->view('includes/footer');
	}
        public function garantia($ubicacion='capital-federal')
	{       
        $data['ubicacion'] = $ubicacion;
        $data['seccion']   = (!empty($this->uri->segment(2))) ? $this->uri->segment(2) : 'cintas-para-correr';
        $data['sec_nom']   = ucwords(str_replace('-',' ',$this->uri->segment(2)));
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('garantia');
		$this->load->view('includes/footer');
	}
        public function sucursal($ubicacion='capital-federal', $sucursal ='villa-crespo')
	{       
        $data['ubicacion'] = $ubicacion;
        $data['sucursal'] = $sucursal;
		$this->load->view('includes/head',$data);
		$this->load->view('includes/header');
		$this->load->view('includes/nav');
		$this->load->view('includes/slider');
		$this->load->view('sucursal');
		$this->load->view('includes/footer');
	}
}

