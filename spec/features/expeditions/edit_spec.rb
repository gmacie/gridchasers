require 'spec_helper'

describe "Editing Expeditions" do
    it "updates a expedition successfully with correct information" do
        expedition = Expedition.create(call: "N4AAA", grid: "EM73")
        visit "/expeditions"
        # click edit but have to know which one

        within "#expedition_#{expedition.id}" do
          click_link "Edit"
        end

        fill_in "Grid", with: "EM99"
        fill_in "Call", with: "N4UPD"

        click_button "Update Expedition"

        expedition.reload
        
        expect(page).to have_content("Expedition was successfully updated")
        expect(expedition.grid).to eq("EM99")
        expect(expedition.call).to eq("N4UPD")

	end
end