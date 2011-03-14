class CreateQuestionnaires < ActiveRecord::Migration
  def self.up
    create_table :questionnaires do |t|
      t.string :titre
      t.integer :niveau_difficulte
      t.integer :cout
      t.integer :id_categorie
      t.integer :popularite
      t.integer :gain_max
      t.integer :nb_question

      t.timestamps
    end
  end

  def self.down
    drop_table :questionnaires
  end
end
