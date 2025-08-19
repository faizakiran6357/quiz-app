import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Detail Quiz"),
        leading: IconButton(
          icon:  Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions:[
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                         CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.blueAccent,
                          child: Icon(Icons.sports_soccer, color: Colors.white),
                        ),
                         SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sport",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text("10 Question",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 4),
                        Text("4.8"),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Brief explanation about this quiz",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 12),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.assignment, color: Colors.orange),
                ),
                title:  Text("10 Question"),
                subtitle:  Text("10 point for a correct answer"),
              ),
            ),

             SizedBox(height: 12),

            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.timer, color: Colors.white),
                ),
                title: Text("1 hour 20 min"),
                subtitle: Text("Total duration of the quiz"),
              ),
            ),

             SizedBox(height: 20),

     // instructions text
       Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
     Text(
      "Please read the text below carefully so you can understand it",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    ),
      SizedBox(height: 12),

    //First point
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text("•  ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Expanded(
          child: Text(
            "10 point awarded for a correct answer and no marks for an incorrect answer",
            style: TextStyle(fontSize: 13, height: 1.4),
          ),
        ),
      ],
    ),
    SizedBox(height: 8),

    //Second point
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text("•  ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Expanded(
          child: Text(
            "Tap on options to select the correct answer",
            style: TextStyle(fontSize: 13, height: 1.4),
          ),
        ),
      ],
    ),
    SizedBox(height: 8),

    //Third point
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Text("•  ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Expanded(
          child: Text(
            "Click submit if you are sure you want to complete all the quizzes",
            style: TextStyle(fontSize: 13, height: 1.4),
          ),
        ),
      ],
    ),
  ],
),
      SizedBox(height: 70),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child:Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
