# How to Read this Story

### Illustrations by [Lee Sheppard][]

## Getting Started

If you would simply like to be told the story of the Three Little Pigs, you can
get the story printed out to screen by running the application:

```sh
bin/three_little_pigs
```

However, that's less fun than being able to confirm that the state of the
application reflects the part of the story being told. You are able to do this
by running the application with the `DEBUG=true` flag:

```sh
DEBUG=true bin/three_little_pigs
```

With the `DEBUG` flag enabled, the story will stop at the end of each
(arbitrarily-defined) chapter, and present you with a command prompt, so you can
corroborate the story state with the story text being shown.

## Introduction

When first running the command, you will see the following introduction:

<strong><pre>
This story takes place when pigs spoke rhyme
And monkeys chewed tobacco,
And hens took snuff to make them tough,
And ducks went quack, quack, quack, O!<br />
The Story of the Three Little Pigs
</pre></strong>

Now, let's see how we can ask the story to tell us its current state after each
chapter has run.

## Chapter 1: Once Upon a Time

### Story

<strong><pre>
Once upon a time, there were three little pigs.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_01_once_upon_a_time.rb:14 Chapter01OnceUponATime.tell:

     8: def tell(story)
     9:   story.first_pig = Pig.new(slug: "first_pig")
    10:   story.second_pig = Pig.new(slug: "second_pig")
    11:   story.third_pig = Pig.new(slug: "third_pig")
    12:
    13:   binding.pry if ENV["DEBUG"]
 => 14: end
```

### Analysis

At this point, we just want to confirm that three little pigs exist in the
story, so we simply ask the story to print out its state:

```ruby
pry(Chapter01OnceUponATime)> story
OpenStruct {
  first_pig : #<ThreeLittlePigs::Pig:0x00007fd7f08e69b0 @slug="first_pig", @inventory=[], @children=[]>,
  second_pig: #<ThreeLittlePigs::Pig:0x00007fd7f08e6488 @slug="second_pig", @inventory=[], @children=[]>,
  third_pig : #<ThreeLittlePigs::Pig:0x00007fd7f08e5f88 @slug="third_pig", @inventory=[], @children=[]>
}
```

We can see that the story contains the `first_pig`, `second_pig`, and
`third_pig`, all instances of class `Pig`: these are our Three Little Pigs!
:pig: :pig: :pig:

### Turn the Page...

```ruby
pry(Chapter01OnceUponATime)> exit
```

## Chapter 2: Pigs live with their Mother

### Story

<strong><pre>
The three little pigs had a mother, and they lived
together with her in her small house.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_02_pigs_live_with_their_mother.rb:28 Chapter02PigsLiveWithTheirMother.tell:

     8: def tell(story)
     9:   first_pig = story.first_pig
    10:   second_pig = story.second_pig
    11:   third_pig = story.third_pig
    12:
    13:   mother_pig =
    14:     story.mother_pig =
    15:       Pig.new(
    16:         slug: "mother_pig",
    17:         children: [first_pig, second_pig, third_pig]
    18:       )
    19:
    20:   story.houses =
    21:     [
    22:       House.new(
    23:         owner: mother_pig,
    24:         occupants: [mother_pig, *mother_pig.children]
    25:       )
    26:     ]
    27:   binding.pry if ENV["DEBUG"]
 => 28: end
```

### Analysis

Let's see if the three little pigs do, indeed, have a mother:

```ruby
pry(Chapter02PigsLiveWithTheirMother)> mother_pig.children
[
  [0] #<ThreeLittlePigs::Pig:0x00007fd7f08e69b0 @slug="first_pig", @inventory=[], @children=[]>,
  [1] #<ThreeLittlePigs::Pig:0x00007fd7f08e6488 @slug="second_pig", @inventory=[], @children=[]>,
  [2] #<ThreeLittlePigs::Pig:0x00007fd7f08e5f88 @slug="third_pig", @inventory=[], @children=[]>
]
```

They do! And does everyone live in the mother pig's house?

```ruby
pry(Chapter02PigsLiveWithTheirMother)> mother_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007fd7d10e5c80 @slug="mother_pig", @inventory=[], @children=[...]>,
  [1] #<ThreeLittlePigs::Pig:0x00007fd7f08e69b0 @slug="first_pig", @inventory=[], @children=[]>,
  [2] #<ThreeLittlePigs::Pig:0x00007fd7f08e6488 @slug="second_pig", @inventory=[], @children=[]>,
  [3] #<ThreeLittlePigs::Pig:0x00007fd7f08e5f88 @slug="third_pig", @inventory=[], @children=[]>
]
```

The `house` belonging to the `mother_pig` (who we can see here is also an
instance of class `Pig`) has all four pigs as its `occupants`, so we can
reasonably assume they all live together!

### Turn the Page...

```ruby
pry(Chapter02PigsLiveWithTheirMother)> exit
```

## Chapter 3: Pigs leave the House

### Story

<strong><pre>
As the mother pig did not have enough to keep them,
she sent the three little pigs away to seek their fortune.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_03_pigs_leave_the_house.rb:16 Chapter03PigsLeaveTheHouse.tell:

     8: def tell(story)
     9:   mother_pig = story.mother_pig
    10:   mother_pig.wealth = Wealth.level(:not_enough)
    11:
    12:   if mother_pig.wealth < Wealth.level(:enough)
    13:     mother_pig.send_away(mother_pig.children)
    14:   end
    15:   binding.pry if ENV["DEBUG"]
 => 16: end
```

### Analysis

What does it mean for the mother pig to "not have enough to keep" her children?
It is quite arbitrary, but here we define "enough" as a "wealth level" that you
one needs to have more of. Let's see if the mother pig has less than "enough":

```ruby
pry(Chapter03PigsLeaveTheHouse)> mother_pig.wealth < Wealth.level(:enough)
true
```

Indeed she does not have "enough", so let us confirm that she had to send her
three children away by checking the current occupants of her house:

```ruby
pry(Chapter03PigsLeaveTheHouse)> mother_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007fd7d10e5c80 @slug="mother_pig", @inventory=[], @children=[...], @wealth=0>
]
```

The three little pigs are not resident in their mother's house, and have gone
off to seek their fortune.

### Turn the Page...

```ruby
pry(Chapter03PigsLeaveTheHouse)> exit
```

## Chapter 4: First Pig meets Straw Man

### Story

<strong><pre>
The first little pig met a man carrying a bundle of straw.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_04_first_pig_meets_straw_man.rb:12 Chapter04FirstPigMeetsStrawMan.tell:

     8: def tell(story)
     9:   story.straw_man =
    10:     Man.new(slug: "straw_man", inventory: Bundle.of(:straw))
    11:   binding.pry if ENV["DEBUG"]
 => 12: end
```

### Analysis

First, we can confirm that the first little pig did, indeed, meet a `Man`, by
checking the class of the `straw_man`:

```ruby
pry(Chapter04FirstPigMeetsStrawMan)> story.straw_man.class
ThreeLittlePigs::Man < Object
```

Then, we can check the man's inventory to see what he is carrying:

```ruby
pry(Chapter04FirstPigMeetsStrawMan)> story.straw_man.inventory
[
  [0] #<Struct:ThreeLittlePigs::BuildingMaterials::Straw:0x000003c0
    strength = 1
  >,
  [1] #<Struct:ThreeLittlePigs::BuildingMaterials::Straw:0x000003c0
    strength = 1
  >,
  # ...
]
```

He is carrying straw! If you count how much straw he is carrying, you may notice
that our story arbitrarily defines a "bundle" as 10 items.

You may notice that the straw, much like every `BuildingMaterial` in the story,
has been given a `strength` attribute, which will come into play later in the
story.

### Turn the Page...

```ruby
pry(Chapter04FirstPigMeetsStrawMan)> exit
```

## Chapter 5: First Pig receives Straw

![img pig_straw][]

### Story

<strong><pre>
He said to the man
"Please give me that straw so that I may build a house",
which the man did.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_05_first_pig_receives_straw.rb:11 Chapter05FirstPigReceivesStraw.tell:

     8: def tell(story)
     9:   story.straw_man.give(:straw, to: story.first_pig)
    10:   binding.pry if ENV["DEBUG"]
 => 11: end
```

### Analysis

In the previous chapter, we saw that the man had a bundle of straw in his
inventory. Now that the man has given the straw to the first pig, we can expect
that the man no longer has it in his inventory:

```ruby
pry(Chapter05FirstPigReceivesStraw)> story.straw_man.inventory
[]
```

Indeed, the man's inventory is now empty. Hopefully the transfer of straw to the
first pig's inventory has been successful. Let's check:

```ruby
pry(Chapter05FirstPigReceivesStraw)> story.first_pig.inventory
[
  [0] #<Struct:ThreeLittlePigs::BuildingMaterials::Straw:0x000003c0
    strength = 1
  >,
  [1] #<Struct:ThreeLittlePigs::BuildingMaterials::Straw:0x000003c0
    strength = 1
  >,
  # ...
]
```

And it has! The first pig is now in possession of the man's bundle of straw!

### Turn the Page...

```ruby
pry(Chapter05FirstPigReceivesStraw)> exit
```

## Chapter 6: First Pig builds Straw House

![img house_straw][]

### Story

<strong><pre>
And the first little pig built his house of straw.
"I'll be warm and cozy inside", he said.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_06_first_pig_builds_straw_house.rb:17 Chapter06FirstPigBuildsStrawHouse.tell:

     8: def tell(story)
     9:   first_pig = story.first_pig
    10:
    11:   story.houses <<
    12:     House.build(
    13:       building_materials: first_pig.use(:straw),
    14:       owner: first_pig
    15:     )
    16:   binding.pry if ENV["DEBUG"]
 => 17: end
```

### Analysis

There are a few changes that have happened at this point in the story, so let's
go through them.

The first pig now should own a house of class `House`:

```ruby
pry(Chapter06FirstPigBuildsStrawHouse)> first_pig.house.class
ThreeLittlePigs::House < Object
```

That house should be built of straw:

```ruby
pry(Chapter06FirstPigBuildsStrawHouse)> first_pig.house.building_material
:straw
```

Since the pig's straw has been used to build the house, the first pig should
no longer have anything left in his inventory:

```ruby
pry(Chapter06FirstPigBuildsStrawHouse)> first_pig.inventory
[]
```

And finally, to be "warm and cozy inside", we can assume that the first pig has
taken up residence in the house he built:

```ruby
pry(Chapter06FirstPigBuildsStrawHouse)> first_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007fd7f08e69b0 @slug="first_pig", @inventory=[], @children=[]>
]
```

Let's now leave the first pig to get acquainted with his house as we turn our
gaze elsewhere...

### Turn the Page...

```ruby
pry(Chapter06FirstPigBuildsStrawHouse)> exit
```

## Chapter 7: Second Pig meets Stick Man

### Story

<strong><pre>
The second little pig met a man with a bundle of sticks.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_07_second_pig_meets_stick_man.rb:12 Chapter07SecondPigMeetsStickMan.tell:

     8: def tell(story)
     9:   story.stick_man =
    10:     Man.new(slug: "stick_man", inventory: Bundle.of(:sticks))
    11:   binding.pry if ENV["DEBUG"]
 => 12: end
```

### Analysis

Much like the straw man, we can confirm that the `stick_man` the second little
pig met is also a `Man`:

```ruby
pry(Chapter07SecondPigMeetsStickMan)> story.stick_man.class
ThreeLittlePigs::Man < Object
```

And that his inventory contains a bundle of sticks:

```ruby
pry(Chapter07SecondPigMeetsStickMan)> story.stick_man.inventory
[
  [0] #<Struct:ThreeLittlePigs::BuildingMaterials::Sticks:0x00000280
    strength = 2
  >,
  [1] #<Struct:ThreeLittlePigs::BuildingMaterials::Sticks:0x00000280
    strength = 2
  >,
  # ...
]
```

For our story, sticks are slightly stronger than straw, which we can see
reflected in their `strength`.

### Turn the Page...

```ruby
pry(Chapter07SecondPigMeetsStickMan)> exit
```

## Chapter 8: Second Pig receives Sticks

![img pig_sticks][]

### Story

<strong><pre>
He said to the man
"Please give me those sticks so that I may build a house",
which the man also did.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_08_second_pig_receives_sticks.rb:11 Chapter08SecondPigReceivesSticks.tell:

     8: def tell(story)
     9:   story.stick_man.give(:sticks, to: story.second_pig)
    10:   binding.pry if ENV["DEBUG"]
 => 11: end
```

### Analysis

Same as the first pig and the straw man, let's confirm that the change in stick
ownership has taken place between the stick man and the second pig.

The stick man should now be carrying no more sticks:

```ruby
pry(Chapter08SecondPigReceivesSticks)> story.stick_man.inventory
[]
```

And the second pig should now be carrying his bundle of sticks:

```ruby
[2] pry(ThreeLittlePigs::Chapters::Chapter08SecondPigReceivesSticks)> story.second_pig.inventory
[
  [0] #<Struct:ThreeLittlePigs::BuildingMaterials::Sticks:0x00000280
    strength = 2
  >,
  [1] #<Struct:ThreeLittlePigs::BuildingMaterials::Sticks:0x00000280
    strength = 2
  >,
  # ...
]
```

### Turn the Page...

```ruby
pry(Chapter08SecondPigReceivesSticks)> exit
```

## Chapter 9: Second Pig builds Stick House

![img house_sticks][]

### Story

<strong><pre>
And the second little pig built his house of sticks.
"I'll be safe and snug inside", he said.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_09_second_pig_builds_stick_house.rb:17 Chapter09SecondPigBuildsStickHouse.tell:

     8: def tell(story)
     9:   second_pig = story.second_pig
    10:
    11:   story.houses <<
    12:     House.build(
    13:       building_materials: second_pig.use(:sticks),
    14:       owner: second_pig
    15:     )
    16:   binding.pry if ENV["DEBUG"]
 => 17: end
```

### Analysis

The second pig's situation has now changed in ways similar to the first pig.

The second pig now should own a house of class `House`:

```ruby
pry(Chapter09SecondPigBuildsStickHouse)> second_pig.house.class
ThreeLittlePigs::House < Object
```

That house should be built of sticks:

```ruby
pry(Chapter09SecondPigBuildsStickHouse)> second_pig.house.building_material
:sticks
```

The second pig should no longer have anything left in his inventory:

```ruby
pry(Chapter09SecondPigBuildsStickHouse)> second_pig.inventory
[]
```

To be "safe and snug inside", means the second pig has taken up residence in the
house he built:

```ruby
pry(Chapter09SecondPigBuildsStickHouse)> second_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007f8963270508 @slug="second_pig", @inventory=[], @children=[]>
]
```

We have two little pigs bundled up in their houses, so let us check on the
third...


### Turn the Page...

```ruby
pry(Chapter09SecondPigBuildsStickHouse)> exit
```

## Chapter 10: Third Pig meets Brick Man

### Story

<strong><pre>
The third little pig met a man with a load of bricks.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_10_third_pig_meets_brick_man.rb:12 Chapter10ThirdPigMeetsBrickMan.tell:

     8: def tell(story)
     9:   story.brick_man =
    10:     Man.new(slug: "brick_man", inventory: Load.of(:bricks))
    11:   binding.pry if ENV["DEBUG"]
 => 12: end
```

### Analysis

Like his brothers, the third pig also met a `Man`:

```ruby
pry(Chapter10ThirdPigMeetsBrickMan)> story.brick_man.class
ThreeLittlePigs::Man < Object
```

And that man's inventory contained a load of bricks:

```ruby
[2] pry(ThreeLittlePigs::Chapters::Chapter10ThirdPigMeetsBrickMan)> story.brick_man.inventory
[
  [0] #<Struct:ThreeLittlePigs::BuildingMaterials::Bricks:0x000003c0
    strength = 6
  >,
  [1] #<Struct:ThreeLittlePigs::BuildingMaterials::Bricks:0x000003c0
    strength = 6
  >,
  # ...
]
```

For our story, bricks are three times stronger than sticks, as we can see by
their `strength`.

Also, for all intents and purposes, our story defines a "load" and a "bundle" as
being the same thing.

### Turn the Page...

```ruby
pry(Chapter10ThirdPigMeetsBrickMan)> exit
```

## Chapter 11: Third Pig receives Bricks

![img pig_bricks][]

### Story

<strong><pre>
He said to the man
"Please give me those bricks so that I may build a house",
which the man also did.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_11_third_pig_receives_bricks.rb:11 Chapter11ThirdPigReceivesBricks.tell:

     8: def tell(story)
     9:   story.brick_man.give(:bricks, to: story.third_pig)
    10:   binding.pry if ENV["DEBUG"]
 => 11: end
```

### Analysis

Let us confirm the generosity of the brick man. He should now be carrying no
more bricks:

```ruby
pry(Chapter11ThirdPigReceivesBricks)> story.brick_man.inventory
[]
```

And the third pig should now be carrying his load of bricks:

```ruby
[3] pry(ThreeLittlePigs::Chapters::Chapter11ThirdPigReceivesBricks)> story.third_pig.inventory
[
  [0] #<Struct:ThreeLittlePigs::BuildingMaterials::Bricks:0x000003c0
    strength = 6
  >,
  [1] #<Struct:ThreeLittlePigs::BuildingMaterials::Bricks:0x000003c0
    strength = 6
  >,
  # ...
]
```

### Turn the Page...

```ruby
pry(Chapter11ThirdPigReceivesBricks)> exit
```

## Chapter 12: Third Pig builds Brick House

![img house_bricks][]

### Story

<strong><pre>
And the third little pig built his house of bricks.
"I'm not afraid of the Big Bad Wolf", he said.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_12_third_pig_builds_brick_house.rb:17 Chapter12ThirdPigBuildsBrickHouse.tell:

     8: def tell(story)
     9:   third_pig = story.third_pig
    10:
    11:   story.houses <<
    12:     House.build(
    13:       building_materials: third_pig.use(:bricks),
    14:       owner: third_pig
    15:     )
    16:   binding.pry if ENV["DEBUG"]
 => 17: end
```

### Analysis

The third pig's situation has now changed in ways similar to his brothers. He
should own a house of class `House`:

```ruby
pry(Chapter12ThirdPigBuildsBrickHouse)> third_pig.house.class
ThreeLittlePigs::House < Object
```

That house should be built of bricks:

```ruby
pry(Chapter12ThirdPigBuildsBrickHouse)> third_pig.house.building_material
:bricks
```

The third pig should no longer have anything left in his inventory:

```ruby
pry(Chapter12ThirdPigBuildsBrickHouse)> third_pig.inventory
[]
```

Although, the third pig does not explicitly comment on how he will feel in the
house, we can safely assume that he is "not afraid of the Big Bad Wolf" because
he has taken up residence in a house of bricks:

```ruby
pry(Chapter12ThirdPigBuildsBrickHouse)> third_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007f8963270260 @slug="third_pig", @inventory=[], @children=[]>
]
```

The three little pigs are now all in the houses that they built. Let us see how
they will fare against a nemesis...

### Turn the Page...

```ruby
pry(Chapter12ThirdPigBuildsBrickHouse)> exit
```

## Chapter 13: Enter the Wolf

![img wolf][]

### Story

<strong><pre>
The next day, a wolf came along and saw the houses the
little pigs built, and decided to pay them a visit.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_13_enter_the_wolf.rb:11 Chapter13EnterTheWolf.tell:

     8: def tell(story)
     9:   story.wolf = Wolf.new(slug: "wolf")
    10:   binding.pry if ENV["DEBUG"]
 => 11: end
```

### Analysis

The big bad wolf has arrived, and he is a `Wolf`!

```ruby
pry(Chapter13EnterTheWolf)> story.wolf.class
ThreeLittlePigs::Wolf < Object
```

### Turn the Page...

```ruby
pry(Chapter13EnterTheWolf)> exit
```

## Chapter 14: Wolf attacks Straw House

![img wolf_blowing][]

### Story

<strong><pre>
The wolf went to the straw house, and said
"Little pig, little pig, let me come in".
The little pig replied "No, not by the hair of my chinny chin chin".<br />
To which the wolf replied
"Then I'll huff, and I'll puff, and I'll blow your house in".<br />
And the wolf huffed and he puffed, and blew the house down.
And the first little pig ran to his brother's house of sticks.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_14_wolf_attacks_straw_house.rb:20 Chapter14WolfAttacksStrawHouse.tell:

     8: def tell(story)
     9:   wolf = story.wolf
    10:   first_pig = story.first_pig
    11:   second_pig = story.second_pig
    12:
    13:   wolf.huff(at: first_pig.house)
    14:   wolf.puff(at: first_pig.house)
    15:
    16:   if first_pig.house_blown_down?
    17:     first_pig.escape_to(second_pig.house)
    18:   end
    19:   binding.pry if ENV["DEBUG"]
 => 20: end
```

### Analysis

We can see from the code that the wolf has huffed and puffed at the first pig's
house, but what is the result of that? Has the house been blown down? Let's
check:

```ruby
pry(Chapter14WolfAttacksStrawHouse)> first_pig.house_blown_down?
true
```

The house has been blown down!  What is the state of a blown down house?

```ruby
pry(Chapter14WolfAttacksStrawHouse)> first_pig.house
nil
```

It is non-existent (`nil`)! Without a house, the first pig escapes to the
second pig's house, so let's see how this affects its occupants:

```ruby
pry(Chapter14WolfAttacksStrawHouse)> second_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007f8963270508 @slug="second_pig", @inventory=[], @children=[]>,
  [1] #<ThreeLittlePigs::Pig:0x00007f89632707d8 @slug="first_pig", @inventory=[], @children=[]>
]
```

We can see that the first pig has joined his brother in his house.

### Turn the Page...

```ruby
pry(Chapter14WolfAttacksStrawHouse)> exit
```

## Chapter 15: Wolf attacks Stick House

### Story

<strong><pre>
So, the wolf went to the stick house, and said
"Little pigs, little pigs, let me come in".
"No, not by the hair of our chinny chin chins", replied the pigs.<br />
"Then I'll huff, and I'll puff, and I'll blow your house in"<br />
So, the wolf huffed and puffed, and blew the house down.
And the little pigs ran to their brother's house of bricks.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_15_wolf_attacks_stick_house.rb:22 Chapter15WolfAttacksStickHouse.tell:

     8: def tell(story)
     9:   wolf = story.wolf
    10:   first_pig = story.first_pig
    11:   second_pig = story.second_pig
    12:   third_pig = story.third_pig
    13:
    14:   wolf.huff(at: second_pig.house)
    15:   wolf.puff(at: second_pig.house)
    16:
    17:   if second_pig.house_blown_down?
    18:     first_pig.escape_to(third_pig.house)
    19:     second_pig.escape_to(third_pig.house)
    20:   end
    21:   binding.pry if ENV["DEBUG"]
 => 22: end
```

### Analysis

What is the state of the second pig's house after having been huffed and puffed
at by the Big Bad Wolf?

```ruby
pry(Chapter15WolfAttacksStickHouse)> second_pig.house
nil
```

It got blown down! Now both the first and the second little pig need to escape
to the third pig's house, so let's see how that affects its occupants:

```ruby
pry(Chapter15WolfAttacksStickHouse)> third_pig.house.occupants
[
  [0] #<ThreeLittlePigs::Pig:0x00007f8963270260 @slug="third_pig", @inventory=[], @children=[]>,
  [1] #<ThreeLittlePigs::Pig:0x00007f89632707d8 @slug="first_pig", @inventory=[], @children=[]>,
  [2] #<ThreeLittlePigs::Pig:0x00007f8963270508 @slug="second_pig", @inventory=[], @children=[]>
]
```

We can see that all three of the little pigs are now holed up in the third pig's
house.

### Turn the Page...

```ruby
pry(Chapter15WolfAttacksStickHouse)> exit
```

## Chapter 16: Wolf attacks Brick House

### Story

<strong><pre>
So, the wolf went to the brick house, and said
"Little pigs, little pigs, let me come in".
"No, not by the hair of our chinny chin chins", replied the pigs.<br />
"Then I'll huff, and I'll puff, and I'll blow your house in"<br />
So, the wolf huffed and puffed, and huffed and puffed,
but he could not blow the house down.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_16_wolf_attacks_brick_house.rb:19 Chapter16WolfAttacksBrickHouse.tell:

     8: def tell(story)
     9:   wolf = story.wolf
    10:   third_pig = story.third_pig
    11:
    12:   tries = 2
    13:   while third_pig.house && tries.positive?
    14:     wolf.huff(at: third_pig.house)
    15:     wolf.puff(at: third_pig.house)
    16:     tries -= 1
    17:   end
    18:   binding.pry if ENV["DEBUG"]
 => 19: end
```

### Analysis

Our story has the Big Bad Wolf performing two sets of huffing and puffing
against the brick house, so let's see if that had any effect:

```ruby
pry(Chapter16WolfAttacksBrickHouse)> third_pig.house
#<ThreeLittlePigs::House:0x00007f891304e608 ...>
```

The Wolf fails! The house still stands!

### Turn the Page...

```ruby
pry(Chapter16WolfAttacksBrickHouse)> exit
```

## Chapter 17: Pigs close up Brick House

### Story

<strong><pre>
The wolf searched for a way into the house.
He tried the door and the windows, but the pigs had closed them.
But, he saw that the chimney was open,
and jumped on the roof to climb down it.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_17_pigs_close_up_brick_house.rb:14 Chapter17PigsCloseUpBrickHouse.tell:

     8: def tell(story)
     9:   brick_house = story.third_pig.house
    10:
    11:   brick_house.door.close
    12:   brick_house.windows.close
    13:   binding.pry if ENV["DEBUG"]
 => 14: end
```

### Analysis

The pigs closed the brick house's door and windows, so let's have a look at
their statuses:

```ruby
pry(Chapter17PigsCloseUpBrickHouse)> brick_house.door.status
:closed
pry(Chapter17PigsCloseUpBrickHouse)> brick_house.windows.status
:closed
```

Looks closed to me! But what about the chimney?

```ruby
pry(Chapter17PigsCloseUpBrickHouse)> brick_house.chimney.status
:open
```

It's open, ready for the wolf to attempt to climb down it!

### Turn the Page...

```ruby
pry(Chapter17PigsCloseUpBrickHouse)> exit
```

## Chapter 18: Pigs prepare Pot of Water

### Story

<strong><pre>
But, the three little pigs saw what the wolf was planning.
So, they hung a big pot of water on the fireplace hearth,
and made up a blazing fire.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_18_pigs_prepare_pot_of_water.rb:16 Chapter18PigsPreparePotOfWater.tell:

     8: def tell(story)
     9:   fireplace = story.third_pig.house.fireplace
    10:   pot = story.pot = Pot.new
    11:
    12:   fireplace.hearth = pot
    13:   pot << Water.new
    14:   fireplace.light_fire
    15:   binding.pry if ENV["DEBUG"]
 => 16: end
```

### Analysis

The pigs have gotten busy with their defence preparations against the Wolf!
Let's have a look at what they have done.

The pigs poured water into a pot, so let's confirm the pot's contents:

```ruby
pry(Chapter18PigsPreparePotOfWater)> pot.contents
[
  [0] #<ThreeLittlePigs::Water:0x00007f89666dab18 ...> 
]
```

It may not look like liquid, but consider this to be water. They then hung the
pot on the fireplace hearth, so let's confirm the contents of the hearth:

```ruby
pry(Chapter18PigsPreparePotOfWater)> fireplace.hearth
#<ThreeLittlePigs::Pot:0x00007f89666dad70 @contents=[#<ThreeLittlePigs::Water:0x00007f89666dab18 ...>]>
```

It contains the pot with water in it! The pigs then lit a blazing fire, so let's
confirm that happened:

```ruby
pry(Chapter18PigsPreparePotOfWater)> fireplace.lit
true
```

Finally, what is the effect of putting a pot of water over a blazing fire? It
boils! Let's check the temperature of the water in the pot:

```ruby
pry(Chapter18PigsPreparePotOfWater)> pot.water.temperature
100
```

The boiling point of water is 100°C, so that looks correct!

### Turn the Page...

```ruby
pry(Chapter18PigsPreparePotOfWater)> exit
```

## Chapter 19: Wolf invades Brick House

![img dead_wolf][]

### Story

<strong><pre>
The wolf climbed into the open chimney, and prepared to slide down
the chute.
<br />
The wolf slid down the chimney, and straight into the pot of water,
where he was promptly boiled up.
<br />
"That's the end of the Big Bad Wolf", said one of the pigs,
and they all lived happily ever after.
</pre></strong>

### Prompt

```ruby
From: /.../chapter_19_wolf_invades_brick_house.rb:14 Chapter19WolfInvadesBrickHouse.tell:

     8: def tell(story)
     9:   wolf = story.wolf
    10:   chimney = story.third_pig.house.chimney
    11:
    12:   wolf.enter(chimney)
    13:   binding.pry if ENV["DEBUG"]
 => 14: end
```

### Analysis

The "end of the Big Bad Wolf" can only mean that he has been boiled out of
existence! So, does our story still have a Wolf...?

```ruby
pry(Chapter19WolfInvadesBrickHouse)> story.wolf
nil
```

The Wolf is gone. The Three Little Pigs have triumphed. And they all do, indeed,
live happily ever after.

### Close Book

```ruby
pry(Chapter19WolfInvadesBrickHouse)> exit
```

---

For more information on what conditions are specifically being asserted at each
chapter in the story, look in the `spec/` or `test/` directories. The tests
will read quite similarly to this story run-through.

[img dead_wolf]: assets/dead_wolf.png
[img house_bricks]: assets/house_bricks.png
[img house_sticks]: assets/house_sticks.png
[img house_straw]: assets/house_straw.png
[img pig_bricks]: assets/pig_bricks.png
[img pig_sticks]: assets/pig_sticks.png
[img pig_straw]: assets/pig_straw.png
[img wolf_blowing]: assets/wolf_blowing.png
[img wolf]: assets/wolf.png
[Lee Sheppard]: https://leesheppard.com/
