Member.create!([
  {first_name: "Kelsey", last_name: "Byers", username: "kelseybcoding", email: "kelseybcoding@gmail.com", password_digest: "$2a$10$uteZGxa2HYq6ycYn63vFKuUQrr3BYLCFJKRFi5Q/EfhHm9.m5I4bm", skill_level: nil, zipcode: nil, bio: nil},
  {first_name: "Art", last_name: "VanPaint", username: "artvan", email: "artvan@gmail.com", password_digest: "$2a$10$TN3UE1E8M3el3zFVisPs1uUAUoyRhWF184322ibigS2gkGDoj7HQS", skill_level: nil, zipcode: nil, bio: nil}
])

Recipe.create!([
  {
  	title: "Lemon Butter Chicken", 
  	servings: "6",
  	prep_time: "15 minutes",
  	cook_time: "15 minutes", 
  	# ingredients: "3 large boneless, skinless chicken breasts, 1/2 cup flour, 1/2 tsp salt, 1/2 cup unsalted butter, 2 tsp lemon pepper seasoning, 2 lemons, sliced thinly, 2 tbs lemon juice, 1 tbs dry white wine",
  	instructions: "1. Start by butterflying the chicken breasts, but cut all the way through to get 2 pieces. 2. Pound each piece of chicken between 2 sheets of plastic wrap with a meat mallet until chicken is about 1/4-inch thick. 3. Mix the 1/2 cup flour and the 1/2 tsp salt to make the seasoned flour. Place on a plate for easy dredging. 4. Dredge chicken in seasoned flour, sprinkle with lemon pepper seasoning and set aside. 5. Mix the lemon juice and wine together; set aside. 6. Heat a large skillet over medium-high heat. 7. Add the butter–it’s OK if it begins to brown, that is part of the flavor. 8. Working in batches, brown 2-3 pieces of chicken for 3 minutes each side or until nicely brown and chicken juices run clear. 9. Remove from pan and keep warm in a 200 degree F oven. Repeat until all chicken is browned. 10. In the same pan, brown the lemon slices on both sides. Add the chicken back to the pan with the lemon slices. 11. Drizzle lemon juice mixture over chicken and let sauce reduce slightly (about 3 minutes). 12. Serve with the browned lemon slices–they taste wonderful!"
  	},
  
  {
  	title: "Ratatouille", 
  	servings: "6",
  	prep_time: "15 minutes",
  	cook_time: "1 hour, 40 minutes", 
  	# ingredients: "1⁄2 cup extra-virgin olive oil, 1 tbsp. dried herbes de Provence, 6 cloves garlic, smashed and peeled, 2 large yellow onions, quartered, 1 bay leaf, 2 medium zucchini (about 1 1⁄4 lbs.),  cut into 2-inch pieces, 1 medium eggplant (about 14 oz.), cut into 2-inch pieces, 1 red bell pepper, stemmed, seeded, and quartered, 1 yellow bell pepper, stemmed, seeded, and quartered, 10 whole peeled tomatoes from the can, drained, Kosher salt and freshly ground black pepper, to taste, 1 tbsp. chopped fresh basil leaves, 1 tbsp. chopped fresh flat-leaf parsley",
  	instructions: "1. Heat oven to 400˚. Heat oil in a 6-qt. Dutch oven over medium heat. Add herbes de Provence, garlic, onions, and bay leaf; cover and cook, stirring occasionally, until soft and fragrant, about 10 minutes. 2. Increase heat to high; stir in the zucchini, eggplant, peppers, and tomatoes and season with salt and pepper. Uncover pot, transfer to the oven, and bake, stirring occasionally, until vegetables are tender and lightly browned, about 1 1⁄2 hours. 3. Stir in basil and parsley, transfer ratatouille to a serving bowl, and serve warm or at room temperature."
  	},

  	{
  	title: "Quick Pizza Margherita", 
  	servings: "4 (serving size: 2 pieces)",
  	prep_time: "18 minutes",
  	cook_time: "12 minutes", 
  	# ingredients: "1 (10-ounce) can refrigerated pizza crust dough, Cooking spray, 1 teaspoon extra-virgin olive oil, divided, 1 garlic clove, halved, 5 plum tomatoes, thinly sliced (about 3/4 pound), 1 cup (4 ounces) shredded fresh mozzarella cheese, 1 teaspoon balsamic vinegar, 1/2 cup thinly sliced fresh basil, 1/8 teaspoon salt, 1/8 teaspoon black pepper",
  	instructions: "1. Preheat oven to 400°. 2. Unroll crust dough onto a baking sheet coated with cooking spray; pat into a 13 x 11-inch rectangle. 3. Bake at 400° for 8 minutes. 4. Remove crust from oven, and brush with 1/2 teaspoon oil. 5. Rub crust with cut sides of garlic. 6. Arrange tomato slices on crust, leaving a 1/2-inch border; sprinkle evenly with cheese. 7. Bake at 400° for 12 minutes or until cheese melts and crust is golden. 8. Combine 1/2 teaspoon oil and vinegar, stirring with a whisk. 9. Sprinkle pizza evenly with sliced basil, salt, and pepper. 10. Drizzle the vinegar mixture evenly over the pizza. Cut pizza into 8 pieces."
  }
  
])


