#require_relative 'blackjack'
class BlackJack
attr_accessor :points, :bank, :player_bank, :cards, :player_points, :dealer_points
@@deck_cards = 52
@@dealer_bank = 100
@@dealer_points = 0
@@cards = 0  

  def initialize (dealer_bank, deck_cards)
  @@dealer_bank = dealer_bank.to_i
  @@dealer_points = dealer_points.to_i
  @@cards = cards.to_i
  @@deck_cards = deck_cards.to_i
  @@cards = cards.to_i
  end
end

class Player < BlackJack
@@player_bank = 100
@@player_points = 0


  def initialize (name)
  @@player_bank = player_bank.to_i
  @name = name
  @@player_bank = player_bank.to_i
  @@player_points = player_points.to_i
  @@cards += 2 
  
  puts "ИГРОК #{name} (#{player_points} очков) баланс: #{player_bank} $$$"
  puts "!! СПАСИБО !!! ИГРА НАЧАЛАСЬ"
  puts "Возьмите 2 карты из колоды!!!"
  end
end

class Dealer < BlackJack
  
  def initialize
  puts "Вы взяли 2 карты из колоды : туз и девятка бубей"
  end

 def draw_cards
  @@deck_cards -= @@cards
  puts "В колоде #{deck_cards} карт"
 end 
   
end

puts "Введите ваше имя для начала игры"
player1 = Player.new(gets.chomp)
dealer1 = Dealer.new
dealer1.draw_cards
puts "у Игрока #{name} - $#{player_bank} | #{player_points} очков"
puts "у Дилера $#{dealer_bank} | #{dealer_points} очков"