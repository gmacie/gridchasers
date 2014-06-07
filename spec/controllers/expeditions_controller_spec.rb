require 'spec_helper'

describe ExpeditionsContrller do
	# This should return the minimal set of attributes required to create a valid
	# Expedition. As you add validations to Expedtions, be sure to
	# adjust the attributes here as well
	let(:valid_attributes) { { "grid" => "N4AAA" } }

	# This should return the minimal set of values that should be in the session
	# in order to pass any filters (e.g. authentication) defined in
	# ExpeditionsController. Be sure to keep this update too.
	let(:valid_session) { { } }

	describe "Get index" do
		it "assigns all expeditions as @expeditons" do
            expedition = Expedition.create! valid_attributes
			get :index, {}, valid_session
			assigns(:expeditions).should eq([expedition])
		end

	end
end