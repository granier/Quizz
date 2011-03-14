class Question < ActiveRecord::Base
  has_many :reponses
  belongs_to :questionnaire
  validates_presence_of :texte, :valeur
  validates_numericality_of :valeur, :greater_than_or_equal_to => 0
  attr_accessible :texte, :valeur
end
