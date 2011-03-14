require 'spec_helper'

describe Reponse do
  before :each do
    @attr = {:id_question => 1, :texte => "texte", :correct => false}
  end
  
  it "should require a text " do
    reponse = Reponse.new @attr.merge(:texte => "")
    reponse.should_not be_valid
  end
end
