
import 'package:ecommerce_exam/list.dart';
import 'package:flutter/material.dart';
class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('Product Detail'),
        leading: Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart,),
          )
        ],



      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff000606)
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(productList[selectedindex]['img']),

                  )

                ),

              ),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.orange,width: 0.3)


                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                         'price',style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          '\$'+productList[selectedindex]['price'].toString(),style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),

                    Text(
                      productList[selectedindex]['description'].toString(),style: TextStyle(fontSize: 30),
                    ),

                  ],
                )


              ),
              InkWell(
                onTap: () {
                  for(int i=0;i<cartList.length;i++)
                    {
                      selectedindex=index;
                      cartList.add(index);

                    }

                },
                child: Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart_rounded,color: Colors.white,),
                      Text('ADD TO CART',style: TextStyle(color: Colors.white,),)
                    ],
                  )
                ),
              )
            ],
          ),

      ),
    );
  }
}
int index =0;