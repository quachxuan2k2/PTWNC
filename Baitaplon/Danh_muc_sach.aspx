<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Danh_muc_sach.aspx.cs" Inherits="Baitaplon.Danh_muc_sach" %>
<%@ Register src="USER_CONTROL/UCDanh_muc.ascx" tagname="UCDanh_muc" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:UCDanh_muc ID="UCDanh_muc1" runat="server" />
</asp:Content>
