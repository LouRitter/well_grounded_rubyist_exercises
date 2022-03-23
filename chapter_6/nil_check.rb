class Roster 
  attr_accessor :players

  def self.all 
    ObjectSpace.each_object(self).to_a

  end
  def players 
    @players ||= []
  end
end

class Player 
  attr_accessor :name, :position
  def initialize(name, position)
    @name = name
    @position = position
  end
end

moore = Player.new("Maya Moore", "Forward")
taurasi = Player.new("Diana Taurasi", "Guard")
roster1 = Roster.new
roster1.players = [moore, taurasi]

roster2 = Roster.new

Roster.all.each do |roster|
  ##nil check
  if roster.players&.first&.position == "Forward"
    puts "Forward #{roster.players.first.name} for #{roster.object_id}"
  end
  
end


Roster.all.each do |roster| 
  roster.players.each do |player|
    if player.position == "Forward"
      puts "Forward #{roster.players.first.name} for #{roster.object_id}"
    end
  end

  
end

