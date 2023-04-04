import 'package:food_app_dl/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distanse;
  String label;
  String logoUrl;
  String decs;
  num score;
  Map <String, List<Food>> menu;

  Restaurant (this.name,
  this.waitTime,
  this.logoUrl,
  this.decs,
  this.distanse,
  this.label,
  this.score,
  this.menu
  );
  static Restaurant generateRestaurant() {
    return Restaurant('Restaurant',
     '20-30 min', 
     'assets/res_logo.png',
     'Orange sandiviches is dilishios',
     '2-4 km', 
     'Restaurant',
      4.7, 
      {
        'Recomend': Food.generateRecomendFoods(),
        'Popular': Food.generatePopularFood(),
        'Noodles': [],
        'Pizza' : [],
      },
    );
  }

}