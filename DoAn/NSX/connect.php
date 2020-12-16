<?php 
    $db= array(
        'server'=>'localhost',
        'username'=>'id11120478_huy',
        'password'=>'EvR1zo(_s5cT&O+B',
        'dbname'=>'id11120478_linhkiendientu'

    );
    $conn= mysqli_connect($db['server'],$db['username'],$db['password'],$db['dbname']);

    if(!$conn){
        die('kết nối không thành công'. mysqli_connect_error($conn));
    }
?>