$(document).ready(function(){
     $.ajax({
        type: "GET",
        url: "../../../conn/data2/cartProcess/cartProcess.php/?selectCartDataByUser",
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function(callDetailUserDatas) { 
            var DataUser = jQuery.parseJSON(callDetailUserDatas);
            var DataIdUser = DataUser[0].id_user;
            var DataNamaLengkap = DataUser[0].nama_lengkap;
            var DataNomorHP = DataUser[0].nomor_hp;
            var DataAlamat = DataUser[0].alamat;
            var DataNegara = DataUser[0].negara;
            var DataProvinsi = DataUser[0].provinsi;
            var DataKabupaten = DataUser[0].kabupaten;
            var DataKecamatan = DataUser[0].kecamatan;
            var DataKelurahan = DataUser[0].kelurahan;
            var DataKota = DataUser[0].kota;
            var DataKodePos = DataUser[0].kode_pos;

            $('#namaLengkapPrint').text(DataNamaLengkap);
            $('#nomorHpPrint').text(DataNomorHP);
            if(DataAlamat == '' ){
                $('#alamatPrint').text('( Silahkan Lengkapi Data Alamat Anda )');
                $('#alamatPrint').attr('style','color:red')
            }
            else{
                $('#alamatPrint').text(DataAlamat+' , '+DataKelurahan+' , '+DataKecamatan+' , '+DataKota+' , '+DataKabupaten+' , '+DataProvinsi+' , '+DataNegara+' (Kode POS :'+DataKodePos+') ');
            }
            $('#dataNegara').val(DataNegara);
            $('#dataProvinsi').val(DataProvinsi);
            $('#dataKabupaten').val(DataKabupaten);
            $('#dataKota').val(DataKota);
            $('#dataKodePos').val(DataKodePos);

            $('#nama_lengkap').val(DataNamaLengkap);
            $('#nomor_hp').val(DataNomorHP);
            $('#alamatInput').val(DataAlamat);
            $('#negaraInput').val(DataNegara);
            $('#provinsiInput').val(DataProvinsi);
            $('#kabupatenInput').val(DataKabupaten);
            $('#kotaInput').val(DataKota);
            $('#kecamatanInput').val(DataKecamatan);
            $('#kelurahanInput').val(DataKelurahan);
            $('#kodePOSInput').val(DataKodePos);
      /*  }
    });
   */
   
    /*$.ajax({
        type: "GET",
        url: "../../../conn/data2/product/product_select_data.php/?selectMontong",
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function(selectMontong) { 
            var DataProduct = jQuery.parseJSON(selectMontong);*/
            var DataNamaProduk = DataUser[0].nama_produk;
            var DataJenisProduk = DataUser[0].jenis_produk;
            var DataHarga = DataUser[0].harga;  
            var DataDiskon = DataUser[0].diskon;  
            var DataHargaSetelahDiskon = DataUser[0].harga_setelah_diskon;  
            var gambarProductView = DataUser[0].gambar1_produk;

            $('#nama_produk').text(DataNamaProduk);
            $('#jenis_produk').val(DataJenisProduk);
            $('#harga_sebelum_diskon').val(DataHarga);
            $('#harga_tampil').val(DataHargaSetelahDiskon);
            $('#harga').val(DataHargaSetelahDiskon);

            var PrintDetail_DataFotoNull = '../images/seimpleProduk.png';
            if(gambarProductView == '' || gambarProductView == null){
                $('#gambarProductView').attr('src', PrintDetail_DataFotoNull);
            }
            else{
                $('#gambarProductView').attr('src', '../images/produk/'+gambarProductView);
            } 

            var hargaSebelumDiskon = $('#harga_sebelum_diskon').val();
            var hargaSebelumDiskonNumberString = hargaSebelumDiskon.toString(),
                hargaSebelumDiskonSisa    = hargaSebelumDiskonNumberString.length % 3,
                hargaSebelumDiskonRupiah  = hargaSebelumDiskonNumberString.substr(0, hargaSebelumDiskonSisa),
                hargaSebelumDiskonRibuan  = hargaSebelumDiskonNumberString.substr(hargaSebelumDiskonSisa).match(/\d{3}/g);         
            if (hargaSebelumDiskonRibuan) {
                hargaSebelumDiskonSeparator = hargaSebelumDiskonSisa ? '.' : '';
                hargaSebelumDiskonRupiah += hargaSebelumDiskonSeparator + hargaSebelumDiskonRibuan.join('.');
            }
            $('#harga_sebelum_diskon').val('Rp '+hargaSebelumDiskonRupiah+',00');
            var harga = $('#harga').val();
            var hargaNumberString = harga.toString(),
                hargaSisa    = hargaNumberString.length % 3,
                hargaRupiah  = hargaNumberString.substr(0, hargaSisa),
                hargaRibuan  = hargaNumberString.substr(hargaSisa).match(/\d{3}/g);         
            if (hargaRibuan) {
                hargaSeparator = hargaSisa ? '.' : '';
                hargaRupiah += hargaSeparator + hargaRibuan.join('.');
            }
            $('#harga_tampil').val('Rp '+hargaRupiah+',00');
            $('#total_harga_pemesanan_tampil').val('Rp '+hargaRupiah+',00');
            $('#total_harga_pemesanan').val(harga);
            $('#total_harga_pemesanan_tampil2').val('Rp '+hargaRupiah+',00');
            $('#total_harga_pemesanan2').val(harga);
            $('#btnPlus, #btnMinus').click(function () {
                if (this.id == 'btnPlus') {
                    var checkDataJumlah = $('#jumlah_pemesanan').val();
                    var jumlahPemesanan = +$('#jumlah_pemesanan').val() + 1;
                    $('#jumlah_pemesanan').val(jumlahPemesanan);
                    var harga = $('#harga').val();
                    var totalHarga = jumlahPemesanan * harga;
                }
                else if (this.id == 'btnMinus') {
                    var checkDataJumlah = $('#jumlah_pemesanan').val();
                    if(checkDataJumlah < 2){
                        var totalHarga = $('#harga').val();
                    }
                    else{
                        var jumlahPemesanan = +$('#jumlah_pemesanan').val() - 1;
                        $('#jumlah_pemesanan').val(jumlahPemesanan);
                        var harga = $('#harga').val();
                        var totalHarga = jumlahPemesanan * harga;
                    }
                }
                var totalHargaNumberString = totalHarga.toString(),
                totalHargaSisa    = totalHargaNumberString.length % 3,
                totalHargaRupiah  = totalHargaNumberString.substr(0, totalHargaSisa),
                totalHargaRibuan  = totalHargaNumberString.substr(totalHargaSisa).match(/\d{3}/g);         
                if (totalHargaRibuan) {
                    totalHargaSeparator = totalHargaSisa ? '.' : '';
                    totalHargaRupiah += totalHargaSeparator + totalHargaRibuan.join('.');
                }
                $('#total_harga_pemesanan_tampil').val('Rp '+totalHargaRupiah+',00');
                $('#total_harga_pemesanan').val(totalHarga);
                $('#total_harga_pemesanan_tampil2').val('Rp '+totalHargaRupiah+',00');
                $('#total_harga_pemesanan2').val(totalHarga);
            });
            var ongkir = $('#ongkir').val();
            var ongkirNumberString = ongkir.toString(),
                ongkirSisa    = ongkirNumberString.length % 3,
                ongkirRupiah  = ongkirNumberString.substr(0, ongkirSisa),
                ongkirRibuan  = ongkirNumberString.substr(ongkirSisa).match(/\d{3}/g);         
            if (ongkirRibuan) {
                ongkirSeparator = ongkirSisa ? '.' : '';
                ongkirRupiah += ongkirSeparator + ongkirRibuan.join('.');
            }
            $('#ongkir_tampil').val('Rp '+ongkirRupiah+',00');
        }
    });

    $('#buttonUbahAlamat').on('click',function(){
        $('#ubahAlamat').attr('style','display:block');
        $('#alamatUser').attr('style','display:none');
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    });

/*    $('#buttonUbahAlamat').on('click',function(){
        $('#ubahAlamat').attr('style','display:block');
        $('#alamatUser').attr('style','display:none');
    });*/

    $('#btnCancelUpdateDataAlamatUser').on('click', function(){
        $('#ubahAlamat').attr('style','display:none');
        $('#alamatUser').attr('style','display:block');
        $('#alamatUpdate').val('');
        $('#negaraUpdate').val('');  
        $('#provinsiUpdate').val('');
        $('#kabupatenUpdate').val('');
        $('#kotaUpdate').val('');
        $('#kecamatanUpdate').val('');
        $('#kelurahanUpdate').val('');
        $('#kode_posUpdate').val('');
    });

    $('#btnUpdateDataAlamatUser').on('click', function(){
        var alamatUpdate = $('#alamatUpdate').val();
        var negaraUpdate = $('#negaraUpdate').val();  
        var provinsiUpdate = $('#provinsiUpdate').val();
        var kabupatenUpdate = $('#kabupatenUpdate').val();
        var kotaUpdate = $('#kotaUpdate').val();
        var kecamatanUpdate = $('#kecamatanUpdate').val();
        var kelurahanUpdate = $('#kelurahanUpdate').val();
        var kode_posUpdate = $('#kode_posUpdate').val();


        if(alamatUpdate == ''){
            alert('Silahkan Isi Data Alamat')
        }  
        else if(negaraUpdate == ''){
            alert('Silahkan Isi Data Negara')
        }  
        else if(kabupatenUpdate == ''){
            alert('Silahkan Isi Data Kabupaten')
        }  
        else if(kotaUpdate == ''){
            alert('Silahkan Isi Data Kota')
        }  
        else if(kecamatanUpdate == ''){
            alert('Silahkan Isi Data Kecamatan')
        }  
        else if(kelurahanUpdate == ''){
            alert('Silahkan Isi Data Kelurahan')
        }  
        else if(kode_posUpdate == ''){
            alert('Silahkan Isi Data Kode Pos')
        }  
        else if(provinsiUpdate == ''){
            alert('Silahkan Isi Data Provinsi')
        }  

        else if(alamatUpdate != ''){
            var data = $("#updateDataAlamatUser").serialize();
            $.ajax({

                type : 'POST',
                url  : '../../../conn/data2/user_login.php/?updataAlamatUserProfile',
                data : data,
                beforeSend: function()
                { 
                  $("#error").fadeOut();
                  $("#btnUpdateDataAlamatUser").html('<span class="glyphicon glyphicon-transfer"></span>   sending process ...');
                }, 
                success :  function(response)
                {
                  if(response == "updataUserProfile"){
                    $("#btnUpdateDataAlamatUser").html('SIMPAN');
                    alert('Ubah data alamat berhasil');
                    $('#ubahAlamat').attr('style','display:none');
                    $('#alamatUser').attr('style','display:block');
                    $('#alamatUpdate').val('');
                    $('#negaraUpdate').val('');  
                    $('#provinsiUpdate').val('');
                    $('#kabupatenUpdate').val('');
                    $('#kotaUpdate').val('');
                    $('#kecamatanUpdate').val('');
                    $('#kelurahanUpdate').val('');
                    $('#kode_posUpdate').val('');
                    $.ajax({
                        type: "GET",
                        url: "../../../conn/data2/cartProcess/cartProcess.php/?selectDataUserDetailAlamat",
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function(callDetailUserDatas) { 
                            var DataUser = jQuery.parseJSON(callDetailUserDatas);
                            var DataIdUser = DataUser[0].id_user;
                            var DataNamaLengkap = DataUser[0].nama_lengkap;
                            var DataNomorHP = DataUser[0].nomor_hp;
                            var DataAlamat = DataUser[0].alamat;
                            var DataNegara = DataUser[0].negara;
                            var DataProvinsi = DataUser[0].provinsi;
                            var DataKabupaten = DataUser[0].kabupaten;
                            var DataKecamatan = DataUser[0].kecamatan;
                            var DataKelurahan = DataUser[0].kelurahan;
                            var DataKota = DataUser[0].kota;
                            var DataKodePos = DataUser[0].kode_pos;

                            $('#namaLengkapPrint').text(DataNamaLengkap);
                            $('#nomorHpPrint').text(DataNomorHP);
                            if(DataAlamat == '' ){
                                $('#alamatPrint').text('( Silahkan Lengkapi Data Alamat Anda )');
                                $('#alamatPrint').attr('style','color:red')
                            }
                            else{
                                $('#alamatPrint').text(DataAlamat+' , '+DataKelurahan+' , '+DataKecamatan+' , '+DataKota+' , '+DataKabupaten+' , '+DataProvinsi+' , '+DataNegara+' (Kode POS :'+DataKodePos+') ');
                            }
                            $('#dataNegara').val(DataNegara);
                            $('#dataProvinsi').val(DataProvinsi);
                            $('#dataKabupaten').val(DataKabupaten);
                            $('#dataKota').val(DataKota);
                            $('#dataKodePos').val(DataKodePos);

                            $('#nama_lengkap').val(DataNamaLengkap);
                            $('#nomor_hp').val(DataNomorHP);
                            $('#alamatInput').val(DataAlamat);
                            $('#negaraInput').val(DataNegara);
                            $('#provinsiInput').val(DataProvinsi);
                            $('#kabupatenInput').val(DataKabupaten);
                            $('#kotaInput').val(DataKota);
                            $('#kecamatanInput').val(DataKecamatan);
                            $('#kelurahanInput').val(DataKelurahan);
                            $('#kodePOSInput').val(DataKodePos);
                        }
                    });
                  }
                  else{
                    alert('Silahkan lengkapi data');
                    $("#btnUpdateDataAlamatUser").html('SIMPAN');
                  }
                }    
            });
            return false;
        } 
    });
});
