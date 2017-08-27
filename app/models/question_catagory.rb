class QuestionCatagory < ApplicationRecord
  has_many :Questions

  ########## validation #########
  validates :question presence: true
end
