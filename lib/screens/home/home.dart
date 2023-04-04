import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app_dl/models/restaurant.dart';
import 'package:food_app_dl/screens/home/widget/food_list.dart';
import 'package:food_app_dl/widgets/custom_app_bar.dart';
import 'package:food_app_dl/screens/home/widget/restauran_info.dart';
import '../../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBackgraund,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar (
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined
          ),
          RestaurantInfo(),
          FoodList(
            selected,(int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
        
        ],
      ),
    );
  }
}