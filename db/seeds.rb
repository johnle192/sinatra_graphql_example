recipes = [
  {
    name: 'Publican Roast Chicken',
    description: 'A rich, lemon, oregano chicken',
    prep_time_minutes: 60,
    cook_time_minutes: 45
  },
  {
    name: 'Boubon Apple Pie',
    description: 'The American Dream',
    prep_time_minutes: 90,
    cook_time_minutes: 50
  },
]

recipes.each do |recipe|
  if !Recipe.find_by(name: recipe.fetch(:name)).exists?
    Recipe.create(recipe)
  end
end
