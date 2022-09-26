class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parents_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parents_permission = parents_permission
  end

  def of_age?(age)
    @age = age
    @age >= 18
  end

  private :of_age?

  def can_use_service?(age, parents_permission)
    @age = age
    @parents_permission = parents_permission
    @age >= 18 || @parents_permission == true
  end
end
