class Categorie < ActiveRecord::Base
  has_many :utilisateurs, :through => :scorecategories
  has_many :questionnaires
  validates_presence_of :nom, :popularite
  validates_numericality_of :popularite, :greater_than_or_equal_to => 0
  attr_accessible :nom, :popularite
  validates_uniqueness_of :nom
end
