<?php
    ob_start();
    session_start();
    session_unset();
    header('location: http://doquochuy.cf/DoAn/Demo/dangNhap.php');
?>