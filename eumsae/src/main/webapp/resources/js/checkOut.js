$(function () {
  var amount = $(".amount"); // 갯수 입력 class
  var total = 0; // 총 비용 합계
  var getsu = 0; // 실제 갯수
  var price = 0; // 금액
  var tprice = 0; // 갯수 * 금액

  /*
     화면 로딩시 계산 실행 및 총 주문 금액 표시
    */

  function totalCal() {
    total = 0;
    amount.each(function () {
      getsu = $(this).val(); // 실제 갯수
      price = parseInt($(this).parents("td").prev().find(".price").text()); // 가격(입력값)
      tprice = getsu * price;

      $(this).parents("td").next().text(tprice);
      total += tprice;

      $(".subTp").text(total);

      if (total >= 300000) {
        $("#dTax").text(0);
      } else {
        $("#dTax").text(2500);
      }

      $("#tP").text(total + parseInt($("#dTax").text())); // 총액과 배달비의 합계
      $("#orderTotalPrice").val(total + parseInt($("#dTax").text()));
    }); // end of amount each function
  } // end of totalCal();

  // 화면 로딩후 총합 먼저 계산
  totalCal();


  // 수령인 정보 동일 체크박스
  $("#re_info").click(function () {
    if ($(this).prop("checked") == true) {
      Copy();
    } else if ($(this).prop("checked") == false) {
      document.getElementById("re_name").value = "";
      document.getElementById("re_pNum").value = "";
      document.getElementById("re_email").value = "";
    }
  }); // end of click function

  //수령인정보동일시작
  function Copy() {
    if (document.getElementById("re_info").checked) {
      document.getElementById("re_name").value = document.getElementById("buyer_name").value;
      document.getElementById("re_pNum").value = document.getElementById("buyer_pNum").value;
      document.getElementById("re_email").value = document.getElementById("buyer_email").value;
    }
  }
  //수령인정보동일끝

  // 우편 번호 찾기 버튼 눌렀을 때
  $("#postCode").click(function () {
    sample6_execDaumPostcode();
  }); // end of click function

  //우편번호 api시작
  function sample6_execDaumPostcode() {
    new daum.Postcode({
      oncomplete: function (data) {
        var addr = ""; // 주소 변수
        var extraAddr = ""; // 참고항목 변수
        if (data.userSelectedType === "R") {
          // 사용자가 도로명 주소를 선택했을 경우
          addr = data.roadAddress;
        } else {
          // 사용자가 지번 주소를 선택했을 경우(J)
          addr = data.jibunAddress;
        }
        document.getElementById("postcode").value = data.zonecode;
        document.getElementById("address").value = addr;
        document.getElementById("detailAddress").focus();
      },
    }).open();
  }

  // 결제 관련 (카카오페이 / 토스 페이)
  $("#kakaoPay").click(function () {
    //$("#paySuccess").submit();
    requestPaykakao();
  }); // end of click function

  $("#tossPay").click(function () {
    requestPaytoss();
  }); // end of click function


  
  // 결제시스템 스크립트 시작
  IMP.init("imp05370542"); // 예: imp00000000
  function requestPaykakao() {
    IMP.request_pay(
      {
        pg: "kakaopay",
        //pay_method: "card",
        merchant_uid: "EUMSAE_"+ new Date().getTime(),
        name: $("span#title").text(),
        amount: $("#tP").text(),
        buyer_email: $("#buyer_email").val(),
        buyer_name: $("#buyer_name").val(),
        buyer_tel: $("#buyer_pNum").val(),
        buyer_addr: $("#address").val() + $("#detailAddress").val(),
        buyer_postcode: $("#postcode").val(),
      },
      function (rsp) {
        if (rsp.success) {
          $("#paySuccess").submit();
        } else {
          Swal.fire({
            icon: 'error',
            text: '결제에 실패하셨습니다.',
          });
        }
      }
    );
  }
  function requestPaytoss() {
    IMP.request_pay(
      {
        pg: "tosspay",
        //pay_method: "card",
        merchant_uid: "EUMSAE_"+ new Date().getTime(),
        name: $("span#title").text(),
        amount: $("#tP").text(),
        buyer_email: $("#buyer_email").val(),
        buyer_name: $("#buyer_name").val(),
        buyer_tel: $("#buyer_pNum").val(),
        buyer_addr: $("#address").val() + $("#detailAddress").val(),
        buyer_postcode: $("#postcode").val(),
      },
      function (rsp) {
        if (rsp.success) {
          $("#paySuccess").submit();
        } else {
          Swal.fire({
            icon: 'error',
            text: '결제에 실패하셨습니다.',
          });
        }
      }
    );
  }
  //결제시스템 스크립트 끝
}); // end of ready
