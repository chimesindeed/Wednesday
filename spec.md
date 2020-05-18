# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
        User has many words
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
        Words belong to user
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
        Words have many Phrases through Match
        Phrases have many Words through Match
        
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
        Words - Phrases - Match
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
        Match Table has degree column
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
        Validations for name, length, etc, for Words and Phrases
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise) -Devise
- [x] Include login (how e.g. Devise) -Devise
- [x] Include logout (how e.g. Devise) -Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Devise OmniAuth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate


Please note had all of this done and hit stumbling block with devise.  Took me longer than I thought.  Just wanted to submit project so I could schedule
assessment. I'm pretty sure all requirements are met now, the only thing that's not functional is creating a match with match table.
But this can be done from rails console as relationships required for assessment are setup in models. Then I ran into stumbling blocks pushing local git repository to github but I think everythings ok now.  
