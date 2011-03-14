require 'spec_helper'

describe Categorie do
 before :each do
    @attr = {:nom => "nom", :popularite => 0}
  end
  
  it "should require a name " do
    categorie = Categorie.new @attr.merge(:nom => "")
    categorie.should_not be_valid
  end
end
