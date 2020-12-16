<?php
    ob_start();
    require 'connect.php';
    $maloaiSP=$_POST['maloaiSP'];
    $tenLSP=$_POST['tenloaiSP'];
    if($maloaiSP and $tenLSP){

        $addMLSP = "INSERT INTO loaisanpham (maloai,tenloai) VALUES ('$maloaiSP','$tenLSP')";
        $add= $conn->query($addMLSP);

        if($add )
        {
            header('Location: http://doquochuy.cf/DoAn/loaisanpham/select.php');
        }
    }      
?>