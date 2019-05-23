<div style="">
	
	<button id="botonImprimirListaAlumnos" onclick="imprimirListaAlumnos_onClick()">Imprimir lista de alumnos</button>
	

	<!--<div id="panelIncluirAlumno">
		<button id="botonNuevoAlumno" onclick="incluirNuevoAlumno_onClick()">Nuevo alumno</button>
	</div>-->
	
	<div id="panelSimularExamen">
		<button id="botonSimulaExamen" onclick="simularExamen_onClick()">Simular examen</button>
	</div>

	<button id="mostrarResultadoExamenes" onclick="mostrarResultadoExamenes_onClick()">Mostrar resultado exámenes</button>
	<button id="logout" onclick="logout_onClick()">Logout</button>
	

</div>

<script>

	function incluirNuevoAlumno_onClick(){
		my_form=document.createElement('FORM');
		my_form.name='myForm';
		my_form.method='GET';
		my_form.action='index.php';

		my_tb=document.createElement('INPUT');
		my_tb.type='TEXT';
		my_tb.name='nombre';
		my_tb.placeholder="Nombre";
		my_form.appendChild(my_tb);
		
		my_tb=document.createElement('INPUT');
		my_tb.type='TEXT';
		my_tb.name='apellido';
		my_tb.placeholder="Apellido";
		my_form.appendChild(my_tb);
		
		my_tb=document.createElement('INPUT');
		my_tb.type='hidden';
		my_tb.name='accion';
		my_tb.value="2";
		my_form.appendChild(my_tb);
		
		my_tb=document.createElement('INPUT');
		my_tb.type='submit';
		my_tb.value='Incluir nuevo alumno al Sistema';
		my_form.appendChild(my_tb);

		document.getElementById("panelIncluirAlumno").appendChild(my_form);
		document.getElementById("botonNuevoAlumno").remove();
	}
	
	function simularExamen_onClick(){
		buttonTeorico=document.createElement('BUTTON');
		buttonTeorico.innerHTML = "Simula Examen Teórico";
		buttonTeorico.onclick=function(){
    		post("index.php", {accion: "3", examen:"teorico"}, "get")
  		};
		buttonPractico=document.createElement('BUTTON');
		buttonPractico.innerHTML = "Simula Examen Práctico";
		buttonPractico.onclick=function(){
    		post("index.php", {accion: "3", examen:"practico"}, "get")
  		};
		
		document.getElementById("panelSimularExamen").appendChild(buttonTeorico);
		document.getElementById("panelSimularExamen").appendChild(buttonPractico);
		document.getElementById("botonSimulaExamen").remove();
	}
	
	function imprimirListaAlumnos_onClick(){
		post("index.php", {accion: "1"}, "get")
	}
	
	function mostrarResultadoExamenes_onClick(){
		post("index.php", {accion: "4"}, "get")
	}
	
	function logout_onClick(){
		post("index.php", {accion: "5"}, "get")
	}
	
	 /**
 * sends a request to the specified url from a form. this will change the window location.
 * @param {string} path the path to send the post request to
 * @param {object} params the paramiters to add to the url
 * @param {string} [method=post] the method to use on the form
 */

function post(path, params, method) {
    method = method || "post"; // Set method to post by default if not specified.

    // The rest of this code assumes you are not using a library.
    // It can be made less wordy if you use one.
    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);

    for(var key in params) {
        if(params.hasOwnProperty(key)) {
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", key);
            hiddenField.setAttribute("value", params[key]);

            form.appendChild(hiddenField);
        }
    }

    document.body.appendChild(form);
    form.submit();
}

</script>