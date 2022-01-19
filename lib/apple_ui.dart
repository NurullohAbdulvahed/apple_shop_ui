import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "/homepage";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 12.5,horizontal: 5),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: BorderRadius.circular(7.5)
            ),
            child: Text("7",style: TextStyle(color: Colors.white),),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("Apple Products"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image_3.png')
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.1),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("Lifestyle sale",style: TextStyle(color: Colors.white,fontSize: 30),),
                        )
                    ),
                    Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),
                            child: MaterialButton(
                              child: Text("Shop Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              ),
                              onPressed: (){},
                              height: 60,
                              minWidth: double.infinity,
                              color: Colors.white,
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),

            ),
            GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
              itemBuilder: (context,index){
                  return itemOfBuild(index);
              },
              itemCount: 10,
                ),
          ],
        ),
      ),
      drawer: Drawer(),

    );
  }

  Container itemOfBuild(int index) {
    return Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(20),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image_1.jpeg')
                    )
                  ),
                  child: Icon(Icons.star_border_outlined, color: Colors.yellow, size: 35,),
                );
  }
}
