import 'package:flutter/material.dart';

List s1=[];
List n1=[];
List e1=[

];

class diary extends StatefulWidget {
  const diary({Key? key}) : super(key: key);

  @override
  State<diary> createState() => _diaryState();
}

class _diaryState extends State<diary> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.search_rounded),
          title: Text("Search"),
          backgroundColor: Colors.orangeAccent,
            ),
        body: ListView.builder(
          itemCount: s1.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.image),
                title: Text("${s1[index]}"),
                subtitle:Text("${n1[index]}"),
                trailing: Text("A"),
              );
            },
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pushNamed(context, "home").then((value) => setState((){}));
        }, child: Icon(Icons.add),
        ),
    )
    );
  }
}
