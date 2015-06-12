require 'rails_helper'

RSpec.describe "TestSightings", :type => :request do
  describe "GET /test_sightings" do
    it "works! (now write some real specs)" do
      get test_sightings_path
      expect(response.status).to be(200)
    end
  end
end
