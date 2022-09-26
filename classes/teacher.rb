require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(id, age, specialization, name = 'Unknown', parents_permission: true)
    @specialization = specialization
    super(id, age, name, parents_permission)
    
  end

  def can_use_service?
    true
  end
end
