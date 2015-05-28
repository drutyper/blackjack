require 'pry'
require "./blackjack"

puts "Welcome to blackjack"
puts ""
puts "Please press enter to start"
  gets.chomp


@Player1 = Hand.new
@Dealer  = Hand.new

puts "Player1's card" @Player1.deck

#draw cards
#Player1 can see all of their cards and 1 card from the Dealer

#Once the cards have been drawn, prompt Player1 to hit or stand
#If Player1 hits, adds card to hand until total goes over 21/bust = lose

#Once Player1 stands, dealer hits until they have at least 17

#Player with the highest points wins