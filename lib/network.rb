require './lib/character'
require './lib/show'

class Network

  attr_reader :name,
              :shows

  def initialize(name)
    @name  = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    network_characters =
      @shows.map do |show|
        show.characters
      end

    flat_characters = network_characters.flatten

    flat_characters.find_all do |character|
     character.salary > 500000 && character.name == character.name.upcase
    end
  end

  def actors_by_show
    show_actors =
    shows.map do |show|
      show.actors
    end

    actors_by_show_hash = Hash[@shows.zip show_actors]
  end
end
