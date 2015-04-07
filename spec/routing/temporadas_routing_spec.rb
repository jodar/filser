require "rails_helper"

RSpec.describe TemporadasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/temporadas").to route_to("temporadas#index")
    end

    it "routes to #new" do
      expect(:get => "/temporadas/new").to route_to("temporadas#new")
    end

    it "routes to #show" do
      expect(:get => "/temporadas/1").to route_to("temporadas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/temporadas/1/edit").to route_to("temporadas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/temporadas").to route_to("temporadas#create")
    end

    it "routes to #update" do
      expect(:put => "/temporadas/1").to route_to("temporadas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/temporadas/1").to route_to("temporadas#destroy", :id => "1")
    end

  end
end
