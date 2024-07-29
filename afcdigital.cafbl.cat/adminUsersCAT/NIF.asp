<script> 
function averigua () 
{ 
cadena="TRWAGMYFPDXBNJZSQVHLCKET" 
posicion = formulario.dni.value % 23 
letra = cadena.substring(posicion,posicion+1) 
document.formulario.dniresultante.value=formulario.dni.value+letra 
} 
</script>


<form name="formulario"> 
DNI:<br> 
<input type="text" name="dni" maxlenght="8" size="8"> 

<input type="text" name="dniresultante" maxlenght="11" size="11">

<input type="button" value="OK" language"JavaScript" onclick="averigua()"> 
</form>
