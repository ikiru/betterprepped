class InterviewType < ApplicationRecord
  has_many :Interview

  ########## validation #########
  validates :type presence: true
end
