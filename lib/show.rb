require './lib/character'

class Show

  attr_reader :name,
              :creator,
              :characters


  def initialize(name, creator, characters)
    @name       = name
    @creator    = creator
    @characters = characters
  end

  def total_salary
    salaries =
    @characters.map do |character|
      character.salary
    end
    salaries.sum do |salary|
      salary
    end
  end

  def max_salary
    salaries =
    @characters.map do |character|
      character.salary
    end
    highest_salary =
    salaries.max do |salary_1, salary_2|
      salary_1 <=> salary_2
    end
  end

  def highest_paid_actor
    highest_paid_character =
    @characters.find do |character|
      character.salary == max_salary
    end
    highest_paid_character.actor
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end
end
