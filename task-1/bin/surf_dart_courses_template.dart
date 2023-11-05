import 'package:surf_dart_courses_template/surf_dart_courses_template.dart'
    as surf_dart_courses_template;

void main(List<String> arguments) async {
  var mainPC = surf_dart_courses_template.StationPC.windows(
    supply: "outlet",
    name: "Lenovo",
    year: "2019",
    price: "95 000",
  );

  var workLaptop = surf_dart_courses_template.LaptopPC.macOS(
    price: "100 000",
    supply: "battery",
    name: "Work Mac",
    year: "2022",
  );

  mainPC.fanOn();
  mainPC.fanOff();

  workLaptop.fanOn();
  workLaptop.fanOff();

  workLaptop.loudFanOn();
  workLaptop.loudFanOff();
}
