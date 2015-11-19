## Let's make some Smoothies!


####Objectives:
- Exercise working with arrays, strings, and a basic object

<br>

## #1 - Create a `blend` method
- Given a hash of ingredients, write a method called `blend`.
	- It should take all the smoothie ingredients below (not the measurements) and chop up and mix all the characters and output a mixed string of characters
	- Be sure to remove the spaces, as we don't want any air bubbles in our smoothie!


```
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'cocoa powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'broccoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

# An example of what your method should return:  ubarawiulptaoueeurndrigrncpdriibeetnlkaoehyapatagsmellhsfecfnssprascaioetnaarophmsabumeproigsbeutaselulxeocblpeookanorysssgelsemitrdawecraopanokdutuspwbsoniesrllmndiricuthucerntsrmasacbopulkeslaresnkeodeestasnetapb

```

<br>


## #2 - Create a `Blender` class
- Create a class called `Blender`
	- It should have a method that takes a collection of ingredients and returns a mixed string of characters. HINT- the `blend` method you created above.
	- Give the blender an on and off switch and only allow the blender to function when it's on.
	- FOR SAFETY'S SAKE When you create a new blender by default it should be off.
	- Blend the smoothie array

