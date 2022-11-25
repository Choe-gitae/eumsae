$(document).ready(function () {
      
	// id 중복확인 버튼을 눌렀을 때, 중복 검사 실행
    $('#checkId').click(function () {
        $.ajax({
            url: 'idCheck',
            data: { id: $('#reg_id').val() },
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

	// 회원가입하기 버튼 눌렀을 때
    $('#userSubmit').click(function () {
       
       
		if($.trim($('#reg_pwd').val()) != $.trim($('#reg_repwd').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#reg_repwd').focus();    		
    	} else {
    		document.regForm.submit();
    	}	

    })










}) // end of js