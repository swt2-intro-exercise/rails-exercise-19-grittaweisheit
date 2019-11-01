class Paper < ApplicationRecord
  has_and_belongs_to_many :authors

  scope :published_in, ->(number) {where('year == ?', number)}

  validates :title, :venue, :year, presence: true
  validates :year, numericality: true

end
