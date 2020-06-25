class Card
  def initialize(card)
    @card = card
  end

  def question
    return @card[0]
  end

  def answer
    return @card[1]
  end

end

class Deck
  def initialize(trivia_data)
    @trivia_data = trivia_data
  end

  def draw_card
    card = Card.new(@trivia_data.shift)
    return card
  end

  def remaining_cards
    return @trivia_data.length
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end