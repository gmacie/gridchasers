require 'spec_helper'

describe "Creating expeditions" do
	def create_expedition(options={})
		options[:Grid] ||= "EN91"
		options[:Call] ||= "N4AAA"

		visit "/"
		click_link "New Expedition"
		expect(page).to have_content("New expedition")
	
		fill_in "Grid", with: "EN41"
		fill_in "Call", with: "W1XYZ"

		click_button "Create Expedition"

	end


	it "redirects to the expeditions index page on success" do
		
		create_expedition
        
        # back on the index page check content to make sure
		expect(page).to have_content("Expedition was successfully created.")
	end

	it "displays an error when expedition has no grid" do
		expect(Expedition.count).to eq(0)

		visit "/expeditions"
		click_link "New Expedition"
		expect(page).to have_content("New expedition")
	
		fill_in "Grid", with: "EN4"
		fill_in "Call", with: "W1XYZ"

		click_button "Create Expedition"

        # back on the index page check content to make sure
		expect(page).to have_content("error")
		expect(Expedition.count).to eq(0)

		visit "/expeditions"
		expect(page).to_not have_content("EN41")

	end

end