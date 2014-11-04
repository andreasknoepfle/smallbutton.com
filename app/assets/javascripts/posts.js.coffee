$ ->

  $('pre code').each (i, block) ->
    hljs.highlightBlock(block)

  $timeline_block = $(".cd-timeline-block")

  #hide timeline blocks which are outside the viewport
  $timeline_block.each ->
    $(this).find(".cd-timeline-img, .cd-timeline-content").addClass "is-hidden"  if $(this).offset().top > $(window).scrollTop() + $(window).height() * 0.75



  #on scolling, show/animate timeline blocks when enter the viewport
  $(window).on "scroll", ->
    $timeline_block.each ->
      $(this).find(".cd-timeline-img, .cd-timeline-content").removeClass("is-hidden").addClass "bounce-in"  if $(this).offset().top <= $(window).scrollTop() + $(window).height() * 0.75 and $(this).find(".cd-timeline-img").hasClass("is-hidden")


  emailE='fairmondo.de'
  emailE=('andi' + '@' + emailE)
  $("#contact").replaceWith('<A href="mailto:' + emailE + '" class="list-group-item"> <i class="fa fa-envelope-o"></i> Contact me </a>')
