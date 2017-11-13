def welcome
  puts "Hello welcome to the magic 8 ball"
  puts "Enter quit when you want to exit"
end

$answers = [
  "Thats not acceptable",
  "Ask again later",
  "My reply is No",
  "You should ba ashamed!",
  "You call that a question",
  "You should",
  "Thats awesome"
]

ARGV 


def check_arg
  command = ARGV.first
  ARGV.clear
  if command == "add_answers"
    
  add_answers
  end


end 


def random_answer
  $answers.sample(1)
end

def add_answers
  puts "Please add your own answer!"
  
  $answers.push gets.strip
# add to the arry $answers
end

def reset_answers

  #reset the arry answers to original
end

def print_answers
  puts $answers
  #print the answers to screen
end 


def app
  check_arg
  puts "Enter your question?"
  question = gets.downcase.strip
  if question == "add_answers"
    add_answers
  elsif question == "print_answers"
    print_answers
  elsif  question == "quit"
    puts "Good bye!!!! Come Again!!!!"
    exit
  else 
  puts random_answer
  

  end
  
  app
end

welcome
app