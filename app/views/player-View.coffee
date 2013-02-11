class window.PlayerView extends Backbone.View

  initialize: (playingDeck) ->

    @playerHand = []

    @playerHand.push(playingDeck.pop())
    @playerHand.push(playingDeck.pop())

      
  render: ->

    @$el.append(@playerHand[0].get('suit'))
    @$el.append(' ' + @playerHand[0].get('value'))

    @$el.append(' ' + @playerHand[1].get('suit'))
    @$el.append(' ' + @playerHand[1].get('value'))
    
    @el