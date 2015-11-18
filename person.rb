require 'date'

class Person
  attr_accessor :dob,:first_name,:surname
  attr_reader :emails
  def initialize(first_name,surname,dob)
    @dob = Date.parse(dob)
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @emails = Array.new
  end

  def fullname
    first_name + ' ' + surname
  end

  #add emails
  def add_email(email)
    emails.push(email)
  end
end
