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
    var cnt = $(this).parents("tr").next().val();

    getsu = $(this).val();
    if (getsu > parseInt(cnt)) {
      alert("재고가 주문수량보다 부족합니다.");
      $(this).val(parseInt(cnt));
      totalCal();
      $(this).parents("tr").next().next().val($(this).val());
      return;
    }
    totalCal();
    $(this).parents("tr").next().next().val($(this).val());
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

  // X 버튼을 눌렀을 때
  $(".close").click(function () {
    var cartno = $(this).parents("tr").children("td.cartno").text();
    var data = { cartno: cartno };
    $.ajax({
      url: "/eumsae/shop/deleteCart",
      data: data,
      contentType: "application/x-www-form-urlencoded;charset=utf-8",
      success: function (result) {
        alert(result);
      },
      error: function (err) {
        alert("상품 취소 실패");
        console.log(err);
      },
    });
    total -= parseInt($(this).parents("td").prev().text());
    $("#subTp").text(total);
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
        alert("상품의 관심을 끕니다.");
        total -= parseInt($(this).parents("tr").children("td.total").text());
        $("#subTp").text(total);
        if (total >= 300000) {
          $("#dTax").text(0);
        } else {
          $("#dTax").text(2500);
        }
        $("#tP").text(total + parseInt($("#dTax").text()));
      } else if ($(this).prop("checked") == true) {
        alert("상품의 관심을 재점화 합니다.");
        total += parseInt($(this).parents("tr").children("td.total").text());
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

  // ajax

  // checkout button 을 눌렀을 때
  $("#check").click(function () {
    //alert("주문 하시겠습니까?");

    document.checkout.submit();
  }); // end of click
}); // end of ready
