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
    "assets/img/dish1.png",
     'No1 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/img/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/img/ingre2.png',
    },
     {
      'Egg': 'assets/img/ingre3.png',
    },
    {
      'Scalion': 'assets/img/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant ',
       hightLight: true,
     ),

   Food("assets/img/dish2.png",
     'No2 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/img/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/img/ingre2.png',
    },
     {
      'Egg': 'assets/img/ingre3.png',
    },
    {
      'Egg': 'assets/img/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant ',
      ),
    Food("assets/img/dish3.png",
     'No2 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/img/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/img/ingre2.png',
    },
     {
      'Egg': 'assets/img/ingre3.png',
    },
    {
      'Egg': 'assets/img/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant ',
      )  
  ];
}

  static List<Food> generatePopularFood() {
     return [
   
   Food(
    "assets/img/dish4.png",
     'No1 in Sales',
     'Soba Soup',
      "50 min", 
      4.8, 
      '325 kkal', 
      12,
       1,
       
     [
    {
      'Noodle': 'assets/img/ingre1.png',
    },
    
     {
      'Shrimp': 'assets/img/ingre2.png',
    },
     {
      'Egg': 'assets/img/ingre3.png',
    },
    {
      'Scalion': 'assets/img/ingre4.png',
    },
     ],
      'Simple food Ramen of Japanes food it is onle on og very impotant ',
      hightLight: true,
     ),
     ];
  }

}