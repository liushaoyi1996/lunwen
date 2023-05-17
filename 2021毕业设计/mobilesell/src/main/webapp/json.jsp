<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>json</title>
    <meta charset="utf-8">
    <script src="${base }/js/jquery-1.7.2.min.js"></script>
    <script>
        $(function () {
            $("#txtname").blur(function(){
                $.post("${base}/demo",{'name' : $("#txtname").val()},function(data){
                    alert(data.username);
                });

            });
        });
             $.ajax({
                        type: "post",
                        url: "${base}/demo",
                        dataType: "json",
                        data: {"name": "lili"},
                        error: function () {
                            alert("处理失败...");
                        },
                        success: function (data) {
                            alert(data.username);
                        }
                    });

    </script>
</head>
<body>

<input id="txtname" type="text"/>

</body>
</html>