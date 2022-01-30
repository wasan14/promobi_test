require 'rails_helper'

RSpec.describe Course, type: :model do
	describe "Validations" do
		it "is not valid with new only" do
    	expect(Course.new).to_not be_valid
  	end
  	it "is not valid with name only" do
  		expect(Course.new(name: "Ror course")).to_not be_valid
  	end
  	it "is not valid with description only" do
  		expect(Course.new(description: "Ror course with 3 hour content.")).to_not be_valid
  	end
  	it "is not valid with description and cost" do
  		expect(Course.new(description: "Ror course with 3 hour content.", cost: 20.0)).to_not be_valid
  	end
  	it "is not valid with name and cost" do
  		expect(Course.new(name: "Ror course", cost: 20.0)).to_not be_valid
  	end
  	it "is valid with name and description" do
  		expect(Course.new(name: "Ror course", description: "Ror course with 3 hour content.")).to be_valid
  	end

	end
	describe "Associations" do
		it "has many tutors" do
	    assc = Course.reflect_on_association(:tutors)
	    expect(assc.macro).to eq :has_many
		end
	end
end