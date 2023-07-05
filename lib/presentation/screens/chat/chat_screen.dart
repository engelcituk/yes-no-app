import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart'; //con imporM

//stless para armar
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fcun1-1.fna.fbcdn.net/v/t39.30808-6/321684934_918131555865195_7773019968378899274_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHP14g0HZGdrhp-2BTRwo6aLKZiio2oOAkspmKKjag4CRuKALYJGlXujfs5DMkNLeFBerx0ENDm9SSQbSpxLJN1&_nc_ohc=b_TGT0zoobIAX8aaPrz&_nc_ht=scontent.fcun1-1.fna&oh=00_AfCmHZSbfA6aJdaArtN6upAmD2WHG1HZUwgxvbAoqj6XmA&oe=64AAB069'),
          ),
        ),
        title: const Text('Mi amor 😍🥰😘❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

//Al tener el Guio bajo lo hace privado
class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const MyMessageBubble();
                  }
              )
            ),
            const Text('Hola mundo')
          ],
        ),
      ),
    );
  }
}
