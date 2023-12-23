import 'package:event_admin/Models/UserModle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UserDetails extends StatefulWidget {
  UserModel userModel;
   UserDetails({required this.userModel}) ;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(
                height: 50,
              ),
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
                    'Register User Details',
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/harshad.png"),
                radius: 50,
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "User Name : ",
                            style: GoogleFonts.openSans(
                                fontSize: 13, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.title,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.userModel.name}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Email : ",
                            style: GoogleFonts.openSans(
                                fontSize: 13, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.email,size: 20,),
                          SizedBox(width: 8,),
                          Text(
                            '${widget.userModel.email}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Phone Number : ",

                            style: GoogleFonts.openSans(
                                fontSize: 13, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.call,size: 20,),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Text(
                              '${widget.userModel.phone_number}',
                              overflow: TextOverflow.ellipsis, // Optional: Use ellipsis (...) to indicate overflow
                              softWrap: true, // Allow soft wrapping of the text
                              style: GoogleFonts.ubuntu(
                                  fontSize: 13, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Gender : ",
                            style: GoogleFonts.openSans(
                                fontSize: 13, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.transgender,size: 20,),
                          SizedBox(width: 5,),

                          Text(
                            '${widget.userModel.gender}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "User Uid : ",
                            style: GoogleFonts.openSans(
                                fontSize: 13, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.date_range_outlined,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.userModel.uid}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 13, color: Colors.black),
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
              ),





            ],
          ),
        ),
      ),
    );
  }
}
