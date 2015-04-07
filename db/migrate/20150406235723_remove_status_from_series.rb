class RemoveStatusFromSeries < ActiveRecord::Migration
  def change
    remove_column :series, :status, :boolean
  end
end
