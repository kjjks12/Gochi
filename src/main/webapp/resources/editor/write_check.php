<?php
require_once '../preset.php';
?>
<?php

$reg_date = time();
$member_idx = $_SESSION['member_idx'];

$q = "INSERT INTO ap_bbs (member_idx, subject,content,reg_date) VALUES('$member_idx', '$subject', '$content', '$reg_date')";

$result = $mysqli->query($q);

if ($result==false) {
    $_SESSION['writing_status'] = 'NO';
}
else {
    $_SESSION['writing_status'] = 'YES';
}

//$result->free();

$mysqli->close();
//var_dump($url);

header('Location: '.$url['root'].'bbs/write_done.php');
exit();


?>
