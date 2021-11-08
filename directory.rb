def input_students
  puts "Please enter the name of the students"
  puts "To finish, just hit the return key twice."
  #create an empty array
  students = []
  # while the name is not empty, repeat the below code.
  name = gets.chomp
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
    
def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interactive_menu
  students = []
  loop do 
  # 1. print the menu and ask the user what to do 
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection 
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I'm not sure what you mean, try again"
    end
  end
end
interactive_menu


