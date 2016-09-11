var bindarea = function (checknum) {
    if (checknum == 1) {
        $(".dvarealist .chk_all").attr("disabled", true);
    }
    $(".dvarealist .chk_all").click(function () {
        //$(".dvarealist input:checkbox").attr("checked")
        if ($(this).attr("checked") == true || $(this).attr("checked") == "checked") {
            $(".dvarealist input:checkbox").attr("checked", $(this).attr("checked"));
            $(".dvarealist  .spslareas").html("全国");
        } else {
            $(".dvarealist input:checkbox").attr("checked", false);
            $(".dvarealist  .spslareas").html("");
        }
    });
    //spslareas
    $(".dvarealist input:checkbox").click(function () {
        if ($(this).val() != "") {
            var str = "";
            if (checknum == 0) {
                $(".dvarealist input:checkbox").each(function (iindex) {
                    if ($(".dvarealist input:checkbox").eq(iindex).attr("checked") == "checked" || $(".dvarealist input:checkbox").eq(iindex).attr("checked") == true) {
                        $(".dvarealist .chk_all").attr("checked", false);
                        if (str == "") {
                            str += $(".dvarealist input:checkbox").eq(iindex).val();
                        } else {
                            str += "," + $(".dvarealist input:checkbox").eq(iindex).val();
                        }
                    }
                });
            } else if (checknum == 1) {
                $(".dvarealist input:checkbox").attr("checked", false);
                $(this).attr("checked", "checked");
                str = $(this).val();
            }
            $(".dvarealist  .spslareas").html(str);
        }
    });
    $("#diqu").click(function () {
        showDiv($(this)[0]);
    });
    $(".aareaclear").click(function () {
        $(".dvarealist  .spslareas").html("");
        $(".dvarealist input:checkbox").attr("checked", false);
    });
    $(".aareaclose").click(function () {
        $(".dvarealist").hide();
        $(".dvarealist  .spslareas").html("");
        $(".dvarealist input:checkbox").attr("checked", false);
    });
    $(".aareasure").click(function () {
        $(".dvarealist").hide();
        if (checknum == 1) {
            $("#diqu").val(($.trim($(".dvarealist  .spslareas").text()) == "" ? "" : $(".dvarealist  .spslareas").text()));
        } else {
            $("#diqu").val(($.trim($(".dvarealist  .spslareas").text()) == "" ? "全国" : $(".dvarealist  .spslareas").text()));
        }
    });
    function showDiv(obj) {
        // 保存元素
        var el = obj;
        // 获得元素的左偏移量
        var left = obj.offsetLeft;
        // 获得元素的顶端偏移量
        var top = obj.offsetTop;

        // 循环获得元素的父级控件，累加左和顶端偏移量
        while (obj = obj.offsetParent) {
            left += obj.offsetLeft;
            top += obj.offsetTop;
        }


        // 设置层的坐标并显示
        $(".dvarealist").css("left", left + "px")

        // 层的顶端距离为元素的顶端距离加上元素的高
        $(".dvarealist").css("top", top + el.offsetHeight + "px");

        $(".dvarealist").show();
    }
}
