import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {


  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: const Text('Funcion Contador'),
          actions: [  //para poner iconos a la izquierda de la pantalla se usa leading: , para ponerlos
          //a la derecha, como en este caso, se usa actions:
            IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {    
              setState(() {
              clickCounter = 0;
            });
            },
          ),
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        FloatingActionButton(
          onPressed: ()  {
            setState((){
            clickCounter++;
            });
        },
        child: const Icon(Icons.plus_one),
        ),

        const SizedBox(height: 15,),
        FloatingActionButton(
          onPressed: ()  {
            setState((){
            clickCounter--;
            });
        },
        child: const Icon(Icons.exposure_minus_1_outlined),
        ),
          ],       
          )
      );
  }
}
