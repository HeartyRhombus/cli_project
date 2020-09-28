class Film

    attr_accessor :title, :director, :description, :release_date

    @@all = []

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{key}="), value)}
        # @name = name
        # @director = director
        # @description = description
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_title(title)
        self.all.find {|film| film.title == title}
        # binding.pry
        # puts "#{film.title}"
        # puts "#{film.director}"
        # puts "#{film.release_date}"
        # puts "#{film.description}"
    end

end