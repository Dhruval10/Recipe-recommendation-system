%  This Mini Expert System advises on which dishes you can make based on ingridents, taste and Cuisine type

% By saying recipe, the system begins.
% It will ask the user whether he wants to watch a dish or dessert
% If dish is chosen by user, he is asked to enter cuisine, Ingredients and taste.
% If dessert is chosen by user, he is asked to enter cuisine and Ingredients.
% choose_dish will bind a value to the variable dishes.
% choose_dessert will bind a value to the variable desserts.
%  You must press a period after your input.

recipe :- choice, read_input.

choice :- write('Do you want to make a dish or dessert? ').

read_input :- read(Option), process_input(Option).

process_input(Option) :- (Option == dish), dishes.

process_input(Option) :- (Option == dessert), desserts.

 dishes :- write('Cuisine? indian | mexican | french ?'), read(Cuisine), 
 	   write('Ingredients1? rice | rice_flour | besan_flour | urad_Dal | toor_Dal | all_Purpose_flour 
 	   	| taco_Shell | potatoes | bread:'), 
 	   read(Ingredient1), nl,
 	   write('Ingredient2? ginger | wheat_flour | parboiled_Rice | vegetables | cheese 
 	   	| cauliflower | tamarind | chilly_powder | brinjal:'),
 	   read(Ingredient2), nl,
       write('Spicy level? <=50 | >50 :'), read(Taste), 
       choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, Make_dish),
       write('You can make '), write(Make_dish), nl. 

desserts :- write('Cuisine? indian | mexican | french ?'), read(Cuisine), 
 	   write('Ingredient1? rice | chickpea_flour | corn_flour | puff_Pastry | espresso_powder | caramel ?'),
 	   read(Ingredient1), 
 	   write('Ingredient2? butter | mayo | milk | frozen_corn | cocoa_powder ?'),
 	   read(Ingredient2),
       choose_dessert(Cuisine, Ingredient1, Ingredient2, Make_sweet_dish),
       write('You can make '), write(Make_sweet_dish), nl.

% Confidence Factor of choose rules are all 60 percent.

% choose rules follow ... 

% Dishes

% Following dish will be chosen if Cuisine is indian and ingridents are rice_flour and ginger
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Khichu') :- indian(Cuisine), rice_flour(Ingredient1), ginger(Ingredient2), spicy(Taste), write('Whole Recipe of Khichu is available on this link: https://werecipes.com/rice-khichu-recipe-gujarati-rice-khichu'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are Besan and ginger
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Khaman') :- indian(Cuisine), special_ingredient(Ingredient1, Ingredient2), spicy(Taste), write('Whole Recipe of Khaman is available on this link: https://foodviva.com/snacks-recipes/khaman-dhokla-recipe'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are Besan and ginger
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Besan Tikki') :- indian(Cuisine), special_ingredient(Ingredient1, Ingredient2), spicy(Taste), write('Whole Recipe of Besan Tikki is available on this link: https://www.youtube.com/watch?v=IUrIIn2buq4'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are urad_Dal and parboiled_Rice
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Idli-Sambhar') :- indian(Cuisine), urad_Dal(Ingredient1), parboiled_Rice(Ingredient2), mild(Taste), write('Whole Recipe of Idli-Sambhar is available on this link: https://www.bawarchi.com/recipe/idli-sambar-oetscRihdgfji.html'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are rice and tamarind
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Puliyoagare') :- rice_indian(Ingredient1, Cuisine), tamarind(Ingredient2), spicy(Taste), write('Whole Recipe of Puliyoagare is available on this link: https://www.indianhealthyrecipes.com/puliyogare-recipe/'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are rice and chilly_powder
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Bisi Bele Bath') :- rice_indian(Ingredient1, Cuisine), chilly_powder(Ingredient2), spicy(Taste), write('Whole Recipe of Bisi Bele Bath is available on this link: https://www.indianhealthyrecipes.com/bisi-bele-bath'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are rice and brinjal
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Vangi Bath') :- rice_indian(Ingredient1, Cuisine), brinjal(Ingredient2), spicy(Taste), write('Whole Recipe of Vangi Bath is available on this link: https://www.indianhealthyrecipes.com/vangi-bath-recipe-brinjal-fried-rice-recipe'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are urad_Dal and parboiled_Rice
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Dosa') :- indian(Cuisine), urad_Dal(Ingredient1), parboiled_Rice(Ingredient2), spicy(Taste), write('Whole Recipe of Dosa is available on this link: https://www.indianhealthyrecipes.com/dosa-recipe-dosa-batter'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are toor_Dal and parboiled_Rice
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Uttapam') :- indian(Cuisine), toor_Dal(Ingredient1), parboiled_Rice(Ingredient2), mild(Taste), write('Whole Recipe of Uttapam is available on this link: https://www.24mantra.com/blogs/recipes/a-mouth-melting-meal-with-this-amazing-uttapam-recipe'),nl.

% Following dish will be chosen if Cuisine is indian and ingridents are toor_Dal and wheat_flour
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Dal-Bati') :- indian(Cuisine), toor_Dal(Ingredient1), wheat_flour(Ingredient2), spicy(Taste), write('Whole Recipe of Dal-Bati is available on this link: https://www.manjulaskitchen.com/dal-bati'),nl.

% Following dish will be chosen if Cuisine is mexican and ingridents are all_Purpose_flour and cheese
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Cheese Quesadillas') :- mexican(Cuisine), all_Purpose_flour(Ingredient1), cheese(Ingredient2), mild(Taste), write('Whole Recipe of Cheese Quesadillas is available on this link: https://www.tasteofhome.com/recipes/three-cheese-quesadillas'),nl.

% Following dish will be chosen if Cuisine is mexican and ingridents are taco_Shell and vegetables
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Tacos') :- mexican(Cuisine), taco_Shell(Ingredient1), vegetables(Ingredient2), mild(Taste), write('Whole Recipe of Tacos is available on this link: https://www.thewholesomedish.com/the-best-homemade-tacos'),nl.

% Following dish will be chosen if Cuisine is mexican and ingridents are all_Purpose_flour and vegetables
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Chalupa') :- mexican(Cuisine), all_Purpose_flour(Ingredient1), vegetables(Ingredient2), spicy(Taste), write('Whole Recipe of Chalupa is available on this link: https://thetortillachannel.com/how-to-make-chalupas'),nl.

% Following dish will be chosen if Cuisine is french and ingridents are all_Purpose_flour and vegetables
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Ratatouille') :- french(Cuisine), all_Purpose_flour(Ingredient1), vegetables(Ingredient2), mild(Taste), write('Whole Recipe of Ratatouille is available on this link: https://www.allrecipes.com/recipe/222006/disneys-ratatouille'),nl.

% Following dish will be chosen if Cuisine is french and ingridents are potatoes and mayo
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'French Fries') :- french(Cuisine), potatoes(Ingredient1), mayo(Ingredient2), mild(Taste), write('Whole Recipe of French Fries is available on this link: https://www.cookingclassy.com/french-fries'),nl.

% Following dish will be chosen if Cuisine is french and ingridents are bread and cauliflower
choose_dish(Cuisine, Ingredient1, Ingredient2, Taste, 'Cauliflower Gratin') :- french(Cuisine), bread(Ingredient1), cauliflower(Ingredient2), spicy(Taste), write('Whole Recipe of Cauliflower Gratin is available on this link: https://damndelicious.net/2017/11/08/creamy-cauliflower-gratin'),nl.

% Random below choice chosen if all of the above failed
choose_dish(_, _, _, _, 'Make Pizzas instead as there are no matches for the options you chose').

% Dessert

% Following sweet dish will be chosen if Cuisine is Indian and ingridents are rice and milk
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Khir') :- indian(Cuisine), rice(Ingredient1), milk(Ingredient2), write('Whole Recipe of Khir is available on this link: https://www.tarladalal.com/Rice-Kheer-2040r'),nl.

% Following sweet dish will be chosen if Cuisine is Indian and ingridents are all_Purpose_flour and milk
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Gulab Jamun') :- indian(Cuisine), all_Purpose_flour(Ingredient1), milk(Ingredient2), write('Whole Recipe of Gulab Jamun is available on this link: https://www.indianhealthyrecipes.com/gulab-jamun-recipe-using-milk-powder'),nl.

% Following sweet dish will be chosen if Cuisine is Indian and ingridents are chickpea_flour and butter
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Magaj') :- indian(Cuisine), chickpea_flour(Ingredient1), butter(Ingredient2), write('Whole Recipe of Magaj is available on this link: https://milkandcardamom.com/2019/05/28/magaz/'),nl.

% Following sweet dish will be chosen if Cuisine is mexican and ingridents are corn_flour and frozen_corn
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Sweet Corn Cake') :- mexican(Cuisine), corn_flour(Ingredient1),frozen_corn(Ingredient2), write('Whole Recipe of Sweet Corn Cake is available on this link: https://flavorthemoments.com/mexican-sweet-corn-cake'),nl.

% Following sweet dish will be chosen if Cuisine is mexican and ingridents are rice and milk
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Sweet Rice Recipe') :- mexican(Cuisine), rice(Ingredient1), milk(Ingredient2), write('Whole Recipe of Sweet Rice Recipe is available on this link: https://www.allrecipes.com/recipe/214083/sweet-rice'),nl.

% Following sweet dish will be chosen if Cuisine is mexican and ingridents are all_Purpose_flour and cocoa_powder
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Conchas') :- mexican(Cuisine), all_Purpose_flour(Ingredient1), cocoa_powder(Ingredient2), write('Whole Recipe of Conchas is available on this link: https://www.mexicoinmykitchen.com/concha-recipe'),nl.

% Following sweet dish will be chosen if Cuisine is French and ingridents are puff_Pastry and butter
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Palmiers') :- french(Cuisine), puff_Pastry(Ingredient1), butter(Ingredient2), write('Whole Recipe of Palmiers is available on this link: https://www.epicurious.com/recipes/food/views/sweet-palmiers-106763'),nl.

% Following sweet dish will be chosen if Cuisine is French and ingridents are espresso_powder and milk
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Mocha Pots') :- french(Cuisine), espresso_powder(Ingredient1), milk(Ingredient2), write('Whole Recipe of Mocha Pots is available on this link: https://www.goodhousekeeping.com/food-recipes/a14020/mocha-pots-de-creme-recipe-ghk0212'),nl.

% Following sweet dish will be chosen if Cuisine is French and ingridents are caramel and milk
choose_dessert(Cuisine, Ingredient1, Ingredient2, 'Cream Caramel') :- french(Cuisine), caramel(Ingredient1), milk(Ingredient2), write('Whole Recipe of Cream Caramel is available on this link: https://www.finecooking.com/recipe/basic-creme-caramel'),nl.

% Random below choice chosen if all of the above failed
choose_dessert(_, _, _, 'Make Brownie instead as there are no matches for the options you chose').


% CF for these rules is 100 because they are definitions.

rice_flour(Ingredient1) :- Ingredient1 = rice_flour.
urad_Dal(Ingredient1) :- Ingredient1 = urad_Dal.
toor_Dal(Ingredient1) :- Ingredient1 = toor_Dal.
all_Purpose_flour(Ingredient1) :- Ingredient1 =  all_Purpose_flour.
taco_Shell(Ingredient1) :- Ingredient1 = taco_Shell.
potatoes(Ingredient1) :- Ingredient1 = potatoes.
bread(Ingredient1) :- Ingredient1 = bread.
rice(Ingredient1) :- Ingredient1 = rice.
chickpea_flour(Ingredient1) :- Ingredient1 = chickpea_flour.
corn_flour(Ingredient1) :- Ingredient1 = corn_flour.
puff_Pastry(Ingredient1) :- Ingredient1 = puff_Pastry.
espresso_powder(Ingredient1) :- Ingredient1 = espresso_powder.
caramel(Ingredient1) :- Ingredient1 = caramel.
besan_flour(Ingredient1) :- Ingredient1 = besan_flour.


ginger(Ingredient2) :- Ingredient2 = ginger.
wheat_flour(Ingredient2) :- Ingredient2 = wheat_flour.
parboiled_Rice(Ingredient2) :- Ingredient2 = parboiled_Rice.
vegetables(Ingredient2) :- Ingredient2 = vegetables.
chilly_powder(Ingredient2) :- Ingredient2 = chilly_powder.
tamarind(Ingredient2) :- Ingredient2 = tamarind.
brinjal(Ingredient2) :- Ingredient2 = brinjal.
cheese(Ingredient2) :- Ingredient2 = cheese.
butter(Ingredient2) :- Ingredient2 = butter.
mayo(Ingredient2) :- Ingredient2 = mayo.
cauliflower(Ingredient2) :- Ingredient2 = cauliflower.
milk(Ingredient2) :- Ingredient2 = milk.
frozen_corn(Ingredient2) :- Ingredient2 = frozen_corn.
cocoa_powder(Ingredient2) :- Ingredient2 = cocoa_powder.

% CF for these rules is 80.

indian(Cuisine) :- Cuisine = indian.
mexican(Cuisine) :- Cuisine = mexican.
french(Cuisine) :- Cuisine = french.

% CF for these rules is 90.

spicy(Taste) :- Taste > 50.
mild(Taste) :- Taste =< 50.


% CF for these rules is 70.

special_ingredient(Ingredient1, Ingredient2) :- besan_flour(Ingredient1), ginger(Ingredient2).

rice_indian(Ingredient1,Cuisine) :- Ingredient1 = rice, Cuisine = indian.

% This system uses no facts 