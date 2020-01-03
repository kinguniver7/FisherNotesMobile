enum FishingType {
    all,
    spinning,
    telescopic,
    carp,
    feeder
}

extension FishingTypeHelper on FishingType{
  static const values = {
    FishingType.all: 1,
    FishingType.spinning: 2,
    FishingType.telescopic: 3,
    FishingType.carp: 4,
    FishingType.feeder: 5,
  };

  int get value => values[this];
}