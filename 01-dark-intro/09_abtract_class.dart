void main() {
  final windPlant = WindPlant(initalEnergy: 9);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not Enought Energy');
  }

  return plant.energyLeft - 10;
}

enum PlanType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlanType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//extends o implements

class WindPlant extends EnergyPlant {
  WindPlant({required double initalEnergy})
      : super(energyLeft: initalEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
