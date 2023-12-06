<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gio_hang.aspx.cs" Inherits="Baitaplon.Gio_hang" %>
<%@ Register src="USER_CONTROL/UCGiohangsach.ascx" tagname="UCGiohangsach" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:UCGiohangsach ID="UCGiohangsach1" runat="server" />
</asp:Content>
