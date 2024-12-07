import 'dart:math';
import 'package:flutter/material.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({super.key});

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  var rnd = Random();
  int r = 0;
  String txt = '';
  String _number = '';
  final _ctrl = TextEditingController();
  int x = 0, y = 0 ;
  
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(  
        
        appBar: AppBar(title: const Text('game random') , backgroundColor: Colors.red,),
        body:
          
          Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const SizedBox(height: 15),
            
            TextField(
               controller: _ctrl,
               onChanged: (text) => _number = _ctrl.value.text,
               
            ),

            const  SizedBox(height: 20),

            Text(txt),
            // Text(r.toString()),
            // Text(x.toString()),
              
            
            const  SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              TextButton(
                onPressed: ()
                  {
                    checkNumber();

                  }, 
                child: Text('ส่งคำตอบ',style: TextStyle(backgroundColor: Colors.green ),)
                ),
                TextButton(
                onPressed: (){
                  setState(() {
                    Random_number();
                    txt = 'เดาตัวเลข 1 - 9';
                  });
                }, 
                child: Text('เริ่มใหม่',style: TextStyle(backgroundColor: Colors.blue ),)
                ),

            ],)
            
          ],),
        ),)
      );
  }
  void checkNumber() {
      txt = 'เดาตัวเลข 1 - 9';
      
      var test = int.parse(_number);
      
      x = test;
   
      if ( r == test) {
        setState(() {
          txt = "ถูกต้อง!";
        });
      } 
      else {
        setState(() {
          txt = "ผิด! คำตอบที่ถูกคือ ${r}";
        });
      }
  }
  void Random_number(){
    r = rnd.nextInt(9)+1;
  }
}

  