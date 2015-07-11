require 'rails_helper'

RSpec.describe "Rafts", :type => :request do
  describe "GET /rafts" do
    it "works! (now write some real specs)" do
      get rafts_path
      expect(response.status).to be(200)
    end
  end
end
