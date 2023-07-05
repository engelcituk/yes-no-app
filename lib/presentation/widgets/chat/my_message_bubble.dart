import 'package:flutter/material.dart'; //con imporM

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of( context).colorScheme; // busca el tema dentro del contexto

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end, //los elementos en la columna se alinean a la derecha
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Sint voluptate amet sit.', style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}