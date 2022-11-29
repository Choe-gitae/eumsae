$(document).ready(function () {
  // 전역 변수 설정
  var amount = $(".amount"); // 갯수 입력 class
  var total = 0; // 총 비용 합계
  var getsu = 0; // 실제 갯수
  var price = 0; // 금액
  var tprice = 0; // 갯수 * 금액
  var check = $(".check"); // 체크박스

  /*
		각각의 class에 each function 부여
	*/
  amount.each(function () {
    getsu = $(this).val(); // 실제 갯수
    //alert(getsu);
    price = parseInt($(this).parents("td").prev().text()); // 가격(입력값)

    tprice = getsu * price;
    //alert(tprice);
    $(this).parents("td").next().text(tprice);
    total += tprice;

    $("#subTp").text(total);

    if (total >= 300000) {
      $("#dTax").text(0);
    } else {
      $("#dTax").text(2500);
    }

    $("#tP").text(total + parseInt($("#dTax").text())); // 총액과 배달비의 합계
  }); // end of amount each function

  // 사용자가 주문 수량을 변경하고자 할 때

  amount.change(function () {
    var cnt = $(this).parents("tr").next().val(); // 각 품목의 재고를 변수에 할당함

    getsu = $(this).val();
    if (getsu > parseInt(cnt)) {
      // 변경한 수량이 재고보다 많은 경우
      alert("재고가 주문수량보다 부족합니다.");
      $(this).val(parseInt(cnt)); // 재고 값을 수량에 재할당함
      totalCal(); // 변경된 수량으로 계산 진행
      $(this).parents("tr").next().next().val($(this).val()); // 변경된 수량 표기
      return;
    }
    totalCal(); // 변경된 수량으로 계산 재진행
    $(this).parents("tr").next().next().val($(this).val()); // 변경된 수량 표기
  }); // end of amount change function

  /*
   * 함수명 : totalCal()
   * 인자 : 수량과 가격
   * 역할 : 수량과 가격에 표시되어 있는 값을 가져와 이들을 곱한 뒤, 총 금액에 합해줌
   * 리턴값 : 계산 결과
   *
   */
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
      // 주문 총액이 30만원 이상인 경우
      $("#dTax").text(0); // 배송비 무료
    } else {
      $("#dTax").text(2500); // 아닌 경우 기본 배송비 2500원 할당
    }
    $("#tP").text(total + parseInt($("#dTax").text())); // 소비자 입장 총 결제 금액에 배송료와 주문금액을 합해 표시해줌
  };

  // X 버튼을 눌렀을 때
  $(".close").click(function () {
    var cartno = $(this).parents("tr").children("td.cartno").text(); // X버튼의 카트 번호를 가져옴
    var data = { cartno: cartno }; // ajax 통신으로 보낼 데이터 지정
    $.ajax({
      // ajax 통신 시작
      url: "/eumsae/shop/deleteCart",
      data: data,
      contentType: "application/x-www-form-urlencoded;charset=utf-8",
      success: function (result) {
        alert(result); // 송신 결과를 가져와 알림창을 띄움
      },
      error: function (err) {
        alert("상품 취소 실패"); // 송신 실패시 에러를 알림창에 띄움
        console.log(err);
      },
    });
    total -= parseInt($(this).parents("td").prev().text()); //주문 취소 금액만큼을 차액함
    $("#subTp").text(total); //차액된 금액을 주문 총액에 다시 표기
    if (total >= 300000) {
      $("#dTax").text(0);
    } else {
      $("#dTax").text(2500);
    }

    $("#tP").text(total + parseInt($("#dTax").text()));
  }); // end of x button function

  // 체크박스 버튼의 변화가 있을 때
  check.each(function () {
    //alert('check');
    $(this).click(function () {
      if ($(this).prop("checked") == false) {
        // 체크박스 의 체크가 해제된 경우
        alert("상품의 관심을 끕니다.");
        total -= parseInt($(this).parents("tr").children("td.total").text()); // 체크박스 옆 금액만큼을 주문총액에서 감해줌
        $("#subTp").text(total);
        if (total >= 300000) {
          // 주문 총액의 변동이 있으므로, 배송비 재계산
          $("#dTax").text(0);
        } else {
          $("#dTax").text(2500);
        }
        $("#tP").text(total + parseInt($("#dTax").text())); // 변경된 금액 만큼을 총 계산금액 표기창에서 재계산해 표기
      } else if ($(this).prop("checked") == true) {
        // 다시 체크박스를 선택한 경우
        alert("상품의 관심을 재점화 합니다.");
        total += parseInt($(this).parents("tr").children("td.total").text()); //변경된 금액 만큼을 다시 주문총액에 합해줌
        $("#subTp").text(total);
        if (total >= 300000) {
          $("#dTax").text(0);
        } else {
          $("#dTax").text(2500);
        }

        $("#tP").text(total + parseInt($("#dTax").text()));
      }
    }); // end of click function
  }); // end of checkbox function

  // checkout button 을 눌렀을 때
  $("#check").click(function () {
    //alert("주문 하시겠습니까?");

    document.checkout.submit();
  }); // end of click
}); // end of ready
