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
}); // end of Ready
