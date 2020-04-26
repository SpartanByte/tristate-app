# credit to: https://www.udemy.com/course/testing-ruby-with-rspec
# describe method, argument is the Card class
# describe method is for a collection of one or more 'example's
# in RSpect, a test is also called an 'example'

###################

# describe method is for a collection of one or more 'example's
# in RSpect, a test is also called an 'example'
RSpect.describe 'Card' do
    # 'it' method is for creating a single example
    # 'specify' has a type do (will also do the same thing)
    it 'has a type' do
        card = Card.new('Ace of Spades')
        # expect card.type is equal to 'Ace of Spades'
        expect(card.type).to eq('Ace of Spades')
        # another example: expect (1 + 1).to eq(2)

    end
end

class Card
    attr_reader :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end

RSpect.describe 'math calculations' do
    it 'does basic math' do
        expect(1 + 1).to(eq(2))
        expect(1 * 1).to(eq(15))
    end
end

RSpect.describe 'math calculations' do
    it 'does basic math' do
        expect(1 + 1).to(eq(2))
        expect(1 * 1).to(eq(15))
    end
end

RSpect.describe 'Card' do
    it 'has a rank' Card do
        card = Card.new('Ace', 'Spades')
        expect(card.rank).to eq('Ace')
    end

    it 'has a suit' Card do
        card = Card.new('Ace', 'Spades')
        expect(card.suit).to eq('Spades')
    end
end


before(:example) do
        
end

## command to run:
rspec spec/card_spec.rb