<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hienthi_Ctsach.aspx.cs" Inherits="Baitaplon.Hienthi_Ctsach" %>
<%@ Register src="USER_CONTROL/UCChitiet_sach.ascx" tagname="UCChitiet_sach" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:UCChitiet_sach ID="UCChitiet_sach1" runat="server" />
</asp:Content>
