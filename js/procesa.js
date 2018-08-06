<script type="text/javascript">
  $(document).ready(function(){
    $("#cat").change(function(){
    $.ajax({
      url:"../procesa.php",
      type: "POST",
      data:"idcat="+$("#cat").val(),
      success: function(opciones){
        $("#subcat").html(opciones);
      }
    })
  });
});
</script>