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
        puts "To view a listing of Ghibli movies please enter 'films'."
        puts ""

        until input == "exit"

            input = gets.strip.downcase

            if input == "films"
                    puts ""
                    # binding.pry
                    titles
                    puts ""
                    puts "To view more information about a film, enter the number of the film you wish to see,"
                    puts "Or enter 'exit' to exit:"
                    puts ""

            elsif input.to_i > 0 && input.to_i <= Film.all.length
                film_info(input)
                prompt

            elsif input == "exit"
                puts ""
                puts "Thank you for using the Ghibli Movie Library!"
                puts ""
            else
                puts ""
                puts "I'm sorry, I didn't understand your request. Please try again."
                puts ""
            end
        end

    end

    def prompt
        puts ""
        puts "To view details for another film, please enter the film number you wish to see."
        puts "To view the film list again, enter 'films'"
        puts "Or enter 'exit' to exit:"
        puts ""
    end

    def titles
        Film.all.sort_by {|film| film.title}.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

    def film_info(input)
        film_list = Film.all.sort_by {|film| film.title}
        film = film_list[(input.to_i)-1]
        puts ""
        puts Rainbow("Title:").indigo.underline + " #{film.title}"
        puts Rainbow("Director:").indigo.underline + " #{film.director}"
        puts "Release Date: #{film.release_date}"
        puts "Description: #{film.description}"
    end

end