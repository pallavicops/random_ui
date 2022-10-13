class ExpansionDataModel {
  final String title;
  final String description;
  final String secondDescription;
  bool isExpanded;

  ExpansionDataModel({
    required this.title,
    required this.description,
    required this.secondDescription,
    this.isExpanded = false,
  });
}
