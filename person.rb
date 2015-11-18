require 'date'

class Person
  attr_accessor :dob,:first_name,:surname
  attr_
  def initialize(first_name,surname,dob)
    @dob = Date.parse(dob)
    @first_name = first_name.capitalize
    @surname = surname.capitalize
  end

  def fullname
    first_name + ' ' + surname
  end
end
