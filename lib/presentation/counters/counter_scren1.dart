
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}



class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  datos(){
    if (clickCounter >=0 && clickCounter <=5) {
      return 'normalmente es un formato establecido';
    }
    if (clickCounter >5 && clickCounter <=10) {
      return 'formato pre establecido';
    }
    else{
      return 'clicks';
    }
  }
//metodo de repeticion
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //cambiar tipo de fuente style
        //textstyle forma de texto
        //fontsize tamaño de fuente
        //fontweight grosor de la fuente
        children:[
          Text('$clickCounter', style:const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)), 
          Text(datos(), style: const TextStyle(fontSize:25))
          //Text('click${clickCounter == 1 ?'':'s'}', style: const TextStyle(fontSize:25))
        ],
      ),
      ),
      //para el button
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          //funcion para iniciar en tiempo real el boton
          setState(() {
            //una forma dentro la variable
            clickCounter++;
          });
          
          //una forma fuera de la variable
          //setState(() {});
          
      },
      child: const Icon( Icons.plus_one ),
      ),
      );
  }
}