window.addEventListener('load', function(ev) {
    var theme = localStorage.getItem("flutter.THEME");
    if(theme == '"ThemeMode.dark"'){
        var myIndicator = document.getElementById("loading_indicator_img");
        myIndicator.setAttribute("src", "./assets/images/loading_animation_dark.gif");
        var myIndicatorContainer = document.getElementById("loading_indicator");
        myIndicatorContainer.style.background = "#1f1d2c";
    }
});