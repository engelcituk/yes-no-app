class YesNoModel {
  String answer;
  bool forced;
  String image;

  // constructor
  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fronJsonMap(Map<String, dynamic> json) => YesNoModel(
      answer: json['answer'], 
      forced: json['forced'], 
      image: json['image']
  );
}
