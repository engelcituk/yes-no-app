import 'package:flutter/material.dart'; //con imporM

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme; // busca el tema dentro del contexto

    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .start, //los elementos en la columna se alinean a la izquierda
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'consectetur nostrud voluptate.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 5),
      ],
    );
  }
}

//el guion bajo lo vuelve privado
class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child:Image.network(
        'https://yesno.wtf/assets/yes/5-64c2804cc48057b94fd0b3eaf323d92c.gif',
        width: size.width * 0.6,
        height: 150,
        fit: BoxFit.cover,
      )
    );
  }
}
