<?php
require_once '../preset.php';
include '../header.php';
?>
<?php
if(isset($doc_idx)==false) {
    echo '글번호가 지정되지 않았습니다.';
    exit();
}

$q = "SELECT * FROM ap_bbs WHERE doc_idx = $doc_idx";
$result = $mysqli->query($q);
$data = $result->fetch_array();

?>
<table>
    <tr>
        <td>
	제목
	</td>
	<td>
            <?php echo $data['subject']; ?>
	</td>
    </tr>
    <tr>
        <td>
	작성자
	</td>
	<td>
            <?php echo $data['member_idx']; ?>
	</td>
    </tr>
    <tr>
        <td>
            내용
	</td>
	<td>
            <?php echo $data['content']; ?>
	</td>
    </tr>
</table>

<div>
    <?php
    echo '<a href="http://'.$_SERVER['HTTP_HOST'].'/v2/bbs/list.php" class="btn" >목록</a>';
    ?>
    <?php
    if( $_SESSION['member_idx']==$data['member_idx']) {
        echo '<a href="http://'.$_SERVER['HTTP_HOST'].'/v2/bbs/modify.php?doc_idx='.$doc_idx.'">수정</a>';
    }
    ?>
    <?php
    if( $_SESSION['member_idx']==$data['member_idx']) {
        echo '<a href="http://'.$_SERVER['HTTP_HOST'].'/v2/bbs/delete.php?doc_idx='.$doc_idx.'">삭제</a>';
    }
    ?>
</div>



<?php
    include '../footer.php';
?>