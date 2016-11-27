class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_name
  has_many :recipes
end
