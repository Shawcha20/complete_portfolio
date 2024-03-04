<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show_table.aspx.cs" Inherits="dekhi_ki_hoi.show_table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Data Table</title>
    <style>
        body{
            background-color:#12233F;
        }
        .grid_view{
        
            justify-content:center;
        }
        .header{
            color:antiquewhite;
            display:flex;
            justify-content:center;
        }
        #GridView1 {
            background-color: #8bc34a; /* Green background color */
            border-radius: 10px; /* Rounded corners */
            margin: 0 auto; /* Center the table horizontally */
            width: 80%; /* Set a width for the table */
            padding: 10px; /* Add padding for better appearance */
        }
    </style>
</head>
<body>
    <div class="header">
        <h1> The Courses Are Here</h1>
    </div>
    <form id="form1" runat="server">
        <div class="grid_view">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">

                <Columns>
                    <asp:TemplateField>
                    <ItemTemplate>                    
                      <img src='<%#Eval("image")%>' />
                      </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="pName" HeaderText="Project Name" />
                    <asp:BoundField DataField="pdetails" HeaderText="Project details" />
                    <asp:BoundField DataField="pdescription" HeaderText="Description" />
                    <asp:BoundField DataField="date" HeaderText="Date" />
                    <asp:BoundField DataField="technology" HeaderText="Technology" />
                    <asp:BoundField DataField="role" HeaderText="Role" />
                    <asp:BoundField DataField="view" HeaderText="View" />
                    <asp:TemplateField HeaderText="Update"></asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
