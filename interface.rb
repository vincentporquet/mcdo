require_relative "mcdo"
require_relative "mcdata"

puts "welcome at mcdonalds. Here you can buy :"

hash_mcdo.each_key {|key| puts key}

def ask_and_get(param)
  puts "which #{param}?"
  gets.chomp
end

sandwich = ask_and_get("sandwich")
drink = ask_and_get("drink")
side = ask_and_get("side")

nb_cal = total_calories(hash_mcdo, sandwich, drink, side)

puts "your order is #{sandwich}, #{drink}, #{side}"
puts "the number of calories is #{nb_cal} !"


