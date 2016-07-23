# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
transformSearch1 = ->
  $('#jumbotron-phrase').slideUp()
  setTimeout (->
    $('#search').slideDown()
    return
  ), 850
  return

$(document).on "page:change", ->
  console.log 'Hiya!'
  $('#indexSearch').click ->
    transformSearch1()
    return
  $('#searchBox').keyup ->
    searchBox = $(this).val()
    $('#index-ul li').each ->
      console.log $(this).text()
      # If the list item does not contain the text phrase fade it out
      if $(this).text().search(new RegExp(searchBox, 'i')) < 0
        $(this).fadeOut()
        # Show the list item if the phrase matches
      else
        $(this).show()
      return
    return
  return
