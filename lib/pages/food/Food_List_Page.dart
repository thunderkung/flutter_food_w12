import 'package:flutter/material.dart';
import 'package:flutter_food/method/food_item.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  var items = [
    Fooditem(
      id: 1,
      name: "ข้าวมันไก่",
      price: 25,
      image: 'kao_mun_kai.jpg',
    ),
    Fooditem(
      id: 2,
      name: "ข้าวไข่เจียว",
      price: 25,
      image: 'kao_kai_jeaw.jpg',
    ),
    Fooditem(
      id: 3,
      name: "ข้าวผัด",
      price: 25,
      image: 'kao_pad.jpg',
    ),
    Fooditem(
      id: 4,
      name: "ข้าวหมูแดง",
      price: 25,
      image: 'kao_moo_dang.jpg',
    ),
    Fooditem(
      id: 5,
      name: "ข้าวหน้าเป็ด",
      price: 30,
      image: 'kao_na_ped.jpg',
    ),
    Fooditem(
      id: 6,
      name: "ผัดซีอิ๊ว",
      price: 30,
      image: 'pad_sie_eew.jpg',
    ),
    Fooditem(
      id: 7,
      name: "ผัดไทย",
      price: 30,
      image: 'pad_thai.jpg',
    ),
    Fooditem(
      id: 8,
      name: "ราดหน้า",
      price: 30,
      image: 'rad_na.jpg',
    ),
    Fooditem(
      id: 9,
      name: "ส้มตำไก่ย่าง",
      price: 60,
      image: 'som_tum_kai_yang.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext contex, int index) {
          var item = items[index];
          return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  goDetail(items[index]);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/${item.image}',
                        width: 60.0,
                        height: 60.0,
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 30,),
                          Text(
                            '${item.name}',
                            style: TextStyle(fontSize: 20,),
                          ),
                          SizedBox(width: 30,),
                          Text('${item.price} บาท',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ));
        },
      ),
    );

  }

  void goDetail(Fooditem item) {
    Navigator.pushNamed(
      context,
      "/FoodDetail",
      arguments: item,
    );
  }
}
