//= require rails-ujs
//= require_tree .
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all

$('#calendar').fullCalendar({
  header: {
    left: 'prev,next ',
    center: 'title',
    right: 'today'
  },
  locale: 'pt-br'
});
