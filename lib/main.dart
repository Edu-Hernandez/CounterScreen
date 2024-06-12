

//crearemos un hola mundo en flutter

//clase principal
import 'package:flutter/material.dart';
import 'package:hello_word_app/presentation/counters/counter_function_screen.dart';
//import 'package:hello_word_app/presentation/counters/counter_scren1.dart';

void main(){
  //runapp es para iniciar nuestra app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(

      //para quitar el logo debug de nuestra pantalla utilizamos el siguiente metodo
      debugShowCheckedModeBanner: false,
      //para los temas
      theme: ThemeData(
        useMaterial3: true, //propiedad para editar widgets de material3
        colorSchemeSeed: const Color.fromARGB(255, 33, 243, 184) //color para editar nuestros botons
      ),
      //estamos llamando a otra clase donde se encuentra la resolucion del cuerpo
      home: const CounterFunctionScreen()
    );
  }

}

