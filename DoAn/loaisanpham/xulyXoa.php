<?php  
    ob_start();
    require 'connect.php';
    $id= $_GET['id'];

    $sql= "DELETE FROM loaisanpham where maloai = '$id' "  ;
    $result=$conn->query($sql);
    
    if($result){
        header('Location: http://doquochuy.cf/DoAn/loaisanpham/select.php');
    }
    else
        echo "Lỗi";
    $conn->close();
?>