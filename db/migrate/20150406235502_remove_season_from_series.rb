class RemoveSeasonFromSeries < ActiveRecord::Migration
  def change
    remove_column :series, :season, :string
  end
end
