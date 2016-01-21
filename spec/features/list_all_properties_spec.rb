require 'rails_helper'

describe "Properties" do
	it "show all properties in the index page with latest added" do
		pro = Property.create(title: "Rotati Villa", description: "Good to stay", )
		visit properties_url
		expect(page).to have_text(pro.title)
	end
end