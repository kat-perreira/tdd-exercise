# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack']

def blackjack_score(hand)
  facecards_converted = []
  aces_converted = []

  hand.each do |element|
    case element
    when "King", "Queen", "Jack"
      value = 10
      facecards_converted << value.to_i
    when 1, 2, 3, 4, 5, 6, 7, 8, 9
      facecards_converted << element.to_i
    end
  end

  hand_case = facecards_converted.sum


  return hand_case
end
