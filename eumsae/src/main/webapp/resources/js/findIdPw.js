$(function () {
    $("#findPw").click(function () {
        var param = $('#pwForm').serialize();
        console.log(param);
        
        $.ajax({
            type:'post',
            url:'findPw',
            data:param,
            contentType:"application/x-www-form-urlencoded;charset=utf-8",
            //async:false,
            success: function (result) {
                Swal.fire(result);
                },
            error: function (err) {
                Swal.fire(err);
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
            //async:false,
            success: function (result) {
                Swal.fire(result);			
                },
            error: function (err) {
                Swal.fire(err);
            }
        })
    })
})