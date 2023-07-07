import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart'; //con imporM

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors =
        Theme.of(context).colorScheme; // busca el tema dentro del contexto

    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .end, //los elementos en la columna se alinean a la derecha
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
