class Report < ApplicationRecord
  belongs_to questions

  validates :issue, presence: true
end
