

# This is a classic Paper Rock Scissors game
# Author  : Dewang Shahu
# Date  : 25 Feb 2015

#loop until user selects to quit the game
def display_message(message)
  puts message
end

computer_choices = ["P", "R", "S"]
outcomes = {['P', 'R'] => "You picked Paper and computer picked Rock.\nPaper wraps Rock...you won!!",
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

begin
  begin
    puts "Choose one (p/r/s)"
    player_choice = gets.chomp.upcase
    if /[PRS]/.match(player_choice) == nil
        puts "*** Invalid choice... Please enter p/r/s and try again.. ***"
    end
  end until /[PRS]/.match(player_choice) != nil
  

  comupter_choice = computer_choices[rand(3)]

  choice_key = []

  choice_key << player_choice
  choice_key << comupter_choice

  display_message(outcomes[choice_key])

  
  puts "Play again?(Y/N)"
  another_round = gets.chomp.upcase
    
end while another_round == 'Y'
