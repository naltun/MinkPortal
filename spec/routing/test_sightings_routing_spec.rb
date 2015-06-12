require "rails_helper"

RSpec.describe TestSightingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/test_sightings").to route_to("test_sightings#index")
    end

    it "routes to #new" do
      expect(:get => "/test_sightings/new").to route_to("test_sightings#new")
    end

    it "routes to #show" do
      expect(:get => "/test_sightings/1").to route_to("test_sightings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/test_sightings/1/edit").to route_to("test_sightings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/test_sightings").to route_to("test_sightings#create")
    end

    it "routes to #update" do
      expect(:put => "/test_sightings/1").to route_to("test_sightings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/test_sightings/1").to route_to("test_sightings#destroy", :id => "1")
    end

  end
end
