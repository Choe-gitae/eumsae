$(document).ready(function () {
      
	// id 중복확인 버튼을 눌렀을 때, 중복 검사 실행
    $('#checkId').click(function () {
        var id = $.trim($("#reg_id").val());
        $("#reg_id").val(id);
        
        if (id != "" && id != null) {
            $.ajax({
                url: 'idCheck',
                data: { id: $('#reg_id').val() },
                contentType: 'application/x-www-form-urlencoded;charset=utf-8',
                success: checkId,
                error: function (err) {
                    Swal.fire({
                        icon: 'error',
                        title: "서비스 이용불가",
                        text: "이용에 불변을 드려 죄송합니다.",
                    })
                    console.log(err);
                }
            }); // end of ajax
        } else {
            $('#idCheckResult').text("아이디를 입력해 주세요.")
        }
		
		// 중복 검사 function
        function checkId(result) {
            $('#idCheckResult').text(result);
        }// end of checkId
    })// end of click function

	// 회원가입하기 버튼 눌렀을 때
    $('#userSubmit').click(function () {
		if($.trim($('#reg_pwd').val()) != $.trim($('#reg_repwd').val())){
    		Swal.fire("비밀번호가 일치하지 않습니다.");
    		$('#reg_repwd').focus();    		
    	} else {
    		document.regForm.submit();
    	}	
    })










}) // end of js