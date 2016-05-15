'use strict'

window.Uno = Uno =
  version: '2.7.8'
  app: do -> document.body
  is: (k, v=!'undefined') -> this.app.dataset[k] is v

  context: ->
    # get the context from the first class name of body
    # https://github.com/TryGhost/Ghost/wiki/Context-aware-Filters-and-Helpers
    className = document.body.className.split(' ')[0].split('-')[0]
    if className is '' then 'error' else className

  search:
    container: -> $('#results')
    form: (action) -> $('#search-container')[action]()

  loadingBar: (action) -> $('.pace')[action]()

  convertUTCDateToLocalDate: (date, timezone) ->
    convertDate = (date) ->
      date.setMinutes(newDate.getMinutes() - newDate.getTimezoneOffset())
      date
      
    if(timezone)
      newDate = new Date(date)
      if(timezone == newDate.getTimezoneOffset())
        newDate
      else
        convertDate(newDate)
    else
      newDate = new Date(date)
      convertDate(newDate)

  timeAgo: (selector) ->
    self = this;
    $(selector).each ->
      postDate = $(this).attr('datetime')
      postTimezone = parseInt($(this).data('timezone').replace(/0/g, "")); #get the timezone and strip 0s
      postTimezone = -postTimezone * 60; #flip the sign and convert to minutes

      monthNames = [
        "January", "February", "March",
        "April", "May", "June", "July",
        "August", "September", "October",
        "November", "December"
      ];

      localPostDate = self.convertUTCDateToLocalDate(postDate, postTimezone)

      postDateInDays = Math.floor((self.convertUTCDateToLocalDate(Date.now()) - localPostDate) / 86400000)



      if postDateInDays is 0 then postDateInDays = 'today'
      else if postDateInDays is 1 then postDateInDays = 'yesterday'
      else postDateInDays = "#{postDateInDays} days ago"


      localFormatted =
        day: localPostDate.getDate()
        month:localPostDate.getMonth()
        year: localPostDate.getFullYear()

      $(this).html(postDateInDays)
      $(this).mouseover -> $(this).html localFormatted.day + " " + monthNames[localFormatted.month] + " " + localFormatted.year
      $(this).mouseout -> $(this).html postDateInDays

  device: ->
    w = window.innerWidth
    h = window.innerHeight
    return 'mobile' if (w <= 480)
    return 'tablet' if (w <= 1024)
    'desktop'

Uno.app.dataset.page = Uno.context()
Uno.app.dataset.device = Uno.device()

# window global properties
$('#profile-title').text window.profile_title if window.profile_title
$('#profile-resume').text window.profile_resume if window.profile_resume
$('#posts-headline').text window.posts_headline if window.posts_headline
window.open_button = window.open_button or '.nav-posts > a'

