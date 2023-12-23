import 'package:event_admin/FirebaseDAO/DatabaseDAO.dart';
import 'package:event_admin/Models/EventModle.dart';
import 'package:event_admin/all_screens/user_details.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/events_page/sliding_banner_widget.dart';

class EventDetailScreen extends StatefulWidget {
  EventsModel eventsModel;
   EventDetailScreen({required this.eventsModel}) ;

  @override
  State<EventDetailScreen> createState() => _EventDetailScreenState();
}

class _EventDetailScreenState extends State<EventDetailScreen> {
  DatabaseDAO databaseDAO=DatabaseDAO();
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
                    'Event Details',
                    style: GoogleFonts.openSans(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Event Highlights',
                style: GoogleFonts.alike(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              SlidingBanner(),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Event Name : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.title,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.eventsModel.event_name}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Event Type : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.category,size: 20,),
                          SizedBox(width: 8,),
                          Text(
                            '${widget.eventsModel.category}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Discription : ",
          
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.book_outlined,size: 20,),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Text(
                              '${widget.eventsModel.event_discription}',
                              overflow: TextOverflow.ellipsis, // Optional: Use ellipsis (...) to indicate overflow
                              softWrap: true, // Allow soft wrapping of the text
                              style: GoogleFonts.ubuntu(
                                  fontSize: 18, color: Colors.black),
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
                            "Event Venue : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.location_on,size: 20,),
                          SizedBox(width: 5,),
          
                          Text(
                            '${widget.eventsModel.event_location}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Event Date : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.date_range_outlined,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.eventsModel.date}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Start Time : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.access_time_outlined,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.eventsModel.stared}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "End Time : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.access_time_outlined,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.eventsModel.end}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Text(
                            "Attendee : ",
                            style: GoogleFonts.openSans(
                                fontSize: 18, color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.access_time_outlined,size: 20,),
                          SizedBox(width: 5,),
                          Text(
                            '${widget.eventsModel.users.length}',
                            style: GoogleFonts.ubuntu(
                                fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Text(
                "Register Users -: ",
                style: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              Container(
                width: double.infinity,
                  height: 500,
                  // Set a fixed height for the ListView container

                  child:
              ListView.builder(
                  itemCount: widget.eventsModel.users.length,
                  itemBuilder: (contex,index){
                    return InkWell(
                      onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UserDetails(userModel: widget.eventsModel.users[index])));
                      },
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.supervised_user_circle,
                                size: 30,
                              ),
                              SizedBox(width: 50,),
                              Text("${widget.eventsModel.users[index].name}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),),
                            ],
                          ),
                        ),
                      ),
                    );

                  })),
          
          
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
