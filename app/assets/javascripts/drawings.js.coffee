# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  myBoard = new DrawingBoard.Board('drawingBoard',
    controlsPosition: "bottom center"
    errorMessage: "I'm sorry, your browser doesn't support this tool"
  )
  myBoard.addControl('Download')
  return