class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  has_many :comments
  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true

  accepts_nested_attributes_for :ingredients

  def ingredients_attributes=(ingredients_attributes)
  if ingredients_attributes.values[0]["name"] != ""
    #What a hack... this makes sure that the new ingredient form wasn't blank
    #before building the ingredients. It works around ingredient validation issues.
  ingredients_attributes.each do |i, ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end
  end
end

end
