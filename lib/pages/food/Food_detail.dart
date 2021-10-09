import 'package:flutter/material.dart';
import 'package:flutter_food/helpers/platform_aware_asset_image.dart';
import 'package:flutter_food/method/food_item.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {



  @override

  Widget build(BuildContext context) {
    var items = ModalRoute.of(context)!.settings.arguments as Fooditem;
    return Scaffold(
      appBar: AppBar(
        title: Text(items.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Container(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset('assets/images/${items.image}'),
          )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text("$items",
                style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
          )
        ],
      ),
    );
  }
}
