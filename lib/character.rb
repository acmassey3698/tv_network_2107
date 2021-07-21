class Character

  attr_reader :name,
              :actor,
              :salary

  def initialize(attribute_hash)
    @name   = attribute_hash[:name]
    @actor  = attribute_hash[:actor]
    @salary = attribute_hash[:salary]
  end


end
