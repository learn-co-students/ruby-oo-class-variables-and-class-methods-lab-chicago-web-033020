require "pry"
require_relative "song.rb"

# Creation of Song object instances:
puts "Creation of Song object instances:"

lose_yourself = Song.new("Lose Yourself", "Eminem", "rap")
rap_god = Song.new("Rap God", "Eminem", "rap")
shape_of_you = Song.new("Shape of You", "Ed Sheeran", "pop")
in_your_eyes = Song.new("In Your Eyes", "The Weeknd", "rnb")
bliding_lights = Song.new("Blinding Lights", "The Weeknd", "rnb")

binding.pry