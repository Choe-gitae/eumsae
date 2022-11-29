$(function () {
  var amount = $(".amount"); // 갯수 입력 class
  var total = 0; // 총 비용 합계
  var getsu = 0; // 실제 갯수
  var price = 0; // 금액
  var tprice = 0; // 갯수 * 금액

  /**
   *  함수명 : totalCal()
   *  인자 : 주문 수량 및 가격
   *  리턴값 : 수량과 가격의 곱 및 총 계산 금액
   *  역할 : 화면이 on load 되었을 때, 회원이 주문한 결과를 계산해 화면에 출력해줌
   *
   * */

  function totalCal() {
    total = 0; // 계산을 이루기 위한 total의 초기화 진행
    amount.each(function () {
      getsu = $(this).val(); // 실제 갯수
      //alert(getsu);
      price = parseInt($(this).parents("td").prev().find(".price").text()); // 가격(입력값)
      //alert(price);

      tprice = getsu * price; // 해당하는 셀의 값 계산 (주문 수량 * 주문 상품 가격)
      //alert(tprice);
      $(this).parents("td").next().text(tprice);
      total += tprice; // 총 금액 합계에 각 셀 만큼의 결과값을 더해줌

      $(".subTp").text(total); // 주문 금액 창에 해당 결과값을 할당함

      if (total >= 300000) {
        // 주문 금액에 따른 배송비 차등발생
        $("#dTax").text(0);
      } else {
        $("#dTax").text(2500);
      }

      $("#tP").text(total + parseInt($("#dTax").text())); // 총액과 배달비의 합계
      /* 계산 결과를 전송 시키기 위해, hidden 으로 결과를 숨겨 전송함. */
      $("#orderTotalPrice").val(total + parseInt($("#dTax").text()));
      console.log($("#orderTotalPrice").val());
      console.log($("#id").val());
      console.log($("#lpno").val());
      //alert($("#ORDER_TOTAL_PRICE").val());
    }); // end of amount each function
  } // end of totalCal();

  totalCal();

  // 결제 각 상품 수량 변경 버튼

  // 수량 감소 버튼 (왼쪽)
  $(".downBtn").each(function () {
    // 버튼이 여러개 이므로 each function 부여
    $(this).click(function () {
      // 해당 버튼 선택시
      getsu = $(this).next().val();
      price = parseInt($(this).parents("tr").find(".price").text());
      getsu--; // 수량 감소
      $(this).next().val(getsu); // 감소된 수량을 수량 표시 창에 재할당
      if (getsu <= 1) {
        // 수량이 1보다 같거나 작은 경우
        alert("최소 주문 갯수는 1개 입니다.");
        getsu = 1;
        $(this).next().val(getsu); //  수량을 1로 재할당해, 그 결과를 수량표시 창에 재할당
      }
      totalCal(); // 변경된 수량을 통해, 계산하는 함수인 totalCal 재실행
    });
  });

  // 수량 증가 버튼 (오른쪽)
  $(".upBtn").each(function () {
    // 버튼이 여러 개 이므로 each function 부여
    $(this).click(function () {
      // 해당 버튼 선택시
      var cnt = $(this).parents("tr").prev().val(); // 재고를 하나의 변수에 할당(각각의 재고)
      //alert(cnt);
      getsu = $(this).prev().val();
      price = parseInt($(this).parents("tr").find(".price").text());
      getsu++; // 수량 증가
      $(this).prev().val(getsu); // 증가된 수량을 수량 표시창에 재할당
      if (getsu >= parseInt(cnt)) {
        // 재고보다 주문 수량이 같거나 많은 경우
        alert("재고가 부족 합니다.");
        $(this).prev().val(parseInt(cnt)); // 수량 표시창에 재고량을 할당함.
      }
      totalCal(); // 변화한 수량으로 계산하는 함수인 totalCal 재실행
    });
  });

  // 수령인 정보 동일 체크박스
  $("#re_info").click(function () {
    // 수령인 정보 동일 체크박스를 눌렀을 때
    if ($(this).prop("checked") == true) {
      // 체크박스가 체크 되어 있는 경우
      Copy(); // 동일한 정보를 가져오는 Copy 함수 실행
    } else if ($(this).prop("checked") == false) {
      // 체크박스가 해제되어 있는 경우
      document.getElementById("re_name").value = ""; // 이름 창 공백
      document.getElementById("re_pNum").value = ""; // 전화번호 창 공백
      document.getElementById("re_email").value = ""; // 이메일 창 공백
    }
  }); // end of click function

  /*
   *   함수명 : Copy()
   *   인자 : checkbox의 check 여부
   *   결과 값 : 수령인 정보와 주문자 정보가 동일하게 입력됨
   *   역할 : 체크박스의 체크 여부를 전달받아, 체크박스가 체크 된 경우, 주문자 정보와 동일한 정보를 리턴해주고, 체크박스가
   *   체크가 해제된 경우, 그 창을 다시 비움.
   *
   * */
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
