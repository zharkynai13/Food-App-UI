class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingridients;
  String about;
  bool hightLight;

  Food (this.imgUrl,
  this.desc,
  this.name,
  this.waitTime,
  this.score,
  this.cal,
  this.price,
  this.quantity,
  this.ingridients,
  this.about,
  {this.hightLight = false});

  static List<Food> generateRecomendFoods() {
    return [
   
   Food(
    "assets/dish1.png",
     'No1 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/ingre2.png',
    },
     {
      'Egg': 'assets/ingre3.png',
    },
    {
      'Scalion': 'assets/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant lotem ipsum have a nice day for for love'
      'food food some food for me i can eat some food love love life create create it code in vs code ',
       hightLight: true,
     ),

   Food("assets/dish2.png",
     'No2 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/ingre2.png',
    },
     {
      'Egg': 'assets/ingre3.png',
    },
    {
      'Egg': 'assets/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant Enjoy the delicious flavor of our Cook-in-Bag entrées with no prep and minimal cleanup.'
      'Enjoy the delicious flavor of our Cook-in-Bag entrées with no prep and minimal cleanup.',
      ),
    Food("assets/dish3.png",
     'No2 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/ingre2.png',
    },
     {
      'Egg': 'assets/ingre3.png',
    },
    {
      'Egg': 'assets/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant ',
      )  
  ];
}

  static List<Food> generatePopularFood() {
     return [
   
   Food(
    "assets/dish4.png",
     'No1 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/ingre2.png',
    },
     {
      'Egg': 'assets/ingre3.png',
    },
    {
      'Scalion': 'assets/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant ,'
      'Enjoy the delicious flavor of our Cook-in-Bag entrées with no prep and minimal cleanup.'
      'Enjoy the delicious flavor of our Cook-in-Bag entrées with no prep and minimal cleanup.'
      'Enjoy the delicious flavor of our Cook-in-Bag entrées with no prep and minimal cleanup.',
      hightLight: true,
     ),
     ];
  }

}