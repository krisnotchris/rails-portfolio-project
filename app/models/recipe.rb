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
    if ingredients_attributes.values[0]["ingredient_name"] != ""
    ingredients_attributes.values.each do |ingredient_attribute|
      ingredient = Ingredient.find_or_create_by(ingredient_attribute)
      self.ingredients << ingredient
    end
    end
  end

  def self.sort_by_rating
    Recipe.order(rating: :desc)
  end

end
