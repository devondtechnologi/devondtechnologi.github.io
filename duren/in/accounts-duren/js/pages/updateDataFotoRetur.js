$('#btnUpdateFoto').on('click', function(e){
    var foto = $('#foto').val();
    if(foto == ''){
      alert('Silahkan pilih file foto')
    }  
    else{
        var fd = new FormData();
        var files = $('#foto')[0].files[0];
        fd.append('foto',files);
        console.log(fd);
        $.ajax({
          url  : '../../../conn/data2/cartProcess/cartProcess.php/?updateDataFotoRetur',
          type : 'POST',
          data : fd,
          contentType: false,
          processData: false,
          beforeSend: function()
          { 
          $("#error").fadeOut();
          $("#btnUpdateFoto").html('<span class="glyphicon glyphicon-transfer"></span>   sending ...');
          }, 
          success :  function(response)
          { 
            if(response == "Success"){
              $("#btnUpdateFoto").html('SIMPAN');
              $('#foto').val('');
              $('#open-updateFoto').modal('hide');
              $.ajax({
                type: "GET",
                url: "../../../conn/data2/cartProcess/cartProcess.php/?selectToDataFotoRetur",
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function(selectToDataFotoRetur) { 
                    var DataPayment = jQuery.parseJSON(selectToDataFotoRetur);
                    var DataFoto = DataPayment[0].gambar_barang_retur;
                    var DataFotoNull = '../images/uploadImage.png';
                    if(DataFoto == '' || DataFoto == null){
                        $('#dataFotoRetur').attr('src', DataFotoNull);
                        $('#foto_check').val('0');
                    }
                    else{
                        $('#dataFotoRetur').attr('src', DataFoto);
                        $('#foto_check').val('1');
                    } 
                }
              });
            }     
            if(response == "dataCheck"){
              alert('Gagal Mengupload Foto, Silahkan Pastikan Foto Anda Tipe Foto');
              $("#content-profile").load("cartData.php");
              $('#confirmationDataCard').attr('style','display:block');
              $('#confirmationDetailPayment').attr('style','display:none');
            }     

            else{
              $("#error").fadeIn(1000, function(){   
              $("#error").html('<div class="alert alert-danger"> <span class="glyphicon glyphicon-info-sign"></span>  Error Upload Data.</div>');
                   $("#btnUpdateFoto").html('SIMPAN');
              });
            }          
          } 
        });
      return false;
    }
});