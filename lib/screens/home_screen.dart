import 'package:counselingcbt_decisionsupport_app/screens/therapy_process.dart';
import 'package:flutter/material.dart';

// first screen the app displays
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 211, 163),
      appBar: AppBar(
        title: const Text('Counseling Decision Support App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 10,
          ),
         Align(
           alignment: Alignment.center,
           child: Text(
             'Cognitive-Behavioral',
             style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
         ),
          Center(

              child: Expanded(
                child: Image.asset(
                  'assets/images/CBT.png',
                  width: 350,
                  height: 350,
                ),
              )),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                   Navigator.of(context).pushNamed(TheraphyProcess.routName);
                },
                // here is the add a contact button
                child: const Text(
                  'New Therapy',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
               //   Navigator.of(context).pushNamed(ContactList.routname);
                },
                // here is the button that gets you to the contacts list

                child: const Text(
                  'My Therapy',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
