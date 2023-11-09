class Quote < ApplicationRecord
  has_many :ratings, dependent: :destroy

  validates :text, presence: true, uniqueness: true

  def self.sample
    find_or_create_by!(text: RonSwansonQuotes.get)
  end
end
