
import 'package:event_admin/Models/EventModle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class EventAddController{
  TextEditingController TitleController=TextEditingController();
  TextEditingController DiscriptionController=TextEditingController();
  TextEditingController DateController=TextEditingController();
  TextEditingController StartController=TextEditingController();
  TextEditingController EndController=TextEditingController();
  TextEditingController CategoryController=TextEditingController();
  TextEditingController LocationController=TextEditingController();


  void clearController(){
    TitleController.text="";
    DiscriptionController.text="";
    DateController.text="";
    StartController.text="";
    EndController.text="";
    CategoryController.text="";
    LocationController.text="";


  }

  EventsModel getEventData(){
    return EventsModel(stared: StartController.text, end:EndController.text , event_name: TitleController.text, date: DateController.text, event_discription: DiscriptionController.text, id: "", timestamp: "", event_location: LocationController.text, users: [], category: CategoryController.text);

  }

}