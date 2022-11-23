
 $(function(){
	
	/* 전역변수 선언 */
	var sum =0;		// 총합
	var name;			// 이름
	var count;			// 갯수
	var price;			// 금액
	
	
	var tdName;		// 주문내역_이름
	var tdCount;		// 주문내역_개수
	var tdPrice;			// 주문내역_금액
	var tdButton;		// 주문내역_삭제버튼
	
	
		//1. select 가 change 될 경우
	$('select').change(function(){
		if($(this).val() == 0){					// select에서 0개를 선택할 경우
			alert('1개 이상을 선택해주세요.')		// 1개 이상 선택 문구 출력
		}//if
		
		else{											// 그 외
		
		//2. 메뉴 이름 저장
		name = $(this).parent().find('span:eq(0)').attr('value');
		//3. 주문 개수 저장
		count = $(this).val();
		//4. 가격 저장 후 총합 계산
		price = $(this).parent().find('span:eq(1)').attr('value');
		sum+= count * price;				//sum+= 가 아니면 추가하는 메뉴의 갯수와 가격이 곱해진 값이 들어감
		
		//5. 총합을 input 에 출력
		$('#total').attr('value',sum);	//'#total'에 value 값에 sum을 넣음
		
		/* 내역 출력 */
		
		//1) 이름을 td로 생성해서 저장
		tdName = $('<td/>').text(name);
		tdName.attr('name',price);			//name 속성을 price로 설정
		
		/* 중복일 경우 */
		var flag = false;													//중복 여부 판단 변수 선언
		var lis = $('#listTable tr.list');									//추가된 tr 저장한 변수
		for(var i=0; i<lis.length; i++){
			if(name==$(lis[i]).find('td:eq(0)').text()){					//주문내역 table에 선택한 메뉴의 이름이 있을 경우
				alert(name+"가 "+count+ "개 추가되었습니다.");					//변경 내용 출력
				
				var currentCount = Number($(lis[i]).find('td:eq(2)').text());			//해당하는 tr(lis[i])의 자식요소(td)중 2번째의 값 저장
				currentCount += Number(count);											//기존갯수에 추가되는 갯수 더해주기
				$(lis[i]).find('td:eq(2)').text(currentCount);							//개수 수정 후 출력
				
				var currentPrice =Number($(lis[i]).find('td:eq(4)').text()); 			//해당하는 tr(lis[i])의 자식요소(td)중 3번째의 값 저장
				currentPrice += Number(count) * Number(price);							//기존가격에 추가되는 가격 더해주기
				$(lis[i]).find('td:eq(4)').text(currentPrice);							// 가격 수정 후 출력
				
				flag = true;		//중복일 경우를 true로 지정
			}//if-for
		}//for
		/* 중복이 아닐 경우 */
		if(!flag){																	//중복이 아닐 경우
			tdCount = $('<td/>').text(count);										//저장된 내용을 추가
			tdPrice = $('<td/>').text(price*count);									//저장된 갯수*가격의 내용을 추가
			tdButton = $('<td><button class="del" value="삭제">삭제</button></td>');	//삭제버튼 만들기
		    tdPlus = $('<td><button class="plus" value="추가">+</button></td>');		//+버튼 만들기
         	tdDown = $('<td><button class="down" value="감소">-</button></td>');		//-버튼 만들기

		//2) tr에 td들 붙이기
			var tr = $('<tr/>');
			tr.append(tdName);
			tr.append(tdPlus);
			tr.append(tdCount);
			tr.append(tdDown);
         	tr.append(tdPrice);
			tr.append(tdButton);
			
			tr.attr('class','list'); //tr의 속성 설정 -- 다른 tr들과 동적으로 추가한 tr 구분함
		
		//3) tr을 table에 붙이기
			$('#listTable').append(tr);
			}//if
		}//else - 0개일 경우
		$('.menuCount').val('0');		//메뉴 및에 갯수를 0으로 초기화	
	});//select
	
				
				
   /* 주문내역의 삭제 버튼을 누를 경우 */
   $("#listTable").on("click", ".del", function() {                //listTable안의 btn을 선택
      sum -= $(this).parent().parent().find('td:eq(4)').text();    //this(btn)의 부모(td)의 부모(tr)의 자식요소(td)중 3번째의 text 저장
      $('#total').attr('value',sum);                                 //최종금액 내용 설정
          $(this).parent().parent().remove();                            //this(btn)의 부모(td)의 부모(tr)를 삭제
          $('.menuCount').val('0');
     });//click
   
	/* 주문완료 버튼을 누를 경우 */
	$('#btn').click(function(){
		window.open('pay.html','주문내역','width=380, height=450');		//'pay.html'열기
		sum=0;											//sum 변수 초기화
	})//btn click
	
	//사진에 마우스를 올렸을때 설명 내용이 담긴 이미지로 변경
	$('.food').hover(function() { 
    	var src = $(this).attr('src');
   $(this).attr('src',src.replace('.PNG','_1.PNG'));
  		}, function() {
   		var src = $(this).attr('src');
   $(this).attr('src',src.replace('_1.PNG','.PNG'));
  	});
  	
  	   // 수량 + 버튼 클릭시 발생 이벤트
   $(document).on("click",".plus",function(){
      
      var cnt = $(this).parents('tr').find('td:eq(2)').text();		  //주문내역에 있는 수량 값 가져오기
      $(this).parents('tr').find('td:eq(2)').text(parseInt(cnt)+1);   // 수량 ++
      
      var cnt1 = $(this).parents('tr').find('td:eq(2)').text();		  //주문내역에 있는 갯수가 더해진 값을  ctn1에 저장
      var pri = $(this).parents('tr').find('td:eq(0)').attr('name');  //pri에 주문내역에 있는 name 속성에 있는 price값 저장
      $(this).parents('tr').find('td:eq(4)').text(parseInt(pri*cnt1));   // 주문금액 ++
      
      var totalsum = parseInt($('#total').val()) // // 합계의 가격을 숫자로 만들기
      $('#total').val( totalsum += parseInt(pri));	//더한 값을 넣어주기
      
   });
   
   // 수량 - 버튼 클릭시 발생 이벤트
   $(document).on("click",".down",function(){
      var cnt = $(this).parents('tr').find('td:eq(2)').text();
      if(cnt !=0){
      $(this).parents('tr').find('td:eq(2)').text(parseInt(cnt)-1);   // 수량 --
      
      var pri = $(this).parents('tr').find('td:eq(0)').attr('name');   
      var pricetext = $(this).parents('tr').find('td:eq(4)').text()
      $(this).parents('tr').find('td:eq(4)').text(parseInt(pricetext-pri));   // 주문금액 --
      
      var totalsum = parseInt($('#total').val()) // // 합계의 가격
      $('#total').val( totalsum -= parseInt(pri));
      
      
      }
      
   })
  	
  	
  	
  	
}); //function