require './person'

class FamilyMember < Person
  
  attr_accessor :relationship

  def initialize(relationship, *args)
    @relationship = relationship.capitalize
	super(*args)
  end

end
