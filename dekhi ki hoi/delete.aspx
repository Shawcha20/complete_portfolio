<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="dekhi_ki_hoi.delete_project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
    background-color:#8E24AA;
}

form {
    width: 300px;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
   background-color:aqua;
}

.button {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}
.form_control{
    display:flex;
    justify-content:center;
    
}
.button:hover {
    background-color: #0056b3;
}
.header{
    align-items:center;
    display:flex;
    justify-content:center;
    color:antiquewhite;
}
.form_inner{
    display:flex;
    flex-direction:column;
    align-items:center;
}
.text_project{
    margin:2rem;
}
  input[type="text"] {
            width: 300px; /* Adjust the width as needed */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Project Delete</h1>
    </div>
    <div class="form_control">
  <form runat="server">
      <div class="form_inner">
          <div class="text_project">
      <input type="text" id="project_name" placeholder="Enter Project name" runat="server"/></div>
          <div>
      <button class="button" runat="server" type="submit" id="sendbtn" value="send" onserverclick="deleting">
   delete</button> 
              </div>
          </div>
  </form>
        </div>
</body>
</html>
