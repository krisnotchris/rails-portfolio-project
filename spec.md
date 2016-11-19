# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - I used rails to build this project.
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) - My users have many Recipes.
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) - I have a few relationships with this.
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) - My recipes_ingredients table is the has_many :through.
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) - quantity
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [x] Include signup (how e.g. Devise) - used devise
- [x] Include login (how e.g. Devise) - used devise
- [x] Include logout (how e.g. Devise) - used devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - used devise and omniauth
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - mine is recipes/1/recipe_ingredients
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

# Specifications for the Rails-JS Assessment
Specs:
- [] Do not use remote :true
- [] Render at least one index page via jQuery and an Active Model Serialization JSON backend
- [] Rails API must reveal one has_many relationship
- [] Use Rails API and a form to create a resource and render the response without a page refresh
- [] Must translate the JSON responses into JavaScript Model Objects. The model objects must have at least one method on
      the prototype.
