class HistoryModel {
  String subject;
  String title;
  int point;
  bool isSubmited;
  String submitOn;

  HistoryModel({
    required this.isSubmited, required this.point, required this.subject, required this.title, required this.submitOn
  });
}