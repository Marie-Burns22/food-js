# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)  emission scope methods for each of 4 units
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)  OmniAuth github and Google
- [x] Include nested resource show or index (URL e.g. users/2/recipes)  student_emissions_path on partial food_grid
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)  new_food_emission_path on food show view
- [x] Include form display of validation errors (form URL e.g. /recipes/new)  on new student form

Confirm:
- [x] The application is pretty DRY  except: partials have a lot of repeated grid rows, scope methods could be more dry, but need to figure out how to pass params in from a button or link.
- [x] Limited logic in controllers   Food index action has logic to call different scope methods based on the params passed in from button or link.
- [x] Views use helper methods if appropriate  button_to, link_to, render, form_field and other form helpers
- [x] Views use partials if appropriate partials for forms and css grids
