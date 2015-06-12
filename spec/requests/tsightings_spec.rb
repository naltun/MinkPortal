require 'rails_helper'

RSpec.describe "Tsightings", :type => :request do
  describe "GET /tsightings" do
    it "works! (now write some real specs)" do
      get tsightings_path
      expect(response.status).to be(200)
    end
  end
end
