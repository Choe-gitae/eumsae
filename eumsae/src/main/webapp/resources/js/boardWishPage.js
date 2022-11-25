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
				$("#sendForm").attr("action", "updateBoard").submit();
				alert("등록 성공");
				
			})
			$("#deleteList").click(function(){
				$("#sendForm").attr("action", "deleteBoard").submit();
				alert("삭제 성공");
			})
			
		})
	
	//게시글 클릭했을 때 띄우는 js 끝