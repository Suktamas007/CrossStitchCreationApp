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

    <script>
        $(".imgAdd").click(function()
        {
            $(this).closest(".row").find('.imgAdd').before(
                `
                    <div class="col-sm-2 imgUp">
                        <div class="imagePreview"></div>

                        <label class="btn btn-primary">
                            Upload
                            <input type="file" class="uploadFile img" value="Upload Photo" style="width:0px;height:0px;overflow:hidden;">
                        </label>
                        <i class="fa fa-times del"></i>
                    </div>
                `
            );
        });

        $(document).on("click", "i.del" , function() {
            $(this).parent().remove();
        });

        $(function() 
        {
            $(document).on("change",".uploadFile", function()
            {
                var uploadFile = $(this);
                var files = !!this.files ? this.files : [];
                if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
        
                if (/^image/.test( files[0].type))
                {
                    // only image file
                    var reader = new FileReader(); // instance of the FileReader
                    reader.readAsDataURL(files[0]); // read the local file
        
                    reader.onloadend = function()
                    {
                        // set image data as background of div
                        //alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                        uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url("+this.result+")");
                    }
                }
      
            });
        });
    </script>

</asp:Content>
