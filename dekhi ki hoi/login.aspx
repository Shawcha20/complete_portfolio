<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dekhi_ki_hoi.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
  <div class="login-form">
  <form runat="server">
    <h1>Login</h1>
    <div class="content">
      <div class="input-field">
        <input type="text" placeholder="Name" runat="server" id="nam"/>
      </div>
      <div class="input-field">
        <input type="password" placeholder="Password"  id="password" runat="server"/>
    <div class="action">
      <button runat="server" onserverclick="submission" id="submit">Sign in</button>
    </div>
  </form>
</div>
</body>
</html>
