# ***First character of a variable name must be a lowercase letter or an underscore***

player1Name = 'larry'
player2Name = 'curly'
player3Name = 'moe'

player1Health = 60
player2Health = 20
player3Health = 80


def say_hello(name, health)
  "I'm #{name} with a health of #{health}"
end

puts say_hello(player1Name.capitalize, player1Health)
puts say_hello(player2Name.capitalize, player2Health)
puts say_hello(player3Name.capitalize, player3Health)