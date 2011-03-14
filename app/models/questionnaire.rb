class Questionnaire < ActiveRecord::Base
  has_many :utilisateurs, :through => :questionnairefinis
  has_many :questions
  belongs_to :categorie
  validates_presence_of :titre, :niveau_difficulte, :cout, :popularite, :gain_max, :nb_question
  validates_numericality_of :niveau_difficulte, :cout, :gain_max, :popularite, :nb_question , :greater_than_or_equal_to => 0
  attr_accessible :titre, :niveau_difficulte, :cout, :popularite, :gain_max, :nb_question
  validates_uniqueness_of :titre
end
