# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#user_type').on 'change', ->
    type = $(@).val().toLowerCase()
    toggleSpecificInfo(type)

toggleSpecificInfo = (activeType) ->
  if $('.active').length
    $('.active').fadeToggle 'fast', ->
      $('.active').removeClass 'active'
      $('.' + activeType).fadeIn 'fast'
      $('.' + activeType).addClass('active')
  else
    $('.' + activeType).fadeIn 'fast'
    $('.' + activeType).addClass('active')
