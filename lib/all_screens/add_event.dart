import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:event_admin/FirebaseDAO/DatabaseDAO.dart';
import 'package:event_admin/Models/EventModle.dart';
import 'package:event_admin/textControllers/event_add_controller.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/RegisterScreen/drop_downlist.dart';

class AddNewEvent extends StatefulWidget {
  const AddNewEvent({Key? key}) : super(key: key);

  @override
  State<AddNewEvent> createState() => _AddNewEventState();
}


class _AddNewEventState extends State<AddNewEvent> {
  EventAddController eventAddController=new EventAddController();
  DatabaseDAO databaseDAO=DatabaseDAO();
  var category_list=[
    "Technical",
    "Soft Skills",
    "Personal",
    "English"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColor.white_light,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Container(
                     margin: EdgeInsets.fromLTRB(8, 10, 0, 0),
                      height: 50,
                      width: 50,
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
                   Container(
                   margin: EdgeInsets.fromLTRB(25, 3, 0, 0),

                   child: Text("Add New Event",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )),
                 ),

                  const SizedBox(height: 25),

                // Mobile number filled
                  SizedBox(
                    height: 60,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: eventAddController.TitleController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff9e0093))),
                          labelText: "Event Title",
                          hintText: "Enter Event Title",
                          prefixIcon: Icon(Icons.title)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //full name filled
                  SizedBox(
                    height: 60,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: eventAddController.DiscriptionController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,

                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff9e0093))),
                          labelText: "Discription",
                          hintText: "Enter Discription",
                          prefixIcon: Icon(Icons.book_outlined)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // email filled
                  SizedBox(
                    height: 60,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      controller: eventAddController.LocationController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,

                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff9e0093))),
                          labelText: "Address",
                          hintText: "Enter Address",
                          prefixIcon: Icon(Icons.location_on)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // password filled
                  SizedBox(

                    height: 60,
                    child: TextField(
                      onTap: (){
                        _selectDate(context);
                      },
                      keyboardType: TextInputType.text,
                      controller: eventAddController.DateController,
                      expands: true,
                      maxLines:null,
                      readOnly: true,

                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff9e0093))),
                          labelText: "Date",
                          hintText: "Select Event Date",
                          prefixIcon: Icon(Icons.date_range_outlined)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: TextField(
                      onTap: (){
                        _startselectTime(context);
                      },
                      keyboardType: TextInputType.text,
                      controller: eventAddController.StartController,
                      expands: true,
                      maxLines:null,
                      readOnly: true,

                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff9e0093))),
                          labelText: "Start Time",
                          hintText: "Select Start Time",
                          prefixIcon: Icon(Icons.more_time_outlined)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: TextField(
                      onTap: (){
                        _endselectTime(context);
                      },
                      keyboardType: TextInputType.text,
                      controller: eventAddController.EndController,
                      expands: true,
                      maxLines:null,
                      readOnly: true,

                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Color(0xff9e0093))),
                          labelText: "End Time",
                          hintText: "Select End Time",
                          prefixIcon: Icon(Icons.more_time_outlined)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropDownList(
                    controller: eventAddController.CategoryController,
                    hintText: 'Select Category',
                    items: category_list,
                    obscureText: false,
                  ),

                  const SizedBox(height: 10),
                  // forgot password?

                  const SizedBox(height: 25),


                  Container(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(

                        onPressed: (){
                        EventsModel eventModle=  eventAddController.getEventData();
                          databaseDAO.saveEventData(eventModle, (isdone){
                            if(isdone){
                              eventAddController.clearController();
                              SaveEventToast();

                            }else{

                            }

                          });

                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>MainScreen()));

                        },

                        style: ElevatedButton.styleFrom(
                            backgroundColor: MyAppColor.primary_color,

                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.all(Radius.circular(5)))),
                        child: Text("Add",
                          style: TextStyle(
                              color: Colors.white
                          ),)),
                  ),

                  const SizedBox(height: 50),

                ],
              ),
            ),
          ),
        ),

    );
  }


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.now()) {
      eventAddController.DateController.text = "${picked.day}/${picked.month}/${picked.year}";
    }
  }
  Future<void> _startselectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      eventAddController.StartController.text = "${picked.format(context)}";
    }
  }

  Future<void> _endselectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      eventAddController.EndController.text = "${picked.format(context)}";
    }
  }

  void SaveEventToast() {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Hii, there!',
        message: 'Event Saved Successfully',
        contentType: ContentType.success,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }


}
