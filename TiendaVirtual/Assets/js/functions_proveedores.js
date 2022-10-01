let tableProveedores; 
let rowTable = "";
let divLoading = document.querySelector("#divLoading");
document.addEventListener('DOMContentLoaded', function(){

    tableProveedores = $('#tableProveedores').dataTable( {
        "aProcessing":true,
        "aServerSide":true,
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.20/i18n/Spanish.json"
        },
        "ajax":{
            "url": " "+base_url+"/Proveedores/getProveedores",
            "dataSrc":""
        },
        "columns":[
            {"data":"IdProveedor"},
            {"data":"Prov_Identificacion"},
            {"data":"Prov_Nombre"},
            {"data":"Prov_Telefono"},
			{"data":"Prov_Email"},
            {"data":"options"}
        ],
        'dom': 'lBfrtip',
        'buttons': [
            {
                "extend": "copyHtml5",
                "text": "<i class='far fa-copy'></i> Copiar",
                "titleAttr":"Copiar",
                "className": "btn btn-secondary"
            },{
                "extend": "excelHtml5",
                "text": "<i class='fas fa-file-excel'></i> Excel",
                "titleAttr":"Esportar a Excel",
                "className": "btn btn-success"
            },{
                "extend": "pdfHtml5",
                "text": "<i class='fas fa-file-pdf'></i> PDF",
                "titleAttr":"Esportar a PDF",
                "className": "btn btn-danger"
            },{
                "extend": "csvHtml5",
                "text": "<i class='fas fa-file-csv'></i> CSV",
                "titleAttr":"Esportar a CSV",
                "className": "btn btn-info"
            }
        ],
        "resonsieve":"true",
        "bDestroy": true,
        "iDisplayLength": 10,
        "order":[[0,"desc"]]  
    });

	if(document.querySelector("#formProveedor")){
        let formProveedor = document.querySelector("#formProveedor");
        formProveedor.onsubmit = function(e) {
            e.preventDefault();
            let strIdentificacion = document.querySelector('#txtIdentificacion').value;
            let strNombre = document.querySelector('#txtNombre').value;
            let intTelefono = document.querySelector('#txtTelefono').value;
			let strEmail = document.querySelector('#txtEmail').value;

            if(strIdentificacion == '' || strNombre == '' || intTelefono == '' || strEmail == '')
            {
                swal("Atención", "Todos los campos son obligatorios." , "error");
                return false;
            }

            let elementsValid = document.getElementsByClassName("valid");
            for (let i = 0; i < elementsValid.length; i++) { 
                if(elementsValid[i].classList.contains('is-invalid')) { 
                    swal("Atención", "Por favor verifique los campos en rojo." , "error");
                    return false;
                } 
            } 
            divLoading.style.display = "flex";
            let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
            let ajaxUrl = base_url+'/Proveedores/setProveedor'; 
            let formData = new FormData(formProveedor);
            request.open("POST",ajaxUrl,true);
            request.send(formData);
            request.onreadystatechange = function(){
                if(request.readyState == 4 && request.status == 200){
                    let objData = JSON.parse(request.responseText);
                    if(objData.status)
                    {
                        if(rowTable == ""){
                            tableProveedores.api().ajax.reload();
                        }else{
                           rowTable.cells[1].textContent =  strIdentificacion;
                           rowTable.cells[2].textContent =  strNombre;
                           rowTable.cells[3].textContent =  intTelefono;
                           rowTable.cells[4].textContent =  strEmail;
                           rowTable = "";
                        }
                        $('#modalFormProveedor').modal("hide");
                        formProveedor.reset();
                        swal("Proveedor", objData.msg ,"success");
                    }else{
                        swal("Error", objData.msg , "error");
                    }
                }
                divLoading.style.display = "none";
                return false;
            }
        }
    }


}, false);


function fntViewInfo(idproveedor){
    let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Proveedores/getProveedor/'+idproveedor;
    request.open("GET",ajaxUrl,true);
    request.send();
    request.onreadystatechange = function(){
        if(request.readyState == 4 && request.status == 200){
            let objData = JSON.parse(request.responseText);
            if(objData.status)
            {
                document.querySelector("#celIdentificacion").innerHTML = objData.data.Prov_Identificacion;
                document.querySelector("#celNombre").innerHTML = objData.data.Prov_Nombre;
                document.querySelector("#celTelefono").innerHTML = objData.data.Prov_Telefono;
                document.querySelector("#celEmail").innerHTML = objData.data.Prov_Email;
                document.querySelector("#celFechaRegistro").innerHTML = objData.data.fechaRegistro; 
                $('#modalViewProveedor').modal('show');
            }else{
                swal("Error", objData.msg , "error");
            }
        }
    }
}

function fntEditInfo(element, idproveedor){
    rowTable = element.parentNode.parentNode.parentNode;
    document.querySelector('#titleModal').innerHTML ="Actualizar Proveedor";
    document.querySelector('.modal-header').classList.replace("headerRegister", "headerUpdate");
    document.querySelector('#btnActionForm').classList.replace("btn-primary", "btn-info");
    document.querySelector('#btnText').innerHTML ="Actualizar";
    let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
    let ajaxUrl = base_url+'/Proveedores/getProveedor/'+idproveedor;
    request.open("GET",ajaxUrl,true);
    request.send();
    request.onreadystatechange = function(){

        if(request.readyState == 4 && request.status == 200){
            let objData = JSON.parse(request.responseText);
            if(objData.status)
            {
                document.querySelector("#idProveedor").value = objData.data.IdProveedor;
                document.querySelector("#txtIdentificacion").value = objData.data.Prov_Identificacion;
                document.querySelector("#txtNombre").value = objData.data.Prov_Nombre;
                document.querySelector("#txtTelefono").value = objData.data.Prov_Telefono;
                document.querySelector("#txtEmail").value = objData.data.Prov_Email;
            }
        }
        $('#modalFormProveedor').modal('show');
    }
}

function fntDelInfo(idproveedor){
    swal({
        title: "Eliminar Proveedor",
        text: "¿Realmente quiere eliminar al Proveedor?",
        type: "warning",
        showCancelButton: true,
        confirmButtonText: "Si, eliminar!",
        cancelButtonText: "No, cancelar!",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function(isConfirm) {
        
        if (isConfirm) 
        {
            let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
            let ajaxUrl = base_url+'/Proveedores/delProveedor';
            let strData = "idProveedor="+idproveedor;
            request.open("POST",ajaxUrl,true);
            request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            request.send(strData);
            request.onreadystatechange = function(){
                if(request.readyState == 4 && request.status == 200){
                    let objData = JSON.parse(request.responseText);
                    if(objData.status)
                    {
                        swal("Eliminar!", objData.msg , "success");
                        tableProveedores.api().ajax.reload();
                    }else{
                        swal("Atención!", objData.msg , "error");
                    }
                }
            }
        }

    });

}

function openModal()
{
    rowTable = "";
    document.querySelector('#idProveedor').value ="";
    document.querySelector('.modal-header').classList.replace("headerUpdate", "headerRegister");
    document.querySelector('#btnActionForm').classList.replace("btn-info", "btn-primary");
    document.querySelector('#btnText').innerHTML ="Guardar";
    document.querySelector('#titleModal').innerHTML = "Nuevo Proveedor";
    document.querySelector("#formProveedor").reset();
    $('#modalFormProveedor').modal('show');
}