$(".table button").each(function () {
    $(this).click(function () {
        let cnt = $(this).parents("tr").find("td:eq(7)").text();
        let lpno = $(this).parents("tr").find("td:eq(9)").text();
        let infono = $(this).parents("tr").find("td:eq(10)").text();

        $("#currentCnt").val(cnt);
        $("#lpno").val(lpno);
        $("#infono").val(infono);

        $("#cnt").focus();
    });
});