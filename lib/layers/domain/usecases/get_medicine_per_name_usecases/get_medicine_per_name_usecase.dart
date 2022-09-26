import 'package:medcon_project_college/layers/domain/entities/medicine_entity.dart';

 abstract class GetNamePerNameUsecase {
  MedicineEntity call(String name);
}
