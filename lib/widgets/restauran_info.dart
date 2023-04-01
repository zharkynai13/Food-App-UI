import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:food_app_dl/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurant();
  RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:  const EdgeInsets.only(top: 40,),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(restaurant.waitTime,
                        style: 
                         const TextStyle(color: Colors.white),)
                         ),
                    const SizedBox(width: 10,),
                      Text(restaurant.distanse,
                      style: 
                       TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Colors.grey.withOpacity(0.4)),
                      ),
                    const SizedBox(width: 10,),
                      Text(restaurant.label,
                      style: 
                       TextStyle(fontSize: 16,
                       fontWeight: FontWeight.bold,
                       color: Colors.grey.withOpacity(0.4)))
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(restaurant.logoUrl,width: 80,),
              )
            ],
          ),
          const SizedBox(height: 5,),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Text(
            restaurant.decs,
            style: TextStyle(fontSize: 16),)
           ],
          )
        ]
        ),
    );
  }
}