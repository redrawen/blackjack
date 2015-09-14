#require_relative 'blackjack'
class BlackJack
attr_accessor :deck_points, :points, :bank, :player_bank, :cards,:cards_num, :player_points, :player_bank, :dealer_points,:dealer_bank, :dealer_cards

@@deck_cards = 52
@@dealer_bank = 100
@@dealer_points = 0
@@cards_num = 0 

  def initialize (dealer_bank, deck_cards, dealer_points)
  @@dealer_bank = dealer_bank.to_i
  @@dealer_points = dealer_points.to_i
  @@cards = cards.to_i
  @deck_cards = deck_cards.to_i
  @@cards_num = cards_num.to_i
  @@ace_value = [1,11]
  @@ace_value = ace_value
  end
  
  def deck_points(points = {})

  @points = points
  @cards = [2,3,4,5,6,7,8,9,10,'jack','queen','king','ace']
  @deck_points = [2,3,4,5,6,7,8,9,10,10,10,10,11]
  cards.each_with_index {|value,index| points[value] = @deck_points[index]}
  puts "Карты в колоде #{points}"
  end

  def draw_cards
  @@deck_cards -= @@cards_num
  puts "В колоде #{@@deck_cards} карт"
 end 

end

class Player < BlackJack
  
  def initialize (name, player_bank, player_points)
  @@player_bank = player_bank.to_i
  @@player_points = player_points.to_i
  @name = name
  @@cards_num += 2   
  puts "ИГРОК #{name} очки:(#{player_points}) баланс: #{player_bank} $$$"
  puts "!! СПАСИБО !!! ИГРА НАЧАЛАСЬ"
  puts ""
  puts "Возьмите 2 карты из колоды!!!"
  puts ""
  end

   def stats
  puts "у Игрока #{@name} - $#{@@player_bank} | #{@@player_points} очков"
  puts "у Дилера - $#{@@dealer_bank} | #{@@dealer_points} очков"
 end
end

class Dealer < BlackJack
  
  def initialize
  puts "Вы взяли 2 карты из колоды : туз и девятка бубей"
  end

end

puts "Введите ваше имя для начала игры"
player1 = Player.new(gets.chomp,100,0)
dealer1 = Dealer.new
dealer1.draw_cards
player1.deck_points
player1.stats

