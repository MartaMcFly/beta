class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :nom
      t.datetime :date_debut
      t.datetime :date_fin
      t.string :lieu
      t.string :descriptif
      t.string :objectifs
      t.string :competences

      t.timestamps
    end
  end
end
