require 'spec_helper'

describe "Deleting expeditions"  do
	let!(:expedition) { Expedition.create(grid: "EM73", call: "N4AAA") }

	it "is successful when clicking the destroy link" do
		visit "/"

		within "#expedition_#{expedition.id}" do
			click_link "Destroy"
		end
		expect(page).to_not have_content(expedition.grid)
		expect(Expedition.count).to eq(0)

	end
end