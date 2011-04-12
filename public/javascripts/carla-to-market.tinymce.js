(function($){
  $.widget('carla-to-market.customTiny', {
    options:{
      mode:'textarea',
      theme : "advanced",
      skin: 'default',
      height: 30,
      forced_root_block : null,
  //        language : "fr",
      plugins : "advlink, paste",
      theme_advanced_buttons1: "bold,italic,underline,|,undo,redo,|,link,unlink,|, pastetext, pasteword, removeformat",
      theme_advanced_buttons2: '',
      theme_advanced_buttons3: '',
      theme_advanced_buttons4: '',
      theme_advanced_toolbar_location: 'top',
      removeformat_selector: 'p,strong,b,em,i,span,ins,ul,li,div'

    },
    _create: function(){
      var $form = this.element.closest('.form')

//      this.element.outerWidth( $form.width() - this.element.closest('dl').children('dt').outerWidth(true),true);

      this.element.tinymce(this.options);

      this.element.closest('form').bind('submit.tinymce', function(e){
        tinyMCE.triggerSave();
      })
    },
    destroy: function(){
      this.element.closest('form').unbind('submit.tinymce');
      if (this.element.tinymce()){
        this.element.tinymce().destroy();
        this.element.tinymce().remove();
      }
      $.Widget.prototype.destroy.apply(this);
    }
  })
})(jQuery);
