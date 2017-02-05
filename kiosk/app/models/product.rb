class Product < ApplicationRecord
  belongs_to :company

  validates :name, :desc, presence: true

  scope :active, -> { where(active: true) }
end
