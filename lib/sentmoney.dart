import 'package:flutter/material.dart';

class Sendmoney extends StatelessWidget {
  const Sendmoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(decoration:InputDecoration(
              hintText:"acount munber",
              border:OutlineInputBorder()
            ),),


             SizedBox(
              height:20,
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                decoration: InputDecoration(
                  hintText:"amount"
                ),
               ),
             ),
        
              MaterialButton(onPressed: ()async{
          
                    
        },child: Container(
          height:50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color: Colors.blue
          ),
          child: Center(child: Text("send",style: TextStyle(color: Colors.white),)),
        ),),
          ],
        ),
      ),
    );
  }
}