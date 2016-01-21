require 'rails_helper'

describe "A Property" do
	it "require a title" do
		property = Property.new(title: "")
		expect(property.valid?).to be false
		expect(property.errors[:title].any?).to be true
	end
end