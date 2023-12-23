
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../Models/EventModle.dart';
import '../Models/UserModle.dart';


class DatabaseDAO {
  DatabaseReference dbRef = FirebaseDatabase.instance.reference();
FirebaseAuth firebaseAuth=FirebaseAuth.instance;

  void readAllEvents(Function(List<EventsModel> list) callback) {
    String path = 'Events/';
    List<EventsModel> attendancelist = [];

    dbRef.child(path).onValue.listen((event) {
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = event.snapshot.value as Map;
        if (values != null) {
          values.forEach((key, value) {
            List<UserModel> users = [];

            if (value['users'] != null) {
              (value['users'] as List<dynamic>).forEach((userData) {
                users.add(UserModel.fromJson(Map<String, dynamic>.from(userData)));
              });
            }

            EventsModel attendance =EventsModel(
                stared: value['stared'],
                end: value['end'],
                event_name: value['event_name'],
                date: value['date'],
                event_discription: value['event_discription'],
                id: value['id'],
                timestamp: value['timestamp'],
                event_location: value['event_location'],
                users: users,
                category: value['category']);

            attendancelist.add(attendance);
          });
        }
      }
      callback(attendancelist);
    });
  }

  void readAllUsers(Function(List<UserModel> list) callback) {
    String path = 'Users/';
    List<UserModel> userlist = [];

    dbRef.child(path).onValue.listen((event) {
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = event.snapshot.value as Map;
        if (values != null) {
          values.forEach((key, value) {
                userlist.add(UserModel.fromJson(Map<String, dynamic>.from(value)));

          });
        }
      }
      callback(userlist);
    });
  }





  void RegisterUserForEvent(EventsModel eventsModel,Function(bool isdone) callback){
    Map<String, dynamic> data = eventsModel.toJson();

    String path='Events/${eventsModel.id}';
    dbRef.child(path).set(data).then((value) {
      callback(true);
    }).catchError((error) {
      callback(false);
      print('Failed to push data to the database: $error');
    });
  }


  void saveEventData(EventsModel eventsModel,Function(bool isdone) callback){
    String? key=dbRef.push().key;
    eventsModel.id=key;
    Map<String, dynamic> data = eventsModel.toJson();

    String path='Events/${eventsModel.id}';
    dbRef.child(path).set(data).then((value) {
      callback(true);
    }).catchError((error) {
      callback(false);
      print('Failed to push data to the database: $error');
    });
  }

}
