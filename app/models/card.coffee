###
  You'll probably want to define some kind of Card model.

  If you need to define a collection of cards as well, you could also put that in 
  this file if you want to.
###
class window.Card extends Backbone.Model

  defaults:
    suit: null
    value: null

  initialize: ->
    @score()    

  score: ->
    # console.log @get('value')
    value = 0
    value = 10 if @get('value') is 'Jack' or @get('value') is 'Queen'
    console.log value;
    