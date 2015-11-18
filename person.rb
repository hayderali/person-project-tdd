require 'date'

class Person
  attr_accessor :dob,:first_name,:surname
  attr_reader :emails, :phone_numbers
  def initialize(first_name,surname,dob)
    @dob = Date.parse(dob)
    @first_name = first_name.capitalize
    @surname = surname.capitalize
    @emails = Array.new
    @phone_numbers = Array.new
  end

  def fullname
    first_name + ' ' + surname
  end

  #add emails
  def add_email(email)
    emails.push(email)
  end

  #add phone
  def add_phone(number)
    phone_numbers.push(number)
  end

  #remove email
  def remove_email(index)
    emails.delete_at(index)
  end

  #to_s
  def to_s
    fullname + " was born on " + dob.to_s + ".\n Their email addresses are: " + emails.to_s + ".\n Their phone numbers are: " +    phone_numbers.to_s
  end
end
