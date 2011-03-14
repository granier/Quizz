class CreateUtilisateurs < ActiveRecord::Migration
  def self.up
    create_table :utilisateurs do |t|
      t.string :nom
      t.string :mail
      t.string :mdp
      t.boolean :statut
      t.integer :score_global

      t.timestamps
    end
  end

  def self.down
    drop_table :utilisateurs
  end
end
