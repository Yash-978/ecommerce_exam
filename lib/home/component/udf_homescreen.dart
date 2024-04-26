import 'package:ecommerce_exam/list.dart';
import 'package:flutter/material.dart';
Widget detailbox(int index,String name,String img,String description,String) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,

                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(productList[index]['img']),
                        )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff1B2224),

                        ),
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                      )
                    ],
                  ),

                ],
              ),
            ),
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,

                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(productList[index]['img']),
                        )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff1B2224),

                        ),
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                      )
                    ],
                  ),

                ],
              ),
            )
          ],
        ),

      ],
    ),
  );
}

