//= require jquery
//= require jquery.slick
//= require rails-ujs
//= require moment
//= require fullcalendar
//= require fullcalendar/locale-all
//= require_tree .

$('#calendar').fullCalendar({
  header: {
    left: 'prev,next ',
    center: 'title',
    right: 'today'
  },
   events: [
    {
      id     : 'ENEM',
      title  : 'ENEM',
      start  : '2019-11-03',
      end    : '2019-11-10',
    },    {
      id      : 'USP',
      title   : 'Inscrição USP',
      start   : '2019-09-20',
      allDay  : true,
    },    {
      id      : 'USP',
      title   : 'Vestibular USP',
      start   : '2019-11-24',
      allDay  : true,
    },    {
      id      : 'UNICAMP',
      title   : 'Inscrição UNICAMP',
      start   : '2019-09-09',
      allDay  : true,
    },    {
      id     : 'UNICAMP',
      title  : 'Vestibular UNICAMP',
      start  : '2019-11-19',
      allDay : false,
    },    {
      id      : 'UFPR',
      title   : 'Inscrição UFPR',
      start   : '2019-09-10',
      allDay  : true,
    },    {
      id      : 'UFPR',
      title   : 'Vestibular UFPR',
      start   : '2019-10-27',
      allDay  : true,
    },    {
      id      : 'UNESP',
      title   : 'Inscrição UNESP',
      start   : '2019-10-07',
      allDay  : true,
    },    {
      id      : 'UNESP',
      title   : 'Vestibular UNESP',
      start   : '2019-11-15',
      allDay  : true,
    },    {
      id      : 'UERJ',
      title   : 'Inscrição UERJ',
      start   : '2019-08-12',
      allDay  : true,
    },    {
      id      : 'UERJ',
      title   : 'Vestibular UERJ',
      start   : '2019-09-15',
      allDay  : true,
    },    {
      id      : 'PUCRS',
      title   : 'Inscrição PUCRS',
      start   : '2019-10-16',
      allDay  : true,
    },    {
      id      : 'PUCRS',
      title   : 'Vestibular PUCRS',
      start   : '2019-10-27',
      allDay  : true,
    },    {
      id      : 'UEL',
      title   : 'Inscrição UEL',
      start   : '2019-09-06',
      allDay  : true,
    },    {
      id      : 'UEL',
      title   : 'Vestibular UEL',
      start   : '2019-10-20',
      allDay  : true,
    },    {
      id      : 'PUCPR',
      title   : 'Inscrição PUCPR',
      start   : '2019-09-18',
      allDay  : true,
    },    {
      id      : 'PUCPR',
      title   : 'Vestibular PUCPR',
      start   : '2019-10-19',
      allDay  : true,
    },    {
      id      : 'MACKENZIE',
      title   : 'Inscrição MACKENZIE',
      start   : '2019-10-16',
      allDay  : true,
    },    {
      id      : 'MACKENZIE',
      title   : 'Vestibular MACKENZIE',
      start   : '2019-10-26',
      allDay  : true,
    },    {
      id      : 'UCB',
      title   : 'Inscrição UCB',
      start   : '2019-06-09',
      allDay  : true,
    },    {
      id      : 'UCB',
      title   : 'Vestibular UCB',
      start   : '2019-06-16',
      allDay  : true,
    },    {
      id      : 'UFMS',
      title   : 'Inscrição UFMS',
      start   : '2019-11-17',
      allDay  : true,
    },    {
      id      : 'UFMS',
      title   : 'Vestibular UFMS',
      start   : '2019-12-01',
      allDay  : true,
    },    {
      id      : 'PUC-RIO',
      title   : 'Inscrição PUC-RIO',
      start   : '2019-09-23',
      allDay  : true,
    },    {
      id      : 'PUC-RIO',
      title   : 'Vestibular PUC-RIO Day 1',
      start   : '2019-10-13',
      allDay  : true,
    },    {
      id      : 'PUC-RIO',
      title   : 'Vestibular PUC-RIO Day 2',
      start   : '2019-10-20',
      allDay  : true,
    },    {
      id      : 'UNIFESP',
      title   : 'Inscrição UNIFESP',
      start   : '2019-10-25',
      allDay  : true,
    },    {
      id      : 'UNIFESP',
      title   : 'Vestibular UNIFESP',
      start   : '2019-12-12',
      end     : '2019-12-13',
      allDay  : true,
    },    {
      id      : 'UEM',
      title   : 'Inscrição UEM',
      start   : '2019-09-18',
      allDay  : true,
    },    {
      id      : 'UEM',
      title   : 'Vestibular UEM',
      start   : '2019-12-08',
      end     : '2019-12-09',
      allDay  : true,
    },    {
      id      : 'UEPG',
      title   : 'Inscrição UEPG',
      start   : '2019-10-15',
      allDay  : true,
    },    {
      id      : 'UEPG',
      title   : 'Vestibular UEPG',
      start   : '2019-12-01',
      end     : '2019-12-02',
      allDay  : true,
    },    {
      id      : 'UFRGS',
      title   : 'Inscrição UFRGS',
      start   : '2019-09-16',
    },    {
      id      : 'UFRGS',
      title   : 'Vestibular UFRGS Day 1',
      start   : '2019-11-23',
      end     : '2019-11-24',
      allDay  : true,
    },    {
      id      : 'UFRGS',
      title   : 'Vestibular UFRGS Day 2',
      start   : '2019-11-30',
      end     : '2019-12-01',
      allDay  : true,
    },
  ],
  locale: 'pt-br'
});
