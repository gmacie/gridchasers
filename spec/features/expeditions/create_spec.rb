require 'spec_helper'

describe "Creating expeditions" do
	it "redirects to the expeditions index page on success" do
		visit "/expeditions"
		click_link "New Expedition"
		expect(page).to have_content("New Expedition")
	
		fill_in "Grid", with: "EN41"
		fill_in "Call", with: "W1XYZ"

		click_button "Create expedition"

        # back on the index page check content to make sure
		expect(page).to have_content("Grid Expeditions")
	end

	it "displays an error when expedition has no grid" do
		expect(Expedition.count).to eq(0)

		visit "/expeditions"
		click_link "New Expedition"
		expect(page).to have_content("New Expedition")
	
		fill_in "Grid", with: "EN41"
		fill_in "Call", with: "W1XYZ"

		click_button "Create expedition"

        # back on the index page check content to make sure
		expect(page).to have_content("error")
		expect(Expedition.count).to eq(0)

		visit "/expeditions"
		expect(page).to_not have_content("EN41")

	end

end