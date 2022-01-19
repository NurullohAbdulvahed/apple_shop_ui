import 'package:flutter/material.dart';

class YourLogPage extends StatefulWidget {
  const YourLogPage({Key? key}) : super(key: key);

  @override
  _YourLogPageState createState() => _YourLogPageState();
}

class _YourLogPageState extends State<YourLogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.deepOrange.shade400,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.only(top: 50),
                 child: Column(
                   children: [
                     Expanded(
                       flex: 3,
                       child: Container(
                         child: Text("Your Logo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                       ),
                     ),
                     Expanded(
                       flex: 2,
                       child: Column(
                         children: [
                           Container(
                             child: Text("All Your Favourite Dishes",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                           ),
                           SizedBox(height: 20,),
                           Container(
                             child: Text("Order from your nearby restaurant in the town",style: TextStyle(color: Colors.white),),
                           ),
                           SizedBox(height: 15,),
                           Container(
                             child: Text("You can easily order from anywhere,anytime",style: TextStyle(color: Colors.white,),),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        ),
                        height: 50,
                        minWidth: 320,
                        onPressed: (){},
                        child: Text("Get Started"),
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        height: 50,
                        minWidth: 320,
                        onPressed: (){},
                        child: Text("Login",style: TextStyle(color: Colors.white),),
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
