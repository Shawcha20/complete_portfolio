<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateaspx.aspx.cs" Inherits="dekhi_ki_hoi.updateaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <div class="header">
        <h1> The Courses Are Here</h1>
    </div>
    <form id="form1" runat="server">
        <div class="grid_view">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="updating">

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
                    <asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:LinkButton ID="updateButton" runat="server" onserverclick="update" CommandName="update">Update</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
