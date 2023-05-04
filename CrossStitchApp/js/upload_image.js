$(".imgAdd").click(function() {
    $(this).closest(".row").find('.imgAdd').before(`
        <div class="col-sm-2 imgUp">
            <div class="imagePreview"></div>
            <label class="btn btn-primary">
                Upload
                <input type="file" class="uploadFile img" value="Upload Photo" style="width:0px;height:0px;overflow:hidden;">
            </label>
            <i class="fa fa-times del"></i>
        </div>
    `);
});

$(document).on("click", "i.del", function() {
    $(this).parent().remove();
});

$(function() {
    $(document).on("change", ".uploadFile", function() {
        var uploadFile = $(this);
        var files = !!this.files ? this.files : [];

        // No file selected, or no FileReader support
        if (!files.length || !window.FileReader) return;

        // Only process image files
        if (/^image/.test(files[0].type)) {
            var reader = new FileReader(); // Instance of the FileReader
            reader.readAsDataURL(files[0]); // Read the local file

            reader.onloadend = function() {
                // Set image data as background of div
                uploadFile.closest(".imgUp").find('.imagePreview').css("background-image", "url(" + this.result + ")");
            }
        }
    });
});
