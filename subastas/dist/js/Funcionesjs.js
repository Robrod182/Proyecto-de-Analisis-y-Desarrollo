  // **************************  FUNCION PARA  DESHABILITAR  EL  EVENTO DE  LA TECLA ENTER *****************************//
  function BusquedaEnter(e){
      if (e.keyCode == 13) {
          BuscarOperacion();
      } 
  }

// **************************  FORMATO FECHA *****************************//
  function formatofecha(fecha)
   {
            var arreglo = fecha.split("/");
            var dia = arreglo[0];
            var mes = arreglo[1];
            var anio = arreglo[2];
            if (parseInt(dia.length) < 2)
                dia = "0" + dia;
            if (parseInt(mes.length) < 2)
                mes = "0" + mes;
            return anio + mes + dia;
    }



function comas(n) {
    var parts = n.toString().split(".");
    return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + (parts[1] ? "." + parts[1] : "");
}