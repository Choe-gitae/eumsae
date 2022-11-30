$(document).ready(function () {

    // 전역 변수 설정
    var qty = $('#qty');
    var plusBtn = $("#qty-plus");                    // 플러스 버튼
    var minusBtn = $("#qty-minus");                  // 마이너스 버튼
    var lpno = $('#lpno').val();                     // LP 번호
    var id = $('#id').val();                         // ID
    var cnt = parseInt($('#cnt').val());             // 재고
    var amount = 1;                                  // 주문 수량

    // 수량 감소 눌렀을 때
    minusBtn.click(function () {
        if(parseInt(qty.val(),10) != NaN && parseInt(qty.val(),10) > 1) {
            amount--;
            $('#qty').val(amount);
        } else {
            Swal.fire("최소 수량은 1 개 입니다.")
        }
    });
    
    // 수량 증가 눌렀을 때
    plusBtn.click(function () {
        if (parseInt(qty.val(),10) != NaN && parseInt(qty.val(),10) < cnt) {
            amount++;
            $('#qty').val(amount);   
        } else {
            Swal.fire("재고가 없습니다.");
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
                Swal.fire("카트에 담기 실패");
            }
        }); // end of ajax

      

    })// end of click

})	// end of ready