require 'spec_helper'

describe Questionnaire do
  
 before :each do
    @attr = {:titre => "Exemple", :niveau_difficulte => 1, :cout => 0, :id_categorie => 0, :nb_question => 1, :popularite => 0, :gain_max => 1}
  end
  
  it "should require a title " do
    questionnaire = Questionnaire.new @attr.merge(:titre => "")
    questionnaire.should_not be_valid
  end
  
  it "should require a number of question >= 0 " do
    questionnaire = Questionnaire.new @attr.merge(:nb_question => -1)
    questionnaire.should_not be_valid
  end

  it "should reject duplicate titles" do
    questionnaire1 = Questionnaire.new @attr.merge(:titre => "nom titre")
    questionnaire1.save
    questionnaire2 = Questionnaire.new @attr.merge(:titre => "nom titre")
    questionnaire2.should_not be_valid
  end

  it "should have a difficulty level higher than 0" do
    questionnaire = Questionnaire.new @attr.merge(:niveau_difficulte => -1)
    questionnaire.should_not be_valid
  end
end
