import 'package:flutter/material.dart';

void main() {

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text('Bussiness card'),
            actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
              onPressed:shareicon
          ),
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: refreshicon ),
          ],
          ),
        body: Center(
          child:Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 80,
              ),
              Text('Ramya',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          color: Colors.white,
                fontFamily: 'Lobster'
              ),
             ),
              Container(
                  margin: const EdgeInsets.only(left:100, right: 100),
                  child: Divider(
                    color: Colors.white,
                    thickness: 1,
                    height: 10,
                  )),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
                  'Flutter Developer',style: TextStyle(
               fontSize: 20,fontWeight: FontWeight.w300,letterSpacing: 2.0,color: Colors.white,
                )
             ),
           ),



              Card(
                  margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.call,color: Colors.grey,),
                        title:Text('+91 9123455678'),
                       trailing: IconButton(
                        icon: Icon(Icons.content_copy,color: Colors.grey),
                         onPressed: copyContent),
                      ),
                    ),
                    ),
              Card(
                margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.mail,color: Colors.grey,
                    ),
                    title:Text('ramyaeaswaran@gmail.com',style: TextStyle(
                        fontSize: 15)
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.content_copy),
                        onPressed: copyContent),
      ),
  ),
  ),
],
  ),
        ),
    ),
    ),
  );
}
 void copyContent(){
   print('copy was pressed');
  }
 void shareicon(){
   print('Share was pressed');
 }
void refreshicon(){
  print('refresh');
}