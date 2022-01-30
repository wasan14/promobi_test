require 'rails_helper'

RSpec.describe Tutor, type: :model do
	describe "Validations" do
		it "is not valid with new only" do
    	expect(Tutor.new).to_not be_valid
  	end
  	it "is not valid with name only" do
  		expect(Tutor.new(name: "Rohit Wasan")).to_not be_valid
  	end
  	it "is not valid with experience only" do
  		expect(Tutor.new(experience: 4)).to_not be_valid
  	end
  	it "is not valid with experience and age" do
  		expect(Tutor.new(experience: 4, age: 26)).to_not be_valid
  	end
  	it "is not valid with name and age" do
  		expect(Tutor.new(name: "Rohit Wasan", age: 26)).to_not be_valid
  	end
  	it "is valid with name and experience" do
  		expect(Tutor.new(name: "Rohit Wasan", experience: 4)).to be_valid
  	end

	end
	describe "Associations" do
		it "belongs to course" do
	    assc = Tutor.reflect_on_association(:course)
	    expect(assc.macro).to eq :belongs_to
		end
	end
end