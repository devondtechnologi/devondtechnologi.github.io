<?php	

	if(isset($_GET['callIDProduct'])){
        session_start();
        $id_user = $_SESSION['id_user'];
        $id_status_user = $_SESSION['id_status_user'];
        if($id_user!='' && $id_status_user=='1'){
            require '../config.php'; 
            $json = json_decode(file_get_contents('php://input'), true);
            $query = "SELECT * FROM tb_produk";
            $result = $db->query($query); 

            $callIDProduct = mysqli_fetch_all($result,MYSQLI_ASSOC);
            $callIDProduct=json_encode($callIDProduct);
            echo json_encode($callIDProduct);
        }
        else{
            header('Location: https://kingfruit.co.id/');
        }
    }

    if(isset($_GET['select'])){
        session_start();
        $id_user = $_SESSION['id_user'];
        $id_status_user = $_SESSION['id_status_user'];
        if($id_user!='' && $id_status_user=='1'){
            require '../config.php'; 
            $json = json_decode(file_get_contents('php://input'), true);
            $query = "SELECT * FROM view_data_produk where id_produk ='".$_GET['select']."'";
            $result = $db->query($query); 

            $select = mysqli_fetch_all($result,MYSQLI_ASSOC);
            $select=json_encode($select);
            echo json_encode($select);
        }
        else{
            header('Location: https://kingfruit.co.id/');
        }
    }

    if(isset($_GET['selectToHomePage'])){
        session_start();
        require '../config.php'; 
        $json = json_decode(file_get_contents('php://input'), true);
        $query = "SELECT id_produk, harga, harga_setelah_diskon, diskon, nama_produk, gambar1_produk, gambar2_produk, gambar3_produk, gambar4_produk, detail1_produk, detail2_produk,teks_berat_produk FROM view_data_tampil_produk_spesial_halaman_utama where id_produk ='1'";
        $result = $db->query($query); 

        $selectToHomePage = mysqli_fetch_all($result,MYSQLI_ASSOC);
        $selectToHomePage=json_encode($selectToHomePage);
        echo json_encode($selectToHomePage);
    }

    if(isset($_GET['selectMontong'])){
        session_start();
        $id_user = $_SESSION['id_user'];
        $id_status_user = $_SESSION['id_status_user'];
        if($id_user!='' && $id_status_user=='1'){
            require '../config.php'; 
            $json = json_decode(file_get_contents('php://input'), true);
            $query = "SELECT * FROM view_data_produk where id_produk ='1'";
            $result = $db->query($query); 

            $selectMontong = mysqli_fetch_all($result,MYSQLI_ASSOC);
            $selectMontong=json_encode($selectMontong);
            echo json_encode($selectMontong);
        }
        else{
            header('Location: https://kingfruit.co.id/');
        }
    }

?>
