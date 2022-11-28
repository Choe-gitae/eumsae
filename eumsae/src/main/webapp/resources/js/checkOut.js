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
      //alert(getsu);
      price = parseInt($(this).parents("td").prev().find(".price").text()); // 가격(입력값)
      //alert(price);

      tprice = getsu * price;
      //alert(tprice);
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
      console.log($("#orderTotalPrice").val());
      console.log($("#id").val());
      console.log($("#lpno").val());
      //alert($("#ORDER_TOTAL_PRICE").val());
    }); // end of amount each function
  } // end of totalCal();

  totalCal();

  // 결제 각 상품 수량 변경 버튼

  $(".downBtn").each(function () {
    $(this).click(function () {
      getsu = $(this).next().val();
      price = parseInt($(this).parents("tr").find(".price").text());
      getsu--;
      $(this).next().val(getsu);
      if (getsu <= 1) {
        alert("최소 주문 갯수는 1개 입니다.");
        getsu = 1;
        $(this).next().val(getsu);
      }
      totalCal();
    });
  });

  $(".upBtn").each(function () {
    $(this).click(function () {
      var cnt = $(this).parents("tr").prev().val();
      //alert(cnt);
      getsu = $(this).prev().val();
      price = parseInt($(this).parents("tr").find(".price").text());
      getsu++;
      $(this).prev().val(getsu);
      if (getsu >= parseInt(cnt)) {
        alert("재고가 부족 합니다.");
        $(this).prev().val(parseInt(cnt));
      }
      totalCal();
    });
  });

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
        document.getElementById("sample6_postcode").value = data.zonecode;
        document.getElementById("sample6_address").value = addr;
        document.getElementById("sample6_detailAddress").focus();
      },
    }).open();
  }

  // 결제 관련 (카카오페이 / 토스 페이)
  $("#kakaoPay").click(function () {
    alert("카카오페이");
    requestPaykakao();
  }); // end of click function

  $("#tossPay").click(function () {
    alert("토스페이");
    requestPaytoss();
  }); // end of click function

  // 결제시스템 스크립트 시작
  IMP.init("imp05370542"); // 예: imp00000000
  function requestPaykakao() {
    IMP.request_pay(
      {
        pg: "kakaopay",
        pay_method: "card", //생략 가능
        merchant_uid: "order_no_" + new Date().getTime(), // 상점에서 관리하는 주문 번호
        name: "내마음",
        amount: 1000000,
        buyer_email: "test@gmail.com",
        buyer_name: "쏘농민",
        buyer_tel: "010-1234-5678",
        buyer_addr: "서울특별시 강남구 삼성동",
        buyer_postcode: "123-456",
      },
      function (rsp) {
        if (rsp.success) {
          var msg = "결제가 완료되었습니다.";
          msg += "고유ID : " + rsp.imp_uid;
          msg += "상점 거래ID : " + rsp.merchant_uid;
          msg += "결제 금액 : " + rsp.paid_amount;
          msg += "카드 승인번호 : " + rsp.apply_num;
          msg += "주문명 : " + rsp.name;
          msg += "주문자명 : " + rsp.buyer_name;
          msg += "주문자 이메일 : " + rsp.buyer_email;
          msg += "주문자 전화번호 : " + rsp.buyer_tel;
          alert(msg);
          $("#paySuccess").submit();
          location.href = "paySuccess";
        } else {
          var msg = "결제에 실패하였습니다.";
          msg += "에러내용 : " + rsp.error_msg;
          location.href = "payFail";
        }
      }
    );
  }
  function requestPaytoss() {
    IMP.request_pay(
      {
        pg: "tosspay",
        pay_method: "card", //생략 가능
        merchant_uid: "order_no_0003" + new Date().getTime(), // 상점에서 관리하는 주문 번호
        name: "지옥행티켓",
        amount: 10,
        buyer_email: "iamport@siot.do",
        buyer_name: "앙마",
        buyer_tel: "010-1234-5678",
        buyer_addr: "서울특별시 강남구 삼성동",
        buyer_postcode: "123-456",
      },
      function (rsp) {
        if (rsp.success) {
          var msg = "결제가 완료되었습니다.";
          msg += "고유ID : " + rsp.imp_uid;
          msg += "상점 거래ID : " + rsp.merchant_uid;
          msg += "결제 금액 : " + rsp.paid_amount;
          msg += "카드 승인번호 : " + rsp.apply_num;
          $("#paySuccess").submit();
          location.href = "paySuccess";
        } else {
          var msg = "결제에 실패하였습니다.";
          msg += "에러내용 : " + rsp.error_msg;
          location.href = "payFail";
        }
      }
    );
  }
  //결제시스템 스크립트 끝
}); // end of ready
