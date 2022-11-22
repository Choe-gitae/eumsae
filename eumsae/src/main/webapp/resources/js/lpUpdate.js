 $(".table button").each(function () {
                $(this).click(function () {
                    let genre = $(this).parents("tr").find("td:eq(1)").text();
                    let singer = $(this).parents("tr").find("td:eq(2)").text();
                    let title = $(this).parents("tr").find("td:eq(3)").text();
                    let stitle = $(this).parents("tr").find("td:eq(4)").text();
                    let region = $(this).parents("tr").find("td:eq(5)").text();
                    let content = $(this).parents("tr").find("td:eq(9)").text();
                    let lpdate = $(this).parents("tr").find("td:eq(6)").text();
                    let cnt = $(this).parents("tr").find("td:eq(10)").text();
                    let price = $(this).parents("tr").find("td:eq(7)").text();
                    let infono = $(this).parents("tr").find("td:eq(11)").text();

                    $("#genre").val(genre).prop("selected", true);
                    $("#singer").val(singer);
                    $("#title").val(title);
                    $("#stitle").val(stitle);
                    $("#region").val(region);
                    $("#content").val(content);
                    $("#lpdate").val(lpdate);
                    $("#cnt").val(cnt);
                    $("#price").val(price);
                    $("#infono").val(infono);

                    $("#singer").focus();
                });
            });

            var check = "${check}";
            if (check == 1) alert("${message}");