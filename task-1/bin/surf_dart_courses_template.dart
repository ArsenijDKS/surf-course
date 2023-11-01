void main() {
  bool sleepness = true;
  String milk = '';
  String market = '';

  while (sleepness == true) {
    if (milk == "have") {
      boilWater();
      makeCoffe();
      goToWork();
    } else
      goToMarket();

    if (market == 'close') {
      cry();
      goToWork();
    } else {
      buyMilk();
      goHome();
      boilWater();
      makeCoffe();
      goToWork();
    }
  }
}

boilWater() {}
makeCoffe() {}
goToWork() {}
goToMarket() {}
cry() {}
buyMilk() {}
goHome() {}
