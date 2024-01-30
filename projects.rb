require_relative 'new_idea'

class Projects
  attr_accessor :new_ideas

  def initialize
    @new_ideas = []
    puts "Welcome to the Projects App! 🧶🧵♡"
  end 

  def run
    loop do 
      puts "\n"
      puts 'Please Select a Number'
      puts '1. Add New Project'
      puts '2. View Current Projects'
      puts '3. View Example Projects'
      puts '4. Exit'
      puts "\n"

      option = gets.chomp.to_i

      case option
      when 1
        add_new_idea
      when 2
        list_projects
      when 3
        example_projects
      when 4
        puts "Thanks for checking out the Projects CLI App. See ya later!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  def add_new_idea
    print "Please enter your projects style (i.e. Cardigan, Socks, Scarf...): "
    style = gets.chomp
    print "Please enter the recommended hook size (i.e. 5mm, 3mm, 10mm...):"
    hook_size = gets.chomp
    print "Please enter which color yarn you will be using (i.e. Blue, Green, Pink...):"
    color = gets.chomp
    @new_ideas << New_Idea.new(style, hook_size, color)
    puts "New project successfully added!"
  end

  def list_projects
    puts "Current projects in rotation:"
    @new_ideas.each do |new_idea|
      puts new_idea
    end
  end

  def example_projects
    puts "\n"
    puts "\4Some examples projects to create:"
    puts "\tGreen Scarf using a 5mm hook size"
    puts "\tPurple Cardigan using a 8mm hook size"
    puts "\tYellow Socks using a 2mm hook size"
    puts "\tBlue Sweater using a 4.5mm hook size"
  end 
end
