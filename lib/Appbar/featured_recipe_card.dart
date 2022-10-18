// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'dart:ui';


import 'package:flutter/material.dart';
//import 'package:appschool/views/screens/recipe_detail_page.dart';

class FeaturedRecipeCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final data;
  FeaturedRecipeCard({@required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      // Card Wrapper
      child: Container(
        width: 180,
        height: 220,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(data.photo),
            fit: BoxFit.cover,
          ),
        ),
        // Recipe Card Info
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Container(
              height: 80,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black.withOpacity(0.26),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Recipe Title
                  Text(
                    data.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 150 / 100,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'inter'),
                  ),
                  // Recipe Calories and Time
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        //agregar icono
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            data.calories,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.alarm, size: 12, color: Colors.white),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            data.time,
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}