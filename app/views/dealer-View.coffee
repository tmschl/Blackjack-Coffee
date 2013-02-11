class window.DealerView extends Backbone.View

  initialize: (playingDeck) ->

    @dealerHand = []

    @dealerHand.push(playingDeck.pop())
    @dealerHand.push(playingDeck.pop())

  
  render: ->

    @$el.append(' '  + @dealerHand[1].get('suit'))
    @$el.append(' ' + @dealerHand[1].get('value'))

    @e


    