require './person'
require 'YAML'

class AddressBook

  attr_accessor :entries, :name_list
  def initialize
    @entries = Array.new
    @name_list = Array.new
  end

  def add(entry)
    entries.push(entry)
  end
  def list 
    puts "Address Book\n------------\n"
    entries.each.with_index(1) { |person, index| puts "Entry #{index}: " + person.fullname }
  end
  def yml
    file = YAML.load_file('./phonebook_data.yml')
    file["people"].each do |yml_person|
      person = Person.new(yml_person["fname"], 
                          yml_person["surname"], 
			  yml_person["dob"])
      entries.push(person)
      yml_person["emails"].each { |e| person.add_email(e) }
      yml_person["phone"].each { |p| person.add_phone(p) }
    end
  end
end
