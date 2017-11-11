def welcome
  puts "Hello welcome to the magic 8 ball"
end

$answers = [
  "Thats not acceptable",
  "Ask again later",
  "My reply is No"
]

def random_answer
  $answers.sample(1)
end

def app
  puts "Enter your question?"
  if gets.downcase.strip == "quit"
    exit
  end
  puts random_answer
  #tell user to enter ? or to quit
  # user inputs a question
  #program rndomly pics answer
  #print out answer
  #return to to user input or call
  # enter quit to exit
  app
end

welcome
app

=begin
Basic Objectives:

- User inputs question
- Computer outputs random answer
- User inputs "QUIT"
- Computer outputs a goodbye message and exits
Bonus Objectives:

- ability to add more answers:
- via easter egg question ("add_answers")
- do not let them add the same answer if the eight ball already has that answer
- ability to reset answers back to the original bank (hint: think arr.clone)
- via easter egg question ("reset_answers")
- ability to have eight ball print all answers
- via easter egg question ("print_answers")
-ability to use script arguments when the magic eight ball is started to do bonus functionality above
- for example ruby magic_eight.RB add_answers
this would start your script but instead of running the regular way you would be prompted to add answers first
=end
