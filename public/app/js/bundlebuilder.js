$( document ).ready(function() {
    $(this).scrollTop(0);
    $('#category').parent().hide();
    $('.items').parent().hide();
   
   $.ajax({
    "url": " ajax/bundle/bundleMenu.php",
    type:'POST',
    beforeSend: function() {
        // setting a timeout
        $('#menu').html('<div style="margin-left:100px">loading...</div>');
        //document.location.href ="ajax/download.php";
    },
    success: function (xhr) {     

        $('#loading').html('');
        var _html = xhr;// document.location.href ="ajax/download.php";
        $('#menu').html(_html); 
       
    },
    error: function (jqXHR, textStatus, errorThrown) {
        console.log (textStatus);
        console.log (errorThrown);
        console.log (jqXHR);
    }
   
    }); 

    $("#menu").change(function () {
        $('#category').parent().fadeIn();
        $.ajax({
            "url": " ajax/bundle/bundleCategory.php",
            "type":'POST',
            "data":{menu:$('#menu').val()},
            beforeSend: function() {
                // setting a timeout
                $('#category').html('<div style="margin-left:100px">loading...</div>');
                //document.location.href ="ajax/download.php";
            },
            success: function (xhr) {              
                    
                $('#loading').html('');
                var _html = xhr;// document.location.href ="ajax/download.php";
                $('#category').html(_html); 
                /* if no category show items */
                if (xhr.indexOf("none") >= 0){
                    $('#category').val('none');
                    $('#category').trigger("change");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log (textStatus);
                console.log (errorThrown);
            }
           
       });
        
    });
    $('#category').change(function() {
        $('.items').parent().fadeIn();
        $.ajax({
            "url": " ajax/bundle/bundleItems.php",
            "type":'POST',
            "data":{category:$('#category').val()},
            beforeSend: function() {
                // setting a timeout
                $('#items').html('<div style="margin-left:100px">loading...</div>');
                //document.location.href ="ajax/download.php";
            },
            success: function (xhr) {
               
                $('#loading').html('');
                var _html = xhr;// document.location.href ="ajax/download.php";
                $('.items').html(_html); 
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log (textStatus);
                console.log (errorThrown);
            }
           
       });
        
    });
    $('#add_bundle').on('click', function(){
        $('#myModal').attr('data-dismiss','modal'); 
        $('#myModal').modal('hide');
    });
    $('#add_category').on('click', function(){
        $('#myModal').attr('data-dismiss','modal'); 
        $('#myModal').modal('hide');
    });
    $('#add_item').on('click', function(){
        $('#myModal').attr('data-dismiss','modal'); 
        $('#myModal').modal('hide');
    });
    $('#deleteModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('id') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('Delete Item Confirmation ' + recipient)
        modal.find('.modal-body input').val(recipient)
      });
      $('#delete_item').on('click', function(){
        alert('delete'+$('#itemId').val());
    });
    $('#updateModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('id') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('Delete Item Confirmation ' + recipient)
        modal.find('.modal-body input').val(recipient)
      });
      $('#update_item').on('click', function(){
        alert('update'+$('#itemId').val()+''+$('#itemprice').val());
    });
    
}); 