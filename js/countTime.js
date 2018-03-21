var Timer = function () {
    var list = [],interval;
    return function (id, time) {
        if (!interval)
            interval = setInterval(go, 1000);
        list.push({ ele: document.getElementById(id), time: time });
    }
    function go() {
        for (var i = 0; i < list.length; i++) {
            list[i].ele.innerHTML = getTimerString(list[i].time ? list[i].time -= 1 : 0);
            if (!list[i].time)
                list.splice(i--, 1);
        }
    }
    function getTimerString(time) {
            d = Math.floor(time / 86400),
            h = Math.floor((time % 86400) / 3600),
            m = Math.floor(((time % 86400) % 3600) / 60),
            s = Math.floor(((time % 86400) % 3600) % 60);
        if (time > 0)
            return "<b>"+d + "</b>天<b>" + h + "</b>小时<b>" + m + "</b>分<b>" + s + "</b>秒";
        else return "<b>时间到</b>";
    }
}();     
window.onload = function () {
    var now = new Date();
    var ddl = ['2018/4/15 00:00:00', '2018/4/12 22:00:00', '2018/4/12 23:00:00', '2018/4/19 1:00:00', '2018/4/14 00:00:00', '2018/4/15 00:00:00', '2018/4/15 13:00:00'];
    Timer("Timer0", (new Date(ddl[0]) - now) / 1000);
    Timer("Timer1", (new Date(ddl[1]) - now) / 1000);
    Timer("Timer2", (new Date(ddl[2]) - now) / 1000);
    Timer("Timer3", (new Date(ddl[3]) - now) / 1000);
    Timer("Timer4", (new Date(ddl[4]) - now) / 1000);
    Timer("Timer5", (new Date(ddl[5]) - now) / 1000);
    Timer("Timer6", (new Date(ddl[6]) - now) / 1000);
}