import 'package:fisher_notes/models/thing_model.dart';
import 'enums/rod_formation_type.dart';

/// Удилище
class Rod extends Thing {
    // кол секций
    int sections;
    // Тест по приманке (г)
    int testOfBaitG;
    // Тест по леске (lb)
    int testOfFishingLineLb;
    // строй
    RodFormationType formationType;
}
