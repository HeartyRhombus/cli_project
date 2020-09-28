class CLI

    def main_menu
        puts ""
        puts "----------------------------------"
        puts "Welcome to my Ghibli Movie Library"
        puts "----------------------------------"
        puts ""
        puts ""
        puts "To view a listing of Ghibli movies please select from the following options:"
        puts "To view movies by title, enter 'title'."
        puts "To view by director, enter 'director'."
        puts "To view by release date, enter 'date'."
        puts "To exit, enter 'exit'."
        puts ""
        input = gets.strip.downcase

    end

end