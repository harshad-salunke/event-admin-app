import 'package:event_admin/Models/UserModle.dart';
import 'package:event_admin/all_screens/user_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../FirebaseDAO/DatabaseDAO.dart';
class AllUserScreen extends StatefulWidget {
  const AllUserScreen({Key? key}) : super(key: key);

  @override
  State<AllUserScreen> createState() => _AllUserScreenState();
}

class _AllUserScreenState extends State<AllUserScreen> {

  DatabaseDAO databaseDAO=DatabaseDAO();
  List<UserModel> all_user=[];
  bool isloaded=false;
  @override
  void initState() {
    // TODO: implement initState
    databaseDAO.readAllUsers((List<UserModel> userlist){
      print(userlist.length);
      setState(() {
        isloaded=true;
        if(all_user.isNotEmpty){
          all_user.clear();
        }
        all_user=userlist;

      });
    });
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(8, 10, 0, 0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_sharp),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'All User',
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            isloaded?
            Expanded(
              child: ListView.builder(
                  itemCount: all_user.length,
                  itemBuilder: (BuildContext con,int index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDetails(userModel: all_user[index])));
                      },
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.supervised_user_circle,
                                size: 35,
                              ),
                              SizedBox(width: 50,),
                              Text("${all_user[index].name}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25
                                ),),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ):Expanded(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
