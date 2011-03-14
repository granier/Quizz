class Reponse < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :texte, :correct
  attr_accessible :texte, :correct
end
