import 'package:flutter/material.dart';
import '../db/trip.dart';

class TripScreen extends StatelessWidget {
   TripScreen({Key? key}) : super(key: key);
  List listTrip = [
    Trip(id: 1, title: "Рязань", date:  DateTime(2023, 10, 20)),
    Trip(id: 2, title: "Владимир", date:  DateTime(2023, 10, 24)),
    Trip(id: 3, title: "Арзамас", date:  DateTime(2023, 10, 25)),
    Trip(id: 4, title: "Рязань", date:  DateTime(2023, 10, 30))];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(

        children: [
          Row(
            children: [
              Text(listTrip[0].toString(), style: TextStyle(fontSize: 20)),
            ],),
          SizedBox(height: 5,),
          Row(children: [
            Text("${listTrip[1]}", style: TextStyle(fontSize: 20)),
          ],),
          SizedBox(height: 5,),
          Row(children: [
            Text("${listTrip[2]}", style: TextStyle(fontSize: 20),),
          ],),
          SizedBox(height: 5,),
          Row(children: [
            Text(listTrip[3].toString(), style: TextStyle(fontSize: 20)),
          ],)
        ],
      ),
    );
  }
}
