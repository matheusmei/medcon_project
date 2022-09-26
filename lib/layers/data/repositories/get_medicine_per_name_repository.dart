import '../../domain/entities/medicine_entity.dart';

abstract class GetNamePerNameRepository {
  MedicineEntity call(String name);
}