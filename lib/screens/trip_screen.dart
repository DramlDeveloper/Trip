import 'package:flutter/material.dart';
import 'package:voyage/constants/variables.dart';
import '../db/trip.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({Key? key}) : super(key: key);

  static List listTrip = [
    Trip(id: 1, title: "Рязань", date: DateTime(2023, 10, 20)),
    Trip(id: 2, title: "Владимир", date: DateTime(2023, 10, 24)),
    Trip(id: 3, title: "Арзамас", date: DateTime(2023, 10, 25)),
    Trip(id: 4, title: "Рязань", date: DateTime(2023, 10, 30))
  ];

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(TripScreen.listTrip[0].toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text("${TripScreen.listTrip[1]}", style: TextStyle(fontSize: 20)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                "${TripScreen.listTrip[2]}",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(TripScreen.listTrip[3].toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text("${Trip(id: 5, title: city, date: date)} ",
                  style: TextStyle(fontSize: 20))
            ],
          ),
          ElevatedButton(onPressed: () => setState(() {}), child: Text("Send")),
        ],
      ),
    );
  }
}
