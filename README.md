# README

## Setup and Runnng project

Usual Rails app setup process should be fine.

Make sure you have ruby 3.1.2 and Rails 7.0.4 installed on your system

- From project root run `bundle`
- Then run `rake db:setup`
- Then run the project by `rail s`. Access it by visiting `http://localhost:3000/`


## API Documentation
### Get list of categories

* Get JSON from `/api/v1/categories`

#### Request

* Type: `GET`
* Header: `Content-Type: application/json`

#### Response Body:
```json
[
    {
        "id": "1",
        "name": "Beef",
        "thumbnail": "https://www.themealdb.com/images/category/beef.png",
        "description": "Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]"
    },
    {
        "id": "2",
        "name": "Chicken",
        "thumbnail": "https://www.themealdb.com/images/category/chicken.png",
        "description": "Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets."
    },
    {
        "id": "3",
        "name": "Dessert",
        "thumbnail": "https://www.themealdb.com/images/category/dessert.png",
        "description": "Dessert is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur, however in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal.\r\n\r\nThe term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, and sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness. Some cultures sweeten foods that are more commonly savory to create desserts."
    },
    {
        "id": "4",
        "name": "Lamb",
        "thumbnail": "https://www.themealdb.com/images/category/lamb.png",
        "description": "Lamb, hogget, and mutton are the meat of domestic sheep (species Ovis aries) at different ages.\r\n\r\nA sheep in its first year is called a lamb, and its meat is also called lamb. The meat of a juvenile sheep older than one year is hogget; outside the USA this is also a term for the living animal. The meat of an adult sheep is mutton, a term only used for the meat, not the living animals. The term mutton is almost always used to refer to goat meat in the Indian subcontinent.\r\n\r\n"
    },
    {
        "id": "5",
        "name": "Miscellaneous",
        "thumbnail": "https://www.themealdb.com/images/category/miscellaneous.png",
        "description": "General foods that don't fit into another category"
    },
    {
        "id": "6",
        "name": "Pasta",
        "thumbnail": "https://www.themealdb.com/images/category/pasta.png",
        "description": "Pasta is a staple food of traditional Italian cuisine, with the first reference dating to 1154 in Sicily.\r\n\r\nAlso commonly used to refer to the variety of pasta dishes, pasta is typically a noodle made from an unleavened dough of a durum wheat flour mixed with water or eggs and formed into sheets or various shapes, then cooked by boiling or baking. As an alternative for those wanting a different taste, or who need to avoid products containing gluten, some pastas can be made using rice flour in place of wheat.[3][4] Pastas may be divided into two broad categories, dried (pasta secca) and fresh (pasta fresca)."
    },
    {
        "id": "7",
        "name": "Pork",
        "thumbnail": "https://www.themealdb.com/images/category/pork.png",
        "description": "Pork is the culinary name for meat from a domestic pig (Sus scrofa domesticus). It is the most commonly consumed meat worldwide,[1] with evidence of pig husbandry dating back to 5000 BC. Pork is eaten both freshly cooked and preserved. Curing extends the shelf life of the pork products. Ham, smoked pork, gammon, bacon and sausage are examples of preserved pork. Charcuterie is the branch of cooking devoted to prepared meat products, many from pork.\r\n\r\nPork is the most popular meat in Eastern and Southeastern Asia, and is also very common in the Western world, especially in Central Europe. It is highly prized in Asian cuisines for its fat content and pleasant texture. Consumption of pork is forbidden by Jewish and Muslim dietary law, a taboo that is deeply rooted in tradition, with several suggested possible causes. The sale of pork is limited in Israel and illegal in certain Muslim countries."
    },
    {
        "id": "8",
        "name": "Seafood",
        "thumbnail": "https://www.themealdb.com/images/category/seafood.png",
        "description": "Seafood is any form of sea life regarded as food by humans. Seafood prominently includes fish and shellfish. Shellfish include various species of molluscs, crustaceans, and echinoderms. Historically, sea mammals such as whales and dolphins have been consumed as food, though that happens to a lesser extent in modern times. Edible sea plants, such as some seaweeds and microalgae, are widely eaten as seafood around the world, especially in Asia (see the category of sea vegetables). In North America, although not generally in the United Kingdom, the term \"seafood\" is extended to fresh water organisms eaten by humans, so all edible aquatic life may be referred to as seafood. For the sake of completeness, this article includes all edible aquatic life."
    },
    {
        "id": "9",
        "name": "Side",
        "thumbnail": "https://www.themealdb.com/images/category/side.png",
        "description": "A side dish, sometimes referred to as a side order, side item, or simply a side, is a food item that accompanies the entrée or main course at a meal. Side dishes such as salad, potatoes and bread are commonly used with main courses throughout many countries of the western world. New side orders introduced within the past decade[citation needed], such as rice and couscous, have grown to be quite popular throughout Europe, especially at formal occasions (with couscous appearing more commonly at dinner parties with Middle Eastern dishes)."
    },
    {
        "id": "10",
        "name": "Starter",
        "thumbnail": "https://www.themealdb.com/images/category/starter.png",
        "description": "An entrée in modern French table service and that of much of the English-speaking world (apart from the United States and parts of Canada) is a dish served before the main course of a meal; it may be the first dish served, or it may follow a soup or other small dish or dishes. In the United States and parts of Canada, an entrée is the main dish or the only dish of a meal.\r\n\r\nHistorically, the entrée was one of the stages of the “Classical Order” of formal French table service of the 18th and 19th centuries. It formed a part of the “first service” of the meal, which consisted of potage, hors d’œuvre, and entrée (including the bouilli and relevé). The “second service” consisted of roast (rôti), salad, and entremets (the entremets sometimes being separated into a “third service” of their own). The final service consisted only of dessert.[3]:3–11 :13–25"
    },
    {
        "id": "11",
        "name": "Vegan",
        "thumbnail": "https://www.themealdb.com/images/category/vegan.png",
        "description": "Veganism is both the practice of abstaining from the use of animal products, particularly in diet, and an associated philosophy that rejects the commodity status of animals.[b] A follower of either the diet or the philosophy is known as a vegan (pronounced /ˈviːɡən/ VEE-gən). Distinctions are sometimes made between several categories of veganism. Dietary vegans (or strict vegetarians) refrain from consuming animal products, not only meat but also eggs, dairy products and other animal-derived substances.[c] The term ethical vegan is often applied to those who not only follow a vegan diet but extend the philosophy into other areas of their lives, and oppose the use of animals for any purpose.[d] Another term is environmental veganism, which refers to the avoidance of animal products on the premise that the harvesting or industrial farming of animals is environmentally damaging and unsustainable."
    },
    {
        "id": "12",
        "name": "Vegetarian",
        "thumbnail": "https://www.themealdb.com/images/category/vegetarian.png",
        "description": "Vegetarianism is the practice of abstaining from the consumption of meat (red meat, poultry, seafood, and the flesh of any other animal), and may also include abstention from by-products of animal slaughter.\r\n\r\nVegetarianism may be adopted for various reasons. Many people object to eating meat out of respect for sentient life. Such ethical motivations have been codified under various religious beliefs, as well as animal rights advocacy. Other motivations for vegetarianism are health-related, political, environmental, cultural, aesthetic, economic, or personal preference. There are variations of the diet as well: an ovo-lacto vegetarian diet includes both eggs and dairy products, an ovo-vegetarian diet includes eggs but not dairy products, and a lacto-vegetarian diet includes dairy products but not eggs. A vegan diet excludes all animal products, including eggs and dairy. Some vegans also avoid other animal products such as beeswax, leather or silk clothing, and goose-fat shoe polish."
    },
    {
        "id": "13",
        "name": "Breakfast",
        "thumbnail": "https://www.themealdb.com/images/category/breakfast.png",
        "description": "Breakfast is the first meal of a day. The word in English refers to breaking the fasting period of the previous night. There is a strong likelihood for one or more \"typical\", or \"traditional\", breakfast menus to exist in most places, but their composition varies widely from place to place, and has varied over time, so that globally a very wide range of preparations and ingredients are now associated with breakfast."
    },
    {
        "id": "14",
        "name": "Goat",
        "thumbnail": "https://www.themealdb.com/images/category/goat.png",
        "description": "The domestic goat or simply goat (Capra aegagrus hircus) is a subspecies of C. aegagrus domesticated from the wild goat of Southwest Asia and Eastern Europe. The goat is a member of the animal family Bovidae and the subfamily Caprinae, meaning it is closely related to the sheep. There are over 300 distinct breeds of goat. Goats are one of the oldest domesticated species of animal, and have been used for milk, meat, fur and skins across much of the world. Milk from goats is often turned into goat cheese."
    }
]
```


### Returns an array of recipes for a specific category

* Get JSON from `/api/v1/categories/:name/recipes`

#### Request

* Type: `GET`
* Header: `Content-Type: application/json`

#### Response Body:
```json
[
    {
        "id": "52874",
        "name": "Beef and Mustard Pie",
        "thumbnail": "https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg"
    },
    {
        "id": "52878",
        "name": "Beef and Oyster pie",
        "thumbnail": "https://www.themealdb.com/images/media/meals/wrssvt1511556563.jpg"
    },
    {
        "id": "52997",
        "name": "Beef Banh Mi Bowls with Sriracha Mayo, Carrot & Pickled Cucumber",
        "thumbnail": "https://www.themealdb.com/images/media/meals/z0ageb1583189517.jpg"
    },
    {
        "id": "52904",
        "name": "Beef Bourguignon",
        "thumbnail": "https://www.themealdb.com/images/media/meals/vtqxtu1511784197.jpg"
    },
    {
        "id": "52812",
        "name": "Beef Brisket Pot Roast",
        "thumbnail": "https://www.themealdb.com/images/media/meals/ursuup1487348423.jpg"
    },
    {
        "id": "52873",
        "name": "Beef Dumpling Stew",
        "thumbnail": "https://www.themealdb.com/images/media/meals/uyqrrv1511553350.jpg"
    },
    {
        "id": "52952",
        "name": "Beef Lo Mein",
        "thumbnail": "https://www.themealdb.com/images/media/meals/1529444830.jpg"
    },
    {
        "id": "53053",
        "name": "Beef Rendang",
        "thumbnail": "https://www.themealdb.com/images/media/meals/bc8v651619789840.jpg"
    },
    {
        "id": "52834",
        "name": "Beef stroganoff",
        "thumbnail": "https://www.themealdb.com/images/media/meals/svprys1511176755.jpg"
    },
    {
        "id": "52824",
        "name": "Beef Sunday Roast",
        "thumbnail": "https://www.themealdb.com/images/media/meals/ssrrrs1503664277.jpg"
    },
    {
        "id": "52803",
        "name": "Beef Wellington",
        "thumbnail": "https://www.themealdb.com/images/media/meals/vvpprx1487325699.jpg"
    },
    {
        "id": "53013",
        "name": "Big Mac",
        "thumbnail": "https://www.themealdb.com/images/media/meals/urzj1d1587670726.jpg"
    },
    {
        "id": "52979",
        "name": "Bitterballen (Dutch meatballs)",
        "thumbnail": "https://www.themealdb.com/images/media/meals/lhqev81565090111.jpg"
    },
    {
        "id": "52826",
        "name": "Braised Beef Chilli",
        "thumbnail": "https://www.themealdb.com/images/media/meals/uuqvwu1504629254.jpg"
    },
    {
        "id": "53055",
        "name": "Cevapi Sausages",
        "thumbnail": "https://www.themealdb.com/images/media/meals/vc08jn1628769553.jpg"
    },
    {
        "id": "53063",
        "name": "Chivito uruguayo",
        "thumbnail": "https://www.themealdb.com/images/media/meals/n7qnkb1630444129.jpg"
    },
    {
        "id": "52998",
        "name": "Corned Beef and Cabbage",
        "thumbnail": "https://www.themealdb.com/images/media/meals/xb97a81583266727.jpg"
    },
    {
        "id": "53058",
        "name": "Croatian Bean Stew",
        "thumbnail": "https://www.themealdb.com/images/media/meals/tnwy8m1628770384.jpg"
    },
    {
        "id": "53056",
        "name": "Croatian lamb peka",
        "thumbnail": "https://www.themealdb.com/images/media/meals/pn59o51628769837.jpg"
    },
    {
        "id": "53031",
        "name": "Egyptian Fatteh",
        "thumbnail": "https://www.themealdb.com/images/media/meals/rlwcc51598734603.jpg"
    },
    {
        "id": "53021",
        "name": "Gołąbki (cabbage roll)",
        "thumbnail": "https://www.themealdb.com/images/media/meals/q8sp3j1593349686.jpg"
    },
    {
        "id": "52781",
        "name": "Irish stew",
        "thumbnail": "https://www.themealdb.com/images/media/meals/sxxpst1468569714.jpg"
    },
    {
        "id": "52938",
        "name": "Jamaican Beef Patties",
        "thumbnail": "https://www.themealdb.com/images/media/meals/wsqqsw1515364068.jpg"
    },
    {
        "id": "52947",
        "name": "Ma Po Tofu",
        "thumbnail": "https://www.themealdb.com/images/media/meals/1525874812.jpg"
    },
    {
        "id": "52827",
        "name": "Massaman Beef curry",
        "thumbnail": "https://www.themealdb.com/images/media/meals/tvttqv1504640475.jpg"
    },
    {
        "id": "52876",
        "name": "Minced Beef Pie",
        "thumbnail": "https://www.themealdb.com/images/media/meals/xwutvy1511555540.jpg"
    },
    {
        "id": "52927",
        "name": "Montreal Smoked Meat",
        "thumbnail": "https://www.themealdb.com/images/media/meals/uttupv1511815050.jpg"
    },
    {
        "id": "53006",
        "name": "Moussaka",
        "thumbnail": "https://www.themealdb.com/images/media/meals/ctg8jd1585563097.jpg"
    },
    {
        "id": "53029",
        "name": "Mulukhiyah",
        "thumbnail": "https://www.themealdb.com/images/media/meals/x372ug1598733932.jpg"
    },
    {
        "id": "52943",
        "name": "Oxtail with broad beans",
        "thumbnail": "https://www.themealdb.com/images/media/meals/1520083578.jpg"
    },
    {
        "id": "53017",
        "name": "Paszteciki (Polish Pasties)",
        "thumbnail": "https://www.themealdb.com/images/media/meals/c9a3l31593261890.jpg"
    },
    {
        "id": "52930",
        "name": "Pate Chinois",
        "thumbnail": "https://www.themealdb.com/images/media/meals/yyrrxr1511816289.jpg"
    },
    {
        "id": "53042",
        "name": "Portuguese prego with green piri-piri",
        "thumbnail": "https://www.themealdb.com/images/media/meals/ewcikl1614348364.jpg"
    },
    {
        "id": "52941",
        "name": "Red Peas Soup",
        "thumbnail": "https://www.themealdb.com/images/media/meals/sqpqtp1515365614.jpg"
    },
    {
        "id": "53052",
        "name": "Roti john",
        "thumbnail": "https://www.themealdb.com/images/media/meals/hx335q1619789561.jpg"
    },
    {
        "id": "52992",
        "name": "Soy-Glazed Meatloaves with Wasabi Mashed Potatoes & Roasted Carrots",
        "thumbnail": "https://www.themealdb.com/images/media/meals/o2wb6p1581005243.jpg"
    },
    {
        "id": "52770",
        "name": "Spaghetti Bolognese",
        "thumbnail": "https://www.themealdb.com/images/media/meals/sutysw1468247559.jpg"
    },
    {
        "id": "52881",
        "name": "Steak and Kidney Pie",
        "thumbnail": "https://www.themealdb.com/images/media/meals/qysyss1511558054.jpg"
    },
    {
        "id": "52935",
        "name": "Steak Diane",
        "thumbnail": "https://www.themealdb.com/images/media/meals/vussxq1511882648.jpg"
    },
    {
        "id": "52950",
        "name": "Szechuan Beef",
        "thumbnail": "https://www.themealdb.com/images/media/meals/1529443236.jpg"
    },
    {
        "id": "53057",
        "name": "Traditional Croatian Goulash",
        "thumbnail": "https://www.themealdb.com/images/media/meals/n1hcou1628770088.jpg"
    },
    {
        "id": "53000",
        "name": "Vegetable Shepherd's Pie",
        "thumbnail": "https://www.themealdb.com/images/media/meals/w8umt11583268117.jpg"
    }
]
```

### Get a single recipe

* Get JSON from `/api/v1/recipes/:id`

#### Request

* Type: `GET`
* Header: `Content-Type: application/json`

#### Response Body:
```json
{
    "id": "52880",
    "name": "McSinghs Scotch pie",
    "thumbnail": "https://www.themealdb.com/images/media/meals/vssrtx1511557680.jpg",
    "category": "Lamb",
    "area": "British",
    "instructions": "Heat a large frying pan and toast the cumin seeds for a few minutes, then set aside. Heat the oil in the same pan and fry the onion, garlic, chilli, pepper and a good pinch of salt for around eight minutes, until there is no moisture left. Remove from the heat, stir in the toasted cumin seeds, ground mace (or nutmeg) and ground coriander. Leave to cool.\r\nIn a large bowl mix together the minced lamb, white pepper, fresh coriander, and the cooled spiced onion mixture until combined. Set aside, covered, in the fridge.\r\nPreheat the oven to 200C/400F/Gas 6 and generously grease a 20cm/8in diameter loose-bottomed or springform round cake tin with lard.\r\nTo make the pastry, sift the flour and salt in a large bowl and make a well in the centre.\r\nPut the milk, lard and 90ml/3fl oz of water in a saucepan and heat gently. When the lard has melted, increase the heat and bring to the boil.\r\nPour the boiling liquid into the flour, and use a wooden spoon to combine until cool enough to handle. Bring together into a ball.\r\nDust a work surface with flour and, working quickly, knead the dough briefly – it will be soft and moist. Set aside a third of the pastry and roll the rest out on a well-floured surface. Line the pie dish with the pastry, pressing it right up the sides until it pokes just over the top of the tin.\r\nAdd the filling into the pastry-lined tin bit by bit. As you reach the top, form a slight peak. Roll out the reserved pastry and top the pie with it. Pinch the edges to seal and trim the excess. Poke a hole in the top of the pie and insert a small tube made from aluminium foil to allow steam to escape.\r\nBrush the top of the pie with a little beaten egg yolk, and bake in the preheated oven for 30 minutes (put a tray on the shelf below to catch any drips). Then reduce the temperature to 160C/325F/Gas 3 and cook for a further 1¼ hours until golden-brown. Leave to cool completely before refrigerating for two hours, or overnight.\r\nRun a knife around the edge of the pie, remove from the tin and serve with chutneys, salads or pickles.",
    "tags": "Pie",
    "youtube": "https://www.youtube.com/watch?v=1nArqhRyszw",
    "ingredients": {
        "Cumin": "2 tsp",
        "Rapeseed Oil": "1 tbs",
        "Red Onions": "2 finely chopped",
        "Garlic Clove": "6",
        "Green Chilli": "3 finely chopped",
        "Red Pepper": "1 finely chopped ",
        "Nutmeg": "1 tsp ",
        "Coriander": "3 tbs",
        "Lamb Mince": "1kg",
        "Pepper": "1 tsp ",
        "Plain Flour": "340g",
        "Salt": "½ tsp",
        "Milk": "90 ml ",
        "Lard": "150g",
        "Egg Yolks": "Beaten"
    }
}
```

