class CreateScorecategories < ActiveRecord::Migration
  def self.up
    create_table :scorecategories do |t|
      t.integer :id_utilisateur
      t.integer :id_categorie
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :scorecategories
  end
end
