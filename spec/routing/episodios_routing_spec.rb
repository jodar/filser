require "rails_helper"

RSpec.describe EpisodiosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/episodios").to route_to("episodios#index")
    end

    it "routes to #new" do
      expect(:get => "/episodios/new").to route_to("episodios#new")
    end

    it "routes to #show" do
      expect(:get => "/episodios/1").to route_to("episodios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/episodios/1/edit").to route_to("episodios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/episodios").to route_to("episodios#create")
    end

    it "routes to #update" do
      expect(:put => "/episodios/1").to route_to("episodios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/episodios/1").to route_to("episodios#destroy", :id => "1")
    end

  end
end
