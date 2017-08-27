class Business < ApplicationRecord
  belongs_to: interviews


  ########## validation #########
  validates :name presence: true
end
