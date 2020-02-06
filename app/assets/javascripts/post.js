$(function() {
  $(document).on('click','#close', function() {
    $("#modal").remove();
    $("body").css("overflow", "visible");
    });
  $(document).on('click','.modal-dialog', function() {
    $("#modal").remove();
    $("body").css("overflow", "visible");
    return false;
    });
  $(document).on('click',".modal-content", function(e) {
    e.stopPropagation();
  });
});
