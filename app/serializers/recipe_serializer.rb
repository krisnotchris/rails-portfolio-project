class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id, :rating
  has_many :ingredients
  has_many :comments, serializer: RecipeCommentsSerializer
end
