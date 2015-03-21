class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :title
      t.string :season
      t.string :episodes
      t.boolean :status
      t.text :description

      t.timestamps
    end
  end
end
