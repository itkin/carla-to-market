jQuery(function($){
  if (typeof($.datepicker) === 'object') {
    $.datepicker.regional['fr'] = {"prevText":"Pr\u00e9c\u00e9dent","closeText":"Fermer","monthNamesShort":["jan.","f\u00e9v.","mar.","avr.","mai","juin","juil.","ao\u00fbt","sept.","oct.","nov.","d\u00e9c."],"showMonthAfterYear":false,"nextText":"Suivant","changeMonth":true,"weekHeader":"Sm","firstDay":1,"changeYear":true,"isRTL":false,"dateFormat":"dd/mm/yy","dayNames":["dimanche","lundi","mardi","mercredi","jeudi","vendredi","samedi"],"dayNamesMin":["dim","lun","mar","mer","jeu","ven","sam"],"dayNamesShort":["dim","lun","mar","mer","jeu","ven","sam"],"currentText":"Aujourd'hui","monthNames":["janvier","f\u00e9vrier","mars","avril","mai","juin","juillet","ao\u00fbt","septembre","octobre","novembre","d\u00e9cembre"]};
    $.datepicker.setDefaults($.datepicker.regional['fr']);
  }
  if (typeof($.timepicker) === 'object') {
    $.timepicker.regional['fr'] = {"closeText":"Fermer","ampm":false,"secondText":"Seconde","minuteText":"Minute","dateFormat":"dd %B yy ","timeFormat":"hh:mm:ss","timeText":"Heure","currentText":"Maintenant","hourText":"Heure"};
    $.timepicker.setDefaults($.timepicker.regional['fr']);
  }
});
$(document).ready(function() {
  $('input.date_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
  $('input.datetime_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datetimepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datetimepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
});