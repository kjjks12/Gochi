<?php
require_once '../preset.php';
include '../header.php';


$writing_status = $_SESSION['writing_status'];
if($writing_status=='YES') {
    $message = '글이 저장되었습니다.';
}
else {
    $message = '저장에 실패했습니다.';
}
?>
        write_done.php - 게시판 글 저장 완료 페이지<br />
        <hr />
<?php
    echo $message;
?>
<?php
    include '../footer.php';
?>
