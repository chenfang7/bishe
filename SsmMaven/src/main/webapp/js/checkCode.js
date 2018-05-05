var code ; //在全局定义验证码
//产生验证码
window.onload = function createCode(){
    code = "";
    var codeLength = 4;//验证码的长度
    var checkCode = document.getElementById("Code");
    var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//随机数
    for(var i = 0; i < codeLength; i++) {//循环操作
        var index = Math.floor(Math.random()*52);//取得随机数的索引（0~35）
        code += random[index];//根据索引取得随机数加到code上
    }
    checkCode.value = code;//把code值赋给验证码
};
function checkCode(){
    code = "";
    var codeLength = 4;//验证码的长度
    var checkCode = document.getElementById("Code");
    var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
        'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//随机数
    for(var i = 0; i < codeLength; i++) {//循环操作
        var index = Math.floor(Math.random()*52);//取得随机数的索引（0~35）
        code += random[index];//根据索引取得随机数加到code上
    }
    checkCode.value = code;//把code值赋给验证码
}
//校验验证码
function validate(){

    var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写
    if(inputCode.length <= 0) { //若输入的验证码长度为0
        $("#codeMsg").html("验证码不能为空");
        return false;

    }
    else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时
        $("#codeMsg").html("验证码错误");
        return false;
    }
    return true;
}
//校验邮箱
    function upemail(){
        var em = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/; //验证邮箱的正则表达式
        var myemail = $("email").val(); 
        if (myemail==""){
            $("#newemail").addClass("errorTextColor");
            $("#newemail").html("邮箱不能为空！")
            return false;
        } else if(!em.test("myemail")){
             $("#newemail").addClass("errorTextColor");
             $("#newemail").html("邮箱格式不对");
             return false;
            } else{
                return true;
            }
        }
 //校验用户名
    function uname() {
        //reg1 = /^[a-zA-Z][a-zA-Z0-9_]{3,15}$/;// 帐号是否合法(字母开头，允许4-16字节，允许字母数字下划线)
        var reg = /^[0-9a-zA-Z_\u3E00-\u9FA5]{3,15}$/;//4-16字节，允许字母数字下划线
        var userName = $("#name").val();
        if (userName == "") {
            $("#userNamePrompt").addClass("errorTextColor");
            $("#userNamePrompt").html("用户名不能为空！");
            return false;
        } else if (!reg.test(userName)) {
            $("#userNamePrompt").addClass("errorTextColor");
            $("#userNamePrompt").html("不正确的用户名格式！");
            return false;
        } else {
            var userFlag = false;
            $.ajaxSetup({
                async : false
            });
$.ajax({
                url : "user/checkUserName.do",
                data : {
                    userName : $("#name").val()
                },
                success : function(data) {
                    if (data != "1") {
                        $("#userNamePrompt").addClass("errorTextColor");
                        $("#userNamePrompt").html(""+data);
                        //userNamePrompt.innerHTML = data.fontcolor("red");
                    } else {
                        $("#userNamePrompt").html("");
                        return userFlag = true;
                    }
                }
            });
            return userFlag;
        }
        return true;
    }
//校验密码
function npassword() {

         //reg2 = /^[a-zA-Z]\w{5,17}$/;// 密码(以字母开头，长度在6~18之间，只能包含字母、数字和下划线)
        reg2 = /^[a-zA-Z]\w{5,17}$/;
        var reg = /[\u4E00-\u9FA5]/;
        var userPwd = $('#password').val();
        if (userPwd == "") {
            $("#newPwdPrompt").addClass("errorTextColor");

            $("#newPwdPrompt").html("密码不能为空！");
            return false;
        } else if (userPwd.length < 6 || userPwd.length > 16) {
            $("#newPwdPrompt").addClass("errorTextColor");
            $("#newPwdPrompt").html("长度不符合！");
            return false;
        } else if(reg.test(userPwd)){
            $("#newPwdPrompt").addClass("errorTextColor");
            $("#newPwdPrompt").html("密码不能有中文！");
        } else {
            return true;
        }
    }
    //校验确定密码
    function repassword() {
        /*这样的写法ie浏览器下会报错*/
        /*var pwd = $("#userPwd").val().trim();*/
        /*var repwd = $("#userPwdAgain").val().trim();*/

        var a=$('#userPwd').val();
        var pwd=$.trim(a);
        var b=$('#userPwdAgain').val();
        var repwd=$.trim(b);
        if (pwd == "") {
            $("#rePwdPrompt").addClass("errorTextColor");
            $("#rePwdPrompt").html("密码不能为空！");
            return false;
        } else if (pwd !== repwd) {
            $("#rePwdPrompt").addClass("errorTextColor");
            $("#rePwdPrompt").html("两次密码不一致");
            return false;
        } else {
            $("#rePwdPrompt").addClass("errorTextColor");
            $("#rePwdPrompt").html("");
            //setFlag($("#userPwdAgain"));
            return true;
        }
    }
   
