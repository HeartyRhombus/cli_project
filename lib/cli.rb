class CLI

    def main_menu

        API.get_films

        input = ''

        puts ""
        puts "----------------------------------"
        puts "Welcome to the Ghibli Movie Library"
        puts "----------------------------------"
        puts ""
        
        while input != "exit"

            puts ""
            puts "To view a listing of Ghibli movies please enter 'titles'."
            puts ""

            input = gets.strip.downcase

    
                case input
                    when "titles"
                        # binding.pry
                        titles
                    else
                        nil
                end
            end
        
        # puts "To view a title's description, enter 'description'."
        # puts "To view a title's director, enter 'director'."
        # puts "To view a title's release date, enter 'date'."
        # puts "To exit, enter 'exit'."

    end


    def titles
        Film_Title.all.sort_by {|film| film.title}.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

end