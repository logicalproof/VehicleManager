# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".btn.toggle").click ->
    $("#service-history").toggle()
    $(".toggle").toggle()
    return
  today = new Date()
  dd = today.getDate()
  mm = today.getMonth() + 1 #January is 0!
  yyyy = today.getFullYear()
  dd = "0" + dd  if dd < 10
  mm = "0" + mm  if mm < 10
  today = mm + "/" + dd + "/" + yyyy
  return