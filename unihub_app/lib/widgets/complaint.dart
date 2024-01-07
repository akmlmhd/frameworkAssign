import 'package:flutter/material.dart';
import 'homepage.dart';

class Complaint extends StatefulWidget {
  @override
  State<Complaint> createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  final _formKey = GlobalKey<FormState>();

  // Add controllers for the TextFields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _matricController = TextEditingController();
  final TextEditingController _urgentComplaintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Close the keyboard when tapping outside the TextFields
        FocusScope.of(context).unfocus();
      },
      child: Card(        
        elevation: 5,
        // make complaint form for the floating action button
        child: Container(
          color: const Color.fromARGB(255, 222, 189, 227),
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Urgent Emergency Complaint',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // that have name, No Matric and Urgent Complaint
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _matricController,
                  decoration: InputDecoration(labelText: 'No Matric'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your matric number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _urgentComplaintController,
                  decoration: InputDecoration(labelText: 'Urgent Complaint'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your urgent complaint';
                    }
                    return null;
                  },
                ),
                // the button for submit
                ElevatedButton(
                  onPressed: () {
                    // Validate the form
                    if (_formKey.currentState?.validate() ?? false) {
                      // make the notification when the user clicks the submit button
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Notification'),
                            content:
                                Text('Your complaint has been submitted'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),
                                    ),
                                  );
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
