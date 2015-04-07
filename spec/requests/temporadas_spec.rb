require 'rails_helper'

RSpec.describe "Temporadas", :type => :request do
  describe "GET /temporadas" do
    it "works! (now write some real specs)" do
      get temporadas_path
      expect(response).to have_http_status(200)
    end
  end
end
