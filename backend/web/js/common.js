tinymce.init({ selector:'.tinymce' });

$(document).on('click', '.kv-file-remove', function(){
    $(this).parents('.file-preview-frame.file-preview-initial').stop().fadeOut('slow');
    if($(this).data('id')){
        var _this = $(this);
        $.ajax({
          method: "POST",
          url: '/admin/media/file-delete',
          data: { id: _this.data('id') }
        })
        .done(function( msg ) {
            
        });
    }
});
