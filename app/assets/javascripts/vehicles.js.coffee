# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".btn.toggle").click ->
    $("#service-history").toggle()
    $(".toggle").toggle()
    return
  $(".hoverable").hover (->
    $(this).find(".popup").show()
    return
  ), ->
    $(this).find(".popup").hide()
    return
  return