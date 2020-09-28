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

end