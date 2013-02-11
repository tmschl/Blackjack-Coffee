describe "BlackjackView", ->
  table = null

  beforeEach ->
    table = new BlackjackView()

  describe "deck", ->
    it "should be an array", ->
      expect(table.deck).toEqual(jasmine.any(Array))

    it "should have 52 cards", ->
      expect(table.deck.length).toEqual(52)

    it "should generate random cards", ->
      deck1 = table.deck
      table.reset()
      deck2 = table.deck
      expect(deck1).not.toBe(deck2)

  describe "cardSetup", ->
    it "should be a function", ->
      expect(table.cardSetup).toEqual(jasmine.any(Function))
    it "should have a dealer & player array with 2 cards", ->
      expect(table.dealer.length).toBe(2)
      expect(table.player.length).toBe(2)      