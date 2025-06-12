<?php
$password_plain = 'admin1234'; // ganti sesuai password yang ingin kamu hash
$hashed = password_hash($password_plain, PASSWORD_DEFAULT);
echo $hashed;
