$(document).ready(function () {

    // 전역 변수 설정
    var tprice = 0;                                            // 총 금액              
    var qty = parseInt($('#qty').val());                       // 수량   
    var price = parseInt($('#price').val());                   // 상품 금액
    var lpno = $('#lpno').val();                               // LP 번호
    var id = $('#id').val();                                   // ID
    var cnt = parseInt($('#cnt').val());                       // 재고
    var amount = 1;                                            // 주문 수량
    console.log(cnt);

    // 수량 감소 눌렀을 때
    $('.qty-minus').click(function () {
        if(qty != NaN && qty > 1) {
            qty--;
            $('#qty').val(qty);
            amount -= 1;
        } else {
            alert("최소 수량은 1 개 입니다.");
            qty = 1;
        }
    });
    
    // 수량 증가 눌렀을 때
    $('.qty-plus').click(function () {
        if (qty!= NaN && qty < cnt) {
            qty++;
            $('#qty').val(qty);           
            amount += 1;
        } else {
            alert("재고가 없습니다.");
        }
    });    
  
    
        
   
    
    
    
   
    // 카트에 담기 버튼을 눌렀을 때
    $('#addToCart').click(function () {
        // ajax 통신 전 DATA 설정     
        var data = { lpno: lpno, amount: amount, id: id };

        // ajax 통신
        $.ajax({
            url: 'addToCart',
            data: data,
            contentType: 'application/x-www-form-urlencoded;charset=utf-8',
            success: function (result) {
                $('#ajaxResult').text(result);                
            },
            error: function (err) {
                alert("전송실패");
                console.log(err);
            }
        }); // end of ajax

      

    })// end of click

})	// end of ready