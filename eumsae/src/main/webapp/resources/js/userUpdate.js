 $(".table button").each(function () {
     $(this).click(function () {
                    let id = $(this).parents("tr").find("td:eq(0)").text();
                    let pwd = $(this).parents("tr").find("td:eq(1)").text();
                    let nick = $(this).parents("tr").find("td:eq(2)").text();
                    let birth = $(this).parents("tr").find("td:eq(3)").text();
                    let name = $(this).parents("tr").find("td:eq(4)").text();
                    let addr = $(this).parents("tr").find("td:eq(5)").text();
                    let tel = $(this).parents("tr").find("td:eq(6)").text();
                    let email = $(this).parents("tr").find("td:eq(7)").text();
           

                    $("#id").val(id).prop("selected", true);
                    $("#pwd").val(pwd);
                    $("#nick").val(nick);
                    $("#birth").val(birth);
                    $("#name").val(name);
                    $("#addr").val(addr);
                    $("#tel").val(tel);
                    $("#email").val(email);                

                    $("#pwd").focus();
                });
            });

            var check = "${check}";
            if (check == 1) alert("${message}");