
$(document).ready(function(){
  var tanggalAwal = $('#tanggalAwal').val();
  var tanggalAkhir = $('#tanggalAkhir').val();
  var buttonCommon = {
      exportOptions: {
          format: {
              body: function ( data, row, column, node ) {
                  
                  return column === 5 ?
                      data.replace( /[$,]/g, '' ) :
                      data;
              }
          }
      }
  };
  var table = $('#dataReturAll').DataTable({ 
    "searchable": false,
    "orderable": false,
    "targets": 0,
    "ajax": { 
      "url": "../../../conn/data2/cartProcess/cartProcessReturAllNew.php?tanggalAwal="+tanggalAwal+"&&tanggalAkhir="+tanggalAkhir,
      "dataSrc" : ""},
    "columns" : [
    {"data":"kode_retur"},
    {"data":"waktu_retur"},
    {"data":"status_retur"},
    {"data":"null"},
    ],
    "columnDefs": [ 
    {
      "order": [[ 0, "asc" ]],
      "processing": true,
      "serverSide": true,
    },
    {
      "targets": 0,
      "className": "text-center",
    },
    {
      "targets": 1,
      "className": "text-center",
    },
    {
      "targets": 2,
      "className": "text-center",
    },{
      "searchable": false,
      "orderable": false,
      "targets": -1,
      "data": null,
      "defaultContent": "<center><button class='buttonDetail-Table tblDetail'   style='margin-bottom: 10px;' type='submit' >Detail Data</button></center>"
    },
    ],
    dom: 'Bfrtip',
      buttons: [
           {extend: 'excel', title: 'Data Retur Penjualan'},
    ]
  });

  
  $('#dataReturAll tbody').on( 'click', '.tblDetail', function (e){
    var data = table.row( $(this).parents('tr') ).data();
    e.preventDefault();
    var id = data[0];
    $('#dataPageRetur').load('cartDataReturALLDetailAdmin.php?id='+id);
  });


  $('#selectDate').on('click', function(e){
    var tanggalAwal = $('#tanggalAwal').val();
    var tanggalAkhir = $('#tanggalAkhir').val();

    if(tanggalAwal==''){
      swal({
        title:"Cek Data",
        text: "Silahkan Pilih Tanggal Awal",
        type: "error"
      });
    }
    else if(tanggalAkhir==''){
      swal({
        title:"Cek Data",
        text: "Silahkan Pilih Tanggal Akhir",
        type: "error"
      });
    }
    else if(tanggalAkhir != '' && tanggalAwal != ''){
      table.ajax.url( '../../../conn/data2/cartProcess/cartProcessReturAllNew.php?tanggalAwal='+tanggalAwal+'&&tanggalAkhir='+tanggalAkhir ).load();
    }
  });

  $('#selectClearDate').on('click', function(e){
    var tanggalAwal = $('#tanggalAwal').val('');
    var tanggalAkhir = $('#tanggalAkhir').val('');
    table.ajax.url( '../../../conn/data2/cartProcess/cartProcessReturAllNew.php?tanggalAwal=&&tanggalAkhir=').load();
    
  });
  
});



