require 'spec_helper'


describe "Address book class" do
  it "should store instances of person in a book array" do

    person1 = Person.new("joe","bloggs","1 Jan 1990")
    person2 = Person.new("andy","nother","2 Jan 1995")
    book = AddressBook.new
    book.add person1
    book.add person2
    expect(book.entries.class).to be Array

    #iterate over array and check they are all people
    #obj.map { |x,i|  x * i }
    expect( book.entries.each { |x| puts x.class } ).to be Person
  end

  it "should print out to command line" do

    person1 = Person.new("joe","bloggs","1 Jan 1990")
    person2 = Person.new("andy","nother","2 Jan 1995") 
    book = AddressBook.new
    book.add person1
    book.add person2
    book.list
    expect{ book.list }.to output("Address Book\n------------\nEntry 1: Joe Bloggs\nEntry 2: Andy Nother\n").to_stdout
  end
  
  it "should read in a YAML file and put it into the address book" do
    
    file = YAML.load_file('phonebook_data.yml')
    book = AddressBook.new
    expect(file.class).to be Hash
    book.yml
    book.list
    expect{ book.list }.to output("Address Book\n------------\nEntry 1: Joe Bloggs\nEntry 2: Andy Nother\n").to_stdout

  end

end
