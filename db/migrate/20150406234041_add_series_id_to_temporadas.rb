class AddSeriesIdToTemporadas < ActiveRecord::Migration
  def change
    add_column :temporadas, :series_id, :integer
    add_index :temporadas, :series_id
  end
end
