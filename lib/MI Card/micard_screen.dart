import 'package:flutter/material.dart';

class MiCardScreen extends StatelessWidget {
  const MiCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/profile.png'),
          ),
          SizedBox(height: 10.0),
          Text('Meraj Uddin Malik',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              color: Colors.white
            ),),
          SizedBox(height: 10.0),
          Text('Mobile App Developer',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Code Pro',
                color: Colors.white
            ),),
          SizedBox(height: 20.0,
          width: 250,
          child: Divider(
            color: Colors.deepPurple.shade100,
          ),),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
            child: ListTile(
              leading: Icon(Icons.phone, size: 13,
                color: Colors.deepPurple),
              title: Text("+92 300 2953272",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: 'Sans Code Pro',
                  fontSize: 13,
                ),
              ),
            )
          ),
          Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,),
              child: ListTile(
                leading: Icon(Icons.email, size: 13,
                  color: Colors.deepPurple),
                title: Text("merajuddin@gmail.com",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontFamily: 'Sans Code Pro',
                    fontSize: 13,
                  ),
                ),
              )
          ),
        ],
      )


      ),
    );
  }
}
