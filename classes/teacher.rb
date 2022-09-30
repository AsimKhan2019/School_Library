require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, name = 'Unknown', specialization = 'Javascript')
    @specialization = specialization
    super(age, name)
  end

  def can_use_service?
    true
  end
end
