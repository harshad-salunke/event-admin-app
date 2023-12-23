import 'package:event_admin/FirebaseDAO/DatabaseDAO.dart';
import 'package:event_admin/Models/EventModle.dart';
import 'package:event_admin/all_screens/event_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';
import '../widgets/events_page/EventsCard.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  DatabaseDAO databaseDAO=DatabaseDAO();
  List<EventsModel> eventlist=[];
  bool isloaded=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    databaseDAO.readAllEvents((List<EventsModel> list ){
      setState(() {
        print(list.length);
        eventlist=list;
        isloaded=true;
      });

    });
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
                  'All Events',
                  style: GoogleFonts.openSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            isloaded?
            Expanded(
              child: ListView.builder(
                  itemCount: eventlist.length,
                  itemBuilder: (BuildContext con,int index){
                    return InkWell(
                      onTap: (){
                        print(index);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>EventDetailScreen(eventsModel: eventlist[index],)));
                      },
                      child: EventsCard(
                        text: "upcoming",

                        bg_color: MyAppColor.green_light,
                        textColor: Colors.green,
                        eventsModle: eventlist[index],
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
