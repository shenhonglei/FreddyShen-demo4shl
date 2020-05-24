<%--
  Created by IntelliJ IDEA.
  User: shl
  Date: 2018/12/27
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo</title>
    <!-- Start: injected by AdGuard -->
    <script src="//local.adguard.com/adguard-ajax-api/injections/content-script.js?ts=1545889966.998969&amp;sb=1&amp;domain=nj02all01.baidupcs.com&amp;mask=103"
            type="text/javascript" nonce="08C0EF6CC884449AA9F1809A65D459E6"></script>
    <script src="//local.adguard.com/adguard-ajax-api/injections/userscripts/Adguard Assistant?ts=1545890868.854785"
            type="text/javascript" nonce="08C0EF6CC884449AA9F1809A65D459E6"></script>
    <script src="//local.adguard.com/adguard-ajax-api/injections/userscripts/Adguard Popup Blocker?ts=1545890868.854785"
            type="text/javascript" nonce="08C0EF6CC884449AA9F1809A65D459E6"></script>
    <!-- End: injected by AdGuard -->
</head>
<body style="text-align: center" onload="show_cur_times()">
<div style="text-align: center;font-size: x-large;padding-top: 200px;font-family: sans-serif;">
    <label for="showtimes">系统当前时间:</label>
    <div id="showtimes"></div>
</div>
</body>
</html>

<script type="text/javascript" language="javascript">

    function show_cur_times() {
        //获取当前日期
        var date_time = new Date();
        //定义星期
        var week;
        //switch判断
        switch (date_time.getDay()) {
            case 1:
                week = "星期一";
                break;
            case 2:
                week = "星期二";
                break;
            case 3:
                week = "星期三";
                break;
            case 4:
                week = "星期四";
                break;
            case 5:
                week = "星期五";
                break;
            case 6:
                week = "星期六";
                break;
            default:
                week = "星期天";
                break;
        }
        //年
        var year = date_time.getFullYear();
        //判断小于10，前面补0
        if (year < 10) {
            year = "0" + year;
        }
        //月
        var month = date_time.getMonth() + 1;
        //判断小于10，前面补0
        if (month < 10) {
            month = "0" + month;
        }
        //日
        var day = date_time.getDate();
        //判断小于10，前面补0
        if (day < 10) {
            day = "0" + day;
        }
        //时
        var hours = date_time.getHours();
        //判断小于10，前面补0
        if (hours < 10) {
            hours = "0" + hours;
        }
        //分
        var minutes = date_time.getMinutes();
        //判断小于10，前面补0
        if (minutes < 10) {
            minutes = "0" + minutes;
        }
        //秒
        var seconds = date_time.getSeconds();
        //判断小于10，前面补0
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        var date_str = year + "年" + month + "月" + day + "日" + hours + ":" + minutes + ":" + seconds + " " + week;
        //拼接年月日时分秒
        document.getElementById("showtimes").innerHTML = date_str;

        setInterval("show_cur_times()", 100);
    }
</script>

