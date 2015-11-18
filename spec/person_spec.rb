require 'spec_helper'

describe "Person class - personal detail entries in addressbook" do
  it "should store and return personal information" do
    person = Person.new("joe","bloggs","1 Jan 1990")

    expect(person.dob.class).to be Date
    expect(person.dob.to_s).to eq "1990-01-01"
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  
  end 

    it "should store and return email addresses as an array" do
   
    person = Person.new("joe","bloggs","1 Jan 1990")

    person.emails
    expect(person.emails.class).to be Array
    expect(person.emails).to eq []

    person.add_email "joe@foo.com"
    person.add_email "joe.bloggs@work.com"
    expect(person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]
  
  end

    it "should store and return phone numbers as an array" do
  
    person = Person.new("joe","bloggs","1 Jan 1990")
   
    person.phone_numbers
    expect(person.phone_numbers.class).to be Array
    expect(person.phone_numbers).to eq []

    person.add_phone "07712345678"
    person.add_phone "02012345678"
    expect(person.phone_numbers).to eq ["07712345678", "02012345678"]
  end

  it "should remove emails by index from the email array" do
    
    person = Person.new("joe","bloggs","1 Jan 1990")
   
    person.add_email "joe@foo.com"
    person.add_email "joe.bloggs@work.com"
    person.remove_email(0)
    
    expect(person.emails).to eq ["joe.bloggs@work.com"]
  end

  it "should print out details including date of birth addresses and numbers using the to_s method" do

    person = Person.new("joe","bloggs","1 Jan 1990")
    
    person.add_phone "07712345678"
    person.add_phone "02012345678"

    person.add_email "joe@foo.com"
    person.add_email "joe.bloggs@work.com"
    person.remove_email(1)
    
    person.to_s
    expect(person.to_s).to eq "Joe Bloggs was born on 1990-01-01.\n Their email addresses are: [\"joe@foo.com\"].\n Their phone numbers are: [\"07712345678\", \"02012345678\"]"
  end

  it "should have a print details method that prints out the details of the person in a specified format" do


    person = Person.new("joe","bloggs","1 Jan 1990")
    
    person.add_email "joe@foo.com"
    person.add_email "joe.bloggs@work.com"
    person.add_phone "02012345678"
 
    expect(person.print_details).to eq "Joe Bloggs\n----------\nDate of Birth: 01 January 1990\n\nEmail Addresses:\n- joe@foo.com\n- joe.bloggs@work.com\n\nPhone Numbers:\n- 02012345678"
  end

  it "FamilyMember class inherits from Person and has a relationship instance variable" do

    #check it inherits
    #check it has the relationship variable

  end
end
