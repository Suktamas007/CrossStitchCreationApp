<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CrossStitchApp._Default" %>



<asp:content contentplaceholderid="HeadContent" runat="server">  

    <link rel="stylesheet" href="css/web_style.css" type="text/css" media="screen" />  

</asp:content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br>
    <div class="container">
        <div class="row">
            <div class="col-sm-2 imgUp">
                <div class="imagePreview">
                </div>
                <label class="btn btn-primary">
                    Upload
                    <input type="file" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
                </label>
            </div><!-- col-2 -->
            <i class="fa fa-plus imgAdd"></i>
        </div><!-- row -->
    </div><!-- container -->

</asp:Content>

<asp:Content ContentPlaceHolderID="JavaScripts" runat="server">
    <script type="text/javascript" src="js/upload_image.js"></script>
</asp:Content>


