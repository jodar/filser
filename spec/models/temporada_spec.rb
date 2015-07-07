require 'rails_helper'
require 'pry'

RSpec.describe Temporada, :type => :model do
  describe "scopes" do
  	#Verificar database_cleaner
  	before { Temporada.destroy_all }

  	describe ".by_season" do
  		let!(:temporada1) { create(:temporada) }
  		let!(:temporada2) { create(:temporada) }

  		it "retorna as temporadas de uma série" do
  			expect(Temporada.by_season(1).length).to eq 2
  			expect(Temporada.by_season(2).length).to eq 0
  		end
  	end
  end
end