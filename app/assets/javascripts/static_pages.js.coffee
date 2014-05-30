# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#micropost_content').keyup ->
    postChars = 140 - $(this).val().length
    if postChars >= 0
      charText = if postChars is 0 then 'character' else 'characters'
      $('.char_count').text("#{postChars} #{charText} left.")
    else
      $('.char_count').text('Over the 140 character limit.')
    