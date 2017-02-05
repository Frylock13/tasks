class Product < ApplicationRecord
  belongs_to :company

  validates :name, :desc, presence: true

  scope :active, -> { where(active: true) }
  scope :filter_by_name, -> (query) { where(name: query) }
end
