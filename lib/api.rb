class API

    def self.get_films
        url="https://ghibliapi.herokuapp.com/films"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        films = JSON.parse(response)
        # binding.pry
        films.each do |film|
            Film_Title.new(title: film["title"], director: film["director"], release_date: film["release_date"], description: film["description"])
        end
    end

end