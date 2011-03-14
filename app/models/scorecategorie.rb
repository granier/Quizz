class Scorecategorie < ActiveRecord::Base
  belongs_to :utilisateurs 
  belongs_to :categories 
  validates_presence_of :score
  validates_numericality_of :score, :greater_than_or_equal_to => 0
  attr_accessible :score
end
