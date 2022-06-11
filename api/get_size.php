<?php

$user_height = $_POST['user_height'];
$sanitized_user_height = filter_var(trim($user_height), FILTER_SANITIZE_STRING);


get_size($sanitized_user_height);

function get_size($height) {
    $result_object = array();

    if (!isset($height)) {
        $result_object['status'] = false;
        $result_object['text'] = 'К сожалению, ничего не найдено.';
        print_r( json_encode($result_object) );
        exit();
    }

    require_once './DB_connect.php';

    $query = "SELECT * FROM `clothing-size` WHERE `height` = '$height'";
    $result = $db->query($query);

    if (!$result->num_rows) {
        $db->close();
        $result_object['status'] = false;
        $result_object['text'] = 'К сожалению, ничего не найдено.';
        print_r( json_encode($result_object) );
        exit();
    }

    $size = $result->fetch_assoc();

    $db->close();

    $result_object['status'] = true;
    $result_object['text'] = $size['size'];
    print_r( json_encode($result_object) );
    exit();
}