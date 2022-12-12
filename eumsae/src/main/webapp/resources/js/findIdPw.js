$(function () {
    $("#findPw").click(function () {
        var param = $('#pwForm').serialize();
        console.log(param);
        
        $.ajax({
            type:'post',
            url:'findPw',
            data:param,
            contentType:"application/x-www-form-urlencoded;charset=utf-8",
            async:false,
            success: function (result) {
                Swal.fire(result);
                },
            error: function (err) {
                Swal.fire({
                    icon: 'error',
                    title: "서비스 이용불가",
                    text: "이용에 불변을 드려 죄송합니다.",
                })
                console.log(err);
            }
        })
    })

    $("#findId").click(function () {
        var param = $('#idForm').serialize();
        console.log(param);

        $.ajax({
            type:'post',
            url:'findId',
            data:param,
            contentType:"application/x-www-form-urlencoded;charset=utf-8",
            async:false,
            success: function (result) {
                if (result != "0") {
                    Swal.fire({
                        icon: 'success',
                        text: "회원님의 아이디는  "+result+"  입니다.",
                        footer: '<a href="login&RegisterPage">로그인 하러 가기</a>'
                      })
                } else {
                    Swal.fire("일치하는 회원 정보가 없습니다.");
                }
            },
            error: function (err) {
                Swal.fire({
                    icon: 'error',
                    title: "서비스 이용불가",
                    text: "이용에 불변을 드려 죄송합니다.",
                })
                console.log(err);
            }
        })
    })
})