import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtnumber = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          leading: Icon(Icons.details),
          backgroundColor: Colors.orangeAccent,
        ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
         children: [
           TextFormField(
           controller: txtname,
           decoration: InputDecoration(
             hintText: "Name",
             disabledBorder:OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide(color: Colors.black)
             ),
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black)
             ),
           ),
         ),
           SizedBox(height: 10),
           TextFormField(
           controller: txtnumber,
           decoration: InputDecoration(
             hintText: "Number",
             disabledBorder:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide(color: Colors.black)
             ),
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black)
             ),
           ),
         ),
           SizedBox(height: 10),
           TextFormField(
           controller: txtemail,
           decoration: InputDecoration(
             hintText: "Email",
             disabledBorder:OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
                 borderSide: BorderSide(color: Colors.black)
             ),
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.black)
             ),
           ),
         ),
           SizedBox(height: 10),
           ElevatedButton(onPressed:(){
             n1.add(txtnumber.text);
             s1.add(txtname.text);
             e1.add(txtemail.text);
             Navigator.pop(context);
           } , child: Text("Submit"),
             style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)),
           ),
         ],
          ),
       ),
      ),
    );
  }
}
