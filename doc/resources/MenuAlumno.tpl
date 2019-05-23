<div style="">
	
	<button id="consultarMatriculas" onclick="consultarMatriculas_onClick()">Consultar Materias en las que estoy matriculado</button>
	<button id="logout" onclick="logout_onClick()">Logout</button>

</div>

<script>
	
	function consultarMatriculas_onClick(){
		post("index.php", {accion: "1"}, "get")
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