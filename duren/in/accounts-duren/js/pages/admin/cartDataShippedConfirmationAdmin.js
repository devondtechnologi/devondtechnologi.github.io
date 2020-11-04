$('#cartDataPaymentDetailAdminButton').on('click',function(e){
  var a = $('#a').val();
  var data = $("#cartDataPaymentDetailAdminForm").serialize();
  $.ajax({

    type : 'POST',
    url  : '../../../conn/data2/cartProcess/cartProcessAdminAction.php/?updateConfirmationShipped',
    data : data,
    beforeSend: function()
    { 
      $("#error").fadeOut();
      $("#cartDataPaymentDetailAdminButton").html('<span class="glyphicon glyphicon-transfer"></span>   Process ');
    }, 
    success :  function(response)
    {
      if(response == "updateConfirmationPaymentSuccess"){
        $("#cartDataPaymentDetailAdminButton").html('Kirim Barang');
        swal({
          title:"Sukses",
          text: "Konfirmasi Pengiriman Berhasil",
          type: "success"
        }).then(function() {
          $("#content-profile").load("cartDataProcessConfirmationShippedAdmin.php");
          $("#account-edit-link").attr("class","menu-waves-block");
          $("#password-link").attr("class","menu-waves-block");
          $("#product-link").attr("class","menu-waves-block");
          $("#create-user-link").attr("class","menu-waves-block");
          $("#notification-link").attr("class","menu-waves-block");
          $("#logout-link").attr("class","menu-waves-block");
          $("#account-link").attr("class","menu-waves-block");
          $("#medsos-link").attr("class","displayLink-none");
          $("#about-link").attr("class","displayLink-none");

          $("#shipped-link").attr("class","active-menu-right");
        });        
      }
      else{
        swal({
          title:"Error",
          text: "Data Error",
          type: "error"
        });
        $("#cartDataPaymentDetailAdminButton").html('Kirim Barang');
      }
    }    
  });
  return false;
});