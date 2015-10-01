require 'rails_helper'

RSpec.describe "RaftChecks", :type => :request do
  describe "GET /raft_checks" do
    it "works! (now write some real specs)" do
      get raft_checks_path
      expect(response.status).to be(200)
    end
  end
end
