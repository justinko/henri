class Rating < ApplicationRecord
  NUMBER_RANGE = 1..5

  belongs_to :quote

  validates :number, presence: true, numericality: {in: NUMBER_RANGE}
  validates :ip, presence: true, uniqueness: true
end
