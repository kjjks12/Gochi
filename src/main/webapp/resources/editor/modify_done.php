<?php
require_once '../preset.php';
include '../header.php';


$modify_status = $_SESSION['modify_status'];
if($modify_status=='YES') {
    $message = '글이 수정되었습니다.';
}
else {
    $message = '수정 실패했습니다.';
}
?>
        modify_done.php - 게시판 글 수정 완료 페이지<br />
        <hr />
<?php
    echo $message;
?>
<?php
    include '../footer.php';
?>
