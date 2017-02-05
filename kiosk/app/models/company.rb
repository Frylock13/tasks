class Company < ApplicationRecord
  validates :name, presence: true

  has_many :products

  scope :active, -> { where(active: true) }
end
