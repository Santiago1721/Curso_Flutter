import 'package:flutter/material.dart';
import 'package:tutorial_flutter/presentacion/pantallas/counter/counter_functions_screen.dart';
import 'package:tutorial_flutter/presentacion/pantallas/counter/counter_screen.dart';

void main(){
    runApp(const aplicacion());
}


class aplicacion extends StatelessWidget {
  const aplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//Esto quita la etiqueta roja "debug"  
         theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.blue  //paleta de colores automatica
         ),
        home: const CounterFunctionsScreen()
        
    );
  }
}
