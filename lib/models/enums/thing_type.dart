enum ThingType {
    rod,
    reel,
    wobbler,
    bait,
    tackle
}

extension ThingTypeHelper on ThingType{
  static const values = {
    ThingType.rod: 1,
    ThingType.reel: 2,
    ThingType.wobbler: 3,
    ThingType.bait: 4,
    ThingType.tackle: 5,
  };

  int get value => values[this];
}