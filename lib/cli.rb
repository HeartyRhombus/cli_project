class CLI

    def main_menu

        API.get_films

        puts ""
        puts "----------------------------------"
        puts "Welcome to the Ghibli Movie Library"
        puts "----------------------------------"
        puts ""
        puts ""
        puts "To view a listing of Ghibli movies please enter 'titles'."
        puts ""
        input = gets.strip.downcase
        # while input != "exit"
        #     if input == "titles"
        #         #puts listing of titles
        #     else
        #         nil
        #     end
        # end

        
        # puts "To view a title's description, enter 'description'."
        # puts "To view a title's director, enter 'director'."
        # puts "To view a title's release date, enter 'date'."
        # puts "To exit, enter 'exit'."

    end

end