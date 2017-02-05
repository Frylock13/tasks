class ProductSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :desc

  belongs_to :company
end
