types = [
  'Juices', # id: 1
  'Yummy Treats', # id: 2
  'Food', # id: 3
  'Small Bites'# id: 4
]

types.each do |type|
  Type.create(name: type)
end

# type
# name
# description
# price
# is_custom
items = [
  
  # for Juices
  [1, 'Coconut Water', 'Cocunut water with 6 selections of flavours: mint, honey ginger, cinnamon, lime, tumeric, pure original', 36000, true],
  [1, 'Fruity Green Juice', 'Spinach, cucumber, parsley, pineapple, and other veggies', 42000, false],
  [1, 'Gingery Green Juice', 'Cucumber, parsley, other veggies, ginger, and raw honey juice', 42000, false],


  # for Yummy Treats
  [2, 'Fresh Cut Fruits and Dates', 'No sugar added and gluten-free treat with vegan coconut cream', 28000, false],
  [2, 'Granola', 'With fresh coconut milk or regular milk and cut fruits', 42000, true],
  [2, 'Banana Fritter with Cinnamon', 'Indonesian banana fritter with sprinkled rich and aromatic cinnamon', 25000, true],

  # for Food
  [3, 'Lettuce Wrap', 'Indonesian saute celery rice noodles, omelette, pickled salad, pineapple or tomato with Lemongrass basil cream inside and nori seaweed belt', 35000, true],
  [3, 'Curry Basil Chickpea Burger', 'Homemade chickpea burger with curry paste and basil cream toppings, pickled salad, lettuce and omelette', 45000, true],
  [3, 'Indonesian Indian Curry', 'A fusion of Indian and Indonesian spices and herbs! Curried omelette or veggies, lemongrass tomato chilli zed potato and lentil, saute veggies, flavoured shredded coconut, cumin lemongrass cream and sambal on the side, with red rice or brown bread', 48000, true],
  [3, 'Indonesian Japanese Norimaki', 'Tomato chilli zed potato, lemongrass coconut, omelette in sticky rice and nori seaweed wrap, set with Indonesian clear veggie soup on the side', 39000, true],
  [3, 'Indonesian Italian Norimaki', 'Asian spinach and carrots marinated with olive, sage and oregano, omelette, cucumber, basil cream, in sticky rice and nori seaweed wrap, set with Indonesian clear veggie soup on the side', 42000, false],

  # for Small Bites
  [4, 'Risoles Delights', 'Indonesian croquette-like savoury. Creamy potato and carrot in the inside but crispy at the outside. Served with homemade tamarind sauce and spicy sambal on the side', 22000, false],
  [4, 'Veggie Fritters with sour cream', 'No GMO yummy fritters of carrots, sprout, cabbage flavoured with sage, oregano, leek, and pepper', 22000, false]
]

# type
# name
# description
# price
# is_custom
items.each do |type, name, description, price, custom|
  Item.create(type_id: type, is_custom: custom, price: price, name: name, description: description)
end
