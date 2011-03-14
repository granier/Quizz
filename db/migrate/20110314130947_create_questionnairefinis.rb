class CreateQuestionnairefinis < ActiveRecord::Migration
  def self.up
    create_table :questionnairefinis do |t|
      t.integer :id_utilisateur
      t.integer :id_questionnaire

      t.timestamps
    end
  end

  def self.down
    drop_table :questionnairefinis
  end
end
