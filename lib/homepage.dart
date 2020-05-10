import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import 'data/data.dart';

const backGroundColor = const Color(0xff61d4b3);
const searchIconColor = const Color(0xfffb8d62);
class HomePage extends StatelessWidget {
  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: backGroundColor,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                color: backGroundColor,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1542131596-dea5384842c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=200&q=80"),
                      ),
                      SizedBox(width: 20,),
                      Text(
                        "How hungry are you\ntoday?",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170, right: 30, left: 30),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: searchIconColor)
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Want to search anything',
                      suffixIcon: Icon(Icons.search,color: searchIconColor,)
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 140,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10,),
                itemCount: Utils.getFoodCategories().length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 140,
                      height: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Utils.getFoodCategories()[index].imagePath, height: 50, width: 50,),
                          SizedBox(height: 10,),
                          Text(Utils.getFoodCategories()[index].name)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Popular Food",
              style: TextStyle(color: searchIconColor, fontSize: 25),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 200,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 10,),
                itemCount: Utils.getPopularFoods().length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                            width: 180,
                            height: 160,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 90,),
                                  Text(Utils.getPopularFoods()[index].name),
                                  Text(
                                    Utils.getPopularFoods()[index].hotel,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset("images/star.svg", height: 15, width: 15,),
                                      SizedBox(width: 5,),
                                      Text(Utils.getPopularFoods()[index].ratings, style: TextStyle(color: Colors.grey),),
                                      SizedBox(width: 10,),
                                      Text(
                                          "\u20B9 "+Utils.getPopularFoods()[index].price,
                                        style: TextStyle(color: searchIconColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Image.network(Utils.getPopularFoods()[index].imagePath, width: 130, height: 130,),
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

