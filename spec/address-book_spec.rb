require 'spec_helper'


describe "Address book class" do
  it "should store instances of person in a book array" do

    person1 = Person.new("joe","bloggs","1 Jan 1990")
    person2 = Person.new("andy","nother","2 Jan 1995")
    book = AddressBook.new
    book.add person1
    book.add person2
    expect(book.entries.class).to be Array
    expect(book.entries).to eq ["Joe Bloggs","Andy Nother"]

  end

  it "print out to command line" do

    person1 = Person.new("joe","bloggs","1 Jan 1990")
    person2 = Person.new("andy","nother","2 Jan 1995") 
    book = AddressBook.new
    book.add person1
    book.add person2
    book.list
    expect(book.list).to eq "Address Book\n------------\nEntry 1: Joe Bloggs\nEntry 2: Andy Nother"
  end
end
