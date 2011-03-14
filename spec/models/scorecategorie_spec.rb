require 'spec_helper'

describe Scorecategorie do
   before :each do
    @attr = {:id_utilisateur => 1, :id_categorie => 1, :score => 0}
  end
  
  it "should require a score >= 0 " do
    scorecat = Scorecategorie.new @attr.merge(:score => -1)
    scorecat.should_not be_valid
  end
end
