import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Date Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Datepickerr(),
    );
  }
}

class Datepickerr extends StatefulWidget {
  const Datepickerr({super.key});

  @override
  State<Datepickerr> createState() => _DatepickerrState();
}

class _DatepickerrState extends State<Datepickerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Selected Date is: "),
          const SizedBox(height: 14),
          ElevatedButton(
            onPressed: () async {
              DateTime? datepicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2028),
              );

              if (datepicked != null) {
                print("Selected date is: ${datepicked.day}-${datepicked.month}-${datepicked.year}");
              }
            },
            child: const Text("Select Date"),
          ),

          /* TimePicker */

          SizedBox(height: 20),
          Text("Select time is: "),
          ElevatedButton(onPressed: () async {

            TimeOfDay timepicker = await showTimePicker(context: context,
                initialTime: TimeOfDay.now(),
            initialEntryMode: TimePickerEntryMode.dial) as TimeOfDay;
            
            if(timepicker!=null){
              print("Select date is: ${timepicker.hour}-${timepicker.minute}");
            }

          },
              child: Text("Select Time"))

        ],
      ),
    );
  }
}
