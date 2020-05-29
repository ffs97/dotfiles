events.on("app_initialized.NotebookApp", function () {
    console.log("custom.js: hiding header and toolbar");
    $("#header-container").hide();
    $(".header-bar").hide();
    $("div#maintoolbar").hide();
    events.trigger("resize-header.Page");
    $("div#menubar-container").hide();
});
