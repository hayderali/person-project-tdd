require './person'

class AddressBook

  attr_accessor :entries
  def initialize
    @entries = Array.new
  end

  def add(entry)
    entries.push(entry.fullname)
  end

  def list
    i=1
    "Address Book\n------------\nEntry #{i}: "+( entries * "\nEntry #{i.next}: ") 
  end

end
