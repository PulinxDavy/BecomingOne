<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 8/13/2015
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<form method="post" enctype="multipart/form-data" action="/upload">
  <input type="file" name="file" id="upload-image" style="display:none"/>
  <div class="input-group margin-bottom-20">
    <label for="photoCover">Afbeelding </label><br>
    <input type="text" id="photoCover" class="form-control">
    <a title="Zoeken" class="btn" onclick="$('input[id=upload-image]').click();"><i class="fa fa-search"></i></a>
  </div>
  <div class="input-group margin-bottom-20">
    <label for="upload-name">Naam </label>
    <input type="text" name="name" id="upload-name" class="form-control"/>
  </div>
  <div class="input-group margin-bottom-20">
    <button type="submit" class="btn-u">Toevoegen</button>
  </div>
</form>

<script type="text/javascript">
  $('input[id=upload-image]').change(function() {
    $('#photoCover').val($(this).val());
  });
</script>
