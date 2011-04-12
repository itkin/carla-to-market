
$(function(){

  // Fait disparaitre la notice devise aprés 5 sec
  setTimeout(function(){
    $('#header #notice').fadeOut('slow');
  }, 5000);

  // Les tabs
  $('#tabs').tabs().outerHeight($(window).height()-$('#tabs').offset().top-5,true);


  // Gere le regroupement des entités
  $('a.toggle-entity-children').live('click', function(e){

    e.preventDefault();

    var $this = $(this),
        $tr = $this.closest('tr'),
        entityId = $this.attr('id').match(/\d+/)[0],
        $children = $tr.nextAll('tr#as_entities_'+ entityId + '_children-nested--row');

    $this.find('span').toggleClass('ui-icon-triangle-1-s');

    if ($children.length)
      $children.find('a.inline-adapter-close').trigger('click');
    else
      $tr.find('a[id^="as_entities"][id$="index--link"]').trigger('click');

  });

  $('textarea.comment-input').livequery(function(){
    $(this).customTiny({height: 200});
  });


})