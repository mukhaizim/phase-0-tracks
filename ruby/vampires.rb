puts"how many emplyees will be processed?"
number_of_employees = gets.chomp
counter = 0 
until counter == number_of_employees.to_i
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?" 
    age = gets.chomp

    puts"What year were you born?"
    year_born = gets.chomp
    real_age = 2016 - year_born.to_i
    if age == real_age
        got_age_right = true
    else got_age_right = false 
    end

    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    garlic_input = gets.chomp
    if garlic_input == "yes"
        likes_garlic = true
    else likes_garlic = false
    end

    puts "Would you like to enroll in the company’s health insurance?"
    insurance_input = gets.chomp
    if insurance_input == "yes"
        needs_insurance = true
    else needs_insurance = false
    end
    valid_input = false
    until valid_input 
    puts "What are you allergic to?"
    allergy = gets.chomp
    if allergy == "sunshine" 
        puts "Probably a vampire"
        valid_input = true
    elsif allergy == "done"              
        if name == "Drake Cula" || name == "Tu Fang"
            puts "Definitely a vampire"
            elsif got_age_right && likes_garlic || needs_insurance
            puts "Probably not a vampire"
            elsif !got_age_right && !likes_garlic || !needs_insurance
            puts "Probably a vampire"
            elsif !got_age_right && !likes_garlic && !needs_insurance
            puts"Almost certainly a vampire"
        end
        valid_input = true
    end
    end
counter +=1
#Not sure if you want final messgae at the end or to be said to each emplyee I think we should tell them all and spread the love
#If it is wanted at the end then just move to efter the "end"
puts"Actually, never mind! What do these questions have to do with anything? Let's all be friends." 
end
