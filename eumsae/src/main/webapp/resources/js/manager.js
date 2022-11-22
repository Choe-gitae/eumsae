$(document).ready(function () {
    
// 관리자가 회원등록 버튼을 눌렀을 때
    $('#mgrUserSubmit').click(function () {
        if($.trim($('#pwd').val()) != $.trim($('#rpwd').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#rpwd').focus();    		
    	} else {
    		document.registCustomerForm.submit();
    	}
    })// end of click function

 // 관리자가 관리자 등록 버튼을 눌렀을 때
    $('#mgrSubmit').click(function () {
        if($.trim($('#pwd').val()) != $.trim($('#repwd').val())){
            alert("비밀번호가 일치하지 않습니다..");
            $('#repwd').focus();    		
        } else {
            document.regMgrForm.submit();
        }
    })// end of click function
    
// 관리자가 수정 버튼을 눌렀을 때
 $(".table button").each(function () {
     $(this).click(function () {
                    let mid = $(this).parents("tr").find("td:eq(0)").text(); 
                    let auth =$(this).parents("tr").find("td:eq(6)").text();
                    let pwd = $(this).parents("tr").find("td:eq(1)").text();
                    let name = $(this).parents("tr").find("td:eq(2)").text();
                    let addr = $(this).parents("tr").find("td:eq(3)").text();
                    let email = $(this).parents("tr").find("td:eq(4)").text();
                    let tel = $(this).parents("tr").find("td:eq(5)").text();        
           

                    $("#mid").val(mid).prop("selected", true);
                    $("#auth").val(auth);
                    $("#pwd").val(pwd);
                    $("#name").val(name);
                    $("#addr").val(addr);
                    $("#email").val(email);
                    $("#tel").val(tel);
                    $("#auth").focus();
                });
            });       

})  // end of document