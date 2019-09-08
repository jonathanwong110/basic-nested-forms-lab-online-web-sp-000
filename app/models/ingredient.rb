class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  
  def ingredient_attributes=(ingredient)
    self.ingredient = Ingredient.find_or_create_by(name: ingredient[:name], quantity: ingredient[:quantity])
    self.ingredient.update(ingredient)
  end
  
end
