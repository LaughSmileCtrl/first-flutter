import 'package:flutter/material.dart';
import 'package:ipcalculator/entities/semesterentity.dart';
import 'package:ipcalculator/services/apirequest.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('IPS Calculator'),
          backgroundColor: Colors.purple[700],
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[SemesterSelection()]
            )
        )
    );
  }
}

class SemesterSelection extends StatefulWidget {

  const SemesterSelection({Key? key}): super(key: key);

  @override
  State createState() => _SemesterSelection();
}

class _SemesterSelection extends State<SemesterSelection> {
  String selected = 'Pilih Semester';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton(
            items: <int>[1, 2, 3, 4, 5, 6]
                .map<DropdownMenuItem<String>>((val) {
                  return DropdownMenuItem<String>(
                    value: val.toString(),
                    child: Text('Semester ${val}'),
                  );
                })
                .toList(),
            onChanged: (String? value) {setState(() {
              selected = 'Semester ' + value!;
            });}
        ),
        Text(selected),

      ],
    );
  }
}
