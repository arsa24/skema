class HistoryCardModel {
  String subject;
  String title;
  int point;
  bool isSubmited;
  String submitOn;

  HistoryCardModel({
    required this.isSubmited,
    required this.point,
    required this.subject,
    required this.title,
    required this.submitOn,
  });
}
