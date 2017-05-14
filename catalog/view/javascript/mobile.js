$(document).ready(function () {
    if (window.matchMedia("(max-width: 1024px)").matches) {
        $('.top-menu-box').clone().appendTo('#category-mob-list');
        $('.desctop-only-header .top-phones-box').clone().appendTo('#top-links-mob-box');
    }
});

//category-list
function openNavcategory() {
    document.getElementById("category-mob-list").style.left = "0";
    document.getElementById("mobile-overlay").style.left = "0";
}
function closeNavcategory() {
    document.getElementById("category-mob-list").style.left = "-9999px";
    document.getElementById("mobile-overlay").style.left = "-9999px";
}


//settings-mob

function openNavsettings() {
    document.getElementById("top-links-mob-box").style.right = "0";
    document.getElementById("mobile-overlay").style.left = "0";
}
function closeNavsettings() {
    document.getElementById("top-links-mob-box").style.right = "-9999px";
    document.getElementById("mobile-overlay").style.left = "-9999px";
}

