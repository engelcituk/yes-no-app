enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUrl; // es opcional
  final FromWho fromWho;

  Message({
    required this.text, 
    this.imageUrl,
    required this.fromWho
  });
}
