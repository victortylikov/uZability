$(document).ready(function() {
  var $window = $(window),
  $aside = $("#aside");

  $window.scroll(function() {
    if (!$aside.hasClass("fixedAsidePanel") && ($window.scrollTop() > $aside.offset().top)) {
        $aside.addClass("fixedAsidePanel").data("top", $aside.offset().top);
    }
    else if ($aside.hasClass("fixedAsidePanel") && ($window.scrollTop() < $aside.data("top"))) {
        $aside.removeClass("fixedAsidePanel");
    }
  }); 
});