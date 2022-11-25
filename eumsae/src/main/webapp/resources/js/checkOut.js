$(function () {
  var amount = $(".amount"); // 갯수 입력 class
  var total = 0; // 총 비용 합계
  var getsu = 0; // 실제 갯수
  var price = 0; // 금액
  var tprice = 0; // 갯수 * 금액
  /*
		각각의 class에 each function 부여
    */
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
  }); // end of amount each function

  // 사용자가 주문 수량을 변경하고자 할 때
  amount.change(function () {
    var cnt = $(this).parents("tr").next().val();

    getsu = $(this).val();
    if (getsu > parseInt(cnt)) {
      alert("재고가 주문수량보다 부족합니다.");
      $(this).val(parseInt(cnt));
      totalCal();
      return;
    }
    totalCal();
  }); // end of amount change function
  var totalCal = function () {
    total = 0; // 계산 초기화를 위해 변수 초기화
    amount.each(function () {
      getsu = $(this).val();
      //alert(getsu);
      price = parseInt($(this).parents("td").prev().text());
      tprice = getsu * price;
      $(this).parents("td").next().text(tprice);
      total += tprice;
    });
    $("#subTp").text(total);
    if (total >= 300000) {
      $("#dTax").text(0);
    } else {
      $("#dTax").text(2500);
    }
    $("#tP").text(total + parseInt($("#dTax").text()));
  };

  //수령인정보동일시작
  function Copy() {
    if (document.getElementById("re_info").checked) {
      document.getElementById("re_name").value = document.getElementById("buyer_name").value;
      document.getElementById("re_pNum").value = document.getElementById("buyer_pNum").value;
      document.getElementById("re_email").value = document.getElementById("buyer_email").value;
    }
  }
  //수령인정보동일끝

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
}); // end of ready
