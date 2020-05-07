//タスクプッシュ

$('.js-form').on('submit', function(e) {
  e.preventDefault();
  var todo = $('.js-form__text-field').val();
  $.ajax({
    type: 'POST',
    url: '/todos.json',
    data: {
      todo: {
        content: todo
      }
    },
    dataType: 'json'
  })
  .done(function(data) {
    var html = $('main__indicate__matter__content1').append(data.content);
    $('.todos').append(html);
    $('.js-form__text-field').val('');
  })
  .fail(function() {
    alert('error');
  });
});

//タスク完了

$('.js-form').on('submit', function(e) {
  e.preventDefault();
  var todo = $('.js-form__text-field').val();
  $.ajax({
    type: 'DELIETE',
    url: '/todos.json',
    data: {
      todo: {
        content: todo
      }
    },
    dataType: 'json'
  })
  .done(function(data) {
    var html = $('icon').append(data.content);
    $('.todos').append(html);
    $('.js-form__text-field').val('');
  })
  .fail(function() {
    alert('error');
  });
});
