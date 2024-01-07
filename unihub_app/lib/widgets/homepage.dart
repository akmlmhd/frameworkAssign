import 'package:flutter/material.dart';
import 'package:unihub_app/main.dart';
import '../models/Uni.dart';
import 'Datasource.dart';
import 'complaint.dart';


//This is the method/function to render the Modal Bottom Sheet...
  void _startAddComplaint(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child:
              Complaint(), // Call complaint.dart
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color.fromARGB(255, 136, 68, 148),
      appBar: AppBar(
        title: Text('Uni Emergency Hub'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed:() {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            );
            },
          ),
      ),
      body: UniApp(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddComplaint(context),
        child: Icon(Icons.notifications),
        backgroundColor: const Color.fromARGB(255, 44, 17, 49),
      ),
    );
  }
}

//load the datasource from other widget
class UniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UniList(uniList: Datasource().loadUni());
  }
}

class UniList extends StatelessWidget {
  //declare variable
  final List<Uni>uniList;

  UniList({required this.uniList});

  //arrage the data into listview
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: uniList.length,
      itemBuilder: (context, index) {
        return UniCard(uni: uniList[index]);
      },
    );
  }
}

//using statefulwidget because we can add more data in list
class UniCard extends StatefulWidget {
  //using uni to get data from uni.dart
  final Uni uni;

  UniCard({required this.uni});

  @override
  _UniCardState createState() => _UniCardState();
}

class _UniCardState extends State<UniCard> {
  bool expanded = false;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            widget.uni.title,
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              ),
          ),
          //if we touch the picture it will expand
          GestureDetector(
            onTap:() {
              setState(() {
                expanded = !expanded;
              });
            },
            child: Container(
              width: double.infinity,
              height: expanded ? 300.0 : 200.0,
              decoration: BoxDecoration(
                color: expanded ? Colors.purpleAccent : Colors.white,
                boxShadow: [
                  //make a shadow below the box
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //size of the image
                  Container(
                    height: 200.0,
                    child: Image.asset(
                      widget.uni.imageResourceId,
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (expanded)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          //add the icon call
                          IconButton(
                            icon: Icon(Icons.call),
                            onPressed: () {
                            },
                          ),
                          Expanded(
                            //beside icon call have a text that get from datasource
                            child: Text(
                             widget.uni.stringResourceId,
                             style: TextStyle(fontSize: 18.0), 
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            //add the icon notifications
                            icon: Icon(Icons.notification_add),
                            onPressed: () {
                            //Navigate to the next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => widget.uni.information),
                              );
                            },
                          ),
                          Expanded(
                            //add text beside icon notifications
                            child: Text(
                            'Information',
                            style: TextStyle(fontSize: 18.0), 
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
               ],
              ),
            ),
          )
        ],
      ),
    );
  }
}