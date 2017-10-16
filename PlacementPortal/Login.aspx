<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link rel="stylesheet" href="Styles/LoginStyle.css" type="text/css" />
        <script type="text/javascript"></script>
    </head>
    <body>
        <div class="login-form">
            <div class="front-face">
                <span class="text">LOGIN</span>
                <span class="loader"></span>
            </div>
            <form id="form1" runat="server">	
                <asp:TextBox ID="tbUserName" placeholder="Username" CssClass="input" runat="server"></asp:TextBox>
                <!--<input type="text" placeholder="Username" class="input" required/>-->
                <asp:textbox id="tbPassword" placeholder="Password" textmode="password" cssclass="input" runat="server"></asp:textbox>
                <!--<input type="password" placeholder="Password" class="input" required/>-->
                <br />
                <br />
                <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red" Font-Size="Small"></asp:Label>
                <!--<asp:Button CssClass="input-btn" ID="Button1" runat="server"/>-->
                <button class="input-btn" runat="server" onserverclick="Btn_Clicked"/>
            </form>
        </div>
    </body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	$(".input").on("focus",function(){
		$(".login-form").addClass("focused");
	})
	//$(".input-btn").on("click",function(e){
	//	e.preventDefault();
	//	$(".login-form").removeClass("focused").addClass("loading");
	//})
})
</script>
