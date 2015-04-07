class CreateTemporadas < ActiveRecord::Migration
  def change
    create_table :temporadas do |t|
      t.string :title
      t.string :year

      t.timestamps
    end
  end
end
