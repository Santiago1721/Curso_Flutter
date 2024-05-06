import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: const Text('Contador :v')
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w200)),
              Text('$clickCounter Clicks', style: const TextStyle(color: Colors.cyan, fontSize: 35, fontWeight: FontWeight.w900),),

               if(clickCounter == 1)
               Text('$clickCounter Click')
            
         
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()  {
           
            setState((){
            clickCounter++;
            });
        },
        child: const Icon(Icons.plus_one),
        ),
      );
  }
}
