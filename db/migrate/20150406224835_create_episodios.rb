class CreateEpisodios < ActiveRecord::Migration
  def change
    create_table :episodios do |t|
      t.string :title

      t.timestamps
    end
  end
end
