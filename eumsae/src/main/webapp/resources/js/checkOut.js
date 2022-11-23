$(document).ready(function () {

      // 전역 변수 설정
      var tprice = 0;                                            // 총 금액              
      var qty = parseInt($('#qty').val());                       // 수량   
      var price = parseInt($('#price').val());                   // 상품 금액
      var lpno = $('#lpno').val();                               // LP 번호
      var id = $('#id').val();                                   // ID
     
     

 // checkout button 클릭시
    $('#checkOut').click(function () {
        //alert('OK');
        document.checkOutDirectly.submit();
   

    }); // end of click










})	// end of ready