class ReportPageSendModels {
  final String? nameTrain;
  final String? valueTrain;
  bool? addDrop;
  String? model;

  ReportPageSendModels(
      {this.nameTrain, this.valueTrain, this.addDrop, this.model});

  static List<ReportPageSendModels> trainName = [
    ReportPageSendModels(
        nameTrain: "قطار زندگی رام 1", valueTrain: "100", addDrop: false),
    ReportPageSendModels(
        nameTrain: "قطار زندگی رام 2", valueTrain: "101", addDrop: false),
    ReportPageSendModels(
        nameTrain: "قطار 5 ستاره زندگی رشت", valueTrain: "102", addDrop: false),
    ReportPageSendModels(
        nameTrain: "قطار 4 ستاره رشت", valueTrain: "103", addDrop: false),
    ReportPageSendModels(
        nameTrain: "قطار اصفهان 1", valueTrain: "104", addDrop: false),
    ReportPageSendModels(
        nameTrain: "قطار اصفهان 2", valueTrain: "105", addDrop: false),
  ];
}





// List<ReportPageSendModels> trainName = [
//   ReportPageSendModels(nameTrain: "قطار زندگی رام 1", valueTrain: "1"),
//   ReportPageSendModels(nameTrain: "قطار زندگی رام 2", valueTrain: "2"),
//   ReportPageSendModels(nameTrain: "قطار 5 ستاره زندگی رشت", valueTrain: "3"),
//   ReportPageSendModels(nameTrain: "قطار 4 ستاره رشت", valueTrain: "4"),
//   ReportPageSendModels(nameTrain: "قطار اصفهان 1", valueTrain: "5"),
//   ReportPageSendModels(nameTrain: "قطار اصفهان 2", valueTrain: "6"),
// ];
