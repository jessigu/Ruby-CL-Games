#magic 8 ball
def magic8
    answers = ["Yes", "No", "Ask your mom", "Go away", "Say a prayer", "Do the opposite", "I wish", "Keep dreaming", "My dog says yes", "What would Jesus do?"]

    puts "Ask a question for the Magic 8 Ball"
    question = gets.chomp

    random = 1 + rand(answers.length)
    puts answers[random]
end

#piglatin
def pig_latin()
    puts "Enter a word and I will translate it to Pig-Latin"
    word = gets.chomp.downcase

    if word.start_with?("a","e","i","o","u") == true
        puts "#{word}-way"

    elsif word.start_with?("a","e","i","o","u") == false
        word_index = word.index(/[aeiou]/)
        slice = word.slice(word_index - 1)
        slice_sub = word.slice(word_index, word.length)
        puts "#{slice_sub}#{slice}ay"
    end
end

#hi-lo
def random_generator()
    random = 1 + rand(100)
    puts random
    counter = 0
    puts "Guess the random number in 5 tries."
    until counter > 4 do
        puts "Enter a number between 1 and 100"
        guess = gets.chomp.to_i

        if guess > random
            puts "Too high"
            counter += 1
        elsif guess < random
            puts "Too low"
            counter += 1
        else
            puts "You win!"
            break;
        end
    end
    puts "Number was #{random}. Play again!"
end

#date
require 'date'

#puts "Please enter a numerical month"
month = gets.chomp.to_i
#puts "Please enter a numerical day of the month"
day = gets.chomp.to_i
#puts "Please enter a year"
year = gets.chomp.to_i

#puts Date.valid_date?(year,month,day)

#userid + password checker
def user_id_checker
    puts "Enter userID"
    user_id = gets.chomp
    if user_id.length < 6 || user_id.include?("!") == true || user_id.include?("#") == true || user_id.include?("$") == true || user_id.include?(" ") == true
        puts "Invalid userID"
        user_id_checker
    else
        puts "Valid userID"
        password_checker
    end
end

def password_checker
    puts "Enter password"
    password = gets.chomp
    if password.length > 5 && password.include?("password") == false
        if password.include?("!") == true || password.include?("#") == true || password.include?("$") == true || password.include?(" ") == true
        puts "Valid entry. Proceed."
        end
    else
        puts "Invalid password"
        password_checker
    end
end

#user_id_checker

#done again... new syllabus
puts "User ID:"
user_id = gets.chomp
puts "Password:"
password = gets.chomp

def same(user_id, password)
  if user_id == password
    puts true
  else
    puts false
  end
end

#same(user_id, password)

def long_enough(user_id)
  if user_idr.size >= 6
    puts true
  else
    puts false
  end
end

def long_enough(password)
  if password.size >= 6
    puts true
  else
    puts false
  end
end
# long_enough(user_id)
# long_enough(password) true is valid

def does_not_contain_special(user_id)
  if user_id.include?("!") || user_id.include?("#") || user_id.include?("$") || user_id.include?(" ")
    puts false
  else
    puts true
  end
end

# does_not_contain_special(user_id)
# does_not_contain_special(password)

def contains_special(password)
  if password.include?("!") || password.include?("#") || password.include?("$")
    puts true
  else
    puts false
  end
end
# contains_special(user_id)
# contains_special(passworad)

def pwd(password)
  if password.include?("password")
    puts true
  else
    puts false
  end
end

#NO
def validate_password(user_id, password)
  if (same(user_id, password) == false) && (long_enough(user_id) == true) && (long_enough(password) == true) && (does_not_contain_special(user_id) == true) && (contains_special(password) == true) && (pwd(password) == false)
    puts "Valid password. Proceed."
  else
    puts "Try again and follow the rules:)"
  end
end

#validate_password(user_id, password)

#&& (long_enough(user_id) == true) && (long_enough(password) == true) && (does_not_contain_special(user_id) == true) && (contains_special(password) == true) && (password.include?("password") == false)

puts "User ID:"
user_id = gets.chomp
puts "Password:"
password = gets.chomp
#NO
def contains_one(password)
  ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"].any? { |int| password.include? (int)
  puts true }
end

contains_one(password)
