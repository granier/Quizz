require 'spec_helper'

describe Question do
 before :each do
    @attr = {:id_questionnaire => 1, :texte => "texte", :valeur => 1}
  end
  
  it "should require a text " do
    question = Question.new @attr.merge(:texte => "")
    question.should_not be_valid
  end

   it "should require a value greater than 0 " do
    question = Question.new @attr.merge(:valeur => -1)
    question.should_not be_valid
  end

end
