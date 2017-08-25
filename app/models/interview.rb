class Interview < ApplicationRecord
  belongs_to :position
  belongs_to :interview_type
  belongs_to :interview_question
end
