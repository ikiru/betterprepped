class Position < ApplicationRecord
  belongs_to :interview
  belongs_to :business

  ########## validation #########
  validates :position presence: true
end
