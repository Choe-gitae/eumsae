$(function () {
    // ##### QuickSearch start #####
    // quick search regex
    var qsRegex;

    // init Isotope
    var $grid = $(".oneMusic-albums").isotope({
        itemSelector: ".single-album-item",
        layoutMode: "fitRows",
        filter: function () {
            return qsRegex ? $(this).text().match(qsRegex) : true;
        },
    });

    // use value of search field to filter
    var $quicksearch = $(".quicksearch").keyup(
        debounce(function () {
            qsRegex = new RegExp($quicksearch.val(), "gi");
            $grid.isotope();
        }, 200)
    );

    // debounce so filtering doesn't happen every millisecond
    function debounce(fn, threshold) {
        var timeout;
        threshold = threshold || 100;
        return function debounced() {
            clearTimeout(timeout);
            var args = arguments;
            var _this = this;
            function delayed() {
                fn.apply(_this, args);
            }
            timeout = setTimeout(delayed, threshold);
        };
    }
    // ##### QuickSearch end #####

    // 컨테이너 크기 확장
    $("section.album-catagory > div.container").css("max-width", "1500px");

    $("div.catagory-menu").css("display", "none");

    $("input.quicksearch").css("margin", "50px");

    $("input.quicksearch").click(function () {
        alert("퀵서치");
    });
});
