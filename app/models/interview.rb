class Interview < ApplicationRecord
  belong_to :Position
  belong_to :InterviewType
  belong_to :Business

  ########## validation #########
  validates :round presence: true
  validates :comment presence: true
end
