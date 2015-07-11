require "rails_helper"

RSpec.describe RaftsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/rafts").to route_to("rafts#index")
    end

    it "routes to #new" do
      expect(:get => "/rafts/new").to route_to("rafts#new")
    end

    it "routes to #show" do
      expect(:get => "/rafts/1").to route_to("rafts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/rafts/1/edit").to route_to("rafts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/rafts").to route_to("rafts#create")
    end

    it "routes to #update" do
      expect(:put => "/rafts/1").to route_to("rafts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/rafts/1").to route_to("rafts#destroy", :id => "1")
    end

  end
end
