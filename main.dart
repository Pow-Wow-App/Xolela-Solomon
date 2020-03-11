//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
//import 'package:ticket_pass_package/ticket_pass.dart';
//import 'package:ticket_pass_package/ticket_pass.dart';

void main() => runApp(MyApp(
));

 class MyApp extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
        primaryColor:Color.fromRGBO(8, 49, 81, 1.0),
      ),
         home:  Home(),
    );
    }
 }
 class Home extends StatefulWidget{
   @override 
   _MyHomePage createState() => _MyHomePage();
 }
  
 

class _MyHomePage extends State<Home> {
TimeOfDay _time = TimeOfDay.now();
TimeOfDay picked;

Future<Null> selectTime(BuildContext context) async{
  _time = await showTimePicker(context: context, initialTime: _time);
  
  }
DateTime _dateTime;


  @override
  
   Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp( 
      theme: ThemeData(
        primaryColor:Color.fromRGBO(8, 49, 81, 1.0),
      ),
      home:Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
        color: Colors.white,
        onPressed: (){},
        ),
        title:Text('Create Pow Wow'), ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
          child:Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196f3),
          child: Form(
            
            child: Column(children: <Widget>[
          Container(padding:EdgeInsets.all(40),child: Text('Pow Wow' ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),),
          Container(padding:EdgeInsets.all(10),child:TextFormField(decoration: InputDecoration(hintText: 'Add Title')) ,),
          Container(padding:EdgeInsets.all(10),child:TextFormField(decoration: InputDecoration(hintText: 'Add Message(150 character)')) ,),
          Container(padding:EdgeInsets.all(10),child:TextFormField(decoration: InputDecoration(hintText: 'Where will we meet?',suffixIcon: IconButton(icon: Icon(Icons.location_searching), onPressed: null,color: Colors.black,))) ,),
          Container(padding:EdgeInsets.all(10),child:TextFormField(decoration: InputDecoration(hintText: 'What time will we meet?',suffixIcon: IconButton(color: Colors.black,icon: Icon(Icons.timer), onPressed: (){selectTime(context);
                          print(_time);},))) ,),
          Container(padding:EdgeInsets.all(10),child:TextFormField(decoration: InputDecoration(hintText: 'What date will we meet?',suffixIcon: IconButton(icon: Icon(Icons.date_range), onPressed: (){
            showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2001), lastDate: DateTime(2222)).then((date){
              setState((){
                _dateTime = date;
              });
            });
          },color: Colors.black))) ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            RaisedButton(              
                        onPressed: (){
                          
                        },
                         child: Text('Send',style: TextStyle(color: Colors.white), ),
                         color: Color.fromRGBO(8, 49, 81, 1.0),
                         shape: RoundedRectangleBorder(
                           borderRadius: new BorderRadius.circular(18.0)
                         )),
                         
            OutlineButton(
                        onPressed: null,
                         child: Text('Cancel'),
                         shape: RoundedRectangleBorder(
                           borderRadius: new BorderRadius.circular(18.0)
                         )
                         )]),
          ],)),),
        ) ,),),
    );
    
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}


