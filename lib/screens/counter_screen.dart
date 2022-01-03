
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build( BuildContext context ) {

    const fontSize30 =  TextStyle( fontSize: 30 );
    

    return Scaffold(

      appBar:  AppBar(

        title: const Text('CounterScreen'),
        backgroundColor: Colors.amber,

      ) ,

      body:  Center(
    
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,

            children :   [
               const Text('Número de Clicks:' , style: fontSize30 ),
               Text('$counter', style: fontSize30 )
            ]

          ),
          
      ),

  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          FloatingActionButton(

            backgroundColor: Colors.amber,

            child: const Icon(Icons.exposure_minus_1_rounded),

            

            onPressed: () {

              counter--;

              setState(() {
                
              });

            },

          ),

         

          FloatingActionButton(

            backgroundColor: Colors.amber,

            child: const Icon(Icons.restore),

            onPressed: () {

              counter = 0;

              setState(() {
                
              });

            },

          ),


          FloatingActionButton(

            backgroundColor: Colors.amber,

            child: const Icon(Icons.add),

            onPressed: () {

              counter++;

              setState(() {
                
              });

            },

          ),
        ],
      ),

     
        
    );

  }
}