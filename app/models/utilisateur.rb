class Utilisateur < ActiveRecord::Base
  has_many :categories, :through => :scorecategorie
  has_many :questionnaires, :through => :questionnairefinis
  validates_presence_of :nom, :mail, :mdp
  validates_numericality_of :score_global
  validates_uniqueness_of :nom, :mail, :case_sensitive => false
  validates_confirmation_of :mdp
  validates_length_of :nom, :minimum => 6, :maximum => 30
  validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  attr_accessor :mdp
  attr_accessible :nom, :mail, :mdp, :score_global, :statut, :mdp_confirmation
  
  
  
end
