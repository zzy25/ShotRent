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
    }),

    $("#addUserSubmit").click(function(){
        $.post(
            "/user/postUser.action",
            {
                username : $("[name='username']").val(),
                password : $("[name='password']").val(),
                email : $("[name='email']").val(),
                mobile : $("[name='mobile']").val()
            },
            function(result){
                if (result.approved){
                    alert("注册成功");
                    window.location ="/user/login.action";
                }else{
                    alert("注册失败 , "+result.msg);
                }
            }
        );
    }),

    $("#publishHourefabu").click(function(){
        $.post(
            "/house/createData.action",
            {
                mobile : $("[name='mobile']").val(),
                tel : $("[name='tel']").val(),
                houseType : $("[name='houseType']").val(),
                address : $("[name='address']").val(),
                area : $("[name='area']").val(),
                price : $("[name='price']").val(),
                content : $("[name='content']").val(),
                online: "1"
            },
            function(result){

                if (result.approved){
                    window.location ="/rent/" + result.element.id + ".action";
                }else{
                    alert("发布失败 , "+result.msg);
                }
            }
        );
    }),

    $("#publishHouredengji").click(function(){
        $.post(
            "/house/createData.action",
            {
                mobile : $("[name='mobile']").val(),
                tel : $("[name='tel']").val(),
                houseType : $("[name='houseType']").val(),
                address : $("[name='address']").val(),
                area : $("[name='area']").val(),
                price : $("[name='price']").val(),
                content : $("[name='content']").val(),
                online: "0"

            },
            function(result){
                if (result.approved){
                    window.location ="/rent/" + result.element.id + ".action";;
                }else{
                    alert("登记失败 , "+result.msg);
                }
            }
        );
    }),

    $("#findHousesearch").click(function(){
        $.post(
            "/rent/findHouses.action",
            {
                maxArea : $("[name='maxArea']").val(),
                minArea : $("[name='minArea']").val(),
                maxPrice : $("[name='maxPrice']").val(),
                minPrice : $("[name='minPrice']").val(),
                addressContain : $("[name='addressContain']").val()

            },
            function(result){
                if (result.approved){
                    window.location ="/index.action";
                }else{
                    alert("查找失败 , "+result.msg);
                }
            }
        );
    })




);
var houseCheck =function(houseId, check){
    $.post(
        "/house/online/"+ houseId + ".action",
        {
            online :check
        },
        function(result){
            if (result.approved){
                alert("修改成功");
                window.location.reload();
            }else{
                alert("修改失败 , "+ result.msg);
            }
        }
    );
}
var houseChecked = function(houseId, check){
    $.post(
        "/house/check/"+ houseId + ".action",
        {
            checked :check
        },
        function(result){
            if (result.approved){
                alert("修改成功");
                window.location.reload();
            }else{
                alert("修改失败 , "+ result.msg);
            }
        }
    );
}

var writeObject = function(obj){
    var msg = "";
    for (var i in obj){
        var property = obj[i];
        msg += i + "------" + property + "\n";
    }
    console.log(msg);
}