/**
 * Created by zhuoxiong on 2016/3/16.
 */
$.ready(
    $("#loginSubmit").click(function(){
        $.post(
            "/user/loginData.action",
            {
                username : $("[name='username']").val(),
                password : $("[name='password']").val()
            },
            function(result){
                if (result.approved){
                    window.location ="/index.action";
                }else{
                    alert("登录失败 , "+result.msg);
                }
            }
        );
    })


);

var writeObject = function(obj){
    var msg = "";
    for (var i in obj){
        var property = obj[i];
        msg += i + "------" + property + "\n";
    }
    console.log(msg);
}