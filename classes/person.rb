class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parents_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parents_permission = parents_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_service?
    of_age? || @parents_permission
  end
end
