# blackjack_score.rb
#require 'pry'


VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'King', 'Queen', 'Jack']

def blackjack_score(hand)
  facecards_converted = []
  aces_converted = []

  hand.each do |element|
    #set facecard values to 10
    case element
    when "King", "Queen", "Jack"
      value = 10
      facecards_converted << value.to_i
    when 1, 2, 3, 4, 5, 6, 7, 8, 9
      facecards_converted << element.to_i
    else
      raise ArgumentError, 'invalid card type '
    end
  end

  #take sum of the handcards, set ace to 1 or 11
  hand_case1 = facecards_converted.sum
  facecards_converted.each do | card |

    case card
    when 1
      if hand_case1.to_i < 11
        add_11 = 11
        aces_converted << add_11.to_i
      else
        add_1 = 1
        aces_converted << add_1.to_i
      end
    else
      aces_converted << card.to_i
    end

  end

  hand_score = aces_converted.sum
  if hand_score > 21
    raise ArgumentError, 'bust: scored over 21'
  end
  return hand_score
end

# hand = [3, 1, 'Queen', 'seven']
# test_hand = blackjack_score(hand)
# puts test_hand
