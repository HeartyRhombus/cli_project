class CLI

    def main_menu

        API.get_films

        input = ''

        puts ""
        puts "----------------------------------"
        puts "Welcome to the Ghibli Movie Library"
        puts "----------------------------------"
        puts ""
        puts ""
        puts "To view a listing of Ghibli movies please enter 'titles'."
        puts ""

        while input != "exit"

            input = gets.strip.downcase

            case input
                when "titles"
                    # binding.pry
                    titles
                    prompt

                    input2 = gets.strip.to_i

                    film_info(input2)

                #     case input2
                #         when input2 > 0 && input2 <= Film.all.length
                #             #display film info for movie selected
                #         when "exit"
                #             #leave the program
                #         end
                # when !"titles" && !"exit"
                #     puts "I'm sorry, I didn't understand your request. Please try again."
                end
            end
        
        # puts "To view a title's description, enter 'description'."
        # puts "To view a title's director, enter 'director'."
        # puts "To view a title's release date, enter 'date'."
        # puts "To exit, enter 'exit'."

    end

    def prompt
        puts ""
        puts "To view more information about a film, enter the number of the film you wish to see,"
        puts "Or enter 'exit' to exit:"
    end

    def titles
        Film.all.sort_by {|film| film.title}.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

    def film_info(input2)
        if input2 > 0 && input2 < Film.all.length
            film_list = Film.all.sort_by {|film| film.title}
            film = film_list[input2-1]
            puts "Title: #{film.title}"
            puts "Director: #{film.director}"
            puts "Release Date: #{film.release_date}"
            puts "Description: #{film.description}"
        end

    end

end