import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  datos() {
    if (clickCounter == 1) {
      return 'click';
    } else {
      return 'clicks';
    }
  }

//metodo de repeticion
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Functions')),

          //actions para colocar al lado derecho, varios widget array
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                //para dar funcion en tiempo real
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
          //boton que muestra un icono
          //leading: para utilizar solo un unico widget
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //cambiar tipo de fuente style
            //textstyle forma de texto
            //fontsize tamaño de fuente
            //fontweight grosor de la fuente
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),

              Text(datos().toString(), style: const TextStyle(fontSize: 25))
              //Text('click${clickCounter == 1 ?'':'s'}', style: const TextStyle(fontSize:25))
            ],
          ),
        ),
        //para el button
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clickCounter == 0) return;
                  clickCounter--;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      elevation: 50,
      backgroundColor: Colors.amber,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
