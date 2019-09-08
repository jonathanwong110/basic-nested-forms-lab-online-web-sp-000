class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  
  def ingredient_attributes=(artist)
    self.artist = Artist.find_or_create_by(name: artist[:name])
    self.artist.update(artist)
  end
  
end
