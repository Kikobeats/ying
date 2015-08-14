'use strict'

$ ->
  el = document.body
  isOpen = location.hash is '#open'

  _animate = ->
    setTimeout(->
      $('.cover').addClass 'animated'
    , 1000)

  _expand = (options = {})->
    method = if options.toggle is 'hide' then 'addClass' else 'toggleClass'
    $('.cover')[method] 'expanded'
    $('.link-item')[method] 'expanded'
    # // manage scroll visibility
    $('.main').css 'overflow' if $('.cover').hasClass 'expanded' then 'hidden' else 'auto'
    Uno.search.form options.form if options.form?

  $('#blog-button, #avatar-link').click ->
    return $('#menu-button').trigger('click') unless Uno.is 'device', 'desktop'
    _expand(hide: 'toggle', form: 'toggle')

  $("#menu-button").click ->
    $('.cover').toggleClass 'expanded'
    $('.main').toggleClass 'expanded'
    $('#menu-button').toggleClass 'expanded'

  if (Uno.is 'device', 'desktop') and (Uno.is 'page', 'home')
    _animate()
    _expand(aside: 'hide', form: 'hide') if !isOpen
