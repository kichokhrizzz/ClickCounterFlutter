
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build( BuildContext context ) {

    const fontSize30 =  TextStyle( fontSize: 30 );
    int counter = 0;

    return Scaffold(

      appBar:  AppBar(

        title: const Text('appBar'),
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

      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.amber,

        child: const Icon(Icons.add),

        onPressed: () {

          counter++;

        },

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
        
    );

  }

}