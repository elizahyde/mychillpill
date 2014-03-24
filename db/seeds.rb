# seeds the prompt table
prompt_list = [
  [ "drawing","Draw with your less dominant hand."],
  [ "drawing","Is there an animal that you have a special interest in or feel like is a kindred spirit? Draw yourself as that animal."],
  [ "drawing","Draw a memory from your childhood."],
  [ "drawing","Draw what comes to mind when you think of happiness."],
  [ "drawing","Take a minute to connect with your feelings. Close your eyes and imagine what your feelings would look like, and then draw them."],
  [ "drawing","Make a stress drawing. Draw what represents stress to you and paint your troubles away."],
  [ "drawing","Draw a wish that you have."],
  [ "drawing","Draw a recent dream."],
  [ "drawing","Look outside and let the weather and your surroundings inspire your drawing."],
  [ "drawing","Fill the blank rectangle with shapes. Color them in."],
  [ "drawing","Draw something you love"],
  [ "drawing","Just draw!"],
  [ "writing","Write about a recent dream."],
  [ "writing","Five years from now, I will be..."],
  [ "writing","What would you do if you woke up one morning to find yourself invisible?"],
  [ "writing","What would you do if someone just gave you $1 million? "],
  [ "writing","If you could do something that you never have done before, what would it be?  Why would you want to do it?"],
  [ "writing","Write about a difficult decision you had to make."],
  [ "writing","Write about a time you gave someone good advice"],
  [ "writing","Write about the funniest thing that ever happened to you."],
  [ "writing","What would you pack in your suitcase if you could not go home again?"],
  [ "writing","If you had three wishes, what would they be?"],
  [ "writing","What is something special and/or different about you?"],
  [ "writing","Write about some of the things that you worry about."],
  [ "writing","Describe your best personality trait."],
  [ "writing","If you had a chance to live anywhere you could, where would it be and why?"],
  [ "writing","If you had only one month to live, what would you do?"],
  [ "writing","What makes you laugh?"],
]

prompt_list.each do |category, description|
  Prompt.create( category:category, description:description)
end