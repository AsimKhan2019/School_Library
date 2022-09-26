require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(id,age, name = 'Unknown', parents_permission: true, specialization)
    super(id, name, age, parents_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
