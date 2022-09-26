require_relative 'person'

class Teacher < Person
  attr_reader :specializtion

  def initialize(id,name = "Unknown", parents_permission = true, age, specializtion)
    super(id, name, parents_permission, age)
    @specializtion = specializtion
  end

  def can_use_service?
    return true
  end
end