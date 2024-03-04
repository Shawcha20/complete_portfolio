<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="dekhi_ki_hoi.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  <div class="addTitle">
        <p>Add Projects</p>
    </div>
    <div class="form_control">
             <form runat="server">
            <div class="imageAdd">
            <label for="image"> Add Image</label>
            <input type="file" id="img" runat="server" >
        </div>
        <div class="work_title">
            <label for="workTitle">Enter Project Title</label>
            <input type="text" id="title" placeholder="Project Title" runat="server"> 
        </div>
         <div class="project_des">
      <label for="des">Enter Project titlte des</label>
      <input type="text" id="detailsTitle" placeholder="Project Title" runat="server"> 
  </div>
        <div class="project_description">
            <label for="description">Enter project Description</label>
           <textarea name="des" runat="server" placeholder="Message" cols="30" rows="10" id="description"></textarea>

        </div>
        <div class="date">
            <label for="date">Enter the date</label>
            <input type="date" runat="server" id="date" >
        </div>
        <div class="role">
            <label for="role"> Enter your role</label>
            <input type="text" runat="server" id="role">
        </div>
        <div class="view">
            <label for="view">
                Enter Project Link
            </label>
            <input type="text" runat="server" id="view">
        </div>
         <div class="technology">
      <label for="tech">
          Enter technology
      </label>
      <input type="text" runat="server" id="technology">
  </div>
        <div>
            <input type="submit" id="submission" runat="server" onserverclick="Update" placeholder="Update Project">
        </div>
        </form>
    </div>
</body>
</html>
