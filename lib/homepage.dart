import 'package:bikash/sentmoney.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           Container(
            height:150,
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
        
            child: Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    child:Icon(Icons.person),
                  ),
                  Text("sakib"),
                ],
              ),
        
             Container(
              height:50,
              width:150,
              decoration: BoxDecoration(
        
              borderRadius:BorderRadius.circular(50),
                color:Colors.grey[200]
              ),
              child:Center(child: Text("\$ 00.0",style:TextStyle(fontSize:20),)),
             )
             
        
            ],
            ),
           ),
            SizedBox(
              height:40,
            ),
           Container(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),

                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: [
                        IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Sendmoney(),));
                        }, icon:Icon(Icons.money_off_csred,size:30,)),
                        Text("send money")
                      ],
                    ),
                ),       
                    
                             ),

                  Container(
                  decoration: BoxDecoration(
                    color:Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        IconButton(onPressed: () {
                          
                        }, icon:Icon(Icons.money_off_csred,size:30,)),
                        Text("send money")
                      ],
                    ),
                  ),
                ),

                  Container(
                  decoration: BoxDecoration(
                    color:Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        IconButton(onPressed: () {
                          
                        }, icon:Icon(Icons.money_off_csred,size:30,)),
                        Text("send money")
                      ],
                    ),
                  ),
                ),

                  Container(
                  decoration: BoxDecoration(
                    color:Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        IconButton(onPressed: () {
                          
                        }, icon:Icon(Icons.money_off_csred,size:30,)),
                        Text("send money")
                      ],
                    ),
                  ),
                )
              ],
            ),
           )
          ],
        ),
      ),
    );
  }



  
}