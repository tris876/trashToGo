import 'package:flutter/material.dart';
import 'package:trash_to_go_app/Dashboard/dashboard.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  Widget tableAlign(String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child: Text(value)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(
        
        title: Center(child: Text('Weekly Schedule')),
      ),
        body: SingleChildScrollView(
          child: Table(
             
            border: TableBorder.all(color: Colors.black),
            children: <TableRow>[
              TableRow(children: [
                tableAlign('Street'),
                tableAlign('Parish'),
                tableAlign('Weekday'),
                tableAlign('Time'),
              ]),

               TableRow(children: [
                tableAlign('Clarke Town'),
                tableAlign('Manchester'),
                tableAlign('Sunday'),
                tableAlign('2pm - 10pm'),
              ]),

                 TableRow(children: [
                tableAlign('Crest Haven'),
                tableAlign('Manchester'),
                tableAlign('Sunday'),
                tableAlign('2pm - 10pm'),
              ]),

               TableRow(children: [
                tableAlign('Grove Lane'),
                tableAlign('Manchester'),
                tableAlign('Wednesday'),
                tableAlign('6am - 2pm'),
              ]),


                 TableRow(children: [
                tableAlign('Williamsfield'),
                tableAlign('Manchester'),
                tableAlign('Friday'),
                tableAlign('2pm - 10pm'),
              ]),

               TableRow(children: [
                tableAlign('Lacovia'),
                tableAlign('St.Elizabeth'),
                tableAlign('Tuesday'),
                tableAlign('6am - 2pm'),
              ]),

                 TableRow(children: [
                tableAlign('Hill Top'),
                tableAlign('St.Elizabeth'),
                tableAlign('Saturday'),
                tableAlign('6am - 2pm'),
              ]),

               TableRow(children: [
                tableAlign('Chapelton'),
                tableAlign('Clarendon'),
                tableAlign('Sunday'),
                tableAlign('6am - 2pm'),
              ]),

                 TableRow(children: [
                tableAlign('Howard Ave'),
                tableAlign('Clarendon'),
                tableAlign('Wednesday'),
                tableAlign('1pm - 9pm'),
              ]),

               TableRow(children: [
                tableAlign('Turners'),
                tableAlign('Clarendon'),
                tableAlign('Friday'),
                tableAlign('6am - 2pm'),
              ]),

                 TableRow(children: [
                tableAlign('Green Park'),
                tableAlign('St.James'),
                tableAlign('Sunday'),
                tableAlign('1pm - 9pm'),
              ]),

               TableRow(children: [
                tableAlign('Hill View'),
                tableAlign('St.James'),
                tableAlign('Monday'),
                tableAlign('6am - 2pm'),
              ]),

                 TableRow(children: [
                tableAlign('Effortville'),
                tableAlign('St.Ann'),
                tableAlign('Tuesday'),
                tableAlign('6am - 2pm'),
              ]),

               TableRow(children: [
                tableAlign('New Roads'),
                tableAlign('St.Ann'),
                tableAlign('Wednesday'),
                tableAlign('6am - 2pm'),
              ]),

                 TableRow(children: [
                tableAlign('Low Ground'),
                tableAlign('St.Mary'),
                tableAlign('Friday'),
                tableAlign('6am - 2pm'),
              ]),

               TableRow(children: [
                tableAlign('Webb Lane'),
                tableAlign('St.Mary'),
                tableAlign('Saturday'),
                tableAlign('1pm - 9pm'),
              ]),

               TableRow(children: [
                tableAlign('Red Hills'),
                tableAlign('St.Andrew'),
                tableAlign('Sunday'),
                tableAlign('6am - 2pm'),
              ]),

               TableRow(children: [
                tableAlign('Sigmund Dr'),
                tableAlign('St.Andrew'),
                tableAlign('Tuesday'),
                tableAlign('1pm - 9pm'),
              ]),

               TableRow(children: [
                tableAlign('Omni Mews'),
                tableAlign('Portland'),
                tableAlign('Thursday'),
                tableAlign('1pm - 9pm'),
              ]),


            ],
          ),
        ),
      ),
    );
  }
}
