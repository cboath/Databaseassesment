<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Frontend.Master" CodeBehind="insert.aspx.vb" Inherits="Databaseassesment.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" 
    DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            </td>
            <td>
                <asp:Label ID="YearReleasedLabel" runat="server" 
                    Text='<%# Eval("YearReleased") %>' />
            </td>
            <td>
                <asp:Label ID="ReviewLabel" runat="server" 
                    Text='<%# Eval("Review") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </td>
            <td>
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            </td>
            <td>
                <asp:TextBox ID="YearReleasedTextBox" runat="server" 
                    Text='<%# Bind("YearReleased") %>' />
            </td>
            <td>
                <asp:TextBox ID="ReviewTextBox" runat="server" 
                    Text='<%# Bind("Review") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" 
            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>
                    No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            </td>
            <td>
                <asp:TextBox ID="YearReleasedTextBox" runat="server" 
                    Text='<%# Bind("YearReleased") %>' />
            </td>
            <td>
                <asp:TextBox ID="ReviewTextBox" runat="server" 
                    Text='<%# Bind("Review") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            </td>
            <td>
                <asp:Label ID="YearReleasedLabel" runat="server" 
                    Text='<%# Eval("YearReleased") %>' />
            </td>
            <td>
                <asp:Label ID="ReviewLabel" runat="server" 
                    Text='<%# Eval("Review") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">
                            </th>
                            <th runat="server">
                                Title</th>
                            <th runat="server">
                                YearReleased</th>
                            <th runat="server">
                                Review</th>
                        </tr>
                        <tr ID="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" 
                    style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            </td>
            <td>
                <asp:Label ID="YearReleasedLabel" runat="server" 
                    Text='<%# Eval("YearReleased") %>' />
            </td>
            <td>
                <asp:Label ID="ReviewLabel" runat="server" 
                    Text='<%# Eval("Review") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="movieonly" DeleteCommand="deletemovie" 
    DeleteCommandType="StoredProcedure" InsertCommand="insertmovie" 
    InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" 
    UpdateCommand="updatemov" UpdateCommandType="StoredProcedure">
    <DeleteParameters>
        <asp:Parameter Name="movtitle" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="movtitle" Type="String" />
        <asp:Parameter Name="movrelease" Type="Int32" />
        <asp:Parameter Name="MovieID" Type="Int32" />
        <asp:Parameter Name="movreview" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="original_MovieID" Type="Int32" />
        <asp:Parameter Name="movtitle" Type="String" />
        <asp:Parameter Name="movrelease" Type="Int32" />
        <asp:Parameter Name="movreview" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
