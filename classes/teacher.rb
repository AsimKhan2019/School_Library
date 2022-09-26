class Teacher < Person
  attr_reader :specializtion

  def initialize(id,name = 'Unknown', age, parents_permission: true, specializtion)
    super(id, name, age, parents_permission)
    @specializtion = specializtion
  end

  def can_use_service?
    true
  end
end
