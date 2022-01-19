import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeWorkApple extends StatefulWidget {
  const HomeWorkApple({Key? key}) : super(key: key);

  @override
  _HomeWorkAppleState createState() => _HomeWorkAppleState();
}

class _HomeWorkAppleState extends State<HomeWorkApple> {
  List<String> images = [
    'assets/images/image_1.jpeg',
    'assets/images/image_1.jpeg',
    'assets/images/image_1.jpeg',
    'assets/images/image_1.jpeg',
    'assets/images/image_1.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade500,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade500,
        elevation: 0,
        centerTitle: true,
        title: Text("Apple Products"),
        actions: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.orange.shade800,
                borderRadius: BorderRadius.circular(7.5)),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 12.5),
            child: Text(
              "7",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            height: 30,
            width: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //#lifestyle
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.5)),
                        minWidth: 300,
                        height: 40,
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                margin: EdgeInsets.all(20),
                height: 240,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.grey.withOpacity(0.7),
                          Colors.grey.withOpacity(0.5),
                          Colors.grey.withOpacity(0.2),
                          Colors.grey.withOpacity(0.1),
                        ]),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/image_4.jpg"))),
              ),
              GridView.builder(
                padding: EdgeInsets.all(12),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (BuildContext, index) {
                  return itemOfGridView(index);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, mainAxisSpacing: 15),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemOfGridView(int index) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(images[index]))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
