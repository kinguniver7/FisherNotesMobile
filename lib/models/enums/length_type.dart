enum LengthType {
    mm,
    m,
    ft,
    inch
}

extension LengthTypeHelper on LengthType{
  static const values = {
    LengthType.mm: 1,
    LengthType.m: 2,
    LengthType.ft: 3,
    LengthType.inch: 4
  };

  int get value => values[this];
}