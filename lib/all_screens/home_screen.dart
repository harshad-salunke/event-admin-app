import 'package:event_admin/all_screens/add_event.dart';
import 'package:event_admin/all_screens/all_user_screen.dart';
import 'package:event_admin/all_screens/event_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:  Center(child: Text("Admin")),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>AllUserScreen()));

            },
            child: Container(
              height:60 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),

                        Icon(Icons.supervised_user_circle,
                          size: 50,),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Users",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                    Icon(Icons.navigate_next_outlined,
                    size: 50,
                    color: Colors.black,),

                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>EventScreen()));

            },
            child: Container(
              height:60 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,

              ),
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),

                        Icon(Icons.supervised_user_circle,
                          size: 50,),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Events",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                    Icon(Icons.navigate_next_outlined,
                      size: 50,
                      color: Colors.black,),

                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>AddNewEvent()));

            },
            child: Container(
              height:60 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,

              ),
              margin: EdgeInsets.all(10),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),

                        Icon(Icons.supervised_user_circle,
                          size: 50,),
                        SizedBox(
                          width: 20,
                        ),
                        Text("New Events",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                    Icon(Icons.navigate_next_outlined,
                      size: 50,
                      color: Colors.black,),

                  ],
                ),
              ),
            ),
          )


        ],
      ),
    );
  }
}
