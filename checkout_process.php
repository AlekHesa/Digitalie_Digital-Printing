<?php
include_once 'conn.php';

session_start();

$fname = $_POST['fname'];
$lname = $_POST['lname'];
$nama_produk = $_POST['nama_produk'];
$harga_jual = $_POST['harga_jual'];
$phone = $_POST['phone'];
$address = $_POST['address'];
$material = $_POST['material'];
$quantity = $_POST['quantity'];

$sesi = $_SESSION['id'];

$jual = $harga_jual * $quantity;

//2.
$sql = "INSERT INTO shopping_cart (fname, lname, nama_produk, harga_jual, phone, address, confirm, id_material, quantity, user_id) VALUES ('" . $fname . "', '" . $lname . "', '" . $nama_produk . "', '" . $jual . "', '" . $phone . "', '" . $address . "', 'belum',  '" . $material . "', '" . $quantity . "', '" . $sesi . "')";

//3.
$result = $conn->query($sql);


//Redirect


header('refresh:0;url=cart.php');

echo '<script>alert("Barang Sudah Masuk Cart");</script>';
