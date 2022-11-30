$(".table button").each(function () {
    $(this).click(function () {
        let price = $(this).parents("tr").find("td:eq(7)").text();
        let lpno = $(this).parents("tr").find("td:eq(9)").text();
        let infono = $(this).parents("tr").find("td:eq(10)").text();

        $("#currentPrice").val(price);
        $("#lpno").val(lpno);
        $("#infono").val(infono);

        $("#price").focus();
    });
});