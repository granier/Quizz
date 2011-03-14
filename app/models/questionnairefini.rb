class Questionnairefini < ActiveRecord::Base
  belongs_to :utilisateurs 
  belongs_to :questionnaires 
end
