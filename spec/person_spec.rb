require 'spec_helper'

describe "Person class - entries in addressbook" do
  it "should store and return personal information" do
    person = Person.new("joe","bloggs","1 Jan 1990")

    expect(person.dob.class).to be Date
    expect(person.dob.to_s).to eq "1990-01-01"
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  
  end 

  it "should store and return email addresses" do
   
    person = Person.new("joe","bloggs","1 Jan 1990")

    person.emails
    expect(person.dob.class).to be Array
    expect(person.email.to_s).to eq []

    person.add_email "joo@foo.com"
    person.add_email "joe.bloggs@work.com"
    expect(person.email.to_s).to eq ["joe@foo.com", "joe.bloggs@word.com"]
  
  end

  it "should store and return phone numbers" do
    
    person = Person.new("joe","bloggs","1 Jan 1990")
    
    person.phone_numbers
    expect(person.dob.class).to be Array
    expect(person.phone_numbers).to eq []

    person.add_phone "07712345678"
    person.add_phone "02012345678"
    expect(person.phone_numbers).to eq ["07712345678", "02012345678"]
  end
end
