require 'rails_helper'

RSpec.describe "Episodios", :type => :request do
  describe "GET /episodios" do
    it "works! (now write some real specs)" do
      get episodios_path
      expect(response).to have_http_status(200)
    end
  end
end
