$(document).ready(function(){
	// id 중복확인 버튼을 눌렀을 때, 중복 검사 실행
    $('#checkId').click(function () {
        $.ajax({
            url: 'idCheck',
            data: { userId: $('#reg_id').val() },
            contentType: 'application/x-www-form-urlencoded;charset=utf-8',
            success: checkId,
            error: function (err) {
                alert("전송실패");
                console.log(err);
            }
        }); // end of ajax
		
		// 중복 검사 function
        function checkId(result) {
            $('#idCheckResult').text(result);
        }// end of checkId
    })// end of click function


















}) // end of js