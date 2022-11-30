//게시글 클릭했을 때 띄우는 js
		$(function(){
			$(".commentLine").click(function(){
				var title = $(this).find(".title").text();
				var nickName = $(this).find(".nickName").text();
				var article = $(this).find(".article").text();
				var boardNo = $(this).find(".wboardNo").text();
				$('.request').text(title);
				$('.nickNameSet').text(nickName);
				$('.articleSet').text(article);
				$('#wboardNo').val(boardNo);
			})
			$("#addReply").click(function(){
				Swal.fire({
					icon: 'question',
					title: '등록 하시겠습니까?',
					showDenyButton: true,
					confirmButtonText: '등록',
					denyButtonText: '취소',
				  }).then((result) => {
					if (result.isConfirmed) {
						$("#sendForm").attr("action", "updateBoard").submit();
					} else if (result.isDenied) {
					}
				  })
			})
			$("#deleteList").click(function(){
				Swal.fire({
					icon: 'warning',
					title: '삭제 하시겠습니까?',
					showDenyButton: true,
					confirmButtonText: '삭제',
					denyButtonText: '취소',
				  }).then((result) => {
					if (result.isConfirmed) {
						$("#sendForm").attr("action", "deleteBoard").submit();
					} else if (result.isDenied) {
					}
				  })
			})
			
		})
	
	//게시글 클릭했을 때 띄우는 js 끝