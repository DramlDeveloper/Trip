import 'package:flutter/material.dart';
import 'package:voyage/constants/variables.dart';
import 'package:voyage/widgets/state_date.dart';

class FloatingActionButtonVoyage extends StatefulWidget {
  const FloatingActionButtonVoyage({super.key});

  @override
  State<FloatingActionButtonVoyage> createState() =>
      FloatingActionButtonState();
}

class FloatingActionButtonState extends State<FloatingActionButtonVoyage> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
      onPressed: ()   async{
        await checkpointAdd();
        setState(() {
        });
      },
      backgroundColor: Colors.blue,
      child: const Icon(Icons.add),
    );
  }

  Future checkpointAdd() => showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Новый пункт"),
          actions: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 5),
                alignment: Alignment.topLeft,
                child: Text("Место", textAlign: TextAlign.center)),
            Container(
                padding: EdgeInsets.only(bottom: 15),
                child: TextField(
                  controller: controller,
                  autofocus: true,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                )),
            const SetDay(),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
              child: const Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  country = controller.text;
                  date;
                });
              },
              child: const Text('Добавить'),
            ),
          ],
        );
      });
}
