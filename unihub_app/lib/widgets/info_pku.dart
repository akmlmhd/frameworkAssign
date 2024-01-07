import 'package:flutter/material.dart';

class infoPku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 136, 68, 148),
        appBar: AppBar(
          title: Text('Information of PKU'),
          centerTitle: true,
          backgroundColor: Colors.purple,
          //add icon back button to go previous page
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed:() {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          //make table to put information
          child: Table(
            border: TableBorder.all(),
            children: [ 
              TableRow(
                decoration: BoxDecoration(color: Colors.purple[200]),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: 
                      Text('No', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
                   ),
                   TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: 
                      Text('Information', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
                   ),
                   TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: 
                      Text('Date and Time', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                      ),
                    ),
                   ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                children: [
                  TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: 
                      Text('1'),
                      ),
                    ),
                   ),
                   TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: 
                      Text('Info Kesihatan:- Semua pelajar hendaklah melakukan pemeriksaan kesihatan berkala di PKU'),
                      ),
                    ),
                   ),
                   TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: 
                      Text('10/11/2023  5:20 PM'),
                      ),
                    ),
                   ),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  children: [
                    TableCell(
                      child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: 
                      Text('2'),
                      ),
                    ),
                   ),
                   TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: 
                      Text('Info Kesihatan:- Pemeriksaan gigi di PKU bagi semua warga UMT adalah percuma'),
                      ),
                    ),
                   ),
                   TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Center(child: 
                      Text('2/10/2023 11:30 PM'),
                      ),
                    ),
                   ),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}