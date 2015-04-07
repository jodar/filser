class RemoveEpisodesFromSeries < ActiveRecord::Migration
  def change
    remove_column :series, :string, :string
  end
end
