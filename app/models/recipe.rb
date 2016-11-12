class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :comments
  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  
end
