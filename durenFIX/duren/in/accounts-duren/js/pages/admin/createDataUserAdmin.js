$(document).ready(function(){
  
  var table = $('#dataUser').DataTable({ 
      "searchable": false,
      "orderable": false,
      "targets": 0,
      "ajax": "../../../conn/data2/user/user_data.php",
      "columnDefs": [ {
      "searchable": false,
      "orderable": false,
      "targets": -1,
      "data": null,
/*       "defaultContent": "<center><button class='btn btn-success btn-xs tblDetail' style='margin-bottom: 10px;' type='submit' >Detail Data</button><form method='POST'>  <button id='HapusData' class='btn btn-danger btn-xs hapus-data'>Hapus Data</button></form></center>"*/
      "defaultContent": "<form method='POST'>  <button id='HapusData' class='buttonDelete-Table hapus-data'>Hapus Data</button></form></center>"
    },
    {
      "order": [[ 2, "asc" ]],
      "processing": true,
      "serverSide": true,
    }]
  });

  table.on( 'order.dt search.dt', function(){
      table.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
          cell.innerHTML = i+1;
      } );
  }).draw();

  $.ajax({
    type: "GET",
    url: "../../../conn/data2/user_data.php/?callIDStatusUser",
    contentType: 'application/json; charset=utf-8',
    dataType: 'json',
    success: function(callIDStatusUser) { 
      var DataUser = jQuery.parseJSON(callIDStatusUser);
      var html = '';
        for(var count = 0; count < DataUser.length; count++)
        {
          html += '<option value="'+DataUser[count].id_status_user+'">'+DataUser[count].status_user+'</option>';
        }
      $('#id_status_user').html(html);
    }
  });

  $('#dataUser tbody').on( 'click', '.hapus-data', function (e){
    var data = table.row( $(this).parents('tr') ).data();
    e.preventDefault();
    var confirmation = confirm("Anda yakin akan menghapus user ini?");
    if (confirmation){
      var id = data[0];
      $.ajax({
        type:"POST",
        url:'../../../conn/data2/user/user_data.php/?deleteDataUser='+id,
        data:data,
        success:function(data){
          if(data.success){
           table.ajax.reload();
           alert("Data berhasil dihapus");
          }
          else{
          alert('error while update data');
          }
        }
      });
    }
    else {
      alert("Data tidak dihapus!");
    } 
  });

  $('#btn-create-user').on('click',function(e){
    var nama_lengkap = $('#nama_lengkap').val();
    var nomor_hp = $('#nomor_hp').val();
    var username = $('#username').val();
    var email = $('#email').val();
    var password = $('#password').val();
    var id_status_user = $('#id_status_user').val();
    
    if(nama_lengkap == ''){
      alert('Silahkan Isi Data Nama Lengkap')
    }  
    else if(nomor_hp == ''){
      alert('Silahkan Isi Data Nomor Hp')
    }  
    else if(username == ''){
      alert('Silahkan Isi Data Username')
    }  
    else if(email == ''){
      alert('Silahkan Isi Data E-mail')
    }  
    else if(password == ''){
      alert('Silahkan Isi Data Password')
    }  

    else if(username != '' && password != ''){

      var data = $("#createDataUser").serialize();
      console.log(data);
      $.ajax({
         type : 'POST',
         url  : '../../../conn/data2/user_data.php/?createDataUser',
         data : data,
         beforeSend: function()
         { 
          $("#error").fadeOut();
          $("#btn-create-user").html('<span class="glyphicon glyphicon-transfer"></span>   sending ...');
         }, 
          success :  function(response)
          {      
            if(response == "Kode3"){
              alert('Email / Username sudah dipakai');
              $("#btn-signup").html('SIMPAN');
              $('#username').val('');
              $('#email').val('');
            }
            else{
              if(response == "emailCheck"){
                alert('Ulangi kembali email bukan tipe email');
                $("#btn-create-user").html('SIMPAN');
                $('#username').val('');
                $('#email').val('');
              }
              else{
                if(response == 'userCheck'){
                  alert('Username sudah dipakai');
                  $("#btn-create-user").html('SIMPAN');
                  $('#username').val('');
                  $('#email').val('');
                }
                else{
                  if(response == "Success"){
                    $("#btn-create-user").html('SIMPAN');
                    alert('Data Berhasil Disimpan');
                    $('#nama_lengkap').val('');
                    $('#nomor_hp').val('');
                    $('#username').val('');
                    $('#email').val('');
                    $('#password').val('');
                    table.ajax.reload();
                  }
                  else{
                    $("#error").fadeIn(1000, function(){   
                    $("#error").html('<div class="alert alert-danger"> <span class="glyphicon glyphicon-info-sign"></span>   alamat email atau password salah!.</div>');
                         $("#btn-create-user").html('SIMPAN');
                    });
                  }

                }
                
              }
            }         
          }
        });
      return false;
    }      
  });

});

$('#btnCreateDataUserSlide').on('click',function(e){
  $('#createDataUserSlide').attr('style','display:block');
  $('#btnCreateDataUserSlide').attr('style','display:none;padding-bottom: 20px;');
});

$('#btnCancelCreateDataUserSlide').on('click',function(e){
  $('#createDataUserSlide').attr('style','display:none');
  $('#btnCreateDataUserSlide').attr('style','display:block;padding-bottom: 20px;');
  $('#nama_lengkap').val('');
  $('#nomor_hp').val('');
  $('#username').val('');
  $('#email').val('');
  $('#password').val('');
});

