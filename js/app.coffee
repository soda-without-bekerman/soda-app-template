$ ->

  wait = (time, fn) -> setTimeout fn, time



  # меню
  showMenu = -> $(".menu").animate "left": "0", 500, "ease"
  hideMenu = -> $(".menu").animate "left": "-85%", 500, "ease"

  toggleMenu = ->
    if 0 is $(".menu").offset().left
      hideMenu()
    else
      showMenu()


  TapEvent = if (`'ontouchstart' in window`) then "touchstart" else "mousedown"

  $(".menu .toggle-menu").on TapEvent, toggleMenu
 

  # настройки
  pageChangeTime = 500
  nextPageTimer = -1

  # размеры страниц при изменении размеров окна
  [w, h] = [-100, -100]
  doResize = ->
    [w, h] = [window.innerWidth, window.innerHeight]
    $(".pages-container").css
      position : "absolute"
      top      : "0"
      width    : "#{w}px"
      height   : "#{h}px"
      overflow : "hidden"

    top  = 0
    $("section.page").each (ind, page) ->
      $(page).css width: "#{w}px", height: "#{h}px", top: "#{top}px", position: "absolute"
      top += h

  $(window).on "resize", doResize
  doResize()

  applyEffect = (elem, effect="appear-from-top", time=pageChangeTime, easing="ease") ->
    switch effect
      when "appear-from-top"
        $(elem).css top: "-#{h}px", opacity:1
        $(elem).animate top: 0, time, easing

      when "appear-from-bottom"
        $(elem).css top: "#{h}px", opacity:1
        $(elem).animate top: 0, time, easing

      when "appear-from-transparency"
        $(elem).css top: 0, opacity: 0
        $(elem).animate opacity: 1, time, easing

      when "appear-from-top-and-transparency"
        $(elem).css top: "-#{h}px", opacity: 0
        $(elem).animate top: 0, opacity: 1, time, easing

      when "appear-from-bottom-and-transparency"
        $(elem).css top: "#{h}px", opacity: 0
        $(elem).animate top: 0, opacity: 1, time, easing

      when "disapear-to-top"
        $(elem).css top: 0
        $(elem).animate top: "#{-h}px", time, easing
  
      when "disapear-to-bottom"
        $(elem).css top: 0
        $(elem).animate top: "#{h}px", time, easing

      when "disapear-become-transparent"
        $(elem).css top: 0, opacity: 1
        $(elem).animate opacity: 0, time, easing


  # удалить все элементы анимации со страницы
  cleanPage = (page) ->
    $(page).addClass "active"

    $(page).find(".animation-element").each (_ind, elem) ->
      [inactiveC, activeC] = [$(elem).data("inactive-class"), $(elem).data("active-class")]
      $(elem).addClass(inactiveC).removeClass activeC
    steps = parseInt $(page).data "steps-total"
    if 1 < steps
      $(page).data "step-next", "1"
      $(page).data "step-prev", "0"

    clearTimeout nextPageTimer 
    nextPageTimer = wait 5000, -> $(".next-page").addClass "hidden"


  cleanPage $("section.page.active")

  

  # следующий слайд
  nextSlide = ->        
    # console.log "go next"
    page = $("section.page.active")
    next = $(page).next()
    ind = parseInt $(page).data "step-next"
    totalSteps = parseInt $(page).data "steps-total"
    if 0 < next.length and (1 is totalSteps) or (ind is totalSteps)

      applyEffect page, $(page).data("out-effect")
      applyEffect next, $(page).data("in-effect"), pageChangeTime/2
      $(page).removeClass "active"
      cleanPage next
      wait 1000, -> $(".next-page").removeClass "hidden"
    else
      # find next step
      elem = $(page).find ".animation-element[data-animation-step='#{ind}']"
      [inactiveC, activeC] = [$(elem).data("inactive-class"), $(elem).data("active-class")]
      ind++

      $(elem).removeClass(inactiveC).addClass activeC
      $(page).data "step-next", ind
      $(page).data "step-prev", ind-1

  # предыдущий слайд
  prevSlide = ->
    # console.log "go prev"
    page = $("section.page.active")
    prev = $(page).prev()
    if 0 < prev.length
      applyEffect page, $(page).data("out-effect")
      applyEffect prev, $(page).data("in-effect"), pageChangeTime/2
      $(page).removeClass "active"
      cleanPage prev
      wait 1000, -> $(".next-page").removeClass "hidden"
      

  $(".pages-container").on   "swipeUp",    nextSlide
  $(".next-page").on         "touchstart", nextSlide
  $(".pages-container").on   "swipeDown",  prevSlide

  $(".pages-container").on   "swipeLeft",  hideMenu
  $(".pages-container").on   "swipeRight", showMenu

  # прокрутка
  lastWheel = Date.now()
  $(".pages-container").on "mousewheel", (e) ->
    delta = e.deltaY or e.wheelDelta
    e.preventDefault()
    now = Date.now()
    if now - lastWheel > 1000
      lastWheel = now
      if delta < 0
        prevSlide()
      else
        nextSlide()


  # перейти к странице
  $(".menu li a").on TapEvent, (e) ->
    name = $(e.currentTarget).data "name"
    active =  $("section.page.active")
    next = $ "section.page[data-name='#{name}']"
    return if name is $(active).data "name"
    applyEffect active, $(active).data("out-effect")
    $(active).removeClass "active"
    applyEffect next, $(next).data("in-effect"), pageChangeTime/2
    cleanPage next
    toggleMenu()
    # console.log "select #{name}"


