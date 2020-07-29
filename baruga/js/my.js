$(document).ready(function() {

    if ($('div.header-message').length > 0) {

        $("div.header-message").removeClass( "gone" );
    }

    $(document).on("click", "span.navigation-toggle-outer", function() {

        openNav();

        return false;
    });

    $(document).on("click", "button.close-message-button", function() {

        $("div.header-message").addClass("gone");

        return false;
    });

    $(document).on("click", "button.close-privacy-message", function() {

        $("div.header-message").remove();

        $.cookie("privacy", "close", { expires : 7, path: '/' });

        return false;
    });

    $("#item-image-upload").fileupload({
        formData: {accountId: account.id, accessToken: account.accessToken},
        name: 'image',
        url: "/api/" + options.api_version + "/method/items.uploadImg",
        dropZone:  '',
        dataType: 'json',
        singleFileUploads: true,
        multiple: false,
        maxNumberOfFiles: 1,
        // maxFileSize: constants.MAX_FILE_SIZE,
        // acceptFileTypes: "", // or regex: /(jpeg)|(jpg)|(png)$/i
        "files":null,
        minFileSize: null,
        messages: {
            "maxNumberOfFiles":"Maximum number of files exceeded",
            "acceptFileTypes":"File type not allowed",
            "maxFileSize": "File is too big",
            "minFileSize": "File is too small"},
        process: true,
        start: function (e, data) {

            console.log("start");

            $('div.item-actions').addClass("hidden");
            $('div.item-image-progress').removeClass("hidden");

            $("#item-image-upload").trigger('start');
        },
        processfail: function(e, data) {

            console.log("processfail");
            console.log(data.files[0].error);
            if (data.files.error) {

                $infobox.find('#info-box-message').text(data.files[0].error);
                $infobox.modal('show');
            }
        },
        progressall: function (e, data) {

            console.log("progressall");

            var progress = parseInt(data.loaded / data.total * 100, 10);

            $('div.item-image-progress').find('.progress-bar').attr('aria-valuenow', progress).css('width', progress + '%').text(progress + '%');
        },
        done: function (e, data) {

            console.log("done");
            console.log(data.jqXHR.responseText);
            var result = jQuery.parseJSON(data.jqXHR.responseText);

            if (result.hasOwnProperty('error')) {

                if (result.error === false) {

                    if (result.hasOwnProperty('imgUrl')) {
                        var typex = result.imgUrl.split(".");
                        if(typex[2] == "ogg" || typex[2] == "mp4" || typex[2] == "webm"){
                            var typeaja = "";
                            if(typex[2] == "ogg"){
                                typeaja = "ogg";
                            }else if(typex[2] == "mp4"){
                                typeaja = "mp4";
                            }else{
                                typeaja = "webm";
                            }
                            Profile.addPostVideo(result.imgUrl,typeaja);
                        }else{
                            Profile.addPostImg(result.imgUrl);
                        }

                        $("div.img_container").show();

                        $('div.item-actions').removeClass("hidden");
                        $('div.item-image-progress').addClass("hidden");

                        if ($("div.new-post-img-item").length >= options.post_max_images ) {

                            $('div.item-add-image').addClass("hidden");
                        }
                    }

                } else {
                    console.log(result.error_description);
                    $infobox.find('#info-box-message').text(result.error_description);
                    $infobox.modal('show');
                }
            }

            $("#item-image-upload").trigger('done');
        },
        fail: function (e, data) {

            console.log(data.errorThrown);
        },
        always: function (e, data) {

            console.log("always");

            $('div.item-actions').removeClass("hidden");
            $('div.item-image-progress').addClass("hidden");

            if ($("div.new-post-img-item").length < options.post_max_images ) {

                $('div.item-add-image').removeClass("hidden");
            }

            $("#item-image-upload").trigger('always');
        }
    });

    $("#story-upload").fileupload({
        formData: {accountId: account.id, accessToken: account.accessToken},
        name: 'image',
        url: "/api/" + options.api_version + "/method/items.uploadImg",
        dropZone:  '',
        dataType: 'json',
        singleFileUploads: true,
        multiple: false,
        maxNumberOfFiles: 1,
        // maxFileSize: constants.MAX_FILE_SIZE,
        // acceptFileTypes: "", // or regex: /(jpeg)|(jpg)|(png)$/i
        "files":null,
        minFileSize: null,
        messages: {
            "maxNumberOfFiles":"Maximum number of files exceeded",
            "acceptFileTypes":"File type not allowed",
            "maxFileSize": "File is too big",
            "minFileSize": "File is too small"},
        process: true,
        start: function (e, data) {

            console.log("start");

            $('div.item-actions').addClass("hidden");
            $('div.item-image-progress').removeClass("hidden");

            $("#item-image-upload").trigger('start');
        },
        processfail: function(e, data) {

            console.log("processfail");
            console.log(data.files[0].error);
            if (data.files.error) {

                $infobox.find('#info-box-message').text(data.files[0].error);
                $infobox.modal('show');
            }
        },
        progressall: function (e, data) {

            console.log("progressall");

            var progress = parseInt(data.loaded / data.total * 100, 10);

            $('div.item-image-progress').find('.progress-bar').attr('aria-valuenow', progress).css('width', progress + '%').text(progress + '%');
        },
        done: function (e, data) {

            console.log("done");
            console.log(data.jqXHR.responseText);
            var result = jQuery.parseJSON(data.jqXHR.responseText);

            if (result.hasOwnProperty('error')) {

                if (result.error === false) {

                    if (result.hasOwnProperty('imgUrl')) {
                        var typex = result.imgUrl.split(".");
                        if(typex[2] == "ogg" || typex[2] == "mp4" || typex[2] == "webm"){
                            var typeaja = "";
                            if(typex[2] == "ogg"){
                                typeaja = "ogg";
                            }else if(typex[2] == "mp4"){
                                typeaja = "mp4";
                            }else{
                                typeaja = "webm";
                            }
                            Profile.addPostVideo(result.imgUrl,typeaja);
                        }else{
                            Profile.addPostImg(result.imgUrl);
                        }

                        $("div.img_container").show();

                        $('div.item-actions').removeClass("hidden");
                        $('div.item-image-progress').addClass("hidden");

                        if ($("div.new-post-img-item").length >= options.post_max_images ) {

                            $('div.item-add-image').addClass("hidden");
                        }
                    }

                } else {
                    console.log(result.error_description);
                    $infobox.find('#info-box-message').text(result.error_description);
                    $infobox.modal('show');
                }
            }

            $("#item-image-upload").trigger('done');
        },
        fail: function (e, data) {

            console.log(data.errorThrown);
        },
        always: function (e, data) {

            console.log("always");

            $('div.item-actions').removeClass("hidden");
            $('div.item-image-progress').addClass("hidden");

            if ($("div.new-post-img-item").length < options.post_max_images ) {

                $('div.item-add-image').removeClass("hidden");
            }

            $("#item-image-upload").trigger('always');
        }
    });

    $("#market-item-image-upload").fileupload({
        formData: {accountId: account.id, accessToken: account.accessToken},
        name: 'image',
        url: "/api/" + options.api_version + "/method/market.uploadImg",
        dropZone:  '',
        dataType: 'json',
        singleFileUploads: true,
        multiple: false,
        maxNumberOfFiles: 1,
        maxFileSize: constants.MAX_FILE_SIZE,
        acceptFileTypes: "", // or regex: /(jpeg)|(jpg)|(png)$/i
        "files":null,
        minFileSize: null,
        messages: {
            "maxNumberOfFiles":"Maximum number of files exceeded",
            "acceptFileTypes":"File type not allowed",
            "maxFileSize": "File is too big",
            "minFileSize": "File is too small"},
        process: true,
        start: function (e, data) {

            console.log("start");

            $('div.market-upload-button-container').addClass("hidden");
            $('div.item-image-progress').removeClass("hidden");

            $("#market-item-image-upload").trigger('start');
        },
        processfail: function(e, data) {

            console.log("processfail");

            if (data.files.error) {

                $infobox.find('#info-box-message').text(data.files[0].error);
                $infobox.modal('show');
            }
        },
        progressall: function (e, data) {

            console.log("progressall");

            var progress = parseInt(data.loaded / data.total * 100, 10);

            $('div.item-image-progress').find('.progress-bar').attr('aria-valuenow', progress).css('width', progress + '%').text(progress + '%');
        },
        done: function (e, data) {

            console.log("done");

            var result = jQuery.parseJSON(data.jqXHR.responseText);

            if (result.hasOwnProperty('error')) {

                if (result.error === false) {

                    if (result.hasOwnProperty('imgUrl')) {

                        Market.addItemImg(result.imgUrl);

                        $("div.img_container").show();

                        $('div.item-actions').removeClass("hidden");
                        $('div.item-image-progress').addClass("hidden");

                        if ($("div.new-post-img-item").length >= options.post_max_images ) {

                            $('div.item-add-image').addClass("hidden");
                        }
                    }

                } else {

                    $infobox.find('#info-box-message').text(result.error_description);
                    $infobox.modal('show');
                }
            }

            $("#market-item-image-upload").trigger('done');
        },
        fail: function (e, data) {

            console.log(data.errorThrown);
        },
        always: function (e, data) {

            console.log("always");

            $('div.item-image-progress').addClass("hidden");

            if ($("div.new-post-img-item").length == 0) {

                $('div.market-upload-button-container').removeClass("hidden");

            } else {

                $('div.market-upload-button-container').addClass("hidden");
            }

            $("#market-item-image-upload").trigger('always');
        }
    });


    $("textarea[name=postText]").autosize();
    $("textarea#market-item-desc").autosize();

    $("textarea[name=postText]").bind('keyup mouseout', function() {

        var max_char = 1000;

        var count = $("textarea[name=postText]").val().length;

        $("span#word_counter").empty();
        $("span#word_counter").html(max_char - count);

        event.preventDefault();
    });

    $(document).on('click', '.emoji-item', function() {

        if (options.pageId === "chat") {

            $editor = $("input[name=message_text]");

        } else if (options.pageId === "post" || options.pageId === "image") {

            $editor = $("textarea[name=comment_text]");

        } else {

            $editor = $("textarea[name=postText]");
        }

        $editor.val($editor.val() + $(this).text());

        $editor.change();

        return false;
    });

    $(document).on('click', '.btn-emoji-picker', function(e) {

        toggleEmojiPicker();

        return false;
    });

    $('body').on('click', function (e) {

        var $target = $(e.target);

        if ($('div.popover-emoji').hasClass('show')) {

            if (!$target.hasClass("btn-emoji-picker") && !$target.hasClass("popover-body") && !$target.hasClass('emoji-items') && !$target.hasClass('emoji-item')) {

                hideEmojiPicker();

                e.stopPropagation();
            }
        }
    });

    function showEmojiPicker() {

        var $picker = $('div.popover-emoji');

        if (options.pageId === "chat" || options.pageId === "post" || options.pageId === "image") {

            $picker.css('right', $('.input-container-action-bar').outerWidth() - 42).css("top", $('.popover-emoji').outerHeight() - 220);

        } else {

            $picker.css('right', $('.btn-emoji-picker').outerWidth() - 25).css("top", $('.popover-emoji').outerHeight() - 165);
        }

        $picker.addClass('show');
        $picker.removeClass('hidden');
    }

    function hideEmojiPicker() {

        var $picker = $('div.popover-emoji');

        $picker.removeClass('show');
        $picker.addClass('hidden');
    }

    function toggleEmojiPicker() {

        var $picker = $('div.popover-emoji');

        if ($picker.hasClass('show')) {

            hideEmojiPicker();

        } else {

            showEmojiPicker();
        }
    }

});