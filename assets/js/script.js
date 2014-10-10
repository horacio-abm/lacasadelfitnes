

$(document).on("click","input[name='comparador-item']",function(e){
		$equipo = $(this);


 		 if($("input[name='comparador-item']:checked").size() <= 3){

	 		 if($("input[name='comparador-item']:checked").size() < 1){

	 		     	$('.btn-comparar').html("("+ $("input[name='comparador-item']:checked").size() +" Equipos)")
	 		 }else if($("input[name='comparador-item']:checked").size() < 2){
					$('.btn-comparar').html("("+ $("input[name='comparador-item']:checked").size() +" Equipo)")
			 }else{
					$('.btn-comparar').html("("+ $("input[name='comparador-item']:checked").size() +" Equipos)")
			 }

			 $url = $('#url-comparador').val();
			 $items = set_items();
			 $('.btn-comparar').attr('href',$url + $items)
 		 }else{

 		 	alert('Maximo 3 equipos para comparar');
 			$equipo.prop('checked',false)
 		 }
		
});
		
$(document).on("change","#form-orden select",function(e){
 	$("#form-orden").submit()
 	
});
$(document).on("click",".btn-comparar",function(e){

 	e.preventDefault();
 	$comparar = $(this);
 	$url 	  = $(this).attr('href');
   
    if($("input[name='comparador-item']:checked").size() <= 1){
    	alert('Minimo 2 equipos para comparar');
    }else{

	    if($("input[name='comparador-item']:checked").size() < 2){
	   		console.log("2 equipos como minimo");
	    }else{
		 	set_items();
			
	    }
	    	$("input[name='comparador-item']:checked").each(function () {
	    			$(this).prop('checked',false)
	    	});

	   		window.location.href =$url;
    }
});

function set_items(){
		$items    = "/";
		$("input[name='comparador-item']:checked").each(function () {
	         $items+= $(this).val()+"/";
	    });

	    return $items;
}
