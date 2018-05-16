<?php

switch ($_GET['service']) {

    case 1:
        echo file_get_contents('https://service1.paddle.com/test');
        break;

    case 2:
        echo file_get_contents('http://service2.paddle.com:8080/test');
        break;

    default:
        echo 'service not found';
}