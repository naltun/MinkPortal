require "rails_helper"

RSpec.describe TsightingsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tsightings").to route_to("tsightings#index")
    end

    it "routes to #new" do
      expect(:get => "/tsightings/new").to route_to("tsightings#new")
    end

    it "routes to #show" do
      expect(:get => "/tsightings/1").to route_to("tsightings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tsightings/1/edit").to route_to("tsightings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tsightings").to route_to("tsightings#create")
    end

    it "routes to #update" do
      expect(:put => "/tsightings/1").to route_to("tsightings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tsightings/1").to route_to("tsightings#destroy", :id => "1")
    end

  end
end
