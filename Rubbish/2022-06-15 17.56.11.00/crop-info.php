<?php 
    require("../connection/connection.php");

    $cid = $_GET['cid'];
    $ex_exp = $_GET['ex-exp'];
    $ex_harvest = $_GET['ex-harvest'];
    $ex_income = $_GET['ex-inc'];
    $fav_cli = $_GET['fav-cli'];
    $fav_temp = $_GET['fav-temp'];
    $fav_water = $_GET['fav-water'];
    $rq_soil_type = $_GET['rq-soil-type'];
    $rq_soil_ph = $_GET['rq-soil-ph'];
    $sow_info = $_GET['sow-info'];
    $lp = $_GET['lp'];
    $sppc = $_GET['sppc'];
    $rdt = $_GET['rdt'];
    $transplant = $_GET['transplant'];
    $nm_timely_sown = $_GET['nm-timely-sow'];
    $nm_late_sown = $_GET['nm-late-sow'];
    $nm_rain_sown = $_GET['nm-rain-sow'];
    $irrigation = $_GET['irrigation'];
    $yield = $_GET['yield'];

    $sql = "INSERT INTO `crop-info` (`crop-id`, `ex-exp`, `ex-harvest`, `ex-inc`, `fav-cli`, `fav-temp`, `fav-water`, `rq-soil-type`, `rq-soil-ph`, `sowing-info`, `lp`, `sppc`, `rdt`, `transplant`, `nm-timely-sow`, `nm-late-sow`, `nm-rain-sow`, `irrigation`, `yield`, `harvesting`) VALUES ('$cid', '$ex_exp', '$ex_harvest', '$ex_income', '$fav_cli', '$fav_temp', '$fav_water', '$rq_soil_type', '$rq_soil_ph', '$sow_info', '$lp', '$sppc', '$rdt', '$transplant', '$nm_timely_sown', '$nm_late_sown', '$nm_rain_sown', '$irrigation', '$yield', 'harvesting detail\');";
    
?>