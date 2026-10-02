<%@ Page Title="Kontakt info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="sugupuuRakendusXML.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
                <div>
            <asp:Xml runat="server"
    DocumentSource="~/mockaroo.xml"
    TransformSource="~/Paringud3.xslt">
</asp:Xml>
        </div>

    </main>
</asp:Content>
