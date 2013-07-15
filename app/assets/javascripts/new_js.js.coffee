#  submitForm = (event) ->
#     event.preventDefault()
#     alert('heyooo')

# jQuery ->
#   $('.wrapper').on('submit', '#post_form', submitForm)

# function submitForm(event) {
#   event.preventDefault();
# }
# $(document).ready(function() {
#   $('.wrapper').on('submit', '#post_form', submitForm);
# });

onSuccess = (data) ->
  console.log(data)

submitForm = (event) ->
  event.preventDefault()
  url = $(this).attr('action')
  data = $(this).serialize()
  $.post(url, data, onSuccess, 'json')

$(document).ready ->
  $(".wrapper").on("submit", "#post_form", submitForm)
