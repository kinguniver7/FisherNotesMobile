/// Строй удилища
enum RodFormationType {
    // медленный
    slow,
    // средне-медленный
    regularSlow,
    // средний
    regular,
    // средне-быстрый
    regularFast,
    // быстрый
    fast,
    // очень быстрый
    extraFast
}
extension RodFormationTypeHelper on RodFormationType{
  static const values = {
    RodFormationType.slow: 1,
    RodFormationType.regularSlow: 2,
    RodFormationType.regular: 3,
    RodFormationType.regularFast: 4,
    RodFormationType.fast: 5,
    RodFormationType.extraFast: 6,
  };

  int get value => values[this];
}


