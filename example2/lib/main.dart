import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Omni DateTime Picker',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                onClickRangeSearch(context);
              },
              child: const Text("Show DateTime Picker"),
            ),
          );
        }),
      ),
    );
  }

  onClickRangeSearch(BuildContext context) async {
    List<DateTime>? dateTimeList = await showOmniDateTimeRangePicker(
      context: context,
      isForce2Digits: true,
      barrierDismissible: false,
    );

    print("Start dateTime: ${dateTimeList?[0]}");
    print("End dateTime: ${dateTimeList?[1]}");
  }
}
