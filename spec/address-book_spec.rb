require 'spec_helper'


describe "Address book class" do
  it "should store instances of person in a book array" do

    person1 = Person.new("joe","bloggs","1 Jan 1990")
    person2 = Person.new("andy","nother","2 Jan 1995")
    book = AddressBook.new
    book.add person1
    book.add person2
    expect(book.entries.class).to be Array

  end

  it "should print out to command line" do

    person1 = Person.new("joe","bloggs","1 Jan 1990")
    person2 = Person.new("andy","nother","2 Jan 1995") 
    book = AddressBook.new
    book.add person1
    book.add person2
    book.list
    expect(book.list).to eq "Address Book\n------------\nEntry 1: Joe Bloggs\nEntry 2: Andy Nother"
  end
  
  it "should read in a YAML file and put it into the address book" do
    
    file = YAML.load_file('phonebook_data.yml')
    book = AddressBook.new
    #file.each{ |person| entries.push(person) }
    expect(file.class).to be Hash

  end

end
