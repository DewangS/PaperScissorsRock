

# This is a classic Paper Rock Scissors game
# Author  : Dewang Shahu
# Date  : 25 Feb 2015
# Modifications :   Date    By        Comment
#                   27FEB   DShahu    Updated as per reviewer's comments.

#loop until user selects to quit the game
def display_message(message)
  puts message
end

CHOICES = ["P", "R", "S"]
OUTCOMES = {['P', 'R'] => "You picked Paper and computer picked Rock.\nPaper wraps Rock...you won!!",
            ['R', 'P'] => "You picked Rock and computer picked Paper\nPaper wraps Rock...Computer won",
            ['R', 'S'] => "You picked Rock and computer picked Scissors.\nRock smashes Scissors...You won!!",
            ['S', 'R'] => "You picked Scissors and computer picked Rock.\nRock smashes Scissors...computer won",
            ['S', 'P'] => "You picked Scissors and computer picked Paper\n Scissors cuts paper...You won!!",
            ['P', 'S'] => "You picked Paper and computer picked Scissors\nScissors cuts paper...Computer won",
            ['P', 'P'] => "You picked Paper and so did computer.. It's a tie",
            ['S', 'S'] => "You picked Scissors so did computer.. It's a tie",
            ['R', 'R'] => "You picked Rock so did computer... It's a tie"
          }

puts "Let's Play Paper Rock Scissors!"

another_round = 'Y'

while another_round =='Y'
  begin
    puts "Choose one (p/r/s)"
    player_choice = gets.chomp.upcase
    if !CHOICES.include?(player_choice)
        puts "*** Invalid choice... Please enter p/r/s and try again.. ***"
    end
  end until CHOICES.include?(player_choice)
  

  comupter_choice = CHOICES[rand(3)]

  choice_key = []

  choice_key << player_choice
  choice_key << comupter_choice

  display_message(OUTCOMES[choice_key])

  
  puts "Play again?(Y/N)"
  another_round = gets.chomp.upcase
    
end 
