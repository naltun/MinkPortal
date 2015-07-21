require 'rails_helper'

RSpec.describe "Tsightings", :type => :request do
  describe "GET /tsightings" do
    it "works! (now write some real specs)" do
      Tsighting.create!(:status => "Dead")
      visit tsightings_path
      page.should have_content("Dead")
    end
  end
end
