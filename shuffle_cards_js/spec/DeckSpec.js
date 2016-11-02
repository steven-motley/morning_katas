describe("Deck", function() {
	var deck;

	beforeEach(function() {
		deck = new Deck();
	});

	describe("#newDeck", function() {
		it("should create a deck with 52 cards", function() {
			expect(deck.newDeck().length).toBe(52);
		});
	});

	describe("#getRandomInclusive", function() {
		it("should return a random number between the argument range", function() {
			result = deck.getRandomIntInclusive(4, 6);
			expect(result).toBeGreaterThan(3);
			expect(result).not.toBeGreaterThan(6);
		});
	});

	describe("#shuffe", function() {
		it("should have swapped some cards after shuffle", function() {
			expect(deck.shuffle()).not.toBe(deck.newDeck());
		})

		it("should have the same number of cards after shuffle", function() {
			expect(deck.shuffle().length).toBe(52);
		})
	})
})