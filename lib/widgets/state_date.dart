import 'package:flutter/material.dart';
import 'package:voyage/constants/variables.dart';

class SetDay extends StatefulWidget {
  const SetDay({Key? key}) : super(key: key);

  @override
  State<SetDay> createState() => _SetDayState();
}

class _SetDayState extends State<SetDay> {


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 5),
        alignment: Alignment.topLeft,
        child: ElevatedButton(
          child: const Text("Дата"),
          onPressed: () async {
            DateTime? newDay = await showDatePicker(
                context: context,
                initialDate: date,
                firstDate: DateTime(1970),
                lastDate: DateTime(3100));

            if (newDay == null) return;
            setState(() => date = newDay);
          },
        ));
  }
}