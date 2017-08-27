class Question < ApplicationRecord
  has_many :Reports
  belong_to :QuestionCatagory

  ########## validation #########
  validates :question presence: true

end
