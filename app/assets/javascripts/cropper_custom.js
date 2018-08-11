
// #app/assets/javascripts/cropper_custom.js
// https://fengyuanchen.github.io/cropperjs/

$(function () {
  
    function crop_image_load(data) {
        var $crop_x = $("input#logo_crop_x"),
            $crop_y = $("input#logo_crop_y"),
            $crop_w = $("input#logo_crop_w"),
            $crop_h = $("input#logo_crop_h");
    
        $crop_x.val('');
        $crop_y.val('');
        $crop_h.val('');
        $crop_w.val('');
    
        $crop_x.val(accounting.toFixed(data.x, 6));
        $crop_y.val(accounting.toFixed(data.y, 6));
        $crop_h.val(accounting.toFixed(data.height, 6));
        $crop_w.val(accounting.toFixed(data.width, 6));
    
        // $crop_x.val(Math.round(data.x));
        // $crop_y.val(Math.round(data.y));
        // $crop_h.val(Math.round(data.height));
        // $crop_w.val(Math.round(data.width));
    }
      
        var $crop_x = $("input#logo_crop_x"),
            $crop_y = $("input#logo_crop_y"),
            $crop_w = $("input#logo_crop_w"),
            $crop_h = $("input#logo_crop_h");
        $crop_x.val('');
        $crop_y.val('');
        $crop_h.val('');
        $crop_w.val('');
    
        var $image = $('#image');
        var $button = $('#button');
        var $result = $('#result');
        var croppable = false;
        var cropBoxData;
        var canvasData;
        var img = new Image();
        var img_tag = $('#business_logo_image').parent().find("#preview_avatar").children("img");
        $('#upload-modal').on('shown.bs.modal', function () {
            $image.cropper({
                preview: '#preview',
                viewMode: 1,
                dragMode: 'move',
                aspectRatio: 16 / 9,
                autoCrop: true,
                autoCropArea: 0.65,
                restore: false,
                guides: false,
                highlight: false,
                cropBoxMovable: false,
                cropBoxResizable: false,
                scalable: false,
                zoomable: false,
                rotatable: false,
                getData: true,
                checkCrossOrigin: true,
                modal: true,
                center: true,
                // allowMove : true,
                // allowResize : true,
                // allowSelect : true,
                // minSelect : [0, 0],
                // outlineOpacity : 0.5,
                // overlayOpacity : 0.5,
                // selectionPosition : [0, 0],
                // selectionWidth : 0,
                // selectionHeight : 0,
                ready: function () {
                    $image.cropper('setCanvasData', canvasData);
                    $image.cropper('setCropBoxData', cropBoxData);
                },
    
                crop: function (event) {
                    crop_image_load(event)
                    console.log(event.x);
                    console.log(event.y);
                    console.log(event.width);
                    console.log(event.height);
                    console.log(event.rotate);
                    console.log(event.scaleX);
                    console.log(event.scaleY);
                }
            });
        }).on('hidden.bs.modal', function () {
            cropBoxData = $image.cropper('getCropBoxData');
            canvasData = $image.cropper('getCanvasData');
    
            img.src = img_tag;
          
            // cropImage();
            $image.cropper('destroy');
        });
    
        $button.on('click', function () {
    
            var croppedCanvas;
            var roundedCanvas;
    
            if (!croppable) {
                return;
            }
    
            // Crop
            croppedCanvas = $image.cropper('getCroppedCanvas');
    
            // Round
            roundedCanvas = getRoundedCanvas(croppedCanvas);
            //console.log('<img src="' + roundedCanvas.toDataURL() + '">')
            // Show
            $result.html('<img src="' + roundedCanvas.toDataURL() + '">');
        });
    
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
    
                reader.onload = function (e) {
                    $('#image').attr('src', e.target.result);
                }
    
                reader.readAsDataURL(input.files[0]);
            }
        }
    
        $("#business_logo_image").change(function () {
    
           // console.log(this)
            $('#upload-modal').modal('show');
            readURL(this);
    
            var canvas  = $("#canvas"),
                context = canvas.get(0).getContext("2d"),
                $result = $('#result');
    
            if (this.files && this.files[0]) {
                if ( this.files[0].type.match(/^image\//) ) {
                    var reader = new FileReader();
                    reader.onload = function(evt) {
                        var img = new Image();
                        img.onload = function() {
    
                            context.canvas.height = img.height;
                            context.canvas.width  = img.width;
                            context.drawImage(img, 0, 0);
    
                            var cropper = canvas.cropper({
                                aspectRatio: 16 / 9
                            });
    
                            $('#btnCrop').click(function() {
                                console.log(evt)
                                crop_image_load(evt)
                                // Get a string base 64 data url
                                var croppedImageDataURL = canvas.cropper('getCroppedCanvas').toDataURL("image/png");
                                $result.append( $('<img>').attr('src', croppedImageDataURL) );
                            });
    
                            $('#btnRestore').click(function() {
                                canvas.cropper('reset');
                                $result.empty();
                            });
                        };
                        img.src = evt.target.result;
                    };
                    reader.readAsDataURL(this.files[0]);
                }
                else {
                    alert("Invalid file type! Please select an image file.");
                }
            }
            else {
                alert('No file(s) selected.');
            }
        });
    
        var canvas  = $("#canvas"),
            context = canvas.get(0).getContext("2d"),
            $result = $('#result');
    
        $('#fileInput').on( 'change', function(){
            if (this.files && this.files[0]) {
                if ( this.files[0].type.match(/^image\//) ) {
                    var reader = new FileReader();
                    reader.onload = function(evt) {
                        var img = new Image();
                        img.onload = function() {
                            context.canvas.height = img.height;
                            context.canvas.width  = img.width;
                            context.drawImage(img, 0, 0);
                            var cropper = canvas.cropper({
                                aspectRatio: 16 / 9
                            });
                            $('#btnCrop').click(function() {
                          
                                // Get a string base 64 data url
                                var croppedImageDataURL = canvas.cropper('getCroppedCanvas').toDataURL("image/png");
                                $result.append( $('<img>').attr('src', croppedImageDataURL) );
                            });
                            $('#btnRestore').click(function() {
                                canvas.cropper('reset');
                                $result.empty();
                            });
                        };
                        img.src = evt.target.result;
                    };
                    reader.readAsDataURL(this.files[0]);
                }
                else {
                    alert("Invalid file type! Please select an image file.");
                }
            }
            else {
                alert('No file(s) selected.');
            }
        });
    
    });
    