class Temporada < ActiveRecord::Base
	belongs_to :series

	scope :by_season, ->(id) { where('series_id == ?', id) } 
end
