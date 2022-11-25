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

//상품수량
$(function(){
		var result = $(".price").text()*$("#quantity").val();
		$(".resultPrice").append(result);
	$("#quantity").on("change",function(){
		var result = $(".price").text()*$("#quantity").val();
		$(".resultPrice").text(result);	
	})
//상품수량 끝

//상품수량업다운버튼
	var qtt = $("#quantity").val();
		$("#upBtn").click(function(){
			$("#quantity").val(++qtt);
			var result = $(".price").text()*$("#quantity").val();
			$(".resultPrice").text(result);	
		})
		$("#downBtn").click(function(){
			$("#quantity").val(--qtt);
			var result = $(".price").text()*$("#quantity").val();
			$(".resultPrice").text(result);	
		})
})
//상품수량업다운버튼끝

// 배송비
var dtax = 2500;
$('.delivery-tax').text(dtax);

//수령인정보동일시작
function Copy(){
	
	if(document.getElementById("re_info").checked){
		document.getElementById("re_name").value = document.getElementById("buyer_name").value;
		document.getElementById("re_pNum").value = document.getElementById("buyer_pNum").value;
		document.getElementById("re_email").value = document.getElementById("buyer_email").value;
	}
}
//수령인정보동일끝

// 결제시스템 스크립트 시작
IMP.init("imp05370542"); // 예: imp00000000
function requestPaykakao() {
	IMP.request_pay({
	    pg : 'kakaopay',
	    pay_method : 'card', //생략 가능
	    merchant_uid: "order_no_"+ new Date().getTime(), // 상점에서 관리하는 주문 번호
	    name : '내마음',
	    amount : 1000000,
	    buyer_email : 'test@gmail.com',
	    buyer_name : '쏘농민',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	}, function(rsp) { 
		if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        msg += '주문명 : ' + rsp.name;
        msg += '주문자명 : ' + rsp.buyer_name;
        msg += '주문자 이메일 : ' + rsp.buyer_email;
        msg += '주문자 전화번호 : ' + rsp.buyer_tel;
        alert(msg);
        location.href = "paySuccess";
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        location.href = "payFail";
	    } 
    });
}
function requestPaytoss() {
	IMP.request_pay({
	    pg : 'tosspay',
	    pay_method : 'card', //생략 가능
	    merchant_uid: "order_no_0003"+ new Date().getTime(), // 상점에서 관리하는 주문 번호
	    name : '지옥행티켓',
	    amount : 10,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '앙마',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	}, function(rsp) {
		if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	        location.href = "paySuccess";
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        location.href = "payFail";
	    } 
	});
}
//결제시스템 스크립트 끝


//우편번호 api시작
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }