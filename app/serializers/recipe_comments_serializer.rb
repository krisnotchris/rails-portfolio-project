class RecipeCommentsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipe_id, :content
end
