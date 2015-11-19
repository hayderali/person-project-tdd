require 'spec_helper'


describe "Family Member class - inherits" do
  it "should inherit from Person class" do

    #check it inherits

    person = FamilyMember.new("mother","agnus","bloggs","2 Feburary 1968")
    expect(FamilyMember).to be < Person
	#expect(person.dob.class).to be Date
    expect(person.dob.to_s).to eq "1968-02-02"
    expect(person.first_name).to eq "Agnus"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Agnus Bloggs"

  end

  it "should contain an additional instance variable relationship" do

    #check it has the relationship variable

    person = FamilyMember.new("mother","agnus","bloggs","2 Feburary 1968")
    expect(person.relationship).to eq "Mother"
 
  end
end
