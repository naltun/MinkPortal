require "rails_helper"

RSpec.describe RaftChecksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/raft_checks").to route_to("raft_checks#index")
    end

    it "routes to #new" do
      expect(:get => "/raft_checks/new").to route_to("raft_checks#new")
    end

    it "routes to #show" do
      expect(:get => "/raft_checks/1").to route_to("raft_checks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/raft_checks/1/edit").to route_to("raft_checks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/raft_checks").to route_to("raft_checks#create")
    end

    it "routes to #update" do
      expect(:put => "/raft_checks/1").to route_to("raft_checks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/raft_checks/1").to route_to("raft_checks#destroy", :id => "1")
    end

  end
end
