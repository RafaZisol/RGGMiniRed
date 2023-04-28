function validarFormulario() {
    var usuario = document.getElementById("inputusuario").value;
    var contra = document.getElementById("inputcontra").value;
  
    if (usuario.trim() == "" || contra.trim() == "") {
      alert("Por favor, completa todos los campos antes de enviar el formulario.");
      return false;
    }
  
    return true;
  }
  