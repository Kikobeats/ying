'use strict'

$ ->

  el = document.body
  isOpen = location.hash is '#open'

  _animate = ->
    setTimeout(->
      $('.cover').addClass 'animated'
    , 1000)

  _expand = (options)->
    $('main, .cover, .link-item').toggleClass 'expanded'
    Uno.search.form options.form

  $('#blog-button, #avatar-link').click ->
    return $('#menu-button').trigger 'click' unless Uno.is 'device', 'desktop'
    _expand form: 'toggle'

  $("#menu-button").click (e)->
    if $(e.currentTarget).hasClass 'expanded'
      $('html,body').animate({scrollTop:0})
    $('nav.navigation.left').toggle 'slideUp'
    $('#menu-button').toggleClass 'expanded'

  # // Close menu on scroll down
  unless Uno.is 'device', 'desktop'
    old = $(document).scrollTop();
    $(document).on 'scroll', (e)->
      if !($("#menu-button").hasClass 'expanded') && (old < $(document).scrollTop())
        $('nav.navigation.left').hide 'slideUp'
        $("#menu-button").addClass 'expanded'

      old = $(document).scrollTop();

  if (Uno.is 'device', 'desktop') and (Uno.is 'page', 'home')
    _animate()
    _expand form: 'hide' if !isOpen
