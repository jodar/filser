class AddTemporadaIdToEpisodios < ActiveRecord::Migration
  def change
    add_column :episodios, :temporada_id, :integer
    add_index :episodios, :temporada_id
  end
end
