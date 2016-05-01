$(document).ready(function(){
    $("button").click(function(){
        $("div").fadeIn();
        $("#green").fadeIn("slow");
        $("#blue").fadeIn(3000);
    });
});

$(document).ready(function(){
    $("button").click(function(){
        $("div").fadeOut();
        $("#green").fadeOut("slow");
        $("#blue").fadeOut(3000);
    });
});