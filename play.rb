require 'pry'
require "./blackjack"

puts "Welcome to blackjack"
puts ""
puts "Please press enter to start"
  #gets.chomp


player1 = Hand.new
dealer  = Hand.new



# def draw_cards
#   print "Player 1's cards #{player1}"
#   print "Dealer cards #{dealer}"

#   print player.hand
# end

# def player_1s_cards
#   gets player1.hand.prompt
# end

#def hit
#   print "do you want to hit?"
#   print "yes or no?"
#   gets.chomp 
#   card_in_hand = []
#   cards.each do |card|
#     cards_in_hand.push(card)
#   end
# end

# def stand
#   print "do you stand?"
#   print "yes or no?"
#   get.chomp
# end


deck = Deck.new

2.times{dealer.add(deck.draw)}

puts "dealer #{dealer.to_s}"

2.times{player1.add(deck.draw)}
puts "player1 #{player1.to_s}"

until player1.busted? || player1.stand
puts "player1 do you want to hit or stand:"

h = gets.chomp 
  
  if h == "hit"
    player1.add(deck.draw)

    puts "player1 #{player1.to_s}"

  elsif h == "stand"
    player1.stand = true
    puts "player #{player1.to_s}"
    break
  end
end

 until dealer.value > 17
 dealer.add(deck.draw)
  puts "dealer #{dealer.to_s}"
end

player1_wins = false
dealer_wins = false

  if player1.value > dealer.value
    player1_wins = true
    puts "Player1 Wins!"

  elsif dealer.busted?
    puts "Dealer has busted!"
    player1_wins = true
    puts "Player1 Wins!"
    
  else
    #binding.pry
    puts "Dealer Wins!"
    dealer_wins = true

    
  end



  

#draw cards
#Player1 can see all of their cards and 1 card from the Dealer

#Once the cards have been drawn, prompt Player1 to hit or stand
#If Player1 hits, adds card to hand until total goes over 21/bust = lose

#Once Player1 stands, dealer hits until they have at least 17

#Player with the highest points wins