$(document).ready(function () {
  // 관리자가 회원등록 버튼을 눌렀을 때
  $("#mgrUserSubmit").click(function () {
    if ($.trim($("#pwd").val()) != $.trim($("#rpwd").val())) {
      // 비밀번호 창과 비밀번호 확인창에 입력된 값의 공백을 제거하고 비교
      alert("비밀번호가 일치하지 않습니다.."); // 비교결과가 일치 하지 않을 경우 알림창을 띄움
      $("#rpwd").focus(); // 비밀번호 확인창에 값을 변경하도록 focus
    } else {
      document.registCustomerForm.submit();
    }
  }); // end of click function

  // 관리자가 관리자 등록 버튼을 눌렀을 때
  $("#mgrSubmit").click(function () {
    if ($.trim($("#pwd").val()) != $.trim($("#repwd").val())) {
      alert("비밀번호가 일치하지 않습니다..");
      $("#repwd").focus();
    } else {
      document.regMgrForm.submit();
    }
  }); // end of click function

  // 관리자가 수정 버튼을 눌렀을 때
  $(".table button").each(function () {
    $(this).click(function () {
      // 각 위치에 해당하는 값들을 변수에 할당함
      let mid = $(this).parents("tr").find("td:eq(0)").text();
      let auth = $(this).parents("tr").find("td:eq(6)").text();
      let pwd = $(this).parents("tr").find("td:eq(1)").text();
      let name = $(this).parents("tr").find("td:eq(2)").text();
      let addr = $(this).parents("tr").find("td:eq(3)").text();
      let email = $(this).parents("tr").find("td:eq(4)").text();
      let tel = $(this).parents("tr").find("td:eq(5)").text();

      // 해당하는 관리자 id 가 선택 되었을 때, 관리자가 입력한 값으로 변경됨
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
}); // end of document
